Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitMk?download=true
inline.NumInlined: 2881
inline.NumDeleted: 783
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL9dumpLevelv:bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

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
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !143    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %bb.b, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.555) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.a
  %.not = icmp ne ptr %i.f, %i.g
  tail call void @llvm.assume(i1 %.not)
  %i.m = shl nuw nsw i64 %i.k, 3
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28
          to label %.lr.ph.i.preheader unwind label %.loopexit.split-lp ; 3 uses

.lr.ph.i.preheader:                               ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i
  %.sroa.20.3 = phi ptr [ %.sroa.20.4, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %i.o, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.0159.3 = phi ptr [ %.sroa.0159.4, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %i.n, %.lr.ph.i.preheader ] ; 7 uses
  %i.p = phi ptr [ %i.ah, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %i.o, %.lr.ph.i.preheader ] ; 3 uses
  %i.q = phi ptr [ %.sroa.12.1, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %i.n, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.03.07.i = phi ptr [ %i.ai, %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i ], [ %i.g, %.lr.ph.i.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !133  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  store i64 %i.s, ptr %i.q, align 8, !tbaa !78
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %.sroa.0159.3 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #26
          to label %.noexc63 unwind label %.loopexit.split-lp

.noexc63:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #28
          to label %.noexc64 unwind label %.loopexit ; 4 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store i64 %i.s, ptr %i.ae, align 8, !tbaa !78
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %.noexc64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %.sroa.0159.3, i64 %i.v, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.f, %.noexc64
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0159.3, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.3, i64 noundef %i.v) #24
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 2 uses
  br label %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i

_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i, %bb.c
  %.sroa.20.4 = phi ptr [ %i.ag, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.20.3, %bb.c ] ; 8 uses
  %.pn175 = phi ptr [ %i.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %i.q, %bb.c ] ; 4 uses
  %.sroa.0159.4 = phi ptr [ %i.ad, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0159.3, %bb.c ] ; 18 uses
  %i.ah = phi ptr [ %i.ag, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i.i ], [ %i.p, %bb.c ]
  %.sroa.12.1 = getelementptr inbounds nuw i8, ptr %.pn175, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.f
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit, label %.lr.ph.i, !llvm.loop !665

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorImSaImEEEaSEOm.exit.i
  %.pn175.lcssa278279 = ptrtoaddr ptr %.pn175 to i64
  %.sroa.0159.4.lcssa280281 = ptrtoaddr ptr %.sroa.0159.4 to i64
  %.not.i.i = icmp eq ptr %.sroa.0159.4, %.sroa.12.1 ; 2 uses
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit
  %i.aj = ptrtoint ptr %.sroa.12.1 to i64
  %i.ak = ptrtoint ptr %.sroa.0159.4 to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = xor i64 %i.ao, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.0159.4, ptr nonnull %.sroa.12.1, i64 noundef %i.ap)
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %bb.h
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.0159.4, ptr nonnull %.sroa.12.1)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit unwind label %.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN9EmitGroup17FilenameWithScoreESt6vectorIS3_SaIS3_EEEESt20back_insert_iteratorIS6_ImSaImEEEZNS2_21dumpLogScoreHistogramERSoEUlRS4_E_ET0_T_SI_SH_T1_.exit, %.noexc65
  %i.aq = load i64, ptr %.pn175, align 8, !tbaa !78 ; 6 uses
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.556, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.aq)
          to label %_ZNSolsEl.exit unwind label %bb.v ; 4 uses

_ZNSolsEl.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !17
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !666
  %.not.i69 = icmp eq i64 %i.ay, 0
  br i1 %.not.i69, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSolsEl.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.k unwind label %bb.v       ; 0 uses

bb.j:                                             ; preds = %_ZNSolsEl.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef signext 10)
          to label %bb.k unwind label %bb.v       ; 0 uses

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.bb = call i64 @llvm.abs.i64(i64 %i.aq, i1 false) ; 5 uses
  %i.bc = icmp ult i64 %i.bb, 10
  br i1 %i.bc, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.029.i.i = phi i32 [ %i.bk, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.bj, %bb.q ], [ %i.bb, %bb.k ] ; 5 uses
  %i.bd = icmp ult i64 %.02328.i.i, 100
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.be = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bf = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bh = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bj = udiv i64 %.02328.i.i, 10000
  %i.bk = add i32 %.029.i.i, 4                    ; 2 uses
  %i.bl = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.bl, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !670

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i = phi i32 [ %i.bi, %bb.p ], [ %i.be, %bb.l ], [ %i.bg, %bb.n ], [ 1, %bb.k ], [ %i.bk, %bb.q ] ; 2 uses
  %.lobit.i = lshr i64 %i.aq, 63                  ; 2 uses
  %i.bm = trunc nuw nsw i64 %.lobit.i to i32
  %i.bn = add i32 %.022.i.i, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bp, ptr %2, align 8, !tbaa !77, !alias.scope !667
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bo, i8 noundef signext 45)
          to label %.noexc72 unwind label %bb.w

.noexc72:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bq = load ptr, ptr %2, align 8, !tbaa !10, !alias.scope !667
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.lobit.i ; 4 uses
  %i.bs = icmp ugt i64 %i.bb, 99
  br i1 %i.bs, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc72
  %i.bt = add i32 %.022.i.i, -1
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bw, %.lr.ph.i13.i ], [ %i.bb, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.cg, %.lr.ph.i13.i ], [ %i.bt, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bu = urem i64 %.020.i.i, 100
  %i.bv = shl nuw nsw i64 %i.bu, 1
  %i.bw = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bv ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17, !noalias !667
  %i.ca = zext i32 %.01819.i.i to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ca
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !17
  %i.cc = load i8, ptr %i.bx, align 2, !tbaa !17, !noalias !667
  %i.cd = add i32 %.01819.i.i, -1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ce
  store i8 %i.cc, ptr %i.cf, align 1, !tbaa !17
  %i.cg = add i32 %.01819.i.i, -2
  %i.ch = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ch, label %.lr.ph.i13.i, label %._crit_edge.i.i, !llvm.loop !671

._crit_edge.i.i:                                  ; preds = %.lr.ph.i13.i, %.noexc72
  %.0.lcssa.i.i = phi i64 [ %i.bb, %.noexc72 ], [ %i.bw, %.lr.ph.i13.i ] ; 3 uses
  %i.ci = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.cj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ck = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !17, !noalias !667
  %i.cn = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !17
  %i.co = load i8, ptr %i.ck, align 2, !tbaa !17, !noalias !667
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.cp = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.cq = or disjoint i8 %i.cp, 48
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %storemerge.i.i = phi i8 [ %i.cq, %bb.s ], [ %i.co, %bb.r ]
  store i8 %storemerge.i.i, ptr %i.br, align 1, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !16 ; 2 uses
  %i.ct = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bp
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.t
  %i.cv = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.cv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.cw = load i64, ptr %i.bp, align 8, !tbaa !17
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.cy = add nsw i64 %i.aq, 1                    ; 9 uses
  %.sroa.speculated154 = call i64 @llvm.smin.i64(i64 %i.cy, i64 60) ; 9 uses
  %i.cz = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %i.cz)
  %i.da = icmp ugt i64 %.sroa.speculated154, 576460752303423487
  br i1 %i.da, label %bb.u, label %_ZNKSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.560) #26
          to label %.noexc122 unwind label %.thread

.noexc122:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = shl nuw nsw i64 %.sroa.speculated154, 4 ; 6 uses
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #28
          to label %.noexc74 unwind label %.thread ; 14 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dc, i8 0, i64 %i.db, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i64 0, ptr %i.dc, align 8, !tbaa !672
  %i.de = icmp sgt i64 %i.aq, 0
  br i1 %i.de, label %.lr.ph.preheader, label %.preheader181

.lr.ph.preheader:                                 ; preds = %.noexc74
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.speculated154, i64 2)
  %i.df = add nsw i64 %umax, -1                   ; 3 uses
  %xtraiter = and i64 %i.df, 1
  %i.dg = icmp eq i64 %i.aq, 1
  br i1 %i.dg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.df, -2
  br label %.lr.ph

.preheader181.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader181, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader181.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader181.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod277 = trunc i64 %i.df to i1
  call void @llvm.assume(i1 %lcmp.mod277)
  %i.dh = mul nuw nsw i64 %indvars.iv.epil.init, %i.cy
  %i.di = udiv i64 %i.dh, %.sroa.speculated154
  %i.dj = add nuw nsw i64 %i.di, 1
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %indvars.iv.epil.init
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !672
  br label %.preheader181

.preheader181:                                    ; preds = %.lr.ph.epil.preheader, %.preheader181.loopexit.unr-lcssa, %.noexc74
  br i1 %.not.i.i, label %.lr.ph201.preheader, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %.preheader181
  %i.dl = sub i64 %.pn175.lcssa278279, %.sroa.0159.4.lcssa280281 ; 2 uses
  %i.dm = and i64 %i.dl, 8
  %lcmp.mod283.not.not = icmp eq i64 %i.dm, 0
  br i1 %lcmp.mod283.not.not, label %.lr.ph197.prol, label %.lr.ph197.prol.loopexit

.lr.ph197.prol:                                   ; preds = %.lr.ph197.preheader
  %i.dn = load i64, ptr %.sroa.0159.4, align 8, !tbaa !78
  %i.do = mul i64 %i.dn, %.sroa.speculated154
  %i.dp = udiv i64 %i.do, %i.cy
  %i.dq = and i64 %i.dp, 4294967295
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !674
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !674
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0159.4, i64 8
  br label %.lr.ph197.prol.loopexit

.lr.ph197.prol.loopexit:                          ; preds = %.lr.ph197.prol, %.lr.ph197.preheader
  %.sroa.0136.0196.unr = phi ptr [ %.sroa.0159.4, %.lr.ph197.preheader ], [ %i.dv, %.lr.ph197.prol ]
  %i.dw = icmp ult i64 %i.dl, 8
  br i1 %i.dw, label %.lr.ph201.preheader, label %.lr.ph197

.lr.ph201.preheader:                              ; preds = %.lr.ph197.prol.loopexit, %.lr.ph197, %.preheader181
  %i.dx = add nsw i64 %i.db, -16                  ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 4
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %xtraiter284 = and i64 %i.dz, 7                 ; 3 uses
  %i.ea = icmp ult i64 %i.dx, 112
  br i1 %i.ea, label %.lr.ph201.epil.preheader, label %.lr.ph201.preheader.new

.lr.ph201.preheader.new:                          ; preds = %.lr.ph201.preheader
  %unroll_iter288 = and i64 %i.dz, 2305843009213693944
  br label %.lr.ph201

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

.loopexit.split-lp:                               ; preds = %bb.b, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.e, %bb.h, %.noexc65
  %.sroa.20.0.ph = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.20.3, %bb.e ], [ %.sroa.20.4, %bb.h ], [ %.sroa.20.4, %.noexc65 ], [ null, %bb.b ]
  %.sroa.0159.0.ph = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.0159.3, %bb.e ], [ %.sroa.0159.4, %bb.h ], [ %.sroa.0159.4, %.noexc65 ], [ null, %bb.b ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

bb.v:                                             ; preds = %bb.j, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

bb.w:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

.thread:                                          ; preds = %bb.u, %_ZNKSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZN9EmitGroup21dumpLogScoreHistogramERSoE8IntervalSaIS2_EED2Ev.exit117

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ee = mul nuw nsw i64 %indvars.iv, %i.cy
  %i.ef = udiv i64 %i.ee, %.sroa.speculated154
  %i.eg = add nuw nsw i64 %i.ef, 1
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %indvars.iv
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !672
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ei = mul nuw nsw i64 %indvars.iv.next, %i.cy
  %i.ej = udiv i64 %i.ei, %.sroa.speculated154
  %i.ek = add nuw nsw i64 %i.ej, 1
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %indvars.iv.next
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !672
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader181.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !675

.lr.ph197:                                        ; preds = %.lr.ph197.prol.loopexit, %.lr.ph197
  %.sroa.0136.0196 = phi ptr [ %i.fd, %.lr.ph197 ], [ %.sroa.0136.0196.unr, %.lr.ph197.prol.loopexit ] ; 3 uses
  %i.em = load i64, ptr %.sroa.0136.0196, align 8, !tbaa !78
  %i.en = mul i64 %i.em, %.sroa.speculated154
  %i.eo = udiv i64 %i.en, %i.cy
  %i.ep = and i64 %i.eo, 4294967295
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !674
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 8, !tbaa !674
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0136.0196, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !78
  %i.ew = mul i64 %i.ev, %.sroa.speculated154
  %i.ex = udiv i64 %i.ew, %i.cy
  %i.ey = and i64 %i.ex, 4294967295
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !674
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !674
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0136.0196, i64 16
  %.not176.1 = icmp eq ptr %i.eu, %.pn175
  br i1 %.not176.1, label %.lr.ph201.preheader, label %.lr.ph197

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph201
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %._crit_edge, label %.lr.ph201.epil.preheader

.lr.ph201.epil.preheader:                         ; preds = %._crit_edge.unr-lcssa, %.lr.ph201.preheader
  %.sroa.0129.0200.epil.init = phi ptr [ %i.dc, %.lr.ph201.preheader ], [ %i.gc, %._crit_edge.unr-lcssa ]
  %.0199.epil.init = phi i32 [ 0, %.lr.ph201.preheader ], [ %.sroa.speculated.7, %._crit_edge.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter284, 0
  call void @llvm.assume(i1 %lcmp.mod287)
  br label %.lr.ph201.epil

.lr.ph201.epil:                                   ; preds = %.lr.ph201.epil, %.lr.ph201.epil.preheader
  %.sroa.0129.0200.epil = phi ptr [ %i.fg, %.lr.ph201.epil ], [ %.sroa.0129.0200.epil.init, %.lr.ph201.epil.preheader ] ; 2 uses
  %.0199.epil = phi i32 [ %.sroa.speculated.epil, %.lr.ph201.epil ], [ %.0199.epil.init, %.lr.ph201.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph201.epil ], [ 0, %.lr.ph201.epil.preheader ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200.epil, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !23
  %.sroa.speculated.epil = call i32 @llvm.smax.i32(i32 %.0199.epil, i32 %i.ff) ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter284
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph201.epil, !llvm.loop !676

._crit_edge:                                      ; preds = %.lr.ph201.epil, %._crit_edge.unr-lcssa
  %.sroa.speculated.lcssa = phi i32 [ %.sroa.speculated.7, %._crit_edge.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph201.epil ]
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.557, i64 noundef 31)
          to label %.lr.ph204 unwind label %bb.x  ; 0 uses

.lr.ph204:                                        ; preds = %._crit_edge
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %sext179 = shl i64 %i.cs, 32
  %i.fl = ashr exact i64 %sext179, 32             ; 2 uses
  br label %bb.y

.lr.ph201:                                        ; preds = %.lr.ph201, %.lr.ph201.preheader.new
  %.sroa.0129.0200 = phi ptr [ %i.dc, %.lr.ph201.preheader.new ], [ %i.gc, %.lr.ph201 ] ; 9 uses
  %.0199 = phi i32 [ 0, %.lr.ph201.preheader.new ], [ %.sroa.speculated.7, %.lr.ph201 ]
  %niter289 = phi i64 [ 0, %.lr.ph201.preheader.new ], [ %niter289.next.7, %.lr.ph201 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200, i64 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !23
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0199, i32 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200, i64 24
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !23
  %.sroa.speculated.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.fp)
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200, i64 40
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !23
  %.sroa.speculated.2 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200, i64 56
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !23
  %.sroa.speculated.3 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.2, i32 %i.ft)
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200, i64 72
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !23
  %.sroa.speculated.4 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.3, i32 %i.fv)
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200, i64 88
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23
  %.sroa.speculated.5 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.4, i32 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200, i64 104
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !23
  %.sroa.speculated.6 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.5, i32 %i.fz)
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200, i64 120
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !23
  %.sroa.speculated.7 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.6, i32 %i.gb) ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0129.0200, i64 128 ; 2 uses
  %niter289.next.7 = add i64 %niter289, 8         ; 2 uses
  %niter289.ncmp.7 = icmp eq i64 %niter289.next.7, %unroll_iter288
  br i1 %niter289.ncmp.7, label %._crit_edge.unr-lcssa, label %.lr.ph201
end_hunk_0
