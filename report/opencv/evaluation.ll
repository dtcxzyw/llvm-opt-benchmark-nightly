Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/evaluation?download=true
inline.NumInlined: 1086
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt6vectorI16EllipticKeyPointSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24
  store double %i.cj, ptr %i.ck, align 8, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 32
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  store double %i.cm, ptr %i.cn, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 56 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_S2_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !174

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_S2_ET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ca, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit26 ], [ %i.cr, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.af, align 8, !tbaa !36
  br label %_ZNSt6vectorI16EllipticKeyPointSaIS0_EE15_M_erase_at_endEPS0_.exit

_ZNSt6vectorI16EllipticKeyPointSaIS0_EE15_M_erase_at_endEPS0_.exit: ; preds = %_ZSt8_DestroyIP16EllipticKeyPointS0_EvT_S2_RSaIT0_E.exit.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIP16EllipticKeyPointSt6vectorIS2_SaIS2_EEEES3_S2_ET0_T_S9_S8_RSaIT1_E.exit, %_ZNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE13_M_deallocateEPS0_m.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN20IntersectAreaCounterclERKN2cv12BlockedRangeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !178  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65   ; 2 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 262) #26
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !47
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.m = load float, ptr %0, align 8, !tbaa !64   ; 3 uses
  %i.n = fcmp ogt float %i.m, f0x34000000
  br i1 %i.n, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 263) #26
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.l:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.l
  %i.t = load i64, ptr %i.r, align 8, !tbaa !47
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.k
  %.pn46 = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.p, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !63   ; 3 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !67     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !68 ; 2 uses
  %.not56 = icmp eq i32 %i.z, %i.ab
  br i1 %.not56, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !179
  %i.ae = sitofp i32 %i.ad to float
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load float, ptr %i.af, align 8, !tbaa !180
  %i.ah = sitofp i32 %i.b to float                ; 2 uses
  %i.ai = sitofp i32 %i.d to float                ; 2 uses
  %i.aj = fcmp ugt float %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load float, ptr %i.ak, align 4
  br i1 %i.aj, label %._crit_edge62, label %.lr.ph61.split

.lr.ph61.split:                                   ; preds = %.lr.ph61
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load double, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load <2 x double>, ptr %i.aq, align 8, !tbaa !11 ; 2 uses
  %i.as = load <2 x double>, ptr %i.ap, align 8, !tbaa !11 ; 2 uses
  %i.at = shufflevector <2 x double> %i.as, <2 x double> %i.ar, <2 x i32> <i32 1, i32 2>
  %i.au = fmul <2 x double> %i.at, splat (double 2.000000e+00)
  %i.av = load double, ptr %i.ao, align 8, !tbaa !11
  %i.aw = insertelement <2 x double> %i.as, double %i.an, i64 1
  %i.ax = insertelement <2 x double> %i.ar, double %i.av, i64 0
  br label %.lr.ph

._crit_edge62:                                    ; preds = %._crit_edge, %.lr.ph61, %bb.m
  %.036.lcssa = phi i32 [ %i.w, %bb.m ], [ %i.w, %.lr.ph61 ], [ %.238, %._crit_edge ]
  %.035.lcssa = phi i32 [ %i.y, %bb.m ], [ %i.y, %.lr.ph61 ], [ %spec.select, %._crit_edge ]
  store i32 %.036.lcssa, ptr %i.v, align 4, !tbaa !62
  store i32 %.035.lcssa, ptr %i.x, align 8, !tbaa !63
  ret void

.lr.ph:                                           ; preds = %.lr.ph61.split, %._crit_edge
  %.03459 = phi i32 [ %i.z, %.lr.ph61.split ], [ %i.bg, %._crit_edge ] ; 2 uses
  %.03558 = phi i32 [ %i.y, %.lr.ph61.split ], [ %spec.select, %._crit_edge ]
  %.03657 = phi i32 [ %i.w, %.lr.ph61.split ], [ %.238, %._crit_edge ]
  %i.ay = sitofp i32 %.03459 to float
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.m, float %i.ae) ; 2 uses
  %i.ba = fsub float %i.az, %i.ag
  %i.bb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.az, i64 1
  %i.bd = fpext <2 x float> %i.bc to <2 x double> ; 3 uses
  %i.be = fmul <2 x double> %i.aw, %i.bd
  %i.bf = fmul <2 x double> %i.au, %i.bd
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  %i.bg = add nsw i32 %.03459, 1                  ; 2 uses
  %.not = icmp eq i32 %i.bg, %i.ab
  br i1 %.not, label %._crit_edge62, label %.lr.ph, !llvm.loop !176

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.054 = phi float [ %i.ah, %.lr.ph ], [ %i.br, %bb.n ] ; 3 uses
  %.153 = phi i32 [ %.03558, %.lr.ph ], [ %spec.select, %bb.n ]
  %.13752 = phi i32 [ %.03657, %.lr.ph ], [ %.238, %bb.n ]
  %i.bh = fsub float %.054, %i.al
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %.054, i64 1
  %i.bk = fpext <2 x float> %i.bj to <2 x double> ; 3 uses
  %i.bl = fmul <2 x double> %i.bf, %i.bk
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bd, <2 x double> %i.bl)
  %i.bn = fmul <2 x double> %i.ax, %i.bk
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bk, <2 x double> %i.bm)
  %.fr = freeze <2 x double> %i.bo
  %6 = fcmp olt <2 x double> %.fr, splat (double f0x3FEFFFFFF0000000) ; 2 uses
  %7 = bitcast <2 x i1> %6 to i2
  %or.cond = icmp eq i2 %7, -1
  %i.bp = zext i1 %or.cond to i32
  %spec.select = add nsw i32 %.153, %i.bp         ; 3 uses
  %8 = bitcast <2 x i1> %6 to i2
  %or.cond3 = icmp ne i2 %8, 0
  %i.bq = zext i1 %or.cond3 to i32
  %.238 = add nsw i32 %.13752, %i.bq              ; 3 uses
  %i.br = fadd float %i.m, %.054                  ; 2 uses
  %i.bs = fcmp ugt float %i.br, %i.ai
  br i1 %i.bs, label %._crit_edge, label %bb.n, !llvm.loop !177

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn46.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %3 = alloca %struct.SIdx, align 4               ; 4 uses
  %4 = alloca %struct.SIdx, align 4               ; 4 uses
  %5 = alloca %struct.SIdx, align 4               ; 4 uses
  %6 = alloca %struct.SIdx, align 4               ; 4 uses
  %7 = alloca %struct.SIdx, align 4               ; 4 uses
  %8 = alloca %struct.SIdx, align 4               ; 4 uses
  %9 = alloca %struct.SIdx, align 4               ; 4 uses
  %.fr23 = freeze ptr %1                          ; 3 uses
  %.fr22 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr22 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr23 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.fr22, i64 12 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit
  %i.g = icmp eq i64 %i.bw, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph44, !llvm.loop !181

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr46.i21.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cq, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %.fr23, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.fr46.i21.lcssa, 12      ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = or disjoint i64 %i.i, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %.fr22, i64 %i.o
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %.fr22, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i, %._crit_edge
  %.011.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i ] ; 8 uses
  %i.r = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %.011.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.r, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !31
  %i.s = icmp slt i64 %.011.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.011.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.041.i.i.i, 1                   ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %i.w
  %i.y = load float, ptr %i.v, align 4, !tbaa !85
  %i.z = load float, ptr %i.x, align 4, !tbaa !85
  %i.aa = fcmp ogt float %i.y, %i.z
  %spec.select.i.i.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %spec.select.i.i.i
  %i.ac = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %.041.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false), !tbaa.struct !69
  %i.ad = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ad, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !182

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.011.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ae, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false), !tbaa.struct !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.o, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.af = icmp sgt i64 %.1.i.i.i, %.011.i.i
  br i1 %i.af, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e
  %.sroa.013.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.04.0.copyload.i.i to i32
  %i.ag = bitcast i32 %.sroa.013.sroa.0.0.extract.trunc.i.i.i.i to float
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i11
  %.022.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i11 ], [ %.01023.i.i.i.i, %bb.g ] ; 3 uses
  %.01023.in.i.i.i.i = add nsw i64 %.022.i.i.i.i, -1
  %.01023.i.i.i.i = sdiv i64 %.01023.in.i.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %.fr22, i64 %.01023.i.i.i.i ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !85
  %i.aj = fcmp ogt float %i.ai, %i.ag
  br i1 %i.aj, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %.fr22, i64 %.022.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !tbaa.struct !69
  %i.al = icmp sgt i64 %.01023.i.i.i.i, %.011.i.i
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i, !llvm.loop !183

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.01023.i.i.i.i, %bb.g ], [ %.022.i.i.i.i, %bb.f ]
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %.fr22, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store i64 %.sroa.04.0.copyload.i.i, ptr %i.am, align 4
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !31
  %.not.i.i = icmp eq i64 %.011.i.i, 0
  %i.an = add nsw i64 %.011.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !184

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ao, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -12 ; 4 uses
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.ao, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %.fr22, i64 12, i1 false), !tbaa.struct !69
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.a                     ; 3 uses
  %i.ar = sdiv exact i64 %i.aq, 12                ; 3 uses
  %i.as = add nsw i64 %i.ar, -1
  %i.at = sdiv i64 %i.as, 2
  %i.au = icmp sgt i64 %i.aq, 24
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.av = shl i64 %.041.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %i.ay
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !85
  %i.bb = load float, ptr %i.az, align 4, !tbaa !85
  %i.bc = fcmp ogt float %i.ba, %i.bb
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bd = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %spec.select.i.i.i.i
  %i.be = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %i.bd, i64 12, i1 false), !tbaa.struct !69
  %i.bf = icmp slt i64 %spec.select.i.i.i.i, %i.at
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !182

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bg = and i64 %i.ar, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = add nsw i64 %i.ar, -2
  %i.bj = ashr exact i64 %i.bi, 1
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bj
  br i1 %i.bk, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bl = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bm = or disjoint i64 %i.bl, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %.fr22, i64 %i.bm
  %i.bo = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false), !tbaa.struct !69
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i10.i.i.i = phi i64 [ %i.bm, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %.sroa.013.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.04.0.copyload.i.i.i to i32
  %i.bp = bitcast i32 %.sroa.013.sroa.0.0.extract.trunc.i.i.i.i.i to float
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.022.i.i.i.i.i = phi i64 [ %.1.i10.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01023.i.i1112.i.i.i, %bb.k ] ; 3 uses
  %.01023.in.i.i.i.i.i = add nsw i64 %.022.i.i.i.i.i, -1
  %.01023.i.i1112.i.i.i = lshr i64 %.01023.in.i.i.i.i.i, 1 ; 3 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %.fr22, i64 %.01023.i.i1112.i.i.i ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !85
  %i.bs = fcmp ogt float %i.br, %i.bp
  br i1 %i.bs, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds [12 x i8], ptr %.fr22, i64 %.022.i.i.i.i.i
end_hunk_0
