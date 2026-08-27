Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitMk?download=true
inline.NumInlined: 2881
inline.NumDeleted: 783
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL9dumpLevelv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.k

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store i32 %i.o, ptr @_ZZL9dumpLevelvE7s_level, align 4, !tbaa !23
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn16.pn

bb.l:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.114 = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.o, %.thread ], [ %i.a, %bb.a ]
  ret i32 %.114
}

declare void @_ZN8V3Global13debugFilenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1920), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9EmitGroup21dumpLogScoreHistogramERSo(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !143    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.555) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.k, 3
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %.loopexit.split-lp ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !123
  %.pre220 = load ptr, ptr %i.e, align 8, !tbaa !123
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %i.p = phi ptr [ %.pre220, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = phi ptr [ %.pre, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.22.2 = phi ptr [ %i.o, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.c ] ; 3 uses
  %.sroa.13.0 = phi ptr [ %i.n, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.c ] ; 4 uses
  %.not6.i = icmp eq ptr %i.q, %i.p
  br i1 %.not6.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i
  %.sroa.22.3 = phi ptr [ %.sroa.22.4, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %.sroa.22.2, %bb.d ] ; 4 uses
  %.sroa.0160.3 = phi ptr [ %.sroa.0160.4, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %.sroa.13.0, %bb.d ] ; 7 uses
  %i.r = phi ptr [ %i.al, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %.sroa.22.2, %bb.d ] ; 3 uses
  %i.s = phi ptr [ %.sroa.13.1, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %.sroa.13.0, %bb.d ] ; 3 uses
  %.sroa.03.07.i = phi ptr [ %i.am, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !133  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  store i64 %i.u, ptr %i.s, align 8, !tbaa !78
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %.sroa.0160.3 to i64        ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 5 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.g, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
          to label %.noexc63 unwind label %.loopexit.split-lp

.noexc63:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.f
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
          to label %.noexc64 unwind label %.loopexit ; 4 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store i64 %i.u, ptr %i.ag, align 8, !tbaa !78
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

bb.h:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %.sroa.0160.3, i64 %i.x, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.h, %.noexc64
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0160.3, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ai = ptrtoint ptr %.sroa.22.3 to i64
  %i.aj = sub i64 %i.ai, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0160.3, i64 noundef %i.aj) #24
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad ; 2 uses
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i

_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, %bb.e
  %.sroa.22.4 = phi ptr [ %i.ak, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.22.3, %bb.e ] ; 5 uses
  %.pn180 = phi ptr [ %i.ag, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %i.s, %bb.e ]
  %.sroa.0160.4 = phi ptr [ %i.af, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0160.3, %bb.e ] ; 9 uses
  %i.al = phi ptr [ %i.ak, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %i.r, %bb.e ]
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn180, i64 8 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.am, %i.p
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit, label %.lr.ph.i, !llvm.loop !665

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i
  %.not.i.i = icmp eq ptr %.sroa.0160.4, %.sroa.13.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit
  %i.an = ptrtoint ptr %.sroa.13.1 to i64
  %i.ao = ptrtoint ptr %.sroa.0160.4 to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = xor i64 %i.as, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.0160.4, ptr nonnull %.sroa.13.1, i64 noundef %i.at)
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %bb.j
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.0160.4, ptr nonnull %.sroa.13.1)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit unwind label %.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %bb.d, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit, %.noexc65
  %.not.i.i258 = phi i1 [ false, %.noexc65 ], [ true, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit ], [ true, %bb.d ]
  %.sroa.0160.5255 = phi ptr [ %.sroa.0160.4, %.noexc65 ], [ %.sroa.0160.4, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit ], [ %.sroa.13.0, %bb.d ] ; 8 uses
  %.sroa.13.2254 = phi ptr [ %.sroa.13.1, %.noexc65 ], [ %.sroa.13.1, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit ], [ %.sroa.13.0, %bb.d ] ; 2 uses
  %.sroa.22.5251 = phi ptr [ %.sroa.22.4, %.noexc65 ], [ %.sroa.22.4, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit ], [ %.sroa.22.2, %bb.d ] ; 5 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.13.2254, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !78 ; 6 uses
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.556, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.av)
          to label %_ZNSolsEl.exit unwind label %bb.x ; 4 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !17
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !666
  %.not.i69 = icmp eq i64 %i.bd, 0
  br i1 %.not.i69, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSolsEl.exit
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.m unwind label %bb.x       ; 0 uses

bb.l:                                             ; preds = %_ZNSolsEl.exit
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext 10)
          to label %bb.m unwind label %bb.x       ; 0 uses

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.bg = call i64 @llvm.abs.i64(i64 %i.av, i1 false) ; 5 uses
  %i.bh = icmp ult i64 %i.bg, 10
  br i1 %i.bh, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.s
  %.029.i.i = phi i32 [ %i.bp, %bb.s ], [ 1, %bb.m ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.bo, %bb.s ], [ %i.bg, %bb.m ] ; 5 uses
  %i.bi = icmp ult i64 %.02328.i.i, 100
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bj = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bk = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bm = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bo = udiv i64 %.02328.i.i, 10000
  %i.bp = add i32 %.029.i.i, 4                    ; 2 uses
  %i.bq = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.bq, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !670

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m
  %.022.i.i = phi i32 [ %i.bn, %bb.r ], [ %i.bj, %bb.n ], [ %i.bl, %bb.p ], [ 1, %bb.m ], [ %i.bp, %bb.s ] ; 2 uses
  %.lobit.i = lshr i64 %i.av, 63                  ; 2 uses
  %i.br = trunc nuw nsw i64 %.lobit.i to i32
  %i.bs = add i32 %.022.i.i, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !77, !alias.scope !667
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bt, i8 noundef signext 45)
          to label %.noexc72 unwind label %bb.y

.noexc72:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bv = load ptr, ptr %2, align 8, !tbaa !10, !alias.scope !667
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.lobit.i ; 4 uses
  %i.bx = icmp ugt i64 %i.bg, 99
  br i1 %i.bx, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc72
  %i.by = add i32 %.022.i.i, -1
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.cb, %.lr.ph.i13.i ], [ %i.bg, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.cl, %.lr.ph.i13.i ], [ %i.by, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bz = urem i64 %.020.i.i, 100
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ca ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17, !noalias !667
  %i.cf = zext i32 %.01819.i.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cf
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !17
  %i.ch = load i8, ptr %i.cc, align 2, !tbaa !17, !noalias !667
  %i.ci = add i32 %.01819.i.i, -1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !17
  %i.cl = add i32 %.01819.i.i, -2
  %i.cm = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.cm, label %.lr.ph.i13.i, label %._crit_edge.i.i, !llvm.loop !671

._crit_edge.i.i:                                  ; preds = %.lr.ph.i13.i, %.noexc72
  %.0.lcssa.i.i = phi i64 [ %i.bg, %.noexc72 ], [ %i.cb, %.lr.ph.i13.i ] ; 3 uses
  %i.cn = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.co = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17, !noalias !667
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !17
  %i.ct = load i8, ptr %i.cp, align 2, !tbaa !17, !noalias !667
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.cu = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.cv = or disjoint i8 %i.cu, 48
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %storemerge.i.i = phi i8 [ %i.cv, %bb.u ], [ %i.ct, %bb.t ]
  store i8 %storemerge.i.i, ptr %i.bw, align 1, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !16 ; 2 uses
  %i.cy = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bu
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.v
  %i.da = icmp ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.da)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.db = load i64, ptr %i.bu, align 8, !tbaa !17
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dd = add nsw i64 %i.av, 1                    ; 7 uses
  %.sroa.speculated155 = call i64 @llvm.smin.i64(i64 %i.dd, i64 60) ; 7 uses
  %i.de = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %i.de)
  %i.df = icmp ugt i64 %.sroa.speculated155, 576460752303423487
  br i1 %i.df, label %bb.w, label %_ZNKSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EE12_M_check_lenEmPKc.exit.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.noexc122 unwind label %.thread

.noexc122:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dg = shl nuw nsw i64 %.sroa.speculated155, 4 ; 6 uses
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #28
          to label %.noexc74 unwind label %.thread ; 12 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dh, i8 0, i64 %i.dg, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i64 0, ptr %i.dh, align 8, !tbaa !672
  %i.dj = icmp sgt i64 %i.av, 0
  br i1 %i.dj, label %.lr.ph.preheader, label %.preheader186

.lr.ph.preheader:                                 ; preds = %.noexc74
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.speculated155, i64 2)
  %i.dk = add nsw i64 %umax, -1                   ; 3 uses
  %xtraiter = and i64 %i.dk, 1
  %i.dl = icmp eq i64 %i.av, 1
  br i1 %i.dl, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.dk, -2
  br label %.lr.ph

.preheader186.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader186, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader186.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader186.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod283 = trunc i64 %i.dk to i1
  call void @llvm.assume(i1 %lcmp.mod283)
  %i.dm = mul nuw nsw i64 %indvars.iv.epil.init, %i.dd
  %i.dn = udiv i64 %i.dm, %.sroa.speculated155
  %i.do = add nuw nsw i64 %i.dn, 1
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %indvars.iv.epil.init
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !672
  br label %.preheader186

.preheader186:                                    ; preds = %.lr.ph.epil.preheader, %.preheader186.loopexit.unr-lcssa, %.noexc74
  br i1 %.not.i.i258, label %.lr.ph206.preheader, label %.lr.ph202

.lr.ph206.preheader:                              ; preds = %.lr.ph202, %.preheader186
  %i.dq = add nsw i64 %i.dg, -16                  ; 2 uses
  %i.dr = lshr exact i64 %i.dq, 4
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %xtraiter284 = and i64 %i.ds, 7                 ; 3 uses
  %i.dt = icmp ult i64 %i.dq, 112
  br i1 %i.dt, label %.lr.ph206.epil.preheader, label %.lr.ph206.preheader.new

.lr.ph206.preheader.new:                          ; preds = %.lr.ph206.preheader
  %unroll_iter288 = and i64 %i.ds, 2305843009213693944
  br label %.lr.ph206

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

.loopexit.split-lp:                               ; preds = %bb.b, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.g, %bb.j, %.noexc65
  %.sroa.22.0.ph = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.22.3, %bb.g ], [ %.sroa.22.4, %bb.j ], [ %.sroa.22.4, %.noexc65 ], [ null, %bb.b ]
  %.sroa.0160.0.ph = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.0160.3, %bb.g ], [ %.sroa.0160.4, %bb.j ], [ %.sroa.0160.4, %.noexc65 ], [ null, %bb.b ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

bb.x:                                             ; preds = %bb.l, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

bb.y:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

.thread:                                          ; preds = %bb.w, %_ZNKSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.dx = mul nuw nsw i64 %indvars.iv, %i.dd
  %i.dy = udiv i64 %i.dx, %.sroa.speculated155
  %i.dz = add nuw nsw i64 %i.dy, 1
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %indvars.iv
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !672
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eb = mul nuw nsw i64 %indvars.iv.next, %i.dd
  %i.ec = udiv i64 %i.eb, %.sroa.speculated155
  %i.ed = add nuw nsw i64 %i.ec, 1
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %indvars.iv.next
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !672
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader186.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !674

.lr.ph202:                                        ; preds = %.preheader186, %.lr.ph202
  %.sroa.0136.0201 = phi ptr [ %i.en, %.lr.ph202 ], [ %.sroa.0160.5255, %.preheader186 ] ; 2 uses
  %i.ef = load i64, ptr %.sroa.0136.0201, align 8, !tbaa !78
  %i.eg = mul i64 %i.ef, %.sroa.speculated155
  %i.eh = udiv i64 %i.eg, %i.dd
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !675
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !675
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0136.0201, i64 8 ; 2 uses
  %.not181 = icmp eq ptr %i.en, %.sroa.13.2254
  br i1 %.not181, label %.lr.ph206.preheader, label %.lr.ph202

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph206
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %._crit_edge, label %.lr.ph206.epil.preheader

.lr.ph206.epil.preheader:                         ; preds = %._crit_edge.unr-lcssa, %.lr.ph206.preheader
  %.sroa.0129.0205.epil.init = phi ptr [ %i.dh, %.lr.ph206.preheader ], [ %i.fm, %._crit_edge.unr-lcssa ]
  %.0204.epil.init = phi i32 [ 0, %.lr.ph206.preheader ], [ %.sroa.speculated.7, %._crit_edge.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter284, 0
  call void @llvm.assume(i1 %lcmp.mod287)
  br label %.lr.ph206.epil

.lr.ph206.epil:                                   ; preds = %.lr.ph206.epil, %.lr.ph206.epil.preheader
  %.sroa.0129.0205.epil = phi ptr [ %i.eq, %.lr.ph206.epil ], [ %.sroa.0129.0205.epil.init, %.lr.ph206.epil.preheader ] ; 2 uses
  %.0204.epil = phi i32 [ %.sroa.speculated.epil, %.lr.ph206.epil ], [ %.0204.epil.init, %.lr.ph206.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph206.epil ], [ 0, %.lr.ph206.epil.preheader ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205.epil, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !23
  %.sroa.speculated.epil = call i32 @llvm.smax.i32(i32 %.0204.epil, i32 %i.ep) ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter284
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph206.epil, !llvm.loop !676

._crit_edge:                                      ; preds = %.lr.ph206.epil, %._crit_edge.unr-lcssa
  %.sroa.speculated.lcssa = phi i32 [ %.sroa.speculated.7, %._crit_edge.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph206.epil ]
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.557, i64 noundef 31)
          to label %.lr.ph209 unwind label %bb.z  ; 0 uses

.lr.ph209:                                        ; preds = %._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %sext184 = shl i64 %i.cx, 32
  %i.ev = ashr exact i64 %sext184, 32             ; 2 uses
  br label %bb.aa

.lr.ph206:                                        ; preds = %.lr.ph206, %.lr.ph206.preheader.new
  %.sroa.0129.0205 = phi ptr [ %i.dh, %.lr.ph206.preheader.new ], [ %i.fm, %.lr.ph206 ] ; 9 uses
  %.0204 = phi i32 [ 0, %.lr.ph206.preheader.new ], [ %.sroa.speculated.7, %.lr.ph206 ]
  %niter289 = phi i64 [ 0, %.lr.ph206.preheader.new ], [ %niter289.next.7, %.lr.ph206 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205, i64 8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !23
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0204, i32 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205, i64 24
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !23
  %.sroa.speculated.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205, i64 40
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !23
  %.sroa.speculated.2 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205, i64 56
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !23
  %.sroa.speculated.3 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.2, i32 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205, i64 72
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !23
  %.sroa.speculated.4 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.3, i32 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205, i64 88
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !23
  %.sroa.speculated.5 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.4, i32 %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205, i64 104
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !23
  %.sroa.speculated.6 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.5, i32 %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205, i64 120
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !23
  %.sroa.speculated.7 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.6, i32 %i.fl) ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0129.0205, i64 128 ; 2 uses
  %niter289.next.7 = add i64 %niter289, 8         ; 2 uses
  %niter289.ncmp.7 = icmp eq i64 %niter289.next.7, %unroll_iter288
  br i1 %niter289.ncmp.7, label %._crit_edge.unr-lcssa, label %.lr.ph206

bb.z:                                             ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76._crit_edge, %._crit_edge
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aa:                                            ; preds = %.lr.ph209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %.sroa.0125.0208 = phi ptr [ %i.dh, %.lr.ph209 ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0125.0208, i64 8 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !675
  %i.fq = mul nsw i32 %i.fp, 81
  %i.fr = sdiv i32 %i.fq, %.sroa.speculated.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.fs = sext i32 %i.fr to i64
  store ptr %i.es, ptr %4, align 8, !tbaa !77
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.fs, i8 noundef signext 35)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.aa
  %i.ft = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.558, i64 noundef 2)
          to label %.noexc81 unwind label %bb.ai  ; 6 uses

.noexc81:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  store ptr %i.et, ptr %3, align 8, !tbaa !77, !alias.scope !678
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !10 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 5 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

bb.ab:                                            ; preds = %.noexc81
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !16 ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 16
end_hunk_0
