Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/passes.cc.X86_64?download=true
inline.NumInlined: 23987
inline.NumDeleted: 9635
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN4mold6do_ltoINS_6X86_64EEEvRNS_7ContextIT_EE:._crit_edge.i.i
  %.sroa.07.028.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.m ], [ %.sroa.07.026.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_6do_ltoIS4_EEvRNS2_7ContextIT_EEEUlS6_E_EEEESH_SH_SH_T0_.exit.i.i ] ; 2 uses
  %.sroa.013.027.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.m ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_6do_ltoIS4_EEvRNS2_7ContextIT_EEEUlS6_E_EEEESH_SH_SH_T0_.exit.i.i ] ; 3 uses
  %i.bw = load ptr, ptr %.sroa.07.028.i.i, align 8, !tbaa !299 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 809
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !749, !range !613, !noundef !599
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  store ptr %i.bw, ptr %.sroa.013.027.i.i, align 8, !tbaa !299
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %.lr.ph.i.i ], [ %i.ca, %bb.l ] ; 2 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.028.i.i, i64 8 ; 2 uses
  %i.cb = icmp eq ptr %.sroa.07.0.i.i, %i.z
  br i1 %i.cb, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_6do_ltoIS4_EEvRNS2_7ContextIT_EEEUlS6_E_EEEESH_SH_SH_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !2255

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_6do_ltoIS4_EEvRNS2_7ContextIT_EEEUlS6_E_EEEESH_SH_SH_T0_.exit.i: ; preds = %bb.m, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_6do_ltoIS4_EEvRNS2_7ContextIT_EEEUlS6_E_EEEESH_SH_SH_T0_.exit.i.i
  %.sroa.013.2.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_6do_ltoIS4_EEvRNS2_7ContextIT_EEEUlS6_E_EEEESH_SH_SH_T0_.exit.i.i ], [ %.sroa.013.1.i.i, %bb.m ] ; 2 uses
  %i.cc = icmp eq ptr %.sroa.013.2.i.i, %i.z
  br i1 %i.cc, label %_ZSt8erase_ifIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EZNS0_6do_ltoIS2_EEvRNS0_7ContextIT_EEEUlS4_E_ENSt6vectorIS8_T0_E9size_typeERSE_T1_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i: ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_6do_ltoIS4_EEvRNS2_7ContextIT_EEEUlS6_E_EEEESH_SH_SH_T0_.exit.i
  %i.cd = ptrtoint ptr %.sroa.013.2.i.i to i64
  %i.ce = sub i64 %i.cd, %i.ab
  %i.cf = getelementptr inbounds i8, ptr %i.y, i64 %i.ce
  store ptr %i.cf, ptr %i.l, align 8, !tbaa !553
  br label %_ZSt8erase_ifIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EZNS0_6do_ltoIS2_EEvRNS0_7ContextIT_EEEUlS4_E_ENSt6vectorIS8_T0_E9size_typeERSE_T1_.exit

_ZSt8erase_ifIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EZNS0_6do_ltoIS2_EEvRNS0_7ContextIT_EEEUlS4_E_ENSt6vectorIS8_T0_E9size_typeERSE_T1_.exit: ; preds = %._crit_edge.i.i.i.i, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_6do_ltoIS4_EEvRNS2_7ContextIT_EEEUlS6_E_EEEESH_SH_SH_T0_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i
  call void @_ZN4mold15resolve_symbolsINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0)
  %i.cg = load ptr, ptr %3, align 8, !tbaa !555   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8erase_ifIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EZNS0_6do_ltoIS2_EEvRNS0_7ContextIT_EEEUlS4_E_ENSt6vectorIS8_T0_E9size_typeERSE_T1_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !554
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #34
  br label %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EED2Ev.exit: ; preds = %_ZSt8erase_ifIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EZNS0_6do_ltoIS2_EEvRNS0_7ContextIT_EEEUlS4_E_ENSt6vectorIS8_T0_E9size_typeERSE_T1_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.cm = load ptr, ptr %1, align 8, !tbaa !609
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.cm) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

.lr.ph:                                           ; preds = %bb.b, %bb.q
  %.sroa.017.021 = phi ptr [ %i.cv, %bb.q ], [ %i.v, %bb.b ] ; 2 uses
  %i.cn = load ptr, ptr %.sroa.017.021, align 8, !tbaa !299 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 809
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !749, !range !613, !noundef !599
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 200
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !720, !range !613, !noundef !599
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.lr.ph
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 136
  store atomic i8 0, ptr %i.cu monotonic, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.017.021, i64 8 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.w
  br i1 %i.cw, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %1 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 6 uses
  %2 = alloca %"class.tbb::detail::d1::parallel_for_body_wrapper.2044", align 8 ; 6 uses
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %4 = alloca %class.anon.2043, align 8           ; 5 uses
  %5 = alloca %class.anon.679, align 8            ; 6 uses
  %6 = alloca %class.anon.675, align 1            ; 3 uses
  %7 = alloca %"struct.std::identity", align 1    ; 3 uses
  %8 = alloca %"class.mold::Timer", align 8       ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.mold::Glob", align 8       ; 11 uses
  %11 = alloca %"class.mold::Glob", align 8       ; 11 uses
  %12 = alloca %"class.std::vector.104", align 8  ; 10 uses
  %13 = alloca %"class.mold::Fatal", align 8      ; 4 uses
  %14 = alloca %"class.mold::Fatal", align 8      ; 4 uses
  %15 = alloca %"class.mold::Warn", align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.a, ptr %9, align 8, !tbaa !173
  %i.b = call noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #36 ; 3 uses
  store ptr %i.b, ptr %9, align 8, !tbaa !598
  store i64 20, ptr %i.a, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.b, ptr noundef nonnull align 1 dereferenceable(20) @.str.87, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 20, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 0, ptr %i.d, align 1, !tbaa !177
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %9, ptr noundef null)
  %i.e = load ptr, ptr %9, align 8, !tbaa !598    ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.g = load i64, ptr %i.a, align 8, !tbaa !177
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store i32 0, ptr %10, align 8, !tbaa !758
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i8 1, ptr %i.i, align 4, !tbaa !716
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 5
  store i8 0, ptr %i.j, align 1, !tbaa !759
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 -1, ptr %i.k, align 8, !tbaa !760
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 1256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.l, i8 0, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 0, ptr %11, align 8, !tbaa !758
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  store i8 1, ptr %i.n, align 4, !tbaa !716
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 5
  store i8 0, ptr %i.o, align 1, !tbaa !759
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 -1, ptr %i.p, align 8, !tbaa !760
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 1256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.q, i8 0, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4024 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4032 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2259 ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !761  ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EEC2EmRKS2_.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = icmp ugt i64 %i.y, 9223372036854775744
  br i1 %i.z, label %bb.b, label %_ZNSt15__new_allocatorIN4mold14VersionPatternEE8allocateEmPKv.exit.i.i.i.i, !prof !610

bb.b:                                             ; preds = %bb.a
  call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorIN4mold14VersionPatternEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.a
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #36
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !2260
  %.pre90 = load ptr, ptr %i.t, align 8, !tbaa !2260
  br label %_ZNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4mold14VersionPatternEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = phi ptr [ %.pre90, %_ZNSt15__new_allocatorIN4mold14VersionPatternEE8allocateEmPKv.exit.i.i.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ac = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN4mold14VersionPatternEE8allocateEmPKv.exit.i.i.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ad = phi ptr [ %i.aa, %_ZNSt15__new_allocatorIN4mold14VersionPatternEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  store ptr %i.ad, ptr %12, align 8, !tbaa !761
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !2261
  %i.ah = icmp eq ptr %i.ac, %i.ab
  br i1 %i.ah, label %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ad, %_ZNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.ac, %_ZNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04.07.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !762
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.ab
  br i1 %i.ak, label %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2257

_ZNSt6vectorIN4mold14VersionPatternESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EEC2EmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %_ZNSt12_Vector_baseIN4mold14VersionPatternESaIS1_EEC2EmRKS2_.exit.i ], [ %i.aj, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !2259
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.al = call ptr @_ZSt18__stable_partitionIN9__gnu_cxx17__normal_iteratorIPN4mold14VersionPatternESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZNS2_20apply_version_scriptINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlRKS3_E_St8identityEEDaRSH_RT0_EUlTyOSH_E_EEESH_SH_SH_SP_(ptr %i.ad, ptr %.0.lcssa.i.i.i.i.i, ptr nonnull %6, ptr nonnull %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !2259 ; 2 uses
  %i.an = load ptr, ptr %12, align 8, !tbaa !761  ; 3 uses
  %.not84 = icmp eq ptr %i.am, %i.an
  br i1 %.not84, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread, %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EEC2ERKS3_.exit
  %i.ao = phi ptr [ %i.am, %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EEC2ERKS3_.exit ], [ %16, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread ]
  %i.ap = phi ptr [ %i.an, %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EEC2ERKS3_.exit ], [ %17, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread ]
  %i.aq = load i8, ptr %i.i, align 4, !tbaa !716, !range !613, !noundef !599
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = load i8, ptr %i.n, align 4, !range !613
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EEC2ERKS3_.exit, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread
  %i.au = phi ptr [ %17, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread ], [ %i.an, %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EEC2ERKS3_.exit ]
  %.077 = phi i64 [ %i.bi, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread ], [ 0, %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EEC2ERKS3_.exit ] ; 4 uses
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %.077 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !2262, !range !613, !noundef !599
  %i.ay = trunc nuw i8 %i.ax to i1
  %.sroa.019.0.copyload = load i64, ptr %i.av, align 8, !tbaa !594 ; 4 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.220.0.copyload = load ptr, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !614 ; 3 uses
  br i1 %i.ay, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.az = call noundef zeroext i1 @_ZN4mold4Glob3addESt17basic_string_viewIcSt11char_traitsIcEEl(ptr noundef nonnull align 8 dereferenceable(1280) %11, i64 %.sroa.019.0.copyload, ptr %.sroa.220.0.copyload, i64 noundef %.077) #16
  br i1 %i.az, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %13, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.ba = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA26_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %13, ptr noundef nonnull align 1 dereferenceable(26) @.str.88)
  %i.bb = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.av) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %13) #37
  unreachable

bb.e:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i64 %.sroa.019.0.copyload, 0
  br i1 %.not.i, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.e, %bb.f
  %.01116.i.i.i = phi i64 [ %i.be, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.220.0.copyload, i64 %.01116.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !177
  switch i8 %i.bd, label %bb.f [
    i8 42, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit
    i8 63, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit
    i8 91, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit
  ]

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.be = add nuw i64 %.01116.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.be, %.sroa.019.0.copyload
  br i1 %exitcond.not.i.i.i, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !0

_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not72 = icmp eq i64 %.01116.i.i.i, -1
  br i1 %.not72, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit
  %i.bf = call noundef zeroext i1 @_ZN4mold4Glob3addESt17basic_string_viewIcSt11char_traitsIcEEl(ptr noundef nonnull align 8 dereferenceable(1280) %10, i64 %.sroa.019.0.copyload, ptr nonnull %.sroa.220.0.copyload, i64 noundef %.077) #16
  br i1 %i.bf, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %14, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.bg = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA26_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %14, ptr noundef nonnull align 1 dereferenceable(26) @.str.88)
  %i.bh = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.av) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %14) #37
  unreachable

_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit.thread: ; preds = %bb.f, %bb.e, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit, %bb.g, %bb.c
  %i.bi = add nuw nsw i64 %.077, 1                ; 2 uses
  %16 = load ptr, ptr %i.ae, align 8, !tbaa !2259 ; 2 uses
  %17 = load ptr, ptr %12, align 8, !tbaa !761    ; 3 uses
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 6
  %i.bj = icmp ult i64 %i.bi, %21
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !2258

bb.i:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4192
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %10, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %11, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %12, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.bk, ptr %4, align 8, !tbaa !765
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.bl, align 8, !tbaa !672
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i64 64, ptr %1, align 8, !tbaa !674
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !675
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.bn, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %4, ptr %2, align 8, !tbaa !672
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !767
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %i.bp, align 8, !tbaa !768
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold10ShardedMapINS6_6SymbolINS6_6X86_64EEEE17parallel_for_eachIZNS6_20apply_version_scriptIS9_EEvRNS6_7ContextIT_EEEUlRSA_E_EEvSF_EUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.pre91 = load ptr, ptr %12, align 8, !tbaa !2260
  %.pre92 = load ptr, ptr %i.ae, align 8, !tbaa !2260
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bq = phi ptr [ %i.ao, %._crit_edge ], [ %.pre92, %bb.i ] ; 2 uses
  %i.br = phi ptr [ %i.ap, %._crit_edge ], [ %.pre91, %bb.i ] ; 3 uses
  %i.bs = icmp eq ptr %i.br, %i.bq
  br i1 %i.bs, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2703
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 408 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 136
  br label %bb.l

._crit_edge83.loopexit:                           ; preds = %bb.u
  %.pre100 = load ptr, ptr %12, align 8, !tbaa !761
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %._crit_edge83.loopexit, %bb.j
  %i.ck = phi ptr [ %.pre100, %._crit_edge83.loopexit ], [ %i.br, %bb.j ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge83
  %i.cl = load ptr, ptr %i.ag, align 8, !tbaa !2261
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.co) #34
  br label %_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit

_ZNSt6vectorIN4mold14VersionPatternESaIS1_EED2Ev.exit: ; preds = %._crit_edge83, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @_ZN4mold4GlobD2Ev(ptr noundef nonnull align 8 dead_on_return(1280) dereferenceable(1280) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @_ZN4mold4GlobD2Ev(ptr noundef nonnull align 8 dead_on_return(1280) dereferenceable(1280) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.cp = load ptr, ptr %8, align 8, !tbaa !609
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.cp) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

bb.l:                                             ; preds = %.lr.ph82, %bb.u
  %.sroa.055.078 = phi ptr [ %i.br, %.lr.ph82 ], [ %i.en, %bb.u ] ; 9 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 56
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !2262, !range !613, !noundef !599
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.05.0.copyload = load i64, ptr %.sroa.055.078, align 8, !tbaa !594 ; 3 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 8
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !614 ; 2 uses
  %.not.i41 = icmp eq i64 %.sroa.05.0.copyload, 0
  br i1 %.not.i41, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42: ; preds = %bb.m, %bb.n
  %.01116.i.i.i43 = phi i64 [ %i.cv, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.26.0.copyload, i64 %.01116.i.i.i43
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !177
  switch i8 %i.cu, label %bb.n [
    i8 42, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48
    i8 63, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48
    i8 91, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48
  ]

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42
  %i.cv = add nuw i64 %.01116.i.i.i43, 1          ; 2 uses
  %exitcond.not.i.i.i47 = icmp eq i64 %i.cv, %.sroa.05.0.copyload
  br i1 %exitcond.not.i.i.i47, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42, !llvm.loop !0

_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i42
  %.not69 = icmp eq i64 %.01116.i.i.i43, -1
  br i1 %.not69, label %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread, label %bb.u

_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread: ; preds = %bb.n, %bb.m, %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48
  %i.cw = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 %.sroa.05.0.copyload, ptr %.sroa.26.0.copyload) #16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !715 ; 4 uses
  %.not.i49 = icmp eq i32 %i.cy, 0
  %i.cz = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.da = sext i32 %i.cy to i64
  %i.db = shl nsw i64 %i.da, 2                    ; 3 uses
  %i.dc = sub i64 0, %i.cz
  %.not70 = icmp eq i64 %i.db, %i.dc
  %.not = select i1 %.not.i49, i1 true, i1 %.not70
  br i1 %.not, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZZN4mold20apply_version_scriptINS_6X86_64EEEvRNS_7ContextIT_EEENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clES9_.exit48.thread
  %i.dd = load i8, ptr %i.bt, align 1, !tbaa !2263, !range !613, !noundef !599
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %15, ptr noundef nonnull align 8 dereferenceable(14448) %0) #16
  %i.df = load i8, ptr %i.bu, align 8, !tbaa !770, !range !613, !noundef !599
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit: ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dh, align 8, !tbaa !594
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !614
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i) #16 ; 0 uses
  %.pre93 = load i8, ptr %i.bu, align 8, !tbaa !770, !range !613
  %i.dj = trunc nuw i8 %.pre93 to i1
  br i1 %i.dj, label %_ZN4mold4WarnINS_6X86_64EElsIRA26_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA26_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 1 dereferenceable(26) @.str.89, i64 noundef 25) #16 ; 0 uses
  %.pre94 = load i8, ptr %i.bu, align 8, !tbaa !770, !range !613
  %i.dl = trunc nuw i8 %.pre94 to i1
  br i1 %i.dl, label %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit53, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit53: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA26_KcEERS2_OT_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 32
  %.sroa.0.0.copyload.i.i50 = load i64, ptr %i.dm, align 8, !tbaa !594
  %.sroa.2.0..sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %.sroa.055.078, i64 40
  %.sroa.2.0.copyload.i.i52 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i51, align 8, !tbaa !614
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef %.sroa.2.0.copyload.i.i52, i64 noundef %.sroa.0.0.copyload.i.i50) #16 ; 0 uses
  %.pre95 = load i8, ptr %i.bu, align 8, !tbaa !770, !range !613
  %i.do = trunc nuw i8 %.pre95 to i1
  br i1 %i.do, label %_ZN4mold4WarnINS_6X86_64EElsIRA14_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA14_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_.exit53
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 1 dereferenceable(14) @.str.90, i64 noundef 13) #16 ; 0 uses
  %.pre96 = load i8, ptr %i.bu, align 8, !tbaa !770, !range !613
  %i.dq = trunc nuw i8 %.pre96 to i1
  br i1 %i.dq, label %_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA14_KcEERS2_OT_.exit
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_6SymbolIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(36) %i.cw) #16 ; 0 uses
  %.pre97 = load i8, ptr %i.bu, align 8, !tbaa !770, !range !613
  %i.ds = trunc nuw i8 %.pre97 to i1
  br i1 %i.ds, label %_ZN4mold4WarnINS_6X86_64EElsIRA20_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA20_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNS_6SymbolIS1_EEEERS2_OT_.exit
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 1 dereferenceable(20) @.str.91, i64 noundef 19) #16 ; 0 uses
  %.pre98 = load i8, ptr %i.bu, align 8, !tbaa !770, !range !613
  %i.du = trunc nuw i8 %.pre98 to i1
  br i1 %i.du, label %bb.q, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

bb.q:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA20_KcEERS2_OT_.exit
  store i8 0, ptr %i.bu, align 8, !tbaa !770
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %15)
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !170
  %i.dv = load i64, ptr %i.bz, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.bw, i64 %i.dv
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv:bb.a
  store ptr %i.ir, ptr %i.fi, align 8, !tbaa !1443
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58

bb.by:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit56
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit59

bb.bz:                                            ; preds = %bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !1462
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !1463
  %i.iz = icmp eq ptr %i.iw, %i.iy
  br i1 %i.iz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 27, ptr %i.e, align 8, !tbaa !1461
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bz
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !1464
  switch i32 %i.jb, label %bb.cf [
    i32 0, label %bb.cc
    i32 2, label %bb.cd
    i32 1, label %bb.ce
  ]

bb.cc:                                            ; preds = %bb.cb
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !1465
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !1465
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 10) #37
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.ji = load i32, ptr %i.e, align 8, !tbaa !1461
  %i.jj = icmp eq i32 %i.ji, 26
  br i1 %i.jj, label %bb.ci, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit60

bb.ci:                                            ; preds = %bb.ch
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.jk = load ptr, ptr %i.iv, align 8, !tbaa !1462
  %i.jl = load ptr, ptr %i.ix, align 8, !tbaa !1463
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 27, ptr %i.e, align 8, !tbaa !1461
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !1464
  switch i32 %i.jo, label %bb.co [
    i32 0, label %bb.cl
    i32 2, label %bb.cm
    i32 1, label %bb.cn
  ]

bb.cl:                                            ; preds = %bb.ck
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.co

bb.cn:                                            ; preds = %bb.ck
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.co

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit60: ; preds = %bb.ch
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #37
  unreachable

bb.co:                                            ; preds = %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.jp = load ptr, ptr %i.jd, align 8, !tbaa !1465, !noalias !3695 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !1441, !noalias !3695 ; 2 uses
  %i.js = icmp eq ptr %i.jp, %i.jr
  br i1 %i.js, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i64 24, i1 false), !tbaa.struct !1484
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62

bb.cq:                                            ; preds = %bb.co
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1440, !noalias !3695
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !1439, !noalias !3696
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.jy, i64 24, i1 false), !tbaa.struct !1484
  tail call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef 504) #34, !noalias !3696
  %i.jz = load ptr, ptr %i.ju, align 8, !tbaa !1466, !noalias !3696
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -8 ; 2 uses
  store ptr %i.ka, ptr %i.ju, align 8, !tbaa !1440, !noalias !3696
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !1439, !noalias !3696 ; 3 uses
  store ptr %i.kb, ptr %i.jq, align 8, !tbaa !1441, !noalias !3696
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 504
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !1442, !noalias !3696
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62: ; preds = %bb.cp, %bb.cq
  %storemerge.i.i.i61 = phi ptr [ %i.jt, %bb.cp ], [ %i.ke, %bb.cq ]
  store ptr %storemerge.i.i.i61, ptr %i.jd, align 8, !tbaa !1443, !noalias !3696
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !1436 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 10, ptr %4, align 8, !tbaa !1467
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -1, ptr %i.kh, align 8, !tbaa !1460
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 56 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 64 ; 4 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !1468 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 72
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !1469
  %.not.i.i.i.i63 = icmp eq ptr %i.kk, %i.km
  br i1 %.not.i.i.i.i63, label %bb.cr, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i64

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i64: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kk, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !1471
  %.pre.i65 = load ptr, ptr %i.kj, align 8, !tbaa !1468
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre.i65, i64 48 ; 2 uses
  store ptr %i.kn, ptr %i.kj, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66

bb.cr:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ki, ptr %i.kk, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %.pre.i.i69 = load ptr, ptr %i.kj, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66: ; preds = %bb.cr, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i64
  %i.ko = phi ptr [ %i.kn, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i64 ], [ %.pre.i.i69, %bb.cr ]
  %i.kp = load ptr, ptr %i.ki, align 8, !tbaa !1457
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = sdiv exact i64 %i.ks, 48                ; 2 uses
  %i.ku = icmp ugt i64 %i.kt, 100000
  br i1 %i.ku, label %bb.cs, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i67

bb.cs:                                            ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66
  call void @abort() #37
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i67: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66
  %i.kv = load i32, ptr %4, align 8, !tbaa !1467
  %i.kw = icmp eq i32 %i.kv, 11
  br i1 %i.kw, label %bb.ct, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70

bb.ct:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i67
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !1203 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i68, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.la = call noundef zeroext i1 %i.ky(ptr noundef nonnull align 8 dereferenceable(32) %i.kz, ptr noundef nonnull align 8 dereferenceable(32) %i.kz, i32 noundef 3) #16, !inline_history !77 ; 0 uses
  br label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70: ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i67, %bb.ct, %bb.cu
  %i.lb = add nsw i64 %i.kt, -1                   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.kg, ptr %13, align 8, !tbaa !1479
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !1481
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store i64 %i.lb, ptr %i.ld, align 8, !tbaa !1482
  %i.le = load ptr, ptr %i.iu, align 8, !tbaa !598 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !176 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lg
  %i.li = icmp samesign eq i64 %i.lg, 0
  br i1 %i.li, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cy, %.lr.ph.i
  %.013.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ls, %bb.cy ]
  %.sroa.08.012.i = phi ptr [ %i.le, %.lr.ph.i ], [ %i.lt, %bb.cy ] ; 2 uses
  %i.lk = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.013.i, i32 10) ; 2 uses
  %i.ll = extractvalue { i32, i1 } %i.lk, 1
  br i1 %i.ll, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lm = extractvalue { i32, i1 } %i.lk, 0
  %i.ln = load i8, ptr %.sroa.08.012.i, align 1, !tbaa !177
  %i.lo = load ptr, ptr %i.lj, align 8, !tbaa !1504, !nonnull !599, !align !600
  %i.lp = call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.lo, i8 noundef signext %i.ln, i32 noundef 10)
  %i.lq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.lm, i32 %i.lp) ; 2 uses
  %i.lr = extractvalue { i32, i1 } %i.lq, 1
  br i1 %i.lr, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  call void @abort() #37
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.ls = extractvalue { i32, i1 } %i.lq, 0       ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 1 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.lh
  br i1 %i.lu, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %bb.cv

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit: ; preds = %bb.cy, %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70
  %.0.lcssa.i = phi i32 [ 0, %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70 ], [ %i.ls, %bb.cy ] ; 2 uses
  %i.lv = sext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.lw = load i32, ptr %i.e, align 8, !tbaa !1461 ; 2 uses
  %i.lx = icmp eq i32 %i.lw, 25
  br i1 %i.lx, label %bb.cz, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71

bb.cz:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.ly = load ptr, ptr %i.iv, align 8, !tbaa !1462
  %i.lz = load ptr, ptr %i.ix, align 8, !tbaa !1463
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71.thread, label %bb.da

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71.thread: ; preds = %bb.cz
  store i32 27, ptr %i.e, align 8, !tbaa !1461
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit73

bb.da:                                            ; preds = %bb.cz
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !1464
  switch i32 %i.mc, label %bb.de [
    i32 0, label %bb.db
    i32 2, label %bb.dc
    i32 1, label %bb.dd
  ]

bb.db:                                            ; preds = %bb.da
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.de

bb.dc:                                            ; preds = %bb.da
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.de

bb.dd:                                            ; preds = %bb.da
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.de

bb.de:                                            ; preds = %bb.da, %bb.db, %bb.dc, %bb.dd
  %.pr = load i32, ptr %i.e, align 8, !tbaa !1461 ; 2 uses
  %i.md = icmp eq i32 %.pr, 26
  br i1 %i.md, label %bb.df, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71

bb.df:                                            ; preds = %bb.de
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.me = load ptr, ptr %i.iv, align 8, !tbaa !1462
  %i.mf = load ptr, ptr %i.ix, align 8, !tbaa !1463
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 27, ptr %i.e, align 8, !tbaa !1461
  br label %bb.dl

bb.dh:                                            ; preds = %bb.df
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !1464
  switch i32 %i.mi, label %bb.dl [
    i32 0, label %bb.di
    i32 2, label %bb.dj
    i32 1, label %bb.dk
  ]

bb.di:                                            ; preds = %bb.dh
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.dl

bb.dj:                                            ; preds = %bb.dh
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dh
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk
  %i.mj = call noundef i32 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef 10)
  %i.mk = sext i32 %i.mj to i64
  %i.ml = sub nsw i64 %i.mk, %i.lv
  %.pre = load i32, ptr %i.e, align 8, !tbaa !1461
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71: ; preds = %bb.de, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, %bb.dl
  %i.mm = phi i32 [ %.pre, %bb.dl ], [ %i.lw, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ %.pr, %bb.de ]
  %.019 = phi i1 [ false, %bb.dl ], [ false, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ true, %bb.de ]
  %.018 = phi i64 [ %i.ml, %bb.dl ], [ 0, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ 0, %bb.de ] ; 3 uses
  %i.mn = icmp eq i32 %i.mm, 13
  br i1 %i.mn, label %bb.dm, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit73

bb.dm:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.mo = load ptr, ptr %i.iv, align 8, !tbaa !1462
  %i.mp = load ptr, ptr %i.ix, align 8, !tbaa !1463
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 27, ptr %i.e, align 8, !tbaa !1461
  br label %bb.ds

bb.do:                                            ; preds = %bb.dm
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !1464
  switch i32 %i.ms, label %bb.ds [
    i32 0, label %bb.dp
    i32 2, label %bb.dq
    i32 1, label %bb.dr
  ]

bb.dp:                                            ; preds = %bb.do
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.ds

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit73: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71.thread, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71
  call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 6) #37
  unreachable

bb.ds:                                            ; preds = %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr
  br i1 %.not, label %bb.ea, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mt = load i32, ptr %i.e, align 8, !tbaa !1461
  %i.mu = icmp eq i32 %i.mt, 18                   ; 2 uses
  br i1 %i.mu, label %bb.du, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

bb.du:                                            ; preds = %bb.dt
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.mv = load ptr, ptr %i.iv, align 8, !tbaa !1462
  %i.mw = load ptr, ptr %i.ix, align 8, !tbaa !1463
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 27, ptr %i.e, align 8, !tbaa !1461
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

bb.dw:                                            ; preds = %bb.du
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !1464
  switch i32 %i.mz, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74 [
    i32 0, label %bb.dx
    i32 2, label %bb.dy
    i32 1, label %bb.dz
  ]

bb.dx:                                            ; preds = %bb.dw
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

bb.dy:                                            ; preds = %bb.dw
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

bb.dz:                                            ; preds = %bb.dw
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74: ; preds = %bb.dt, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz
  %i.na = zext i1 %i.mu to i8
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74, %bb.ds
  %i.nb = phi i8 [ 0, %bb.ds ], [ %i.na, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74 ] ; 5 uses
  %i.nc = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.nc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ea
  %i.nd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.eb

._crit_edge:                                      ; preds = %bb.eb, %bb.ea
  %i.nf = phi i64 [ %i.lb, %bb.ea ], [ %i.nl, %bb.eb ] ; 3 uses
  br i1 %.019, label %bb.ec, label %bb.eh

bb.eb:                                            ; preds = %.lr.ph, %bb.eb
  %i.ng = phi i64 [ %i.lb, %.lr.ph ], [ %i.nl, %bb.eb ]
  %.017216 = phi i64 [ 0, %.lr.ph ], [ %i.nm, %bb.eb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__detail::_StateSeq") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %12)
  %i.nh = load i64, ptr %i.nd, align 8, !tbaa !1481
  %i.ni = load ptr, ptr %i.ki, align 8, !tbaa !1457
  %i.nj = getelementptr inbounds nuw [48 x i8], ptr %i.ni, i64 %i.ng
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store i64 %i.nh, ptr %i.nk, align 8, !tbaa !1460
  %i.nl = load i64, ptr %i.ne, align 8, !tbaa !1482 ; 3 uses
  store i64 %i.nl, ptr %i.ld, align 8, !tbaa !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.nm = add nuw nsw i64 %.017216, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.nm, %i.lv
  br i1 %exitcond.not, label %._crit_edge, label %bb.eb, !llvm.loop !3684

bb.ec:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__detail::_StateSeq") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %12)
  %i.nn = load ptr, ptr %i.kf, align 8, !tbaa !1436 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.np = load i64, ptr %i.no, align 8, !tbaa !1481 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !1470
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %.sroa.5181.0..sroa_idx, align 8, !tbaa !594
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %i.np, ptr %.sroa.6184.0..sroa_idx, align 8
  %.sroa.8187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.nb, ptr %.sroa.8187.0..sroa_idx, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 56 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 64 ; 4 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !1468 ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !1469
  %.not.i.i.i.i75 = icmp eq ptr %i.ns, %i.nu
  br i1 %.not.i.i.i.i75, label %bb.ed, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i76

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i76: ; preds = %bb.ec
  store i32 2, ptr %i.ns, align 8
  %.sroa.5181.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store i64 -1, ptr %.sroa.5181.0..sroa_idx182, align 8
  %.sroa.6184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  store i64 %i.np, ptr %.sroa.6184.0..sroa_idx185, align 8
  %.sroa.8187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  store i8 %i.nb, ptr %.sroa.8187.0..sroa_idx188, align 8
  %.pre231 = load ptr, ptr %i.nr, align 8, !tbaa !1468
  %i.nv = getelementptr inbounds nuw i8, ptr %.pre231, i64 48 ; 2 uses
  store ptr %i.nv, ptr %i.nr, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77

bb.ed:                                            ; preds = %bb.ec
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.nq, ptr %i.ns, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %.pre.i.i81 = load ptr, ptr %i.nr, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77: ; preds = %bb.ed, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i76
  %i.nw = phi ptr [ %i.nv, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i76 ], [ %.pre.i.i81, %bb.ed ]
  %i.nx = load ptr, ptr %i.nq, align 8, !tbaa !1457
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = sdiv exact i64 %i.oa, 48                ; 2 uses
  %i.oc = icmp ugt i64 %i.ob, 100000
  br i1 %i.oc, label %bb.ee, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i78

bb.ee:                                            ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77
  call void @abort() #37
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i78: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77
  %i.od = load i32, ptr %3, align 8, !tbaa !1467
  %i.oe = icmp eq i32 %i.od, 11
  br i1 %i.oe, label %bb.ef, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82

bb.ef:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i78
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !1203 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i79, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.oh = call noundef zeroext i1 %i.og(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6184.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6184.0..sroa_idx, i32 noundef 3) #16, !inline_history !3671 ; 0 uses
  br label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82: ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i78, %bb.ef, %bb.eg
  %i.oi = add nsw i64 %i.ob, -1                   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.oj = load ptr, ptr %15, align 8, !tbaa !1503, !nonnull !599, !align !600
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 56
  %i.ol = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !1482
  %i.on = load ptr, ptr %i.ok, align 8, !tbaa !1457
  %i.oo = getelementptr inbounds nuw [48 x i8], ptr %i.on, i64 %i.om
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i64 %i.oi, ptr %i.op, align 8, !tbaa !1460
  %i.oq = load ptr, ptr %i.ki, align 8, !tbaa !1457
  %i.or = getelementptr inbounds nuw [48 x i8], ptr %i.oq, i64 %i.nf
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  store i64 %i.oi, ptr %i.os, align 8, !tbaa !1460
  store i64 %i.oi, ptr %i.ld, align 8, !tbaa !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.fb

bb.eh:                                            ; preds = %._crit_edge
  %i.ot = icmp slt i64 %.018, 0
  br i1 %i.ot, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #37
  unreachable

bb.ej:                                            ; preds = %bb.eh
  %i.ou = load ptr, ptr %i.kf, align 8, !tbaa !1436 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 10, ptr %2, align 8, !tbaa !1467
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.ov, align 8, !tbaa !1460
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 56 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 64 ; 4 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !1468 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 72
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !1469
  %.not.i.i.i.i83 = icmp eq ptr %i.oy, %i.pa
  br i1 %.not.i.i.i.i83, label %bb.ek, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i84

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i84: ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oy, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !1471
  %.pre.i85 = load ptr, ptr %i.ox, align 8, !tbaa !1468
  %i.pb = getelementptr inbounds nuw i8, ptr %.pre.i85, i64 48 ; 2 uses
  store ptr %i.pb, ptr %i.ox, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86

bb.ek:                                            ; preds = %bb.ej
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ow, ptr %i.oy, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre.i.i89 = load ptr, ptr %i.ox, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86: ; preds = %bb.ek, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i84
  %i.pc = phi ptr [ %i.pb, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i84 ], [ %.pre.i.i89, %bb.ek ]
  %i.pd = load ptr, ptr %i.ow, align 8, !tbaa !1457
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = sdiv exact i64 %i.pg, 48                ; 2 uses
  %i.pi = icmp ugt i64 %i.ph, 100000
  br i1 %i.pi, label %bb.el, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i87

bb.el:                                            ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86
  call void @abort() #37
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i87: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86
  %i.pj = load i32, ptr %2, align 8, !tbaa !1467
  %i.pk = icmp eq i32 %i.pj, 11
  br i1 %i.pk, label %bb.em, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90

bb.em:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i87
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !1203 ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i88, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.po = call noundef zeroext i1 %i.pm(ptr noundef nonnull align 8 dereferenceable(32) %i.pn, ptr noundef nonnull align 8 dereferenceable(32) %i.pn, i32 noundef 3) #16, !inline_history !77 ; 0 uses
  br label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90: ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i87, %bb.em, %bb.en
  %i.pp = add nsw i64 %i.ph, -1                   ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.pq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.pr, i8 0, i64 64, i1 false)
  store i64 8, ptr %i.pq, align 8, !tbaa !1508
  %i.ps = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36 ; 2 uses
  store ptr %i.ps, ptr %16, align 8, !tbaa !1509
  %i.pt = load i64, ptr %i.pq, align 8, !tbaa !1508
  %i.pu = add i64 %i.pt, -1
  %i.pv = lshr i64 %i.pu, 1
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.pv ; 3 uses
  %i.px = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #36 ; 6 uses
  store ptr %i.px, ptr %i.pw, align 8, !tbaa !1485
  %i.py = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  store ptr %i.pw, ptr %i.pz, align 8, !tbaa !1510
  %i.qa = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.px, ptr %i.qa, align 8, !tbaa !1511
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 512 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.qb, ptr %i.qc, align 8, !tbaa !1512
  %i.qd = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 5 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 5 uses
  store ptr %i.pw, ptr %i.qe, align 8, !tbaa !1510
  %i.qf = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 3 uses
  store ptr %i.px, ptr %i.qf, align 8, !tbaa !1511
  %i.qg = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 3 uses
  store ptr %i.qb, ptr %i.qg, align 8, !tbaa !1512
  store ptr %i.px, ptr %i.py, align 8, !tbaa !1513
  store ptr %i.px, ptr %i.qd, align 8, !tbaa !1514
  %.not223 = icmp eq i64 %.018, 0
  br i1 %.not223, label %._crit_edge219.thread, label %.lr.ph218

._crit_edge219.thread:                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90
  %.pre225 = load ptr, ptr %i.ki, align 8, !tbaa !1457
  %i.qh = getelementptr inbounds nuw [48 x i8], ptr %.pre225, i64 %i.nf
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store i64 %i.pp, ptr %i.qi, align 8, !tbaa !1460
  store i64 %i.pp, ptr %i.ld, align 8, !tbaa !1482
  br label %._crit_edge222

.lr.ph218:                                        ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90
  %i.qj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.8203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %17, i64 16
  br label %bb.eo

._crit_edge219:                                   ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit
  %.pre226 = load ptr, ptr %i.qd, align 8, !tbaa !1515 ; 2 uses
  %.pre227 = load ptr, ptr %i.py, align 8, !tbaa !1515 ; 2 uses
  %i.qn = getelementptr inbounds nuw [48 x i8], ptr %i.ry, i64 %i.rx
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store i64 %i.pp, ptr %i.qo, align 8, !tbaa !1460
  store i64 %i.pp, ptr %i.ld, align 8, !tbaa !1482
  %i.qp = icmp eq ptr %.pre226, %.pre227
  br i1 %i.qp, label %._crit_edge222, label %.lr.ph221.preheader

.lr.ph221.preheader:                              ; preds = %._crit_edge219
  %.pre228 = load ptr, ptr %i.qf, align 8, !tbaa !1511, !noalias !3697
  br label %.lr.ph221

bb.eo:                                            ; preds = %.lr.ph218, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit
  %i.qq = phi i64 [ %i.nf, %.lr.ph218 ], [ %i.rx, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit ]
  %.016217 = phi i64 [ 0, %.lr.ph218 ], [ %i.sb, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__detail::_StateSeq") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.qr = load ptr, ptr %i.kf, align 8, !tbaa !1436 ; 3 uses
  %i.qs = load i64, ptr %i.qj, align 8, !tbaa !1481 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 2, ptr %1, align 8, !tbaa !1470
  store i64 %i.qs, ptr %.sroa.5197.0..sroa_idx, align 8, !tbaa !594
  store i64 %i.pp, ptr %.sroa.6200.0..sroa_idx, align 8
  store i8 %i.nb, ptr %.sroa.8203.0..sroa_idx, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 56 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 64 ; 4 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !1468 ; 8 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 72
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !1469
  %.not.i.i.i.i91 = icmp eq ptr %i.qv, %i.qx
  br i1 %.not.i.i.i.i91, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i32 2, ptr %i.qv, align 8
  %.sroa.5197.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store i64 %i.qs, ptr %.sroa.5197.0..sroa_idx198, align 8
  %.sroa.6200.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 3 uses
  store i64 %i.pp, ptr %.sroa.6200.0..sroa_idx201, align 8
  %.sroa.8203.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %i.qv, i64 24 ; 2 uses
  store i8 %i.nb, ptr %.sroa.8203.0..sroa_idx204, align 8
  %i.qy = load i32, ptr %1, align 8, !tbaa !1467
  %i.qz = icmp eq i32 %i.qy, 11
  br i1 %i.qz, label %bb.eq, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92

bb.eq:                                            ; preds = %bb.ep
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qv, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6200.0..sroa_idx201, i8 0, i64 24, i1 false)
  %i.rb = load ptr, ptr %i.qk, align 8, !tbaa !1478
  store ptr %i.rb, ptr %i.ra, align 8, !tbaa !1478
  %i.rc = load ptr, ptr %i.ql, align 8, !tbaa !1203 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i96 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i96, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  store i64 %i.pp, ptr %.sroa.6200.0..sroa_idx201, align 8
  store i8 %i.nb, ptr %.sroa.8203.0..sroa_idx204, align 8
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !1203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ql, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92: ; preds = %bb.er, %bb.eq, %bb.ep
  %i.re = load ptr, ptr %i.qu, align 8, !tbaa !1468
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 48 ; 2 uses
  store ptr %i.rf, ptr %i.qu, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93

bb.es:                                            ; preds = %bb.eo
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.qt, ptr %i.qv, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %.pre.i.i97 = load ptr, ptr %i.qu, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93: ; preds = %bb.es, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92
  %i.rg = phi ptr [ %i.rf, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92 ], [ %.pre.i.i97, %bb.es ]
  %i.rh = load ptr, ptr %i.qt, align 8, !tbaa !1457
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = sdiv exact i64 %i.rk, 48                ; 2 uses
  %i.rm = icmp ugt i64 %i.rl, 100000
  br i1 %i.rm, label %bb.et, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i94

bb.et:                                            ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93
  call void @abort() #37
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i94: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93
  %i.rn = load i32, ptr %1, align 8, !tbaa !1467
  %i.ro = icmp eq i32 %i.rn, 11
  br i1 %i.ro, label %bb.eu, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98

bb.eu:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i94
  %i.rp = load ptr, ptr %i.ql, align 8, !tbaa !1203 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i95, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.rq = call noundef zeroext i1 %i.rp(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6200.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6200.0..sroa_idx, i32 noundef 3) #16, !inline_history !3671 ; 0 uses
  br label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98: ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i94, %bb.eu, %bb.ev
  %i.rr = add nsw i64 %i.rl, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store i64 %i.rr, ptr %i.a, align 8, !tbaa !594
  %i.rs = load ptr, ptr %i.qd, align 8, !tbaa !1514 ; 3 uses
  %i.rt = load ptr, ptr %i.qg, align 8, !tbaa !1516
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 -8
  %.not.i.i99 = icmp eq ptr %i.rs, %i.ru
  br i1 %.not.i.i99, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98
  store i64 %i.rr, ptr %i.rs, align 8, !tbaa !594
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store ptr %i.rv, ptr %i.qd, align 8, !tbaa !1514
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.ex:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98
  call void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %bb.ew, %bb.ex
  %i.rw = load i64, ptr %i.a, align 8, !tbaa !594
  %i.rx = load i64, ptr %i.qm, align 8, !tbaa !1482 ; 2 uses
  %i.ry = load ptr, ptr %i.ki, align 8, !tbaa !1457 ; 2 uses
  %i.rz = getelementptr inbounds nuw [48 x i8], ptr %i.ry, i64 %i.qq
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i64 %i.rw, ptr %i.sa, align 8, !tbaa !1460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.sb = add nuw nsw i64 %.016217, 1             ; 2 uses
  %exitcond224.not = icmp eq i64 %i.sb, %.018
  br i1 %exitcond224.not, label %._crit_edge219, label %bb.eo, !llvm.loop !3687

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.sc = phi ptr [ %i.sy, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ], [ %.pre227, %.lr.ph221.preheader ]
  %i.sd = phi ptr [ %i.sz, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ], [ %.pre228, %.lr.ph221.preheader ] ; 3 uses
  %i.se = phi ptr [ %storemerge.i.i, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ], [ %.pre226, %.lr.ph221.preheader ] ; 2 uses
  %i.sf = load ptr, ptr %i.kf, align 8, !tbaa !1436
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 56 ; 2 uses
  %i.sh = icmp eq ptr %i.se, %i.sd
  br i1 %i.sh, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph221
  %i.si = getelementptr inbounds i8, ptr %i.se, i64 -8 ; 2 uses
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !594
  %i.sk = load ptr, ptr %i.sg, align 8, !tbaa !1457
  %i.sl = getelementptr inbounds nuw [48 x i8], ptr %i.sk, i64 %i.sj
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.ez:                                            ; preds = %.lr.ph221
  %i.sm = load ptr, ptr %i.qe, align 8, !tbaa !1510, !noalias !3697
  %i.sn = getelementptr inbounds i8, ptr %i.sm, i64 -8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !1485
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 504
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !594
  %i.sr = load ptr, ptr %i.sg, align 8, !tbaa !1457
  %i.ss = getelementptr inbounds nuw [48 x i8], ptr %i.sr, i64 %i.sq
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef 512) #34
  %i.st = load ptr, ptr %i.qe, align 8, !tbaa !1517
  %i.su = getelementptr inbounds i8, ptr %i.st, i64 -8 ; 2 uses
  store ptr %i.su, ptr %i.qe, align 8, !tbaa !1510
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !1485 ; 4 uses
  store ptr %i.sv, ptr %i.qf, align 8, !tbaa !1511
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 512
  store ptr %i.sw, ptr %i.qg, align 8, !tbaa !1512
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 504
  %.pre229 = load ptr, ptr %i.py, align 8, !tbaa !1515
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.ey, %bb.ez
  %i.sy = phi ptr [ %i.sc, %bb.ey ], [ %.pre229, %bb.ez ] ; 2 uses
  %i.sz = phi ptr [ %i.sd, %bb.ey ], [ %i.sv, %bb.ez ]
  %i.ta = phi ptr [ %i.sl, %bb.ey ], [ %i.ss, %bb.ez ]
  %storemerge.i.i = phi ptr [ %i.si, %bb.ey ], [ %i.sx, %bb.ez ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.qd, align 8, !tbaa !1514
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8 ; 2 uses
  %i.tc = load <2 x i64>, ptr %i.tb, align 8, !tbaa !594
  %i.td = shufflevector <2 x i64> %i.tc, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.td, ptr %i.tb, align 8, !tbaa !594
  %i.te = icmp eq ptr %storemerge.i.i, %i.sy
  br i1 %i.te, label %._crit_edge222, label %.lr.ph221, !llvm.loop !3688

._crit_edge222:                                   ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit, %._crit_edge219.thread, %._crit_edge219
  %i.tf = load ptr, ptr %16, align 8, !tbaa !1509 ; 2 uses
  %.not.i.i.i101 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i.i101, label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge222
  %i.tg = load ptr, ptr %i.pz, align 8, !tbaa !1518 ; 2 uses
  %i.th = load ptr, ptr %i.qe, align 8, !tbaa !1517 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = icmp ult ptr %i.tg, %i.ti
  br i1 %i.tj, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fa, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.tl, %.lr.ph.i.i.i.i ], [ %i.tg, %bb.fa ] ; 3 uses
  %i.tk = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !1485
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef 512) #34
  %i.tl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.tm = icmp ult ptr %.06.i.i.i.i, %i.th
  br i1 %i.tm, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, !llvm.loop !80

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %16, align 8, !tbaa !1509
  br label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, %bb.fa
  %i.tn = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i ], [ %i.tf, %bb.fa ]
  %i.to = load i64, ptr %i.pq, align 8, !tbaa !1508
  %i.tp = shl i64 %i.to, 3
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tp) #34
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit

_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit:          ; preds = %._crit_edge222, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.fb

bb.fb:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82
  %i.tq = load ptr, ptr %i.jd, align 8, !tbaa !1443 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !1483
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 -24
  %.not.i.i102 = icmp eq ptr %i.tq, %i.tt
  br i1 %.not.i.i102, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tq, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !1484
  %i.tu = load ptr, ptr %i.jd, align 8, !tbaa !1443
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  store ptr %i.tv, ptr %i.jd, align 8, !tbaa !1443
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103

bb.fd:                                            ; preds = %bb.fb
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103: ; preds = %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit59

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit59: ; preds = %bb.a, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit35
  %.0 = phi i1 [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit35 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_word_boundEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 10 uses
  %i.a = zext i1 %1 to i8                         ; 3 uses
  store i32 6, ptr %2, align 8, !tbaa !1470
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %.sroa.510.0..sroa_idx, align 8, !tbaa !594
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.a, ptr %.sroa.7.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1468 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1469
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  store i32 6, ptr %i.d, align 8
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -1, ptr %.sroa.510.0..sroa_idx11, align 8
  %.sroa.7.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %i.a, ptr %.sroa.7.0..sroa_idx15, align 8
  %i.g = load i32, ptr %2, align 8, !tbaa !1467
  %i.h = icmp eq i32 %i.g, 11
  br i1 %i.h, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1478
  store ptr %i.l, ptr %i.j, align 8, !tbaa !1478
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1203 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %i.a, ptr %.sroa.7.16..sroa_idx, align 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !1203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1468
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !1468
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %bb.d, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.r = phi ptr [ %i.q, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !1457
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 48                  ; 2 uses
  %i.x = icmp ugt i64 %i.w, 100000
  br i1 %i.x, label %bb.e, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  call void @abort() #37
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.y = load i32, ptr %2, align 8, !tbaa !1467
  %i.z = icmp eq i32 %i.y, 11
  br i1 %i.z, label %bb.f, label %_ZNSt8__detail6_StateIcED2Ev.exit2

bb.f:                                             ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1203 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit2, label %bb.g

end_hunk_1
