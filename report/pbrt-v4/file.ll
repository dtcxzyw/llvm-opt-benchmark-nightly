Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/file?download=true
inline.NumInlined: 2099
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4pbrt17WriteFileContentsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !39, !alias.scope !166
  store i8 0, ptr %i.v, align 8, !tbaa !23, !alias.scope !166
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS7_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEES6_PKcDpOT_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !22, !alias.scope !166 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.v
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !23, !alias.scope !166
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #28
  br label %.body

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEES6_PKcDpOT_.exit.i: ; preds = %bb.e
  %i.ac = load ptr, ptr %2, align 8, !tbaa !22
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.ac)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEES6_PKcDpOT_.exit.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.v
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.v, align 8, !tbaa !23
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEES6_PKcDpOT_.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.v
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.h
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !23
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.am = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !23
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.k

bb.i:                                             ; preds = %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %.body
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !23
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.j
  %.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i1 %i.t

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %i.ar, %bb.i ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10filesystem4path3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9path_typeE(ptr noundef nonnull align 8 dereferenceable(34) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %4 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %5 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %6 = alloca %"class.std::vector", align 8       ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector", align 16      ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i32 %2, ptr %0, align 8, !tbaa !33
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %._crit_edge.i.i65

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !38
  %i.d = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.f, ptr %i.a, align 8, !tbaa !40
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !22
  %i.i = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.i, ptr %i.c, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !23
  store i8 %i.k, ptr %i.j, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !39
  %i.n = load ptr, ptr %3, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.p = load atomic i8, ptr @_ZGVZN10filesystem4path3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9path_typeEE16LONG_PATH_PREFIXB5cxx11 acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.h, !prof !58

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN10filesystem4path3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9path_typeEE16LONG_PATH_PREFIXB5cxx11) #29
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN10filesystem4path3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9path_typeEE16LONG_PATH_PREFIXB5cxx11, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.s = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN10filesystem4path3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9path_typeEE16LONG_PATH_PREFIXB5cxx11, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN10filesystem4path3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9path_typeEE16LONG_PATH_PREFIXB5cxx11) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = load i64, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN10filesystem4path3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9path_typeEE16LONG_PATH_PREFIXB5cxx11, i64 8), align 8, !tbaa !39 ; 5 uses
  %.not22 = icmp ult i64 %i.t, %i.u
  br i1 %.not22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @_ZZN10filesystem4path3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9path_typeEE16LONG_PATH_PREFIXB5cxx11, align 8, !tbaa !22 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %.not6.i.i = icmp samesign eq i64 %i.u, 0
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.08.i.i = phi ptr [ %i.ac, %bb.j ], [ %i.x, %bb.i ] ; 2 uses
  %.sroa.03.07.i.i = phi ptr [ %i.ab, %bb.j ], [ %i.v, %bb.i ] ; 3 uses
  %i.y = load i8, ptr %.sroa.03.07.i.i, align 1, !tbaa !23
  %i.z = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !23
  %i.aa = icmp eq i8 %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 1
  %.not.i.i = icmp eq ptr %i.ab, %i.w
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !167

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.03.0.lcssa.i.i = phi ptr [ %i.v, %bb.i ], [ %.sroa.03.07.i.i, %.lr.ph.i.i ]
  %i.ad = icmp eq ptr %.sroa.03.0.lcssa.i.i, %i.w
  br i1 %i.ad, label %.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split

.thread:                                          ; preds = %bb.j, %.loopexit
  switch i64 %i.u, label %bb.l [
    i64 -1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split
  ]

bb.k:                                             ; preds = %.thread
  store i64 0, ptr %i.m, align 8, !tbaa !39
  store i8 0, ptr %i.x, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split

bb.l:                                             ; preds = %.thread
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split unwind label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN10filesystem4path3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_9path_typeEE16LONG_PATH_PREFIXB5cxx11) #29
  br label %bb.al

bb.n:                                             ; preds = %.thread98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit, %bb.q, %bb.l, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit38
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split: ; preds = %.loopexit, %bb.l, %.thread, %bb.k
  %.pr = load i64, ptr %i.m, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split, %bb.h
  %i.ag = phi i64 [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exitthread-pre-split ], [ %i.t, %bb.h ] ; 4 uses
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %.thread98

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.ai = load ptr, ptr %3, align 8, !tbaa !22    ; 8 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !23  ; 5 uses
  %i.ak = icmp eq i8 %i.aj, 92
  br i1 %i.ak, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = icmp eq i8 %i.am, 92
  br i1 %i.an, label %bb.q, label %.thread141

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_assign_auxIPKS5_EEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef null, ptr noundef null)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit unwind label %bb.n

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit: ; preds = %bb.q
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !39
  %spec.select.i.i34 = call noundef i64 @llvm.umin.i64(i64 %i.ap, i64 2)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %spec.select.i.i34)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit36 unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit36: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit
  %i.aq = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.25, i64 noundef 0, i64 noundef 2) #29
  %.not26 = icmp eq i64 %i.aq, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %.not26, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit36
  store i8 1, ptr %i.ar, align 1, !tbaa !32
  store i8 1, ptr %i.as, align 8, !tbaa !35
  br label %._crit_edge.i.i49

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit36
  store i8 0, ptr %i.ar, align 1, !tbaa !32
  store i8 0, ptr %i.as, align 8, !tbaa !35
  br label %._crit_edge.i.i49

bb.t:                                             ; preds = %bb.o
  %i.at = icmp ugt i64 %i.ag, 3
  br i1 %i.at, label %bb.u, label %bb.aa

.thread141:                                       ; preds = %bb.p
  %i.au = icmp ugt i64 %i.ag, 3
  br i1 %i.au, label %.thread97.thread, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.av = icmp eq i8 %i.aj, 85
  br i1 %i.av, label %bb.v, label %.thread97

bb.v:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !23
  %i.ay = icmp eq i8 %i.ax, 78
  br i1 %i.ay, label %bb.w, label %.thread97.thread

bb.w:                                             ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !23
  %i.bb = icmp eq i8 %i.ba, 67
  br i1 %i.bb, label %bb.x, label %.thread97.thread

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !23
  %i.be = icmp eq i8 %i.bd, 92
  br i1 %i.be, label %bb.y, label %.thread97.thread

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_assign_auxIPKS5_EEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef null, ptr noundef null)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit38 unwind label %bb.n

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit38: ; preds = %bb.y
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 4)
          to label %bb.z unwind label %bb.n       ; 0 uses

bb.z:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit38
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.bi, align 1, !tbaa !32
  br label %._crit_edge.i.i49

bb.aa:                                            ; preds = %.thread141, %bb.t
  %.not99 = icmp ne i64 %i.ag, 2
  %i.bj = icmp sgt i8 %i.aj, -1
  %or.cond = and i1 %.not99, %i.bj
  br i1 %or.cond, label %.thread97.thread, label %.thread98

.thread97:                                        ; preds = %bb.u
  %.old = icmp sgt i8 %i.aj, -1
  br i1 %.old, label %.thread97.thread, label %.thread98

.thread97.thread:                                 ; preds = %bb.aa, %.thread141, %bb.x, %bb.w, %bb.v, %.thread97
  %i.bk = zext nneg i8 %i.aj to i32
  %i.bl = call i32 @isalpha(i32 noundef %i.bk) #30
  %.not23 = icmp eq i32 %i.bl, 0
  br i1 %.not23, label %.thread98, label %bb.ab

bb.ab:                                            ; preds = %.thread97.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !23
  %i.bo = icmp eq i8 %i.bn, 58
  br i1 %i.bo, label %bb.ac, label %.thread98

bb.ac:                                            ; preds = %bb.ab
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !23
  switch i8 %i.bq, label %.thread98 [
    i8 92, label %bb.ad
    i8 47, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.br, ptr %5, align 8, !tbaa !38, !alias.scope !170
  %i.bs = load i16, ptr %i.ai, align 1
  store i16 %i.bs, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.bt, align 8, !tbaa !39, !alias.scope !170
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.bu, align 2, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_assign_auxIPKS5_EEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull %5, ptr noundef nonnull %i.bw)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit40.preheader unwind label %bb.ae

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit40.preheader: ; preds = %bb.ad
  %i.bx = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit40.preheader
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !23
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit40.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.cc = load i64, ptr %i.m, align 8, !tbaa !39
  %spec.select.i.i41 = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 3)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %spec.select.i.i41)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit43 unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.cd, align 8, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.ce, align 1, !tbaa !32
  br label %._crit_edge.i.i49

bb.ae:                                            ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.ae
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !23
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.al

.thread98:                                        ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.ab, %.thread97.thread, %.thread97, %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_assign_auxIPKS5_EEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef null, ptr noundef null)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit48 unwind label %bb.n

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit48: ; preds = %.thread98
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.cn, align 1, !tbaa !32
  br label %._crit_edge.i.i49

._crit_edge.i.i49:                                ; preds = %bb.z, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSESt16initializer_listIS5_E.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit43, %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.co, ptr %7, align 8, !tbaa !38
end_hunk_0
