Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmList?download=true
inline.NumInlined: 3825
inline.NumDeleted: 1568
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_:bb.a
  store i64 %i.ai, ptr %i.w, align 8, !tbaa !34
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !34
  store ptr %i.y, ptr %.sroa.013.0, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %i.o, ptr %i.ak, align 8, !tbaa !44
  %i.al = load i64, ptr %i.z, align 8, !tbaa !34
  store i64 %i.al, ptr %i.w, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.v, ptr %.sroa.0.0, align 8, !tbaa !33
  store i64 %i.aj, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.z, ptr %.sroa.0.0, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.am = phi ptr [ %i.v, %bb.h ], [ %i.z, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.n, align 8, !tbaa !44
  store i8 0, ptr %i.am, align 1, !tbaa !34
  %.pre16 = load i64, ptr %i.l, align 8, !tbaa !44
  br label %bb.c, !llvm.loop !645

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit
  %i.an = load ptr, ptr %1, align 8, !tbaa !33    ; 6 uses
  %i.ao = icmp eq ptr %i.an, %i.a                 ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %bb.j
  br i1 %i.ao, label %bb.k, label %.thread.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2: ; preds = %bb.j
  br i1 %i.ao, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.ap = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.ap)
  %.not21.i5 = icmp eq ptr %1, %.sroa.013.0
  br i1 %.not21.i5, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10, label %bb.l, !prof !49

bb.l:                                             ; preds = %bb.k
  switch i64 %i.m, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !34
  store i8 %i.aq, ptr %i.v, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.an, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6: ; preds = %bb.n, %bb.m, %bb.l
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !44  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !44
  %i.at = load ptr, ptr %.sroa.013.0, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !34
  %.pre.i7 = load ptr, ptr %1, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

.thread.i9:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store ptr %i.an, ptr %.sroa.013.0, align 8, !tbaa !33
  store i64 %i.m, ptr %i.av, align 8, !tbaa !44
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.aw, ptr %i.w, align 8, !tbaa !34
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2
  %i.ax = load i64, ptr %i.w, align 8, !tbaa !34
  store ptr %i.an, ptr %.sroa.013.0, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %i.m, ptr %i.ay, align 8, !tbaa !44
  %i.az = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.az, ptr %i.w, align 8, !tbaa !34
  %.not.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3
  store ptr %i.v, ptr %1, align 8, !tbaa !33
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3, %.thread.i9
  store ptr %i.a, ptr %1, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6, %bb.o, %bb.p
  %i.ba = phi ptr [ %i.v, %bb.o ], [ %i.a, %bb.p ], [ %i.an, %bb.k ], [ %.pre.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6 ]
  store i64 0, ptr %i.l, align 8, !tbaa !44
  store i8 0, ptr %i.ba, align 1, !tbaa !34
  %i.bb = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.a
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !34
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.d, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  %.not.i1.1.i = icmp eq ptr %i.n, null
  br i1 %.not.i1.1.i, label %_ZN12_GLOBAL__N_112StringSorterD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(97) %0, i32 noundef 3)
          to label %_ZN12_GLOBAL__N_112StringSorterD2Ev.exit unwind label %bb.e ; 0 uses

_ZN12_GLOBAL__N_112StringSorterD2Ev.exit:         ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 16 uses
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 20 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 12 uses
  %16 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 12 uses
  %17 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 13 uses
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 13 uses
  %19 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 10 uses
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  %.sink.i.sroa.gep62 = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 7 uses
  %.sink.i.sroa.gep67 = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %.sink.i.sroa.gep68 = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 8 uses
  %.sink.i.sroa.gep73 = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %.sink.i.sroa.gep74 = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 5 uses
  %.sink.i.sroa.gep79 = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %.sink.i.sroa.gep80 = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 6 uses
  %.sink.i.sroa.gep85 = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.sink.i.sroa.gep86 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.y = icmp eq i64 %2, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph617

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit44
  %i.z = icmp eq i64 %i.fz, 0
  br i1 %i.z, label %._crit_edge, label %.lr.ph617, !llvm.loop !646

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.ki, %bb.b ] ; 2 uses
  %storemerge324.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.035.1.i.i, %bb.b ]
  call fastcc void @_ZN12_GLOBAL__N_112StringSorterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %17, ptr noundef nonnull align 8 dereferenceable(104) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  invoke fastcc void @_ZN12_GLOBAL__N_112StringSorterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull align 8 dereferenceable(104) %17)
          to label %bb.c unwind label %bb.ao

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.aa = add nsw i64 %.lcssa, -2
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i, %bb.c
  %.011.i.i.i = phi i64 [ %i.ab, %bb.c ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.al = getelementptr inbounds [32 x i8], ptr %0, i64 %.011.i.i.i ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 7 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !44 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  store ptr %i.an, ptr %i.al, align 8, !tbaa !33
  store i64 0, ptr %i.ap, align 8, !tbaa !44
  store i8 0, ptr %i.an, align 8, !tbaa !34
  store ptr %i.ae, ptr %14, align 8, !tbaa !43
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.d
  %i.at = load i64, ptr %i.an, align 8, !tbaa !34 ; 2 uses
  store i64 %i.at, ptr %i.ac, align 8, !tbaa !34
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !44 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !33
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !44
  store i8 0, ptr %i.an, align 8, !tbaa !34
  store ptr %i.ae, ptr %14, align 8, !tbaa !43
  %i.au = icmp eq ptr %i.am, %i.ac
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.av = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.am, ptr %14, align 8, !tbaa !33
  store i64 %i.at, ptr %i.ae, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i.i, %bb.e
  %i.ax = phi i64 [ %i.av, %bb.e ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i.i ]
  store i64 %i.ax, ptr %i.af, align 8, !tbaa !44
  store ptr %i.ac, ptr %13, align 8, !tbaa !33
  store i64 0, ptr %i.ad, align 8, !tbaa !44
  store i8 0, ptr %i.ac, align 8, !tbaa !34
  invoke fastcc void @_ZN12_GLOBAL__N_112StringSorterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEC2ERKS4_.exit.i.i.i unwind label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEC2ERKS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i.i
  invoke fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_T0_SJ_T1_T2_(ptr nonnull %0, i64 noundef %.011.i.i.i, i64 noundef %.lcssa, ptr noundef align 8 %14, ptr noundef align 8 %15)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEC2ERKS4_.exit.i.i.i
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i:         ; preds = %bb.g, %bb.f
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !66 ; 2 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i:        ; preds = %bb.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !66 ; 2 uses
  %.not.i1.1.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i1.1.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef nonnull align 8 dereferenceable(104) %15, i32 noundef 3)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i.i.i unwind label %bb.j ; 0 uses

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i.i.i: ; preds = %bb.k, %_ZNSt14_Function_baseD2Ev.exit2.i.i.i.i.i
  %i.bi = load ptr, ptr %14, align 8, !tbaa !33   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ae
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i.i.i
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.011.i.i.i, 0
  %i.bm = add nsw i64 %.011.i.i.i, -1
  %i.bn = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ac
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bp = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_SI_RT0_.exit.i.i, label %bb.d, !llvm.loop !647

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEC2ERKS4_.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %15) #35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %i.br, %bb.l ]
  %i.bt = load ptr, ptr %14, align 8, !tbaa !33   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ae
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i: ; preds = %bb.n
  %i.bv = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i
  %i.bx = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.ac
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i
  %i.bz = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call fastcc void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %16) #35
  br label %.body

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_SI_RT0_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_SI_RT0_.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  %i.ce = invoke noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.o, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_SI_RT0_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !66 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i1.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.ck = invoke noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i.i:            ; preds = %bb.q, %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !66 ; 2 uses
  %.not.i1.1.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i1.1.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.s

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i.i
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull align 8 dereferenceable(104) %16, i32 noundef 3)
          to label %.lr.ph.i9.i.preheader unwind label %bb.r ; 0 uses

.lr.ph.i9.i.preheader:                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i.i, %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %.noexc17
  %.sroa.0.05.i.i = phi ptr [ %i.da, %.noexc17 ], [ %storemerge324.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %i.cq, ptr %4, align 8, !tbaa !43
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !33 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 9 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.t:                                             ; preds = %.lr.ph.i9.i
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24
  %i.df = load i64, ptr %i.de, align 8, !tbaa !44 ; 3 uses
  %i.dg = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dg)
  %i.dh = add nuw nsw i64 %i.df, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.dh, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.db, ptr %4, align 8, !tbaa !33
  %i.di = load i64, ptr %i.dc, align 8, !tbaa !34
  store i64 %i.di, ptr %i.cq, align 8, !tbaa !34
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !44
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %i.dj = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.df, %bb.t ]
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 3 uses
  store i64 %i.dj, ptr %i.cr, align 8, !tbaa !44
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !33
  store i64 0, ptr %i.dk, align 8, !tbaa !44
  store i8 0, ptr %i.dc, align 8, !tbaa !34
  %i.dl = load ptr, ptr %0, align 8, !tbaa !33    ; 5 uses
  %i.dm = icmp eq ptr %i.dl, %i.cs
  br i1 %i.dm, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  %i.dn = load i64, ptr %i.h, align 8, !tbaa !44  ; 3 uses
  %i.do = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.do)
  %.not21.i.i = icmp eq ptr %0, %i.da
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.v, !prof !49

bb.v:                                             ; preds = %bb.u
  switch i64 %i.dn, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !34
  store i8 %i.dp, ptr %i.dc, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr align 1 %i.dl, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.dq = load i64, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  store i64 %i.dq, ptr %i.dk, align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dq
  store i8 0, ptr %i.dr, align 1, !tbaa !34
  %.pre.i.i52 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  store ptr %i.dl, ptr %i.da, align 8, !tbaa !33
  %i.ds = load i64, ptr %i.h, align 8, !tbaa !44
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !44
  %i.dt = load i64, ptr %i.cs, align 8, !tbaa !34
  store i64 %i.dt, ptr %i.dc, align 8, !tbaa !34
  store ptr %i.cs, ptr %0, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.u
  %i.du = phi ptr [ %.pre.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.cs, %bb.y ], [ %i.dl, %bb.u ]
  store i64 0, ptr %i.h, align 8, !tbaa !44
  store i8 0, ptr %i.du, align 1, !tbaa !34
  %i.dv = ptrtoint ptr %i.da to i64
  %i.dw = sub i64 %i.dv, %i.a                     ; 2 uses
  %i.dx = ashr exact i64 %i.dw, 5
  store ptr %i.ct, ptr %5, align 8, !tbaa !43
  %i.dy = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.cq
  br i1 %i.dz, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.ea = load i64, ptr %i.cr, align 8, !tbaa !44 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add nuw nsw i64 %i.ea, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.cq, i64 %i.ec, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.dy, ptr %5, align 8, !tbaa !33
  %i.ed = load i64, ptr %i.cq, align 8, !tbaa !34
  store i64 %i.ed, ptr %i.ct, align 8, !tbaa !34
  %.pre20.i = load i64, ptr %i.cr, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i, %bb.z
  %i.ee = phi i64 [ %i.ea, %bb.z ], [ %.pre20.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i ]
  store i64 %i.ee, ptr %i.cu, align 8, !tbaa !44
  store ptr %i.cq, ptr %4, align 8, !tbaa !33
  store i64 0, ptr %i.cr, align 8, !tbaa !44
  store i8 0, ptr %i.cq, align 8, !tbaa !34
  invoke fastcc void @_ZN12_GLOBAL__N_112StringSorterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull align 8 dereferenceable(104) %17)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEC2ERKS4_.exit.i unwind label %bb.ag

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEC2ERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i
  invoke fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_T0_SJ_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.dx, ptr noundef align 8 %5, ptr noundef align 8 %6)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEC2ERKS4_.exit.i
  %i.ef = load ptr, ptr %i.cv, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i46, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i47, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = invoke noundef zeroext i1 %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i47 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i47:           ; preds = %bb.ab, %bb.aa
  %i.ej = load ptr, ptr %i.cx, align 8, !tbaa !66 ; 2 uses
  %.not.i1.i.i.i48 = icmp eq ptr %i.ej, null
  br i1 %.not.i1.i.i.i48, label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i49, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i47
  %i.ek = invoke noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i49 unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i.i49:          ; preds = %bb.ad, %_ZNSt14_Function_baseD2Ev.exit.i.i.i47
  %i.en = load ptr, ptr %i.cz, align 8, !tbaa !66 ; 2 uses
  %.not.i1.1.i.i.i50 = icmp eq ptr %i.en, null
  br i1 %.not.i1.1.i.i.i50, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i51, label %bb.af

bb.af:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i.i49
  %i.eo = invoke noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull align 8 dereferenceable(104) %6, i32 noundef 3)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i51 unwind label %bb.ae ; 0 uses

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i51: ; preds = %bb.af, %_ZNSt14_Function_baseD2Ev.exit2.i.i.i49
  %i.ep = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ct
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i51
  %i.er = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.et = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.cq
  br i1 %i.eu, label %.noexc17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ev = load i64, ptr %i.cq, align 8, !tbaa !34
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #37
  br label %.noexc17

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEC2ERKS4_.exit.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #35
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn.i45 = phi { ptr, i32 } [ %i.ey, %bb.ah ], [ %i.ex, %bb.ag ]
  %i.ez = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ct
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %bb.ai
  %i.fb = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  %i.fd = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.cq
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i
  %i.ff = load i64, ptr %i.cq, align 8, !tbaa !34
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %.body

.noexc17:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.fh = icmp sgt i64 %i.dw, 32
  br i1 %i.fh, label %.lr.ph.i9.i, label %.loopexit, !llvm.loop !648

.loopexit:                                        ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i18, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  %i.fl = invoke noundef zeroext i1 %i.fj(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %i.fk, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.aj, %.loopexit
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !66 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i1.i.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.fr = invoke noundef zeroext i1 %i.fp(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.an, %bb.al
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i:              ; preds = %bb.al, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !66 ; 2 uses
  %.not.i1.1.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i1.1.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i
  %i.fw = invoke noundef zeroext i1 %i.fv(ptr noundef nonnull align 8 dereferenceable(104) %17, ptr noundef nonnull align 8 dereferenceable(104) %17, i32 noundef 3)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit unwind label %bb.am ; 0 uses

bb.ao:                                            ; preds = %._crit_edge
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph617:                                        ; preds = %.lr.ph, %bb.b
  %storemerge324616 = phi ptr [ %.sroa.035.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.0325615 = phi i64 [ %i.fz, %bb.b ], [ %2, %.lr.ph ]
  %i.fy = phi i64 [ %i.ki, %bb.b ], [ %i.d, %.lr.ph ]
  %i.fz = add nsw i64 %.0325615, -1               ; 3 uses
  call fastcc void @_ZN12_GLOBAL__N_112StringSorterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %18, ptr noundef nonnull align 8 dereferenceable(104) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ga = lshr i64 %i.fy, 1
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ga ; 7 uses
  %i.gc = getelementptr inbounds i8, ptr %storemerge324616, i64 -32 ; 6 uses
  invoke fastcc void @_ZN12_GLOBAL__N_112StringSorterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull align 8 dereferenceable(104) %18)
          to label %.noexc29 unwind label %bb.cg

.noexc29:                                         ; preds = %.lr.ph617
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !33
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !tbaa !44
  %i.gd = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringSorterclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr %.val.i.i.i, i64 %.val1.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.gb)
          to label %.noexc.i unwind label %bb.bo

.noexc.i:                                         ; preds = %.noexc29
  br i1 %i.gd, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %.noexc.i
  %.val.i26.i.i = load ptr, ptr %i.gb, align 8, !tbaa !33
  %i.ge = getelementptr i8, ptr %i.gb, i64 8
  %.val1.i27.i.i = load i64, ptr %i.ge, align 8, !tbaa !44
  %i.gf = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringSorterclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr %.val.i26.i.i, i64 %.val1.i27.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.gc)
          to label %.noexc11.i unwind label %bb.bo

.noexc11.i:                                       ; preds = %bb.ap
  br i1 %i.gf, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.noexc11.i
  %.val.i28.i.i = load ptr, ptr %i.f, align 8, !tbaa !33
  %.val1.i29.i.i = load i64, ptr %i.g, align 8, !tbaa !44
  %i.gg = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringSorterclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr %.val.i28.i.i, i64 %.val1.i29.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.gc)
          to label %.noexc12.i unwind label %bb.bo

.noexc12.i:                                       ; preds = %bb.aq
  %..i.i = select i1 %i.gg, ptr %i.gc, ptr %i.f
  br label %bb.at

bb.ar:                                            ; preds = %.noexc.i
  %.val.i30.i.i = load ptr, ptr %i.f, align 8, !tbaa !33
  %.val1.i31.i.i = load i64, ptr %i.g, align 8, !tbaa !44
  %i.gh = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringSorterclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr %.val.i30.i.i, i64 %.val1.i31.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.gc)
          to label %.noexc13.i unwind label %bb.bo

.noexc13.i:                                       ; preds = %bb.ar
  br i1 %i.gh, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc13.i
  %.val.i32.i.i = load ptr, ptr %i.gb, align 8, !tbaa !33
  %i.gi = getelementptr i8, ptr %i.gb, i64 8
  %.val1.i33.i.i = load i64, ptr %i.gi, align 8, !tbaa !44
  %i.gj = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringSorterclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr %.val.i32.i.i, i64 %.val1.i33.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.gc)
          to label %.noexc14.i unwind label %bb.bo

.noexc14.i:                                       ; preds = %bb.as
  %.34.i.i = select i1 %i.gj, ptr %i.gc, ptr %i.gb
  br label %bb.at

bb.at:                                            ; preds = %.noexc14.i, %.noexc13.i, %.noexc12.i, %.noexc11.i
  %.sink.i.i = phi ptr [ %i.gb, %.noexc11.i ], [ %i.f, %.noexc13.i ], [ %.34.i.i, %.noexc14.i ], [ %..i.i, %.noexc12.i ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #35
  %i.gk = load ptr, ptr %.sink.i.sroa.gep, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i19, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i20, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = invoke noundef zeroext i1 %i.gk(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep67, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep67, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i20 unwind label %bb.av ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i20:           ; preds = %bb.au, %bb.at
  %i.go = load ptr, ptr %.sink.i.sroa.gep73, align 8, !tbaa !66 ; 2 uses
  %.not.i1.i.i.i21 = icmp eq ptr %i.go, null
  br i1 %.not.i1.i.i.i21, label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i22, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i20
  %i.gp = invoke noundef zeroext i1 %i.go(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep79, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep79, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i.i22 unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i.i22:          ; preds = %bb.aw, %_ZNSt14_Function_baseD2Ev.exit.i.i.i20
  %i.gs = load ptr, ptr %.sink.i.sroa.gep85, align 8, !tbaa !66 ; 2 uses
  %.not.i1.1.i.i.i23 = icmp eq ptr %i.gs, null
  br i1 %.not.i1.1.i.i.i23, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i24, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i.i22
  %i.gt = invoke noundef zeroext i1 %i.gs(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull align 8 dereferenceable(104) %11, i32 noundef 3)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i24 unwind label %bb.ax ; 0 uses

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i24: ; preds = %bb.ay, %_ZNSt14_Function_baseD2Ev.exit2.i.i.i22
  invoke fastcc void @_ZN12_GLOBAL__N_112StringSorterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull align 8 dereferenceable(104) %18)
          to label %.noexc30 unwind label %bb.cg

.noexc30:                                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i24, %bb.bi
  %.sroa.035.0.i.i = phi ptr [ %i.iq, %bb.bi ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i24 ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.bi ], [ %storemerge324616, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i24 ]
  br label %bb.az

bb.az:                                            ; preds = %bb.bd, %.noexc30
  %.sroa.035.1.i.i = phi ptr [ %.sroa.035.0.i.i, %.noexc30 ], [ %i.hr, %bb.bd ] ; 10 uses
  %.val.i.i15.i = load ptr, ptr %.sroa.035.1.i.i, align 8, !tbaa !33
  %i.gu = getelementptr i8, ptr %.sroa.035.1.i.i, i64 8
  %.val1.i.i16.i = load i64, ptr %i.gu, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  invoke fastcc void @_ZN12_GLOBAL__N_112StringSorter11ApplyFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(104) %12, ptr readonly %.val.i.i15.i, i64 %.val1.i.i16.i)
          to label %.noexc17.i unwind label %.loopexit.split-lp.i

.noexc17.i:                                       ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %.val.i10.i.i = load ptr, ptr %0, align 8, !tbaa !33
  %.val8.i.i.i = load i64, ptr %i.h, align 8, !tbaa !44
  invoke fastcc void @_ZN12_GLOBAL__N_112StringSorter11ApplyFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(104) %12, ptr %.val.i10.i.i, i64 %.val8.i.i.i)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc17.i
  %i.gv = load ptr, ptr %.sink.i.sroa.gep62, align 8, !tbaa !66
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i, label %.invoke8.i.i.i, label %.invoke.i.i.i

bb.bb:                                            ; preds = %.noexc17.i
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i25

.loopexit38.i.i:                                  ; preds = %.invoke.i.i.i
  %lpad.loopexit40.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp39.i.i:                         ; preds = %.invoke8.i.i.i
  %lpad.loopexit.split-lp41.i.i = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_SI_T0_T1_:bb.a
bb.bi:                                            ; preds = %bb.bh
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i) #35
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.035.1.i.i, i64 32
  br label %.noexc30, !llvm.loop !651

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEET_SI_SI_SI_T0_.exit.i: ; preds = %bb.bh
  %i.ir = load ptr, ptr %.sink.i.sroa.gep62, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i19.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i19.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i20.i, label %bb.bj

bb.bj:                                            ; preds = %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEET_SI_SI_SI_T0_.exit.i
  %i.is = invoke noundef zeroext i1 %i.ir(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep68, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep68, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i20.i unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i20.i:           ; preds = %bb.bj, %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEET_SI_SI_SI_T0_.exit.i
  %i.iv = load ptr, ptr %.sink.i.sroa.gep74, align 8, !tbaa !66 ; 2 uses
  %.not.i1.i.i21.i = icmp eq ptr %i.iv, null
  br i1 %.not.i1.i.i21.i, label %_ZNSt14_Function_baseD2Ev.exit2.i.i22.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i20.i
  %i.iw = invoke noundef zeroext i1 %i.iv(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep80, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.gep80, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i22.i unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i22.i:          ; preds = %bb.bl, %_ZNSt14_Function_baseD2Ev.exit.i.i20.i
  %i.iz = load ptr, ptr %.sink.i.sroa.gep86, align 8, !tbaa !66 ; 2 uses
  %.not.i1.1.i.i23.i = icmp eq ptr %i.iz, null
  br i1 %.not.i1.1.i.i23.i, label %bb.bu, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i22.i
  %i.ja = invoke noundef zeroext i1 %i.iz(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull align 8 dereferenceable(104) %12, i32 noundef 3)
          to label %bb.bu unwind label %bb.bm     ; 0 uses

bb.bo:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %.noexc29
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.i:                                      ; preds = %.preheader.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.az
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i16.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.bo ], [ %.sink.i.sroa.gep62, %.loopexit.i ], [ %.sink.i.sroa.gep62, %.loopexit.split-lp.i ], [ %.sink.i.sroa.gep62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i ], [ %.sink.i.sroa.gep62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i16.i.i ]
  %.sink.i.sroa.phi66 = phi ptr [ %.sink.i.sroa.gep67, %bb.bo ], [ %.sink.i.sroa.gep68, %.loopexit.i ], [ %.sink.i.sroa.gep68, %.loopexit.split-lp.i ], [ %.sink.i.sroa.gep68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i ], [ %.sink.i.sroa.gep68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i16.i.i ] ; 2 uses
  %.sink.i.sroa.phi72 = phi ptr [ %.sink.i.sroa.gep73, %bb.bo ], [ %.sink.i.sroa.gep74, %.loopexit.i ], [ %.sink.i.sroa.gep74, %.loopexit.split-lp.i ], [ %.sink.i.sroa.gep74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i ], [ %.sink.i.sroa.gep74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i16.i.i ]
  %.sink.i.sroa.phi78 = phi ptr [ %.sink.i.sroa.gep79, %bb.bo ], [ %.sink.i.sroa.gep80, %.loopexit.i ], [ %.sink.i.sroa.gep80, %.loopexit.split-lp.i ], [ %.sink.i.sroa.gep80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i ], [ %.sink.i.sroa.gep80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i16.i.i ] ; 2 uses
  %.sink.i.sroa.phi84 = phi ptr [ %.sink.i.sroa.gep85, %bb.bo ], [ %.sink.i.sroa.gep86, %.loopexit.i ], [ %.sink.i.sroa.gep86, %.loopexit.split-lp.i ], [ %.sink.i.sroa.gep86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i ], [ %.sink.i.sroa.gep86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i16.i.i ]
  %.sink.i = phi ptr [ %11, %bb.bo ], [ %12, %.loopexit.i ], [ %12, %.loopexit.split-lp.i ], [ %12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i ], [ %12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i16.i.i ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %i.jb, %bb.bo ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %.pn.i.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i ], [ %.pn.i14.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i16.i.i ] ; 2 uses
  %i.jc = load ptr, ptr %.sink.i.sroa.phi, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i55, label %_ZNSt14_Function_baseD2Ev.exit.i.i56, label %bb.bp

bb.bp:                                            ; preds = %.body.i
  %i.jd = invoke noundef zeroext i1 %i.jc(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.phi66, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.phi66, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i56 unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i56:             ; preds = %bb.bp, %.body.i
  %i.jg = load ptr, ptr %.sink.i.sroa.phi72, align 8, !tbaa !66 ; 2 uses
  %.not.i1.i.i57 = icmp eq ptr %i.jg, null
  br i1 %.not.i1.i.i57, label %_ZNSt14_Function_baseD2Ev.exit2.i.i58, label %bb.br

bb.br:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i56
  %i.jh = invoke noundef zeroext i1 %i.jg(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.phi78, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.sroa.phi78, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i58 unwind label %bb.bs ; 0 uses

bb.bs:                                            ; preds = %bb.bt, %bb.br
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i58:            ; preds = %bb.br, %_ZNSt14_Function_baseD2Ev.exit.i.i56
  %i.jk = load ptr, ptr %.sink.i.sroa.phi84, align 8, !tbaa !66 ; 2 uses
  %.not.i1.1.i.i59 = icmp eq ptr %i.jk, null
  br i1 %.not.i1.1.i.i59, label %.body, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i58
  %i.jl = invoke noundef zeroext i1 %i.jk(ptr noundef nonnull align 8 dereferenceable(104) %.sink.i, ptr noundef nonnull align 8 dereferenceable(104) %.sink.i, i32 noundef 3)
          to label %.body unwind label %bb.bs     ; 0 uses

bb.bu:                                            ; preds = %bb.bn, %_ZNSt14_Function_baseD2Ev.exit2.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.jm = load ptr, ptr %i.o, align 8, !tbaa !66  ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i33, label %_ZNSt14_Function_baseD2Ev.exit.i.i34, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jn = invoke noundef zeroext i1 %i.jm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i34 unwind label %bb.bw ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i34:             ; preds = %bb.bv, %bb.bu
  %i.jq = load ptr, ptr %i.q, align 8, !tbaa !66  ; 2 uses
  %.not.i1.i.i35 = icmp eq ptr %i.jq, null
  br i1 %.not.i1.i.i35, label %_ZNSt14_Function_baseD2Ev.exit2.i.i36, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i34
  %i.jr = invoke noundef zeroext i1 %i.jq(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i36 unwind label %bb.by ; 0 uses

bb.by:                                            ; preds = %bb.bz, %bb.bx
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  %i.jt = extractvalue { ptr, i32 } %i.js, 0
  call void @__clang_call_terminate(ptr %i.jt) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i36:            ; preds = %bb.bx, %_ZNSt14_Function_baseD2Ev.exit.i.i34
  %i.ju = load ptr, ptr %i.s, align 8, !tbaa !66  ; 2 uses
  %.not.i1.1.i.i37 = icmp eq ptr %i.ju, null
  br i1 %.not.i1.1.i.i37, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit38, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i36
  %i.jv = invoke noundef zeroext i1 %i.ju(ptr noundef nonnull align 8 dereferenceable(104) %18, ptr noundef nonnull align 8 dereferenceable(104) %18, i32 noundef 3)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit38 unwind label %bb.by ; 0 uses

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit38: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i36, %bb.bz
  call fastcc void @_ZN12_GLOBAL__N_112StringSorterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull align 8 dereferenceable(104) %3)
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_SI_T0_T1_(ptr nonnull %.sroa.035.1.i.i, ptr %storemerge324616, i64 noundef %i.fz, ptr noundef align 8 %19)
          to label %bb.ca unwind label %bb.ch

bb.ca:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit38
  %i.jw = load ptr, ptr %i.t, align 8, !tbaa !66  ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i39, label %_ZNSt14_Function_baseD2Ev.exit.i.i40, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jx = invoke noundef zeroext i1 %i.jw(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i40 unwind label %bb.cc ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i40:             ; preds = %bb.cb, %bb.ca
  %i.ka = load ptr, ptr %i.v, align 8, !tbaa !66  ; 2 uses
  %.not.i1.i.i41 = icmp eq ptr %i.ka, null
  br i1 %.not.i1.i.i41, label %_ZNSt14_Function_baseD2Ev.exit2.i.i42, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i40
  %i.kb = invoke noundef zeroext i1 %i.ka(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i.i42 unwind label %bb.ce ; 0 uses

bb.ce:                                            ; preds = %bb.cf, %bb.cd
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i.i42:            ; preds = %bb.cd, %_ZNSt14_Function_baseD2Ev.exit.i.i40
  %i.ke = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %.not.i1.1.i.i43 = icmp eq ptr %i.ke, null
  br i1 %.not.i1.1.i.i43, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit44, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i42
  %i.kf = invoke noundef zeroext i1 %i.ke(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull align 8 dereferenceable(104) %19, i32 noundef 3)
          to label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit44 unwind label %bb.ce ; 0 uses

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit44: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i.i42, %bb.cf
  %i.kg = ptrtoint ptr %.sroa.035.1.i.i to i64
  %i.kh = sub i64 %i.kg, %i.a
  %i.ki = ashr exact i64 %i.kh, 5                 ; 3 uses
  %i.kj = icmp sgt i64 %i.ki, 16
  br i1 %i.kj, label %bb.b, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit, !llvm.loop !646

bb.cg:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit.i24, %.lr.ph617
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ch:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit38
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev.exit44, %bb.a, %bb.an, %_ZNSt14_Function_baseD2Ev.exit2.i.i
  ret void

.body:                                            ; preds = %bb.cg, %_ZNSt14_Function_baseD2Ev.exit2.i.i58, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i, %bb.ao, %bb.ch
  %.sink = phi ptr [ %17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i ], [ %19, %bb.ch ], [ %17, %bb.ao ], [ %17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ], [ %18, %bb.bt ], [ %18, %_ZNSt14_Function_baseD2Ev.exit2.i.i58 ], [ %18, %bb.cg ]
  %.pn15 = phi { ptr, i32 } [ %.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i ], [ %i.kl, %bb.ch ], [ %i.fx, %bb.ao ], [ %.pn.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ], [ %.pn.i, %bb.bt ], [ %.pn.i, %_ZNSt14_Function_baseD2Ev.exit2.i.i58 ], [ %i.kk, %bb.cg ]
  call fastcc void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.sink) #35
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_112StringSorterEEEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.049 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.049, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val1.i = load i64, ptr %i.i, align 8, !tbaa !44
  %i.j = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringSorterclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr %.val.i, i64 %.val1.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h)
  %spec.select = select i1 %i.j, i64 %i.g, i64 %i.e ; 5 uses
  %i.k = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.l = getelementptr inbounds [32 x i8], ptr %0, i64 %.049 ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !33   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.r, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq i64 %spec.select, %.049
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.p, align 1, !tbaa !34
  store i8 %i.v, ptr %i.m, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.w = load i64, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !44
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !34
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.l, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !34
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !34
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !34
  store ptr %i.p, ptr %i.l, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !34
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %i.k, align 8, !tbaa !33
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %i.k, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ah = phi ptr [ %i.m, %bb.f ], [ %i.q, %bb.g ], [ %i.p, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !44
  store i8 0, ptr %i.ah, align 1, !tbaa !34
  %i.aj = icmp slt i64 %spec.select, %i.b
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !652

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %i.ak = and i64 %2, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.am = add nsw i64 %2, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa, %i.an
  br i1 %i.ao, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ap = shl nsw i64 %.0.lcssa, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 3 uses
  %i.ar = getelementptr inbounds [32 x i8], ptr %0, i64 %i.aq ; 9 uses
  %i.as = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !33 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.i
  br i1 %i.ay, label %bb.j, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.i
  br i1 %i.ay, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !44 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not21.i28 = icmp eq i64 %i.aq, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.k, !prof !49

bb.k:                                             ; preds = %bb.j
  switch i64 %i.ba, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !34
  store i8 %i.bc, ptr %i.at, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !44 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !44
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !34
  %.pre.i30 = load ptr, ptr %i.ar, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

.thread.i32:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bj = load <2 x i64>, ptr %i.bi, align 8, !tbaa !34
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !34
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !33
  %i.y = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.y, ptr %i.s, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !34
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !34
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !44
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !43, !alias.scope !787, !noalias !788
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !33, !alias.scope !788, !noalias !787 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !44, !alias.scope !788, !noalias !787 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !789
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !787, !noalias !788
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !34, !alias.scope !788, !noalias !787
  store i64 %i.an, ptr %i.af, align 8, !tbaa !34, !alias.scope !787, !noalias !788
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !44, !alias.scope !788, !noalias !787
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !44, !alias.scope !787, !noalias !788
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !33, !alias.scope !788, !noalias !787
  store i64 0, ptr %i.ap, align 8, !tbaa !44, !alias.scope !788, !noalias !787
  store i8 0, ptr %i.ah, align 8, !tbaa !34, !alias.scope !788, !noalias !787
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !43, !alias.scope !790, !noalias !791
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !33, !alias.scope !791, !noalias !790 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !44, !alias.scope !791, !noalias !790 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !792
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !33, !alias.scope !790, !noalias !791
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !34, !alias.scope !791, !noalias !790
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !34, !alias.scope !790, !noalias !791
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !44, !alias.scope !791, !noalias !790
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !44, !alias.scope !790, !noalias !791
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !33, !alias.scope !791, !noalias !790
  store i64 0, ptr %i.be, align 8, !tbaa !44, !alias.scope !791, !noalias !790
  store i8 0, ptr %i.aw, align 8, !tbaa !34, !alias.scope !791, !noalias !790
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !13

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !133
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !29
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !133
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #35 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #37
  invoke void @__cxa_rethrow() #36
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #38
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #29 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph65

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEET_SF_SF_T0_.exit"
  %i.h = icmp eq i64 %i.cz, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph65, !llvm.loop !793

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dx, %bb.b ] ; 2 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
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

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.an, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.035.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.035.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !24
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ac = icmp ugt i64 %i.aa, %i.ab
  %spec.select.i.us.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.035.i.us.i.i.i
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !24
  %i.ag = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ag, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !794

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %i.t
  br i1 %i.aj, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !24
  %i.al = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !795

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %i.t, ptr %i.am, align 8, !tbaa !24
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.an = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !796

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bm, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !24 ; 2 uses
  %i.aq = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ar = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.au
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !24
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !24
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  %spec.select.i.i.i.i = select i1 %i.ay, i64 %i.au, i64 %i.as ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.035.i.i.i.i
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !24
  %i.bc = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !794

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i64, ptr %i.q, align 8, !tbaa !24
  store i64 %i.be, ptr %i.r, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !24 ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, %i.ap
  br i1 %i.bi, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !24
  %i.bk = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !795

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.ap, ptr %i.bl, align 8, !tbaa !24
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bm = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !796

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bn, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_RT0_.exit.i.i" ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.bp = load i64, ptr %.fr29, align 8, !tbaa !24
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !24
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = lshr i64 %i.bt, 1
  %i.bv = icmp sgt i64 %i.bs, 2
  br i1 %i.bv, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i17.i
  %.035.i.i.i18.i = phi i64 [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bw = shl i64 %.035.i.i.i18.i, 1              ; 2 uses
  %i.bx = add i64 %i.bw, 2                        ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bx
  %i.bz = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bz
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !24
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !24
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  %spec.select.i.i.i19.i = select i1 %i.cd, i64 %i.bz, i64 %i.bx ; 4 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i19.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.035.i.i.i18.i
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !24
  %i.ch = icmp slt i64 %spec.select.i.i.i19.i, %i.bu
  br i1 %i.ch, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i, !llvm.loop !794

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i17.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ] ; 5 uses
  %i.ci = and i64 %i.br, 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.ck = add nsw i64 %i.bs, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cl
  br i1 %i.cm, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !24
  br label %.lr.ph.i.i.i.i13.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i.preheader

.lr.ph.i.i.i.i13.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i14.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.h ], [ %i.co, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %.lr.ph.i.i.i.i13.i.preheader, %bb.i
  %.010.i.i.i.i14.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i14.i.ph, %.lr.ph.i.i.i.i13.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i56.i.i.i
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !24 ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, %i.bo
  br i1 %i.cu, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i13.i
  %i.cv = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i14.i
  store i64 %i.ct, ptr %i.cv, align 8, !tbaa !24
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i, !llvm.loop !795

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i13.i, %bb.h
  %.0.lcssa.i.i.i.i16.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i14.i, %.lr.ph.i.i.i.i13.i ], [ 0, %bb.i ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i16.i
  store i64 %i.bo, ptr %i.cw, align 8, !tbaa !24
  %i.cx = icmp sgt i64 %i.br, 8
  br i1 %i.cx, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_T0_.exit", !llvm.loop !797

.lr.ph65:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2664 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02763 = phi i64 [ %i.cz, %bb.b ], [ %2, %.lr.ph ]
  %i.cy = phi i64 [ %i.dy, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cz = add nsw i64 %.02763, -1                 ; 3 uses
  %i.da = lshr i64 %i.cy, 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %storemerge2664, i64 -8 ; 3 uses
  %i.dd = load i64, ptr %i.f, align 8, !tbaa !24  ; 5 uses
  %i.de = load i64, ptr %i.db, align 8, !tbaa !24 ; 5 uses
  %i.df = icmp ugt i64 %i.dd, %i.de
  %i.dg = load i64, ptr %i.dc, align 8, !tbaa !24 ; 6 uses
  br i1 %i.df, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph65
  %i.dh = icmp ugt i64 %i.de, %i.dg
  br i1 %i.dh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.di = load i64, ptr %.fr29, align 8, !tbaa !24
  store i64 %i.de, ptr %.fr29, align 8, !tbaa !24
  store i64 %i.di, ptr %i.db, align 8, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dj = icmp ugt i64 %i.dd, %i.dg
  %i.dk = load i64, ptr %.fr29, align 8, !tbaa !24 ; 2 uses
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.dg, ptr %.fr29, align 8, !tbaa !24
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i64 %i.dd, ptr %.fr29, align 8, !tbaa !24
  store i64 %i.dk, ptr %i.f, align 8, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph65
  %i.dl = icmp ugt i64 %i.dd, %i.dg
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = load i64, ptr %.fr29, align 8, !tbaa !24
  store i64 %i.dd, ptr %.fr29, align 8, !tbaa !24
  store i64 %i.dm, ptr %i.f, align 8, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dn = icmp ugt i64 %i.de, %i.dg
  %i.do = load i64, ptr %.fr29, align 8, !tbaa !24 ; 2 uses
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %i.dg, ptr %.fr29, align 8, !tbaa !24
  store i64 %i.do, ptr %i.dc, align 8, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i64 %i.de, ptr %.fr29, align 8, !tbaa !24
  store i64 %i.do, ptr %i.db, align 8, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.ds, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2664, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %i.dp = load i64, ptr %.fr29, align 8, !tbaa !24 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.ds, %bb.t ] ; 8 uses
  %i.dq = load i64, ptr %.sroa.010.1.i.i, align 8, !tbaa !24 ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.dr, label %bb.t, label %.preheader.i.i, !llvm.loop !798

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.dt = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !24 ; 2 uses
  %i.du = icmp ugt i64 %i.dp, %i.dt
  br i1 %i.du, label %.preheader.i.i, label %bb.u, !llvm.loop !799

bb.u:                                             ; preds = %.preheader.i.i
  %i.dv = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dv, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEET_SF_SF_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store i64 %i.dt, ptr %.sroa.010.1.i.i, align 8, !tbaa !24
  store i64 %i.dq, ptr %.sroa.0.1.i.i, align 8, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !800

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEET_SF_SF_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2664, i64 noundef %i.cz)
  %i.dw = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dx = sub i64 %i.dw, %i.a                     ; 2 uses
  %i.dy = ashr exact i64 %i.dx, 3                 ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 16
  br i1 %i.dz, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_T0_.exit", !llvm.loop !793

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_SF_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i = icmp eq ptr %i.b, %1
  %or.cond.i = select i1 %i.a, i1 true, i1 %.not10.i
  br i1 %or.cond.i, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread9.i
  %i.c = phi ptr [ %i.m, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread9.i ], [ %i.b, %bb.a ] ; 3 uses
  %.sroa.08.011.i = phi ptr [ %i.c, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread9.i ], [ %0, %bb.a ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread9.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.k = load ptr, ptr %.sroa.08.011.i, align 8, !tbaa !33
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr %i.j, i64 %i.e)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread9.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread9.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %1
  br i1 %.not.i, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !801

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i
  %i.n = icmp eq ptr %.sroa.08.011.i, %1
  br i1 %i.n, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 64 ; 2 uses
  %.not20 = icmp eq ptr %i.o, %1
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread
  %i.q = phi ptr [ %i.at, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread ], [ %i.o, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.022 = phi ptr [ %.sroa.0.1, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread ], [ %.sroa.08.011.i, %.lr.ph.preheader ] ; 10 uses
  %.sroa.012.021 = phi ptr [ %i.q, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 40 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44   ; 6 uses
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18

bb.d:                                             ; preds = %.lr.ph
  %i.w = icmp eq i64 %i.s, 0
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %bb.d
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.y = load ptr, ptr %.sroa.0.022, align 8, !tbaa !33
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.y, ptr %i.x, i64 %i.s)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18: ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 32 ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 48 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !33  ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 48 ; 6 uses
  %i.ag = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18
  br i1 %i.ag, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.ah)
  %.not21.i = icmp eq ptr %.sroa.012.021, %.sroa.0.022
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  switch i64 %i.u, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !34
  store i8 %i.ai, ptr %i.ab, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !44  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 40
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !44
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !34
  %.pre.i = load ptr, ptr %i.q, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 40
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !33
  store i64 %i.u, ptr %i.an, align 8, !tbaa !44
  %i.ao = load i64, ptr %i.af, align 8, !tbaa !34
  store i64 %i.ao, ptr %i.ac, align 8, !tbaa !34
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !34
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 40
  store i64 %i.u, ptr %i.aq, align 8, !tbaa !44
  %i.ar = load i64, ptr %i.af, align 8, !tbaa !34
  store i64 %i.ar, ptr %i.ac, align 8, !tbaa !34
  %.not.i7 = icmp eq ptr %i.ab, null
  br i1 %.not.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !33
  store i64 %i.ap, ptr %i.af, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.af, ptr %i.q, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.as = phi ptr [ %i.ab, %bb.i ], [ %i.af, %bb.j ], [ %i.ae, %bb.e ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.t, align 8, !tbaa !44
  store i8 0, ptr %i.as, align 1, !tbaa !34
  br label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.022, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %.sroa.0.022, %bb.d ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.at, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !802

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread, %bb.c
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.08.011.i, %bb.c ], [ %.sroa.0.1, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 32
  br label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit.thread

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit.thread: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread9.i, %bb.a, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit, %._crit_edge
  %.sroa.05.0 = phi ptr [ %i.au, %._crit_edge ], [ %1, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_.exit ], [ %1, %bb.a ], [ %1, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread9.i ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIN19ContainerAlgorithms14BinarySearcherI7cmRangeISC_EEEEEET_SL_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.589", align 8 ; 2 uses
  store ptr %2, ptr %3, align 8
  %i.a = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIN19ContainerAlgorithms14BinarySearcherI7cmRangeISC_EEEEEET_SL_SL_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) ; 5 uses
  %i.b = icmp eq ptr %i.a, %1
  %.sroa.06.015 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.not16 = icmp eq ptr %.sroa.06.015, %1
  %or.cond = select i1 %i.b, i1 true, i1 %.not16
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.sroa.06.019 = phi ptr [ %.sroa.06.0, %bb.i ], [ %.sroa.06.015, %bb.a ] ; 8 uses
  %.sroa.012.018 = phi ptr [ %.sroa.012.1, %bb.i ], [ %i.a, %bb.a ] ; 11 uses
  %.pn17 = phi ptr [ %.sroa.06.019, %bb.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = call noundef zeroext i1 @_ZNK19ContainerAlgorithms14BinarySearcherI7cmRangeIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEclERKS9_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.019)
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = load ptr, ptr %.sroa.012.018, align 8, !tbaa !33 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load ptr, ptr %.sroa.06.019, align 8, !tbaa !33 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn17, i64 48 ; 6 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %.thread.i

end_hunk_2
