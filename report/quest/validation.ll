Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/validation?download=true
inline.NumInlined: 5002
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 318
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 319
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_Z30assertQuregDeploysEnabledByEnviii8QuESTEnvPKc:bb.a
  %i.ad = icmp eq ptr %i.ac, %i.j
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !59
  %.not11 = icmp eq i32 %i.ag, 0
  br i1 %.not11, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = icmp eq i32 %1, 0
  %i.ai = load i32, ptr @_ZN8modeflag8USE_AUTOE, align 4
  %i.aj = icmp eq i32 %1, %i.ai
  %i.ak = select i1 %i.ah, i1 true, i1 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !24
  %i.am = load ptr, ptr @_ZN6report34NEW_GPU_QUREG_IN_NON_GPU_ACCEL_ENVB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6report34NEW_GPU_QUREG_IN_NON_GPU_ACCEL_ENVB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.an, ptr %i.b, align 8, !tbaa !30
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i18, label %._crit_edge.i.i17

.noexc.i18:                                       ; preds = %bb.g
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !25
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !26
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %.noexc.i18, %bb.g
  %i.ar = phi ptr [ %i.ap, %.noexc.i18 ], [ %i.al, %bb.g ] ; 2 uses
  switch i64 %i.an, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit19
  ]

bb.h:                                             ; preds = %._crit_edge.i.i17
  %i.as = load i8, ptr %i.am, align 1, !tbaa !26
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit19

bb.i:                                             ; preds = %._crit_edge.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.am, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit19: ; preds = %._crit_edge.i.i17, %bb.h, %bb.i
  %i.at = load i64, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !23
  %i.av = load ptr, ptr %6, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.b.i20 = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %or.cond.i21 = or i1 %i.ak, %.b.i20
  br i1 %or.cond.i21, label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit23, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit19
  %i.ax = load ptr, ptr @global_inputErrorHandler, align 8, !tbaa !27
  %i.ay = load ptr, ptr %6, align 8, !tbaa !25
  invoke void %i.ax(ptr noundef %4, ptr noundef %i.ay)
          to label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit23 unwind label %bb.k, !inline_history !50

_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit19, %bb.j
  %i.az = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.al
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit23
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !26
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.al
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.k
  %i.bg = load i64, ptr %i.al, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load i32, ptr %3, align 8, !tbaa !60
  %.not12 = icmp eq i32 %i.bh, 0
  br i1 %.not12, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bi = icmp eq i32 %2, 0
  %i.bj = load i32, ptr @_ZN8modeflag8USE_AUTOE, align 4
  %i.bk = icmp eq i32 %2, %i.bj
  %i.bl = select i1 %i.bi, i1 true, i1 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bm, ptr %7, align 8, !tbaa !24
  %i.bn = load ptr, ptr @_ZN6report44NEW_MULTITHREAD_QUREG_IN_NON_MULTITHREAD_ENVB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6report44NEW_MULTITHREAD_QUREG_IN_NON_MULTITHREAD_ENVB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !30
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i31, label %._crit_edge.i.i30

.noexc.i31:                                       ; preds = %bb.l
  %i.bq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bq, ptr %7, align 8, !tbaa !25
  %i.br = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !26
  br label %._crit_edge.i.i30

._crit_edge.i.i30:                                ; preds = %.noexc.i31, %bb.l
  %i.bs = phi ptr [ %i.bq, %.noexc.i31 ], [ %i.bm, %bb.l ] ; 2 uses
  switch i64 %i.bo, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32
  ]

bb.m:                                             ; preds = %._crit_edge.i.i30
  %i.bt = load i8, ptr %i.bn, align 1, !tbaa !26
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32

bb.n:                                             ; preds = %._crit_edge.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32: ; preds = %._crit_edge.i.i30, %bb.m, %bb.n
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !23
  %i.bw = load ptr, ptr %7, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.b.i33 = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %or.cond.i34 = or i1 %i.bl, %.b.i33
  br i1 %or.cond.i34, label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit36, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32
  %i.by = load ptr, ptr @global_inputErrorHandler, align 8, !tbaa !27
  %i.bz = load ptr, ptr %7, align 8, !tbaa !25
  invoke void %i.by(ptr noundef %4, ptr noundef %i.bz)
          to label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit36 unwind label %bb.p, !inline_history !50

_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit32, %bb.o
  %i.ca = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bm
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit36
  %i.cc = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.p:                                             ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bm
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.p
  %i.ch = load i64, ptr %i.bm, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %.sink54 = phi i64 [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %.sink = phi ptr [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %.pn.ph = phi { ptr, i32 } [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %i.ci = add i64 %.sink54, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split, %bb.p, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.bd, %bb.k ], [ %i.ce, %bb.p ], [ %.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z41assertQuregTotalNumAmpsDontExceedMaxIndexiiPKc(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::map", align 8          ; 14 uses
  %7 = alloca [2 x %"struct.std::pair"], align 8  ; 22 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::map", align 8          ; 10 uses
  %i.c = icmp ne i32 %1, 0                        ; 2 uses
  %i.d = tail call noundef i32 @_Z43mem_getMaxNumQuregQubitsBeforeIndexOverflowb(i1 noundef zeroext %i.c) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %_ZN6report47NEW_DENSMATR_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E._ZN6report47NEW_STATEVEC_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E = select i1 %i.c, ptr @_ZN6report47NEW_DENSMATR_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E, ptr @_ZN6report47NEW_STATEVEC_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %10, ptr %5, align 8, !tbaa !24
  %_ZN6report47NEW_STATEVEC_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E.val = load ptr, ptr %_ZN6report47NEW_DENSMATR_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E._ZN6report47NEW_STATEVEC_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %_ZN6report47NEW_DENSMATR_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E._ZN6report47NEW_STATEVEC_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E, i64 8
  %.val48 = load i64, ptr %11, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val48, ptr %i.b, align 8, !tbaa !30
  %i.e = icmp ugt i64 %.val48, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !25
  %i.g = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.g, ptr %10, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %10, %bb.a ] ; 2 uses
  switch i64 %.val48, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %_ZN6report47NEW_STATEVEC_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.i, ptr %i.h, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %_ZN6report47NEW_STATEVEC_QUREG_NUM_AMPS_WOULD_EXCEED_QINDEXB5cxx11E.val, i64 %.val48, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.j = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !23
  %i.l = load ptr, ptr %5, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.n, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 13, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.p, align 1, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = sext i32 %0 to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.t, ptr noundef nonnull align 1 dereferenceable(13) @.str.586, i64 13, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 13, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 69
  store i8 0, ptr %i.v, align 1, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.x = sext i32 %i.d to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr null, ptr %i.z, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %6, ptr %4, align 8, !tbaa !46
  %i.ad = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i19 unwind label %.body ; 0 uses

.noexc.i19:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i19.1 unwind label %.body ; 0 uses

.noexc.i19.1:                                     ; preds = %.noexc.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #27
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i19.1
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ap) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i19.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aq = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.av = icmp sle i32 %0, %i.d
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.aw, ptr %8, align 8, !tbaa !24
  %i.ax = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !30
  %i.az = icmp ugt i64 %i.ay, 15
  br i1 %i.az, label %.noexc.i21, label %._crit_edge.i.i20

.noexc.i21:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.ba = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.m   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i21
  store ptr %i.ba, ptr %8, align 8, !tbaa !25
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !26
  br label %._crit_edge.i.i20

._crit_edge.i.i20:                                ; preds = %.noexc22, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.bc = phi ptr [ %i.ba, %.noexc22 ], [ %i.aw, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1 ] ; 2 uses
  switch i64 %i.ay, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i20
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !26
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.ax, i64 %i.ay, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i20
  %i.be = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !23
  %i.bg = load ptr, ptr %8, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !44
  %i.bn = load ptr, ptr %i.z, align 8, !tbaa !42  ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i24, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %9, ptr %3, align 8, !tbaa !46
  %i.bo = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i25 unwind label %bb.n ; 3 uses

.noexc.i.i25:                                     ; preds = %bb.g, %.noexc.i.i25
  %.0.i.i.i.i.i.i = phi ptr [ %i.bq, %.noexc.i.i25 ], [ %i.bo, %bb.g ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i25, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i25
  store ptr %.0.i.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.bo, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.bs, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.i, label %bb.h, !llvm.loop !1

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i.i7.i.i.i.i, ptr %i.bl, align 8, !tbaa !48
  %i.bt = load i64, ptr %i.ac, align 8, !tbaa !44
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.i, %bb.f
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.av, ptr nofree noundef nonnull align 8 dereferenceable(32) %8, ptr nofree noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %2)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.bu)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.j
  %i.bx = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aw
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.bz = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cb = load ptr, ptr %i.z, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.cb)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit27 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ce = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %10
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit27
  %i.cg = load i64, ptr %10, align 8, !tbaa !26
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %.body
  %i.ci = load i64, ptr %i.am, align 8, !tbaa !26
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.cj) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  %i.ck = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !26
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.q

bb.m:                                             ; preds = %.noexc.i21
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.n:                                             ; preds = %bb.g
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn11 = phi { ptr, i32 } [ %i.cr, %bb.o ], [ %i.cq, %bb.n ] ; 2 uses
  %i.cs = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.aw
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.p
  %i.cu = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.m
  %.pn11.pn = phi { ptr, i32 } [ %i.cp, %bb.m ], [ %.pn11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn11, %bb.p ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #27
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36.1
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.aj, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.cw = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %10
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.q
  %i.cy = load i64, ptr %10, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn11.pn.pn
}

declare noundef i32 @_Z43mem_getMaxNumQuregQubitsBeforeIndexOverflowb(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z40assertQuregLocalMemDoesntExceedMaxSizeofiii8QuESTEnvPKc(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.QuESTEnv) align 8 captures(none) %3, ptr noundef %4) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %7 = alloca %"class.std::map", align 8          ; 15 uses
  %8 = alloca [3 x %"struct.std::pair"], align 8  ; 31 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::map", align 8         ; 10 uses
  %i.c = icmp ne i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %or.cond, i32 %i.h, i32 1      ; 2 uses
  %i.j = icmp ne i32 %1, 0                        ; 2 uses
  %i.k = tail call noundef i32 @_Z53mem_getMaxNumQuregQubitsBeforeGlobalMemSizeofOverflowbi(i1 noundef zeroext %i.j, i32 noundef %i.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.l, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 13, ptr %i.m, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 29
  store i8 0, ptr %i.n, align 1, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.p = sext i32 %0 to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 1 dereferenceable(12) @.str.576, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 12, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 68
  store i8 0, ptr %i.t, align 4, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.v = sext i32 %i.i to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.x, ptr noundef nonnull align 1 dereferenceable(13) @.str.586, i64 13, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 13, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 109
  store i8 0, ptr %i.z, align 1, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ab = sext i32 %i.k to i64
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %7, ptr %6, align 8, !tbaa !46
  %i.ah = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.ai = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.aj = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i.1, %.noexc.i, %._crit_edge.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.2
  %i.at = load i64, ptr %i.am, align 8, !tbaa !26
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.au) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !26
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.bb = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %_ZN6report48NEW_DENSMATR_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E._ZN6report48NEW_STATEVEC_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E = select i1 %i.j, ptr @_ZN6report48NEW_DENSMATR_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E, ptr @_ZN6report48NEW_STATEVEC_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %12, ptr %9, align 8, !tbaa !24
  %_ZN6report48NEW_STATEVEC_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E.val = load ptr, ptr %_ZN6report48NEW_DENSMATR_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E._ZN6report48NEW_STATEVEC_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %_ZN6report48NEW_DENSMATR_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E._ZN6report48NEW_STATEVEC_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E, i64 8
  %.val58 = load i64, ptr %13, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val58, ptr %i.b, align 8, !tbaa !30
  %i.bg = icmp ugt i64 %.val58, 15
  br i1 %i.bg, label %.noexc.i27, label %._crit_edge.i.i

.noexc.i27:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc28 unwind label %bb.m   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i27
  store ptr %i.bh, ptr %9, align 8, !tbaa !25
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.bi, ptr %12, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc28, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.bj = phi ptr [ %i.bh, %.noexc28 ], [ %12, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2 ] ; 2 uses
  switch i64 %.val58, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.bk = load i8, ptr %_ZN6report48NEW_STATEVEC_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !26
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %_ZN6report48NEW_STATEVEC_QUREG_LOCAL_MEM_WOULD_EXCEED_SIZEOFB5cxx11E.val, i64 %.val58, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !23
  %i.bn = load ptr, ptr %9, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.bp = icmp sle i32 %0, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.bq, ptr %10, align 8, !tbaa !24
  %i.br = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !30
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc.i30, label %._crit_edge.i.i29

.noexc.i30:                                       ; preds = %bb.c
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.n   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i30
  store ptr %i.bu, ptr %10, align 8, !tbaa !25
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !26
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.noexc31, %bb.c
  %i.bw = phi ptr [ %i.bu, %.noexc31 ], [ %i.bq, %bb.c ] ; 2 uses
  switch i64 %i.bs, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i29
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !26
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.br, i64 %i.bs, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i29
  %i.by = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !23
  %i.ca = load ptr, ptr %10, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.cc, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.cd, align 8, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store i64 0, ptr %i.cg, align 8, !tbaa !44
  %i.ch = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i33, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %11, ptr %5, align 8, !tbaa !46
  %i.ci = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.i34 unwind label %bb.o ; 3 uses

.noexc.i.i34:                                     ; preds = %bb.g, %.noexc.i.i34
  %.0.i.i.i.i.i.i = phi ptr [ %i.ck, %.noexc.i.i34 ], [ %i.ci, %bb.g ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i34, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i34
  store ptr %.0.i.i.i.i.i.i, ptr %i.ce, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.ci, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cm, %bb.h ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.i, label %bb.h, !llvm.loop !1

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i.i7.i.i.i.i, ptr %i.cf, align 8, !tbaa !48
  %i.cn = load i64, ptr %i.ag, align 8, !tbaa !44
  store i64 %i.cn, ptr %i.cg, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.i, %bb.f
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.bp, ptr nofree noundef nonnull align 8 dereferenceable(32) %10, ptr nofree noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %4)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.co)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.j
  %i.cr = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bq
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.ct = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cv = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %12
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load i64, ptr %12, align 8, !tbaa !26
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.cz = load ptr, ptr %i.ad, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.cz)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit39 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %.body
  %i.dc = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.dd) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !25 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !26
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.1
  %i.dk = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !26
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.r

bb.m:                                             ; preds = %.noexc.i27
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.n:                                             ; preds = %.noexc.i30
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.o:                                             ; preds = %bb.g
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn15 = phi { ptr, i32 } [ %i.ds, %bb.p ], [ %i.dr, %bb.o ] ; 2 uses
  %i.dt = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bq
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.q
  %i.dv = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.n
  %.pn15.pn = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %.pn15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn15, %bb.q ] ; 2 uses
  %i.dx = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %12
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.dz = load i64, ptr %12, align 8, !tbaa !26
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.m ], [ %.pn15.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn15.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %i.ao, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn15.pn.pn.pn
}

declare noundef i32 @_Z53mem_getMaxNumQuregQubitsBeforeGlobalMemSizeofOverflowbi(i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z41assertQuregNotDistributedOverTooManyNodesiii8QuESTEnvPKc(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.QuESTEnv) align 8 captures(none) %3, ptr noundef %4) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::map", align 8          ; 15 uses
  %9 = alloca [3 x %"struct.std::pair"], align 8  ; 31 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::map", align 8         ; 10 uses
  %.not17 = icmp eq i32 %2, 1
  br i1 %.not17, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %.not18 = icmp eq i32 %1, 0
  %_ZN6report43NEW_DISTRIB_DENSMATR_QUREG_HAS_TOO_FEW_AMPSB5cxx11E._ZN6report43NEW_DISTRIB_STATEVEC_QUREG_HAS_TOO_FEW_AMPSB5cxx11E = select i1 %.not18, ptr @_ZN6report43NEW_DISTRIB_STATEVEC_QUREG_HAS_TOO_FEW_AMPSB5cxx11E, ptr @_ZN6report43NEW_DISTRIB_DENSMATR_QUREG_HAS_TOO_FEW_AMPSB5cxx11E ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %12, ptr %7, align 8, !tbaa !24
  %_ZN6report43NEW_DISTRIB_DENSMATR_QUREG_HAS_TOO_FEW_AMPSB5cxx11E.val = load ptr, ptr %_ZN6report43NEW_DISTRIB_DENSMATR_QUREG_HAS_TOO_FEW_AMPSB5cxx11E._ZN6report43NEW_DISTRIB_STATEVEC_QUREG_HAS_TOO_FEW_AMPSB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %_ZN6report43NEW_DISTRIB_DENSMATR_QUREG_HAS_TOO_FEW_AMPSB5cxx11E._ZN6report43NEW_DISTRIB_STATEVEC_QUREG_HAS_TOO_FEW_AMPSB5cxx11E, i64 8
  %.val62 = load i64, ptr %13, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val62, ptr %i.b, align 8, !tbaa !30
  %i.c = icmp ugt i64 %.val62, 15
  br i1 %i.c, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !25
  %i.e = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.e, ptr %12, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.f = phi ptr [ %i.d, %.noexc.i ], [ %12, %bb.b ] ; 2 uses
  switch i64 %.val62, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.g = load i8, ptr %_ZN6report43NEW_DISTRIB_DENSMATR_QUREG_HAS_TOO_FEW_AMPSB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.g, ptr %i.f, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %_ZN6report43NEW_DISTRIB_DENSMATR_QUREG_HAS_TOO_FEW_AMPSB5cxx11E.val, i64 %.val62, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.h = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !23
  %i.j = load ptr, ptr %7, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.l, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 13, ptr %i.m, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 29
  store i8 0, ptr %i.n, align 1, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.p = sext i32 %0 to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(12) @.str.576, i64 12, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 12, ptr %i.t, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 68
  store i8 0, ptr %i.u, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.w = load i32, ptr %i.r, align 8, !tbaa !56   ; 3 uses
  %i.x = sext i32 %i.w to i64
  store i64 %i.x, ptr %i.v, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.z = sitofp i32 %i.w to double
  %i.aa = call noundef double @log2(double noundef %i.z) #27
  %i.ab = call double @llvm.floor.f64(double %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ac, ptr noundef nonnull align 1 dereferenceable(13) @.str.587, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 13, ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 109
  store i8 0, ptr %i.ae, align 1, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ag = fptosi double %i.ab to i64
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %8, ptr %6, align 8, !tbaa !46
  %i.am = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i31 unwind label %.body ; 0 uses

.noexc.i31:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.an = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i31.1 unwind label %.body ; 0 uses

.noexc.i31.1:                                     ; preds = %.noexc.i31
  %i.ao = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i31.2 unwind label %.body ; 0 uses

.noexc.i31.2:                                     ; preds = %.noexc.i31.1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i31.1, %.noexc.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #27
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i31.2
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.az) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i31.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.bg = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bl = invoke noundef i32 @_Z34mem_getMinNumQubitsForDistributioni(i32 noundef %i.w)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.bm = icmp sge i32 %0, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.bn, ptr %10, align 8, !tbaa !24
  %i.bo = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !30
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc.i33, label %._crit_edge.i.i32

.noexc.i33:                                       ; preds = %bb.e
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc34 unwind label %bb.p   ; 2 uses

.noexc34:                                         ; preds = %.noexc.i33
  store ptr %i.br, ptr %10, align 8, !tbaa !25
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.bs, ptr %i.bn, align 8, !tbaa !26
  br label %._crit_edge.i.i32

._crit_edge.i.i32:                                ; preds = %.noexc34, %bb.e
  %i.bt = phi ptr [ %i.br, %.noexc34 ], [ %i.bn, %bb.e ] ; 2 uses
  switch i64 %i.bp, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i32
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !26
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bo, i64 %i.bp, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i32
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !23
  %i.bx = load ptr, ptr %10, align 8, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !44
  %i.ce = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i36, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %11, ptr %5, align 8, !tbaa !46
  %i.cf = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.i37 unwind label %bb.q ; 3 uses

.noexc.i.i37:                                     ; preds = %bb.i, %.noexc.i.i37
  %.0.i.i.i.i.i.i = phi ptr [ %i.ch, %.noexc.i.i37 ], [ %i.cf, %bb.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i37, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i37
  store ptr %.0.i.i.i.i.i.i, ptr %i.cb, align 8, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.cf, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cj, %bb.j ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.k, label %bb.j, !llvm.loop !1

bb.k:                                             ; preds = %bb.j
  store ptr %.0.i.i7.i.i.i.i, ptr %i.cc, align 8, !tbaa !48
  %i.ck = load i64, ptr %i.al, align 8, !tbaa !44
  store i64 %i.ck, ptr %i.cd, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.k, %bb.h
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.bm, ptr nofree noundef nonnull align 8 dereferenceable(32) %10, ptr nofree noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %4)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.cl)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.l
  %i.co = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bn
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.cq = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cs = load ptr, ptr %i.ai, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.cs)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit39 unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.cv = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %12
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit39
  %i.cx = load i64, ptr %12, align 8, !tbaa !26
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %.body
  %i.cz = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.da) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !26
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.1
  %i.dh = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !26
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i33, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.q:                                             ; preds = %bb.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn21 = phi { ptr, i32 } [ %i.do, %bb.r ], [ %i.dn, %bb.q ] ; 2 uses
  %i.dp = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.bn
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.s
  %i.dr = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.p
  %.pn21.pn = phi { ptr, i32 } [ %i.dm, %bb.p ], [ %.pn21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn21, %bb.s ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #27
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %i.at, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.dt = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %12
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.t
  %i.dv = load i64, ptr %12, align 8, !tbaa !26
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #20

declare noundef i32 @_Z34mem_getMinNumQubitsForDistributioni(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define void @_Z23assertQuregFitsInCpuMemiii8QuESTEnvPKc(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.QuESTEnv) align 8 captures(none) %3, ptr noundef %4) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::map", align 8          ; 18 uses
  %9 = alloca [5 x %"struct.std::pair"], align 8  ; 49 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::map", align 8         ; 10 uses
  %i.c = invoke noundef i64 @_Z33mem_tryGetLocalRamCapacityInBytesv()
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %2, 0
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ne i32 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = select i1 %or.cond, i32 %i.i, i32 1      ; 4 uses
  %i.k = icmp ne i32 %1, 0                        ; 2 uses
  %i.l = tail call noundef zeroext i1 @_Z23mem_canQuregFitInMemoryibix(i32 noundef %0, i1 noundef zeroext %i.k, i32 noundef %i.j, i64 noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.m = icmp eq i32 %i.j, 1
  %13 = select i1 %i.m, ptr @_ZN6report45NEW_QUREG_CANNOT_FIT_INTO_NON_DISTRIB_CPU_MEMB5cxx11E, ptr @_ZN6report53NEW_QUREG_CANNOT_FIT_INTO_POTENTIALLY_DISTRIB_CPU_MEMB5cxx11E ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %14, ptr %7, align 8, !tbaa !24
  %_ZN6report53NEW_QUREG_CANNOT_FIT_INTO_POTENTIALLY_DISTRIB_CPU_MEMB5cxx11E.val = load ptr, ptr %13, align 8, !tbaa !25 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.val103 = load i64, ptr %15, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val103, ptr %i.b, align 8, !tbaa !30
  %i.n = icmp ugt i64 %.val103, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !25
  %i.p = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.p, ptr %14, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %14, %bb.b ] ; 2 uses
  switch i64 %.val103, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %_ZN6report53NEW_QUREG_CANNOT_FIT_INTO_POTENTIALLY_DISTRIB_CPU_MEMB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.r, ptr %i.q, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %_ZN6report53NEW_QUREG_CANNOT_FIT_INTO_POTENTIALLY_DISTRIB_CPU_MEMB5cxx11E.val, i64 %.val103, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.s = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = load ptr, ptr %7, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.w, ptr noundef nonnull align 1 dereferenceable(10) @.str.588, i64 10, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.x, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 26
  store i8 0, ptr %i.y, align 2, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aa = sext i32 %1 to i64
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ac, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 13, ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 69
  store i8 0, ptr %i.ae, align 1, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ag = sext i32 %0 to i64
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ai, ptr noundef nonnull align 1 dereferenceable(14) @.str.589, i64 14, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 14, ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 110
  store i8 0, ptr %i.ak, align 2, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 112
  store i64 16, ptr %i.al, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.an = select i1 %i.k, i64 4, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ao, ptr noundef nonnull align 1 dereferenceable(11) @.str.590, i64 11, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i64 11, ptr %i.ap, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 147
  store i8 0, ptr %i.aq, align 1, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 152
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.at, ptr noundef nonnull align 1 dereferenceable(11) @.str.591, i64 11, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 168
  store i64 11, ptr %i.au, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 187
  store i8 0, ptr %i.av, align 1, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 192
  store i64 %i.c, ptr %i.aw, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %8, ptr %6, align 8, !tbaa !46
  %i.bc = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i56 unwind label %.body ; 0 uses

bb.e:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIb                        ; 3 uses
  %i.be = extractvalue { ptr, i32 } %i.bd, 1
  %i.bf = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIb) #27
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.bh = extractvalue { ptr, i32 } %i.bd, 0
  %i.bi = tail call ptr @__cxa_begin_catch(ptr %i.bh) #27 ; 0 uses
  tail call void @__cxa_end_catch() #27
  br label %bb.s

.noexc.i56:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bj = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i56.1 unwind label %.body ; 0 uses

.noexc.i56.1:                                     ; preds = %.noexc.i56
  %i.bk = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i56.2 unwind label %.body ; 0 uses

.noexc.i56.2:                                     ; preds = %.noexc.i56.1
  %i.bl = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i56.3 unwind label %.body ; 0 uses

.noexc.i56.3:                                     ; preds = %.noexc.i56.2
  %i.bm = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i56.4 unwind label %.body ; 0 uses

.noexc.i56.4:                                     ; preds = %.noexc.i56.3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i56.3, %.noexc.i56.2, %.noexc.i56.1, %.noexc.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #27
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i56.4
  %i.bw = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bx) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i56.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !25 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !26
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !25 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !26
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.cq = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.cv = icmp sgt i32 %i.j, 1
  br i1 %i.cv, label %._crit_edge.i.i57, label %bb.i

._crit_edge.i.i57:                                ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.cw, ptr %10, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cw, ptr noundef nonnull align 1 dereferenceable(12) @.str.576, i64 12, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 12, ptr %i.cx, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i8 0, ptr %i.cy, align 4, !tbaa !26
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
end_hunk_0
begin_hunk_1_@_Z23assertQuregFitsInCpuMemiii8QuESTEnvPKc:bb.a
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !26
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.1
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !25 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.1
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !26
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.2
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !25 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.2
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !26
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.3

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.3
  %i.dz = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.4: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.3
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !26
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.4

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.4: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.x

bb.h:                                             ; preds = %._crit_edge.i.i57
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.cw
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.h
  %i.eh = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ej, ptr %11, align 8, !tbaa !24
  %i.ek = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.el = load i64, ptr %i.t, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.el, ptr %i.a, align 8, !tbaa !30
  %i.em = icmp ugt i64 %i.el, 15
  br i1 %i.em, label %.noexc.i70, label %._crit_edge.i.i69

.noexc.i70:                                       ; preds = %bb.i
  %i.en = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc71 unwind label %bb.t   ; 2 uses

.noexc71:                                         ; preds = %.noexc.i70
  store ptr %i.en, ptr %11, align 8, !tbaa !25
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.eo, ptr %i.ej, align 8, !tbaa !26
  br label %._crit_edge.i.i69

._crit_edge.i.i69:                                ; preds = %.noexc71, %bb.i
  %i.ep = phi ptr [ %i.en, %.noexc71 ], [ %i.ej, %bb.i ] ; 2 uses
  switch i64 %i.el, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i69
  %i.eq = load i8, ptr %i.ek, align 1, !tbaa !26
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !26
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.ek, i64 %i.el, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i69
  %i.er = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !23
  %i.et = load ptr, ptr %11, align 8, !tbaa !25
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  store i8 0, ptr %i.eu, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ev = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i32 0, ptr %i.ev, align 8, !tbaa !41
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr null, ptr %i.ew, align 8, !tbaa !42
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !35
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.ev, ptr %i.ey, align 8, !tbaa !43
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  store i64 0, ptr %i.ez, align 8, !tbaa !44
  %i.fa = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i73, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %12, ptr %5, align 8, !tbaa !46
  %i.fb = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.i74 unwind label %bb.u ; 3 uses

.noexc.i.i74:                                     ; preds = %bb.m, %.noexc.i.i74
  %.0.i.i.i.i.i.i = phi ptr [ %i.fd, %.noexc.i.i74 ], [ %i.fb, %bb.m ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i74, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i74
  store ptr %.0.i.i.i.i.i.i, ptr %i.ex, align 8, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.fb, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ff, %bb.n ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.o, label %bb.n, !llvm.loop !1

bb.o:                                             ; preds = %bb.n
  store ptr %.0.i.i7.i.i.i.i, ptr %i.ey, align 8, !tbaa !48
  %i.fg = load i64, ptr %i.bb, align 8, !tbaa !44
  store i64 %i.fg, ptr %i.ez, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr %i.fb, ptr %i.ew, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.o, %bb.l
  invoke void @_Z23assertAllNodesAgreeThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.l, ptr nofree noundef nonnull align 8 dereferenceable(32) %11, ptr nofree noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %4)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.fh = load ptr, ptr %i.ew, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.fh)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.p
  %i.fk = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ej
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.fm = load i64, ptr %i.ej, align 8, !tbaa !26
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.fo = load ptr, ptr %i.ay, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.fo)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit79 unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.fr = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %14
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit79
  %i.ft = load i64, ptr %14, align 8, !tbaa !26
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.f
  ret void

bb.t:                                             ; preds = %.noexc.i70
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.u:                                             ; preds = %bb.m
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn40 = phi { ptr, i32 } [ %i.fx, %bb.v ], [ %i.fw, %bb.u ] ; 2 uses
  %i.fy = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.ej
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.w
  %i.ga = load i64, ptr %i.ej, align 8, !tbaa !26
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn40.pn = phi { ptr, i32 } [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.fv, %bb.t ], [ %.pn40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn40, %bb.w ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #27
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.4
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.br, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit62.4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.gc = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %14
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.x
  %i.ge = load i64, ptr %14, align 8, !tbaa !26
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.e
  %.merged = phi { ptr, i32 } [ %.pn40.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.bd, %bb.e ]
  resume { ptr, i32 } %.merged
}

declare noundef i64 @_Z33mem_tryGetLocalRamCapacityInBytesv() local_unnamed_addr #4

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #22

declare noundef zeroext i1 @_Z23mem_canQuregFitInMemoryibix(i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.9", align 1      ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !158

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #27 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %1, ptr %2, align 8, !tbaa !62, !alias.scope !161
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %0, ptr %5, align 8, !tbaa !46
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #33 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !62
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !24
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8, !tbaa !25
  %i.m = load i64, ptr %i.g, align 8, !tbaa !26
  store i64 %i.m, ptr %i.e, align 8, !tbaa !26
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8, !tbaa !23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !25
  store i64 0, ptr %i.p, align 8, !tbaa !23
  store i8 0, ptr %i.g, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.r, align 8, !tbaa !38
  store ptr %i.a, ptr %i.o, align 8, !tbaa !65
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 5 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
end_hunk_1
begin_hunk_2_@_Z31assertMatrixDeploysEnabledByEnviii8QuESTEnvPKc:bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bm
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.p
  %i.ch = load i64, ptr %i.bm, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %.sink54 = phi i64 [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %.sink = phi ptr [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %.pn.ph = phi { ptr, i32 } [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %i.ci = add i64 %.sink54, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split, %bb.p, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.bd, %bb.k ], [ %i.ce, %bb.p ], [ %.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z20assertMatrixNonEmptyiPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::map", align 8          ; 11 uses
  %5 = alloca [1 x %"struct.std::pair"], align 8  ; 13 uses
  %i.b = icmp sgt i32 %0, 0
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !24
  %i.d = load ptr, ptr @_ZN6report34NEW_MATRIX_NUM_QUBITS_NOT_POSITIVEB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6report34NEW_MATRIX_NUM_QUBITS_NOT_POSITIVEB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.e, ptr %i.a, align 8, !tbaa !30
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !25
  %i.h = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.h, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.d, align 1, !tbaa !26
  store i8 %i.j, ptr %i.i, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = load ptr, ptr %3, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 13, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 29
  store i8 0, ptr %i.q, align 1, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.s = sext i32 %0 to i64
  store i64 %i.s, ptr %i.r, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.t, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.t, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %4, ptr %2, align 8, !tbaa !46
  %i.y = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i7 unwind label %bb.d  ; 0 uses

.noexc.i7:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.b, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
          to label %bb.e unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #27
  br label %.body

bb.e:                                             ; preds = %.noexc.i7
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.aa)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader unwind label %bb.f

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader: ; preds = %bb.e
  %i.ab = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ah) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ai = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !26
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.g:                                             ; preds = %.noexc.i7
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #27
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.z, %bb.d ]
  %i.an = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.as = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.c
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10
  %i.au = load i64, ptr %i.c, align 8, !tbaa !26
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z43assertMatrixTotalNumElemsDontExceedMaxIndexibPKc(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::map", align 8          ; 14 uses
  %7 = alloca [2 x %"struct.std::pair"], align 8  ; 22 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::map", align 8          ; 10 uses
  %i.c = tail call noundef i32 @_Z44mem_getMaxNumMatrixQubitsBeforeIndexOverflowb(i1 noundef zeroext %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %_ZN6report43NEW_COMP_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E._ZN6report43NEW_DIAG_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E = select i1 %1, ptr @_ZN6report43NEW_COMP_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E, ptr @_ZN6report43NEW_DIAG_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %10, ptr %5, align 8, !tbaa !24
  %_ZN6report43NEW_DIAG_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E.val = load ptr, ptr %_ZN6report43NEW_COMP_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E._ZN6report43NEW_DIAG_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %_ZN6report43NEW_COMP_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E._ZN6report43NEW_DIAG_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E, i64 8
  %.val48 = load i64, ptr %11, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val48, ptr %i.b, align 8, !tbaa !30
  %i.d = icmp ugt i64 %.val48, 15
  br i1 %i.d, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !25
  %i.f = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.f, ptr %10, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i ], [ %10, %bb.a ] ; 2 uses
  switch i64 %.val48, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %_ZN6report43NEW_DIAG_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.h, ptr %i.g, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %_ZN6report43NEW_DIAG_MATR_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E.val, i64 %.val48, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.i = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !23
  %i.k = load ptr, ptr %5, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.m, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 13, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.o, align 1, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.q = sext i32 %0 to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.s, ptr noundef nonnull align 1 dereferenceable(13) @.str.586, i64 13, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 13, ptr %i.t, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 69
  store i8 0, ptr %i.u, align 1, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.w = sext i32 %i.c to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.x, ptr %i.z, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %6, ptr %4, align 8, !tbaa !46
  %i.ac = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i19 unwind label %.body ; 0 uses

.noexc.i19:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i19.1 unwind label %.body ; 0 uses

.noexc.i19.1:                                     ; preds = %.noexc.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i19.1
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !26
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ao) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i19.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ap = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.au = icmp sle i32 %0, %i.c
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.av, ptr %8, align 8, !tbaa !24
  %i.aw = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !30
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i21, label %._crit_edge.i.i20

.noexc.i21:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.m   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i21
  store ptr %i.az, ptr %8, align 8, !tbaa !25
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !26
  br label %._crit_edge.i.i20

._crit_edge.i.i20:                                ; preds = %.noexc22, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.bb = phi ptr [ %i.az, %.noexc22 ], [ %i.av, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1 ] ; 2 uses
  switch i64 %i.ax, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i20
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !26
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.aw, i64 %i.ax, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i20
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !23
  %i.bf = load ptr, ptr %8, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store i64 0, ptr %i.bl, align 8, !tbaa !44
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !42  ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i24, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %9, ptr %3, align 8, !tbaa !46
  %i.bn = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i25 unwind label %bb.n ; 3 uses

.noexc.i.i25:                                     ; preds = %bb.g, %.noexc.i.i25
  %.0.i.i.i.i.i.i = phi ptr [ %i.bp, %.noexc.i.i25 ], [ %i.bn, %bb.g ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i25, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i25
  store ptr %.0.i.i.i.i.i.i, ptr %i.bj, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.bn, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.br, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.i, label %bb.h, !llvm.loop !1

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i.i7.i.i.i.i, ptr %i.bk, align 8, !tbaa !48
  %i.bs = load i64, ptr %i.ab, align 8, !tbaa !44
  store i64 %i.bs, ptr %i.bl, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.i, %bb.f
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.au, ptr nofree noundef nonnull align 8 dereferenceable(32) %8, ptr nofree noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %2)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.bt)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.j
  %i.bw = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.av
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_2
begin_hunk_3_@_Z21assertSuperOpNonEmptyiPKc:bb.a
  store i64 13, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 29
  store i8 0, ptr %i.q, align 1, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.s = sext i32 %0 to i64
  store i64 %i.s, ptr %i.r, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.t, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.t, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %4, ptr %2, align 8, !tbaa !46
  %i.y = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i7 unwind label %bb.d  ; 0 uses

.noexc.i7:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.b, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
          to label %bb.e unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #27
  br label %.body

bb.e:                                             ; preds = %.noexc.i7
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.aa)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader unwind label %bb.f

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader: ; preds = %bb.e
  %i.ab = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ah) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ai = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !26
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.g:                                             ; preds = %.noexc.i7
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #27
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.z, %bb.d ]
  %i.an = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.as = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.c
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10
  %i.au = load i64, ptr %i.c, align 8, !tbaa !26
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z44assertSuperOpTotalNumElemsDontExceedMaxIndexibPKc(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 5 uses
  %5 = alloca %"class.std::map", align 8          ; 14 uses
  %6 = alloca [2 x %"struct.std::pair"], align 8  ; 22 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::map", align 8          ; 10 uses
  %i.c = tail call noundef i32 @_Z45mem_getMaxNumSuperOpQubitsBeforeIndexOverflowv() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 13, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.h = sext i32 %0 to i64
  store i64 %i.h, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) @.str.586, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 13, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 69
  store i8 0, ptr %i.l, align 1, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.n = sext i32 %i.c to i64
  store i64 %i.n, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.o, ptr %i.q, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.o, ptr %i.r, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %5, ptr %4, align 8, !tbaa !46
  %i.t = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.u = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i, %._crit_edge.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.1
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !26
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.af) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %_ZN6report53NEW_KRAUS_MAPS_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E._ZN6report42NEW_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E = select i1 %1, ptr @_ZN6report53NEW_KRAUS_MAPS_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E, ptr @_ZN6report42NEW_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %10, ptr %7, align 8, !tbaa !24
  %_ZN6report42NEW_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E.val = load ptr, ptr %_ZN6report53NEW_KRAUS_MAPS_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E._ZN6report42NEW_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %_ZN6report53NEW_KRAUS_MAPS_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E._ZN6report42NEW_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E, i64 8
  %.val50 = load i64, ptr %11, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val50, ptr %i.b, align 8, !tbaa !30
  %i.al = icmp ugt i64 %.val50, 15
  br i1 %i.al, label %.noexc.i20, label %._crit_edge.i.i

.noexc.i20:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc21 unwind label %bb.m   ; 2 uses

.noexc21:                                         ; preds = %.noexc.i20
  store ptr %i.am, ptr %7, align 8, !tbaa !25
  %i.an = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.an, ptr %10, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc21, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.ao = phi ptr [ %i.am, %.noexc21 ], [ %10, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1 ] ; 2 uses
  switch i64 %.val50, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.ap = load i8, ptr %_ZN6report42NEW_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !26
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %_ZN6report42NEW_SUPER_OP_NUM_ELEMS_WOULD_EXCEED_QINDEXB5cxx11E.val, i64 %.val50, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !23
  %i.as = load ptr, ptr %7, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.au = icmp sle i32 %0, %i.c
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.av, ptr %8, align 8, !tbaa !24
  %i.aw = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !30
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i23, label %._crit_edge.i.i22

.noexc.i23:                                       ; preds = %bb.c
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.n   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i23
  store ptr %i.az, ptr %8, align 8, !tbaa !25
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !26
  br label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %.noexc24, %bb.c
  %i.bb = phi ptr [ %i.az, %.noexc24 ], [ %i.av, %bb.c ] ; 2 uses
  switch i64 %i.ax, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i22
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !26
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.aw, i64 %i.ax, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i22
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !23
  %i.bf = load ptr, ptr %8, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store i64 0, ptr %i.bl, align 8, !tbaa !44
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !42  ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i26, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %9, ptr %3, align 8, !tbaa !46
  %i.bn = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i27 unwind label %bb.o ; 3 uses

.noexc.i.i27:                                     ; preds = %bb.g, %.noexc.i.i27
  %.0.i.i.i.i.i.i = phi ptr [ %i.bp, %.noexc.i.i27 ], [ %i.bn, %bb.g ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i27, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i27
  store ptr %.0.i.i.i.i.i.i, ptr %i.bj, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.bn, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.br, %bb.h ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.i, label %bb.h, !llvm.loop !1

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i.i7.i.i.i.i, ptr %i.bk, align 8, !tbaa !48
  %i.bs = load i64, ptr %i.s, align 8, !tbaa !44
  store i64 %i.bs, ptr %i.bl, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.i, %bb.f
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.au, ptr nofree noundef nonnull align 8 dereferenceable(32) %8, ptr nofree noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.bt)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.j
  %i.bw = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.av
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.by = load i64, ptr %i.av, align 8, !tbaa !26
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ca = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %10
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = load i64, ptr %10, align 8, !tbaa !26
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ce)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit32 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %.body
  %i.ch = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ci) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  %i.cj = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !26
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36.1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.r

bb.m:                                             ; preds = %.noexc.i20
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.n:                                             ; preds = %.noexc.i23
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.o:                                             ; preds = %bb.g
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn11 = phi { ptr, i32 } [ %i.cr, %bb.p ], [ %i.cq, %bb.o ] ; 2 uses
  %i.cs = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.av
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.q
  %i.cu = load i64, ptr %i.av, align 8, !tbaa !26
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.n
  %.pn11.pn = phi { ptr, i32 } [ %i.cp, %bb.n ], [ %.pn11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn11, %bb.q ] ; 2 uses
  %i.cw = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %10
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cy = load i64, ptr %10, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.m
  %.pn11.pn.pn = phi { ptr, i32 } [ %i.co, %bb.m ], [ %.pn11.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.pn11.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38.1
  %.pn11.pn.pn.pn = phi { ptr, i32 } [ %.pn11.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.z, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit38.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn11.pn.pn.pn
}

declare noundef i32 @_Z45mem_getMaxNumSuperOpQubitsBeforeIndexOverflowv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z42assertSuperOpLocalMemDoesntExceedMaxSizeofibPKc(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %5 = alloca %"class.std::map", align 8          ; 15 uses
  %6 = alloca [3 x %"struct.std::pair"], align 8  ; 31 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::map", align 8          ; 10 uses
  %i.c = tail call noundef i32 @_Z55mem_getMaxNumSuperOpQubitsBeforeGlobalMemSizeofOverflowv() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 13, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.h = sext i32 %0 to i64
  store i64 %i.h, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) @.str.586, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 13, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 69
  store i8 0, ptr %i.l, align 1, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.n = sext i32 %i.c to i64
  store i64 %i.n, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 1 dereferenceable(14) @.str.589, i64 14, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 14, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 110
  store i8 0, ptr %i.r, align 2, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i64 16, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.t, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.t, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %5, ptr %4, align 8, !tbaa !46
  %i.y = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.z = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.aa = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i.1, %.noexc.i, %._crit_edge.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.2
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.al) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.as = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.av = load i64, ptr %i.at, align 8, !tbaa !26
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E._ZN6report36NEW_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E = select i1 %1, ptr @_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E, ptr @_ZN6report36NEW_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %10, ptr %7, align 8, !tbaa !24
  %_ZN6report36NEW_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E.val = load ptr, ptr %_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E._ZN6report36NEW_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E._ZN6report36NEW_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E, i64 8
  %.val65 = load i64, ptr %11, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val65, ptr %i.b, align 8, !tbaa !30
  %i.ax = icmp ugt i64 %.val65, 15
  br i1 %i.ax, label %.noexc.i30, label %._crit_edge.i.i

.noexc.i30:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc31 unwind label %bb.m   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i30
  store ptr %i.ay, ptr %7, align 8, !tbaa !25
  %i.az = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.az, ptr %10, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc31, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.ba = phi ptr [ %i.ay, %.noexc31 ], [ %10, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2 ] ; 2 uses
  switch i64 %.val65, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.bb = load i8, ptr %_ZN6report36NEW_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !26
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %_ZN6report36NEW_SUPER_OP_MEM_WOULD_EXCEED_SIZEOFB5cxx11E.val, i64 %.val65, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !23
  %i.be = load ptr, ptr %7, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.bg = icmp sle i32 %0, %i.c
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bh, ptr %8, align 8, !tbaa !24
  %i.bi = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !30
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i33, label %._crit_edge.i.i32

.noexc.i33:                                       ; preds = %bb.c
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc34 unwind label %bb.n   ; 2 uses

.noexc34:                                         ; preds = %.noexc.i33
  store ptr %i.bl, ptr %8, align 8, !tbaa !25
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.bm, ptr %i.bh, align 8, !tbaa !26
  br label %._crit_edge.i.i32

._crit_edge.i.i32:                                ; preds = %.noexc34, %bb.c
  %i.bn = phi ptr [ %i.bl, %.noexc34 ], [ %i.bh, %bb.c ] ; 2 uses
  switch i64 %i.bj, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i32
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !26
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bi, i64 %i.bj, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i32
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !23
  %i.br = load ptr, ptr %8, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !44
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.by, null
  br i1 %.not.i.i36, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %9, ptr %3, align 8, !tbaa !46
  %i.bz = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i37 unwind label %bb.o ; 3 uses

.noexc.i.i37:                                     ; preds = %bb.g, %.noexc.i.i37
  %.0.i.i.i.i.i.i = phi ptr [ %i.cb, %.noexc.i.i37 ], [ %i.bz, %bb.g ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i37, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i37
  store ptr %.0.i.i.i.i.i.i, ptr %i.bv, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.bz, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cd, %bb.h ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.i, label %bb.h, !llvm.loop !1

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i.i7.i.i.i.i, ptr %i.bw, align 8, !tbaa !48
  %i.ce = load i64, ptr %i.x, align 8, !tbaa !44
  store i64 %i.ce, ptr %i.bx, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.bz, ptr %i.bu, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.i, %bb.f
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.bg, ptr nofree noundef nonnull align 8 dereferenceable(32) %8, ptr nofree noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.cf)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.j
  %i.ci = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bh
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.ck = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cm = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %10
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = load i64, ptr %10, align 8, !tbaa !26
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.cq = load ptr, ptr %i.u, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.cq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit42 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %.body
  %i.ct = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.cu) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !25 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.1
  %i.db = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !26
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.r

bb.m:                                             ; preds = %.noexc.i30
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.n:                                             ; preds = %.noexc.i33
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.o:                                             ; preds = %bb.g
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn18 = phi { ptr, i32 } [ %i.dj, %bb.p ], [ %i.di, %bb.o ] ; 2 uses
  %i.dk = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bh
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.q
  %i.dm = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.n
  %.pn18.pn = phi { ptr, i32 } [ %i.dh, %bb.n ], [ %.pn18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn18, %bb.q ] ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %10
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.dq = load i64, ptr %10, align 8, !tbaa !26
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.m
  %.pn18.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.m ], [ %.pn18.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %.pn18.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.af, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit45.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn18.pn.pn.pn
}

declare noundef i32 @_Z55mem_getMaxNumSuperOpQubitsBeforeGlobalMemSizeofOverflowv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z25assertSuperOpFitsInCpuMemibPKc(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %5 = alloca %"class.std::map", align 8          ; 15 uses
  %6 = alloca [3 x %"struct.std::pair"], align 8  ; 31 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::map", align 8          ; 10 uses
  %i.c = invoke noundef i64 @_Z33mem_tryGetLocalRamCapacityInBytesv()
          to label %._crit_edge.i.i.i unwind label %bb.b ; 2 uses

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_Z25mem_canSuperOpFitInMemoryix(i32 noundef %0, i64 noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.e, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 13, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 0, ptr %i.g, align 1, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.i = sext i32 %0 to i64
  store i64 %i.i, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.k, ptr noundef nonnull align 1 dereferenceable(14) @.str.589, i64 14, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 14, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 70
  store i8 0, ptr %i.m, align 2, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 16, ptr %i.n, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.p, ptr noundef nonnull align 1 dereferenceable(11) @.str.591, i64 11, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 11, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 107
  store i8 0, ptr %i.r, align 1, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i64 %i.c, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.t, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.t, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %5, ptr %4, align 8, !tbaa !46
  %i.y = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i unwind label %.body  ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIb                        ; 3 uses
  %i.aa = extractvalue { ptr, i32 } %i.z, 1
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIb) #27
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.ad = extractvalue { ptr, i32 } %i.z, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #27 ; 0 uses
  tail call void @__cxa_end_catch() #27
  br label %bb.p

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.af = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.ag = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i.1, %.noexc.i, %._crit_edge.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.2
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.ar) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !26
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.ay = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !26
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E._ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E = select i1 %1, ptr @_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E, ptr @_ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %10, ptr %7, align 8, !tbaa !24
  %_ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E.val = load ptr, ptr %_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E._ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E._ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E, i64 8
  %.val69 = load i64, ptr %11, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val69, ptr %i.b, align 8, !tbaa !30
  %i.bd = icmp ugt i64 %.val69, 15
  br i1 %i.bd, label %.noexc.i35, label %._crit_edge.i.i

.noexc.i35:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc36 unwind label %bb.q   ; 2 uses

.noexc36:                                         ; preds = %.noexc.i35
  store ptr %i.be, ptr %7, align 8, !tbaa !25
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.bf, ptr %10, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc36, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.bg = phi ptr [ %i.be, %.noexc36 ], [ %10, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2 ] ; 2 uses
  switch i64 %.val69, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.bh = load i8, ptr %_ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %_ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_CPU_MEMB5cxx11E.val, i64 %.val69, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !23
  %i.bk = load ptr, ptr %7, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bm, ptr %8, align 8, !tbaa !24
  %i.bn = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.bo = load i64, ptr %i.bj, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !30
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i38, label %._crit_edge.i.i37

.noexc.i38:                                       ; preds = %bb.f
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc39 unwind label %bb.r   ; 2 uses

.noexc39:                                         ; preds = %.noexc.i38
  store ptr %i.bq, ptr %8, align 8, !tbaa !25
  %i.br = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !26
  br label %._crit_edge.i.i37

._crit_edge.i.i37:                                ; preds = %.noexc39, %bb.f
  %i.bs = phi ptr [ %i.bq, %.noexc39 ], [ %i.bm, %bb.f ] ; 2 uses
  switch i64 %i.bo, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i37
  %i.bt = load i8, ptr %i.bn, align 1, !tbaa !26
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !26
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i37
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !23
  %i.bw = load ptr, ptr %8, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.by, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.bz, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !44
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i41, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %9, ptr %3, align 8, !tbaa !46
  %i.ce = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.by, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i42 unwind label %bb.s ; 3 uses

.noexc.i.i42:                                     ; preds = %bb.j, %.noexc.i.i42
  %.0.i.i.i.i.i.i = phi ptr [ %i.cg, %.noexc.i.i42 ], [ %i.ce, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i42, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i42
  store ptr %.0.i.i.i.i.i.i, ptr %i.ca, align 8, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.ce, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ci, %bb.k ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.l, label %bb.k, !llvm.loop !1

bb.l:                                             ; preds = %bb.k
  store ptr %.0.i.i7.i.i.i.i, ptr %i.cb, align 8, !tbaa !48
  %i.cj = load i64, ptr %i.x, align 8, !tbaa !44
  store i64 %i.cj, ptr %i.cc, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.l, %bb.i
  invoke void @_Z23assertAllNodesAgreeThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.d, ptr nofree noundef nonnull align 8 dereferenceable(32) %8, ptr nofree noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %2)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.ck)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.m
  %i.cn = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bm
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.cp = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cr = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %10
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = load i64, ptr %10, align 8, !tbaa !26
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.cv = load ptr, ptr %i.u, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.cv)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit47 unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit47, %bb.c
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %.body
  %i.cy = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.cz) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !25 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !26
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.1
  %i.dg = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.1
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !26
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.v

bb.q:                                             ; preds = %.noexc.i35
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.r:                                             ; preds = %.noexc.i38
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.s:                                             ; preds = %bb.j
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.do, %bb.t ], [ %i.dn, %bb.s ] ; 2 uses
  %i.dp = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.bm
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.u
  %i.dr = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.r
  %.pn24.pn = phi { ptr, i32 } [ %i.dm, %bb.r ], [ %.pn24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn24, %bb.u ] ; 2 uses
  %i.dt = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %10
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.dv = load i64, ptr %10, align 8, !tbaa !26
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.q
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.q ], [ %.pn24.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn24.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.2
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.al, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit50.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.b
  %.merged = phi { ptr, i32 } [ %.pn24.pn.pn.pn, %bb.v ], [ %i.z, %bb.b ]
  resume { ptr, i32 } %.merged
}

declare noundef zeroext i1 @_Z25mem_canSuperOpFitInMemoryix(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z25assertSuperOpFitsInGpuMemiibPKc(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %6 = alloca %"class.std::map", align 8          ; 15 uses
  %7 = alloca [3 x %"struct.std::pair"], align 8  ; 31 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::map", align 8         ; 10 uses
  %.not19 = icmp eq i32 %1, 0
  br i1 %.not19, label %bb.n, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.c = tail call noundef i64 @_Z36gpu_getCurrentAvailableMemoryInBytesv() ; 2 uses
  %i.d = tail call noundef zeroext i1 @_Z25mem_canSuperOpFitInMemoryix(i32 noundef %0, i64 noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.e, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 13, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.g, align 1, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.i = sext i32 %0 to i64
  store i64 %i.i, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.k, ptr noundef nonnull align 1 dereferenceable(14) @.str.589, i64 14, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 14, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 70
  store i8 0, ptr %i.m, align 2, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 16, ptr %i.n, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull align 1 dereferenceable(12) @.str.598, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 12, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 108
  store i8 0, ptr %i.r, align 4, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i64 %i.c, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr null, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.t, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.t, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %6, ptr %5, align 8, !tbaa !46
  %i.y = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.z = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.aa = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i.1, %.noexc.i, %._crit_edge.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.2
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.al) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.as = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.av = load i64, ptr %i.at, align 8, !tbaa !26
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E._ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E = select i1 %2, ptr @_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E, ptr @_ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %11, ptr %8, align 8, !tbaa !24
  %_ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E.val = load ptr, ptr %_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E._ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %_ZN6report47NEW_KRAUS_MAPS_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E._ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E, i64 8
  %.val67 = load i64, ptr %12, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val67, ptr %i.b, align 8, !tbaa !30
  %i.ax = icmp ugt i64 %.val67, 15
  br i1 %i.ax, label %.noexc.i33, label %._crit_edge.i.i

.noexc.i33:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc34 unwind label %bb.o   ; 2 uses

.noexc34:                                         ; preds = %.noexc.i33
  store ptr %i.ay, ptr %8, align 8, !tbaa !25
  %i.az = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.az, ptr %11, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc34, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.ba = phi ptr [ %i.ay, %.noexc34 ], [ %11, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2 ] ; 2 uses
  switch i64 %.val67, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.bb = load i8, ptr %_ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %_ZN6report36NEW_SUPER_OP_CANNOT_FIT_INTO_GPU_MEMB5cxx11E.val, i64 %.val67, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !23
  %i.be = load ptr, ptr %8, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.bg, ptr %9, align 8, !tbaa !24
  %i.bh = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !30
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %.noexc.i36, label %._crit_edge.i.i35

.noexc.i36:                                       ; preds = %bb.d
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc37 unwind label %bb.p   ; 2 uses

.noexc37:                                         ; preds = %.noexc.i36
  store ptr %i.bk, ptr %9, align 8, !tbaa !25
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !26
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.noexc37, %bb.d
  %i.bm = phi ptr [ %i.bk, %.noexc37 ], [ %i.bg, %bb.d ] ; 2 uses
  switch i64 %i.bi, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i35
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !26
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bh, i64 %i.bi, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i35
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !23
  %i.bq = load ptr, ptr %9, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !44
  %i.bx = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i39, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %10, ptr %4, align 8, !tbaa !46
  %i.by = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.i40 unwind label %bb.q ; 3 uses

.noexc.i.i40:                                     ; preds = %bb.h, %.noexc.i.i40
  %.0.i.i.i.i.i.i = phi ptr [ %i.ca, %.noexc.i.i40 ], [ %i.by, %bb.h ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i40, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i40
  store ptr %.0.i.i.i.i.i.i, ptr %i.bu, align 8, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.by, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cc, %bb.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.j, label %bb.i, !llvm.loop !1

bb.j:                                             ; preds = %bb.i
  store ptr %.0.i.i7.i.i.i.i, ptr %i.bv, align 8, !tbaa !48
  %i.cd = load i64, ptr %i.x, align 8, !tbaa !44
  store i64 %i.cd, ptr %i.bw, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.j, %bb.g
  invoke void @_Z23assertAllNodesAgreeThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.d, ptr nofree noundef nonnull align 8 dereferenceable(32) %9, ptr nofree noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %3)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.ce)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.k
  %i.ch = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bg
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.cj = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cl = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %11
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = load i64, ptr %11, align 8, !tbaa !26
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.cp = load ptr, ptr %i.u, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.cp)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit45 unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit45
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %.body
  %i.cs = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ct) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.1
  %i.da = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.1
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !26
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.t

bb.o:                                             ; preds = %.noexc.i33
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.p:                                             ; preds = %.noexc.i36
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.q:                                             ; preds = %bb.h
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn22 = phi { ptr, i32 } [ %i.di, %bb.r ], [ %i.dh, %bb.q ] ; 2 uses
  %i.dj = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bg
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.s
  %i.dl = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.p
  %.pn22.pn = phi { ptr, i32 } [ %i.dg, %bb.p ], [ %.pn22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %.pn22, %bb.s ] ; 2 uses
  %i.dn = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %11
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.dp = load i64, ptr %11, align 8, !tbaa !26
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.o
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.df, %bb.o ], [ %.pn22.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #27
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.2
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.af, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit48.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn22.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z25validate_newSuperOpParamsiPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %2 = alloca %struct.QuESTEnv, align 4           ; 4 uses
  %.b = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z18validate_envIsInitPKc(ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %2)
  call void @_Z21assertSuperOpNonEmptyiPKc(i32 noundef %0, ptr noundef %1)
  call void @_Z44assertSuperOpTotalNumElemsDontExceedMaxIndexibPKc(i32 noundef %0, i1 noundef zeroext false, ptr noundef %1)
  call void @_Z42assertSuperOpLocalMemDoesntExceedMaxSizeofibPKc(i32 noundef %0, i1 noundef zeroext false, ptr noundef %1)
  call void @_Z25assertSuperOpFitsInCpuMemibPKc(i32 noundef %0, i1 noundef zeroext false, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59
  call void @_Z25assertSuperOpFitsInGpuMemiibPKc(i32 noundef %0, i32 noundef %i.b, i1 noundef zeroext false, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z22assertNewSuperOpAllocs7SuperOpbPKc(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %7 = alloca %"class.std::map", align 8          ; 14 uses
  %8 = alloca [1 x %"struct.std::pair"], align 8  ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::map", align 8         ; 10 uses
  %12 = alloca %struct.QuESTEnv, align 4          ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::map", align 8         ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::map", align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.e = load i32, ptr %0, align 8, !tbaa !177
  %i.f = invoke noundef i64 @_Z33mem_getLocalSuperOpMemoryRequiredi(i32 noundef %i.e)
          to label %._crit_edge.i.i.i unwind label %bb.b

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull align 1 dereferenceable(12) @.str.599, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 12, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i8 0, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.f, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr null, ptr %i.l, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.k, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.k, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %7, ptr %6, align 8, !tbaa !46
  %i.p = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.q = load ptr, ptr %8, align 8, !tbaa !25     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %._crit_edge.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #27
  %i.u = load ptr, ptr %8, align 8, !tbaa !25     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i
  %i.x = load i64, ptr %i.r, align 8, !tbaa !26
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.y) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.b = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  br i1 %.b, label %bb.av, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %.body
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !26
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.ab) #30
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31, %bb.b
  %.pn = phi { ptr, i32 } [ %i.z, %bb.b ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31 ], [ %i.t, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bb

bb.c:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %_ZN6report46NEW_KRAUS_MAPS_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E._ZN6report35NEW_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E = select i1 %1, ptr @_ZN6report46NEW_KRAUS_MAPS_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E, ptr @_ZN6report35NEW_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %18, ptr %9, align 8, !tbaa !24
  %_ZN6report35NEW_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E.val = load ptr, ptr %_ZN6report46NEW_KRAUS_MAPS_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E._ZN6report35NEW_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %_ZN6report46NEW_KRAUS_MAPS_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E._ZN6report35NEW_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E, i64 8
  %.val108 = load i64, ptr %19, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 %.val108, ptr %i.d, align 8, !tbaa !30
  %i.ac = icmp ugt i64 %.val108, 15
  br i1 %i.ac, label %.noexc.i34, label %._crit_edge.i.i

.noexc.i34:                                       ; preds = %bb.c
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc35 unwind label %bb.ac  ; 2 uses

.noexc35:                                         ; preds = %.noexc.i34
  store ptr %i.ad, ptr %9, align 8, !tbaa !25
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !30
  store i64 %i.ae, ptr %18, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc35, %bb.c
  %i.af = phi ptr [ %i.ad, %.noexc35 ], [ %18, %bb.c ] ; 2 uses
  switch i64 %.val108, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %_ZN6report35NEW_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %_ZN6report35NEW_SUPER_OP_CPU_ELEMS_ALLOC_FAILEDB5cxx11E.val, i64 %.val108, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !23
  %i.aj = load ptr, ptr %9, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !178
  %i.an = invoke noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %i.am)
          to label %bb.g unwind label %bb.ad

bb.g:                                             ; preds = %bb.f
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114
  %i.aq = invoke noundef zeroext i1 @_Z20mem_isOuterAllocatedPPSt7complexIdE(ptr noundef %i.ap)
          to label %bb.i unwind label %bb.ad

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = phi i1 [ false, %bb.g ], [ %i.aq, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.as, ptr %10, align 8, !tbaa !24
  %i.at = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.au, ptr %i.c, align 8, !tbaa !30
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i37, label %._crit_edge.i.i36

.noexc.i37:                                       ; preds = %bb.i
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc38 unwind label %bb.ad  ; 2 uses

.noexc38:                                         ; preds = %.noexc.i37
  store ptr %i.aw, ptr %10, align 8, !tbaa !25
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !30
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !26
  br label %._crit_edge.i.i36

._crit_edge.i.i36:                                ; preds = %.noexc38, %bb.i
  %i.ay = phi ptr [ %i.aw, %.noexc38 ], [ %i.as, %bb.i ] ; 2 uses
  switch i64 %i.au, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i36
  %i.az = load i8, ptr %i.at, align 1, !tbaa !26
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !26
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.at, i64 %i.au, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i36
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !23
  %i.bc = load ptr, ptr %10, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.be, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !44
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !42  ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i40, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %11, ptr %5, align 8, !tbaa !46
  %i.bk = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.be, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.i41 unwind label %bb.ae ; 3 uses

.noexc.i.i41:                                     ; preds = %bb.m, %.noexc.i.i41
  %.0.i.i.i.i.i.i = phi ptr [ %i.bm, %.noexc.i.i41 ], [ %i.bk, %bb.m ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i41, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i41
  store ptr %.0.i.i.i.i.i.i, ptr %i.bg, align 8, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.bk, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.o, label %bb.n, !llvm.loop !1

bb.o:                                             ; preds = %bb.n
  store ptr %.0.i.i7.i.i.i.i, ptr %i.bh, align 8, !tbaa !48
  %i.bp = load i64, ptr %i.o, align 8, !tbaa !44
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.o, %bb.l
  invoke void @_Z23assertAllNodesAgreeThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.ar, ptr nofree noundef nonnull align 8 dereferenceable(32) %10, ptr nofree noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %2)
          to label %bb.p unwind label %bb.af

bb.p:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.bq)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.p
  %i.bt = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.as
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.bv = load i64, ptr %i.as, align 8, !tbaa !26
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %_ZN6report46NEW_KRAUS_MAPS_SUPER_OP_GPU_ELEMS_ALLOC_FAILEDB5cxx11E._ZN6report35NEW_SUPER_OP_GPU_ELEMS_ALLOC_FAILEDB5cxx11E = select i1 %1, ptr @_ZN6report46NEW_KRAUS_MAPS_SUPER_OP_GPU_ELEMS_ALLOC_FAILEDB5cxx11E, ptr @_ZN6report35NEW_SUPER_OP_GPU_ELEMS_ALLOC_FAILEDB5cxx11E
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %_ZN6report46NEW_KRAUS_MAPS_SUPER_OP_GPU_ELEMS_ALLOC_FAILEDB5cxx11E._ZN6report35NEW_SUPER_OP_GPU_ELEMS_ALLOC_FAILEDB5cxx11E)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %12)
          to label %bb.r unwind label %bb.ah

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !59
  %.not = icmp eq i32 %i.by, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !78
  %i.bz = invoke noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.2.0.copyload)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ca, ptr %13, align 8, !tbaa !24
  %i.cb = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.cc = load i64, ptr %i.ai, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !30
  %i.cd = icmp ugt i64 %i.cc, 15
  br i1 %i.cd, label %.noexc.i45, label %._crit_edge.i.i44

.noexc.i45:                                       ; preds = %bb.t
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc46 unwind label %bb.ad  ; 2 uses

.noexc46:                                         ; preds = %.noexc.i45
  store ptr %i.ce, ptr %13, align 8, !tbaa !25
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !26
  br label %._crit_edge.i.i44

._crit_edge.i.i44:                                ; preds = %.noexc46, %bb.t
  %i.cg = phi ptr [ %i.ce, %.noexc46 ], [ %i.ca, %bb.t ] ; 2 uses
  switch i64 %i.cc, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i44
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !26
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !26
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.cb, i64 %i.cc, i1 false)
  br label %bb.w
end_hunk_3
begin_hunk_4_@_Z39validate_superOpFieldsMatchPassedParams7SuperOpiPKc:.noexc.i.i
bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.j:                                             ; preds = %.noexc
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.j
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !26
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #30
  br label %.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %.body
  %i.ci = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.cj) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit27

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit27: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25
  %i.ck = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit27
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !26
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #30
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit27, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22, %.thread
  %.pn = phi { ptr, i32 } [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22 ], [ %i.f, %.thread ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.1 ], [ %i.cc, %bb.j ], [ %i.ah, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.o

bb.k:                                             ; preds = %.noexc.i16
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.l:                                             ; preds = %bb.d
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn9 = phi { ptr, i32 } [ %i.cr, %bb.m ], [ %i.cq, %bb.l ] ; 2 uses
  %i.cs = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.au
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.n
  %i.cu = load i64, ptr %i.au, align 8, !tbaa !26
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.k
  %.pn9.pn = phi { ptr, i32 } [ %i.cp, %bb.k ], [ %.pn9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn9, %bb.n ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %.loopexit
  %.pn9.pn.pn = phi { ptr, i32 } [ %.pn9.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn9.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z27assertSuperOpFieldsAreValid7SuperOpbPKc(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 5 uses
  %8 = alloca %"class.std::map", align 8          ; 14 uses
  %9 = alloca [2 x %"struct.std::pair"], align 8  ; 22 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::map", align 8         ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::map", align 8         ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %struct.QuESTEnv, align 4          ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::map", align 8         ; 14 uses
  %20 = alloca [2 x %"struct.std::pair"], align 8 ; 22 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::map", align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.h, ptr %9, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) @.str.585, i64 13, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 13, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 29
  store i8 0, ptr %i.j, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.l = load i32, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.m = sext i32 %i.l to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.p, ptr noundef nonnull align 1 dereferenceable(11) @.str.622, i64 11, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 11, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 67
  store i8 0, ptr %i.r, align 1, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.t = load i64, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  store i64 %i.t, ptr %i.s, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr null, ptr %i.v, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.u, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.u, ptr %i.x, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %8, ptr %7, align 8, !tbaa !46
  %i.z = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.aa = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i, %._crit_edge.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.1
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.al) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !26
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %_ZN6report34INVALID_KRAUS_MAPS_SUPER_OP_FIELDSB5cxx11E._ZN6report23INVALID_SUPER_OP_FIELDSB5cxx11E = select i1 %1, ptr @_ZN6report34INVALID_KRAUS_MAPS_SUPER_OP_FIELDSB5cxx11E, ptr @_ZN6report23INVALID_SUPER_OP_FIELDSB5cxx11E ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %23, ptr %10, align 8, !tbaa !24
  %_ZN6report23INVALID_SUPER_OP_FIELDSB5cxx11E.val = load ptr, ptr %_ZN6report34INVALID_KRAUS_MAPS_SUPER_OP_FIELDSB5cxx11E._ZN6report23INVALID_SUPER_OP_FIELDSB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %_ZN6report34INVALID_KRAUS_MAPS_SUPER_OP_FIELDSB5cxx11E._ZN6report23INVALID_SUPER_OP_FIELDSB5cxx11E, i64 8
  %.val184 = load i64, ptr %24, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 %.val184, ptr %i.g, align 8, !tbaa !30
  %i.ar = icmp ugt i64 %.val184, 15
  br i1 %i.ar, label %.noexc.i44, label %._crit_edge.i.i

.noexc.i44:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc45 unwind label %bb.ag  ; 2 uses

.noexc45:                                         ; preds = %.noexc.i44
  store ptr %i.as, ptr %10, align 8, !tbaa !25
  %i.at = load i64, ptr %i.g, align 8, !tbaa !30
  store i64 %i.at, ptr %23, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc45, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.au = phi ptr [ %i.as, %.noexc45 ], [ %23, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1 ] ; 2 uses
  switch i64 %.val184, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.av = load i8, ptr %_ZN6report23INVALID_SUPER_OP_FIELDSB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.av, ptr %i.au, align 1, !tbaa !26
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %_ZN6report23INVALID_SUPER_OP_FIELDSB5cxx11E.val, i64 %.val184, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !30  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !23
  %i.ay = load ptr, ptr %10, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %i.ba = icmp sgt i32 %i.l, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.bb, ptr %11, align 8, !tbaa !24
  %i.bc = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i64 %i.bd, ptr %i.f, align 8, !tbaa !30
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %.noexc.i47, label %._crit_edge.i.i46

.noexc.i47:                                       ; preds = %bb.c
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc48 unwind label %bb.ah  ; 2 uses

.noexc48:                                         ; preds = %.noexc.i47
  store ptr %i.bf, ptr %11, align 8, !tbaa !25
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !30
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !26
  br label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %.noexc48, %bb.c
  %i.bh = phi ptr [ %i.bf, %.noexc48 ], [ %i.bb, %bb.c ] ; 2 uses
  switch i64 %i.bd, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i46
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !26
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bc, i64 %i.bd, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i46
  %i.bj = load i64, ptr %i.f, align 8, !tbaa !30  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !23
  %i.bl = load ptr, ptr %11, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !42
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  store i64 0, ptr %i.br, align 8, !tbaa !44
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !42  ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i50, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %12, ptr %6, align 8, !tbaa !46
  %i.bt = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc.i.i51 unwind label %bb.ai ; 3 uses

.noexc.i.i51:                                     ; preds = %bb.g, %.noexc.i.i51
  %.0.i.i.i.i.i.i = phi ptr [ %i.bv, %.noexc.i.i51 ], [ %i.bt, %bb.g ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i51, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i51
  store ptr %.0.i.i.i.i.i.i, ptr %i.bp, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.bt, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.bx, %bb.h ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.i, label %bb.h, !llvm.loop !1

bb.i:                                             ; preds = %bb.h
  store ptr %.0.i.i7.i.i.i.i, ptr %i.bq, align 8, !tbaa !48
  %i.by = load i64, ptr %i.y, align 8, !tbaa !44
  store i64 %i.by, ptr %i.br, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.i, %bb.f
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.ba, ptr nofree noundef nonnull align 8 dereferenceable(32) %11, ptr nofree noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %2)
          to label %bb.j unwind label %bb.aj

bb.j:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.bz)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.j
  %i.cc = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bb
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.ce = load i64, ptr %i.bb, align 8, !tbaa !26
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cg = shl nsw i32 %i.l, 1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = icmp eq i64 %i.t, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ck, ptr %13, align 8, !tbaa !24
  %i.cl = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.cm = load i64, ptr %i.ax, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 %i.cm, ptr %i.e, align 8, !tbaa !30
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i54, label %._crit_edge.i.i53

.noexc.i54:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc55 unwind label %bb.ah  ; 2 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.co, ptr %13, align 8, !tbaa !25
  %i.cp = load i64, ptr %i.e, align 8, !tbaa !30
  store i64 %i.cp, ptr %i.ck, align 8, !tbaa !26
  br label %._crit_edge.i.i53

._crit_edge.i.i53:                                ; preds = %.noexc55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = phi ptr [ %i.co, %.noexc55 ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.cm, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i53
  %i.cr = load i8, ptr %i.cl, align 1, !tbaa !26
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !26
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cl, i64 %i.cm, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i53
  %i.cs = load i64, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !23
  %i.cu = load ptr, ptr %13, align 8, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i32 0, ptr %i.cw, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !42
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !35
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  store i64 0, ptr %i.da, align 8, !tbaa !44
  %i.db = load ptr, ptr %i.v, align 8, !tbaa !42  ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.db, null
  br i1 %.not.i.i57, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit65, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %14, ptr %5, align 8, !tbaa !46
  %i.dc = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %i.db, ptr noundef nonnull %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.i58 unwind label %bb.al ; 3 uses

.noexc.i.i58:                                     ; preds = %bb.o, %.noexc.i.i58
  %.0.i.i.i.i.i.i59 = phi ptr [ %i.de, %.noexc.i.i58 ], [ %i.dc, %bb.o ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i59, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i60 = icmp eq ptr %i.de, null
end_hunk_4
begin_hunk_5_@_Z27validate_mixedAmpsFitInNode5QuregiPKc:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @.str.626, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 12, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 0, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.n = sext i32 %1 to i64
  store i64 %i.n, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 16, ptr %i.e, align 8, !tbaa !30
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc18 unwind label %bb.o   ; 2 uses

.noexc18:                                         ; preds = %._crit_edge.i.i.i
  store ptr %i.q, ptr %i.o, align 8, !tbaa !25
  %i.r = load i64, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(16) @.str.691, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.r, ptr %i.s, align 8, !tbaa !23
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.i, ptr %i.v, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 1 dereferenceable(12) @.str.576, i64 12, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 12, ptr %i.z, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 108
  store i8 0, ptr %i.aa, align 4, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ac = load i32, ptr %i.x, align 8, !tbaa !56
  %i.ad = sext i32 %i.ac to i64
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 19, ptr %i.d, align 8, !tbaa !30
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc25 unwind label %bb.o   ; 2 uses

.noexc25:                                         ; preds = %.noexc18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !25
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !30  ; 3 uses
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ag, ptr noundef nonnull align 1 dereferenceable(19) @.str.627, i64 19, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 128
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !23
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.an = load i32, ptr %i.ah, align 4, !tbaa !56
  %i.ao = sext i32 %i.an to i64
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 26, ptr %i.c, align 8, !tbaa !30
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc28 unwind label %bb.o   ; 2 uses

.noexc28:                                         ; preds = %.noexc25
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !25
  %i.at = load i64, ptr %i.c, align 8, !tbaa !30  ; 3 uses
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ar, ptr noundef nonnull align 1 dereferenceable(26) @.str.692, i64 26, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 168
  store i64 %i.at, ptr %i.au, align 8, !tbaa !23
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i32 0, ptr %i.az, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %5, ptr %4, align 8, !tbaa !46
  %i.be = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.az, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %.noexc28
  %i.bf = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.bg = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  %i.bh = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.3 unwind label %.body ; 0 uses

.noexc.i.3:                                       ; preds = %.noexc.i.2
  %i.bi = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.4 unwind label %.body ; 0 uses

.noexc.i.4:                                       ; preds = %.noexc.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.body:                                            ; preds = %.noexc.i.3, %.noexc.i.2, %.noexc.i.1, %.noexc.i, %.noexc28
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #27
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !25 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i.4
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !26
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bt) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %.noexc.i.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !26
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !25 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !25 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !26
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.cm = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !26
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !71
  %.not10 = icmp eq i32 %i.cs, 0
  %_ZN6report47CANNOT_FIT_MIXED_DENSMATR_AMPS_INTO_SINGLE_NODEB5cxx11E._ZN6report47CANNOT_FIT_MIXED_STATEVEC_AMPS_INTO_SINGLE_NODEB5cxx11E = select i1 %.not10, ptr @_ZN6report47CANNOT_FIT_MIXED_STATEVEC_AMPS_INTO_SINGLE_NODEB5cxx11E, ptr @_ZN6report47CANNOT_FIT_MIXED_DENSMATR_AMPS_INTO_SINGLE_NODEB5cxx11E ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %10, ptr %7, align 8, !tbaa !24
  %_ZN6report47CANNOT_FIT_MIXED_DENSMATR_AMPS_INTO_SINGLE_NODEB5cxx11E.val = load ptr, ptr %_ZN6report47CANNOT_FIT_MIXED_DENSMATR_AMPS_INTO_SINGLE_NODEB5cxx11E._ZN6report47CANNOT_FIT_MIXED_STATEVEC_AMPS_INTO_SINGLE_NODEB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %_ZN6report47CANNOT_FIT_MIXED_DENSMATR_AMPS_INTO_SINGLE_NODEB5cxx11E._ZN6report47CANNOT_FIT_MIXED_STATEVEC_AMPS_INTO_SINGLE_NODEB5cxx11E, i64 8
  %.val59 = load i64, ptr %11, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val59, ptr %i.b, align 8, !tbaa !30
  %i.ct = icmp ugt i64 %.val59, 15
  br i1 %i.ct, label %.noexc.i29, label %._crit_edge.i.i

.noexc.i29:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4
  %i.cu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc30 unwind label %bb.q   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i29
  store ptr %i.cu, ptr %7, align 8, !tbaa !25
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.cv, ptr %10, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4
  %i.cw = phi ptr [ %i.cu, %.noexc30 ], [ %10, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit.4 ] ; 2 uses
  switch i64 %.val59, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.cx = load i8, ptr %_ZN6report47CANNOT_FIT_MIXED_DENSMATR_AMPS_INTO_SINGLE_NODEB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %_ZN6report47CANNOT_FIT_MIXED_DENSMATR_AMPS_INTO_SINGLE_NODEB5cxx11E.val, i64 %.val59, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !23
  %i.da = load ptr, ptr %7, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.dc = icmp sge i64 %i.ay, %i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.dd, ptr %8, align 8, !tbaa !24
  %i.de = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.df, ptr %i.a, align 8, !tbaa !30
  %i.dg = icmp ugt i64 %i.df, 15
  br i1 %i.dg, label %.noexc.i32, label %._crit_edge.i.i31

.noexc.i32:                                       ; preds = %bb.d
  %i.dh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc33 unwind label %bb.r   ; 2 uses

.noexc33:                                         ; preds = %.noexc.i32
  store ptr %i.dh, ptr %8, align 8, !tbaa !25
  %i.di = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.di, ptr %i.dd, align 8, !tbaa !26
  br label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %.noexc33, %bb.d
  %i.dj = phi ptr [ %i.dh, %.noexc33 ], [ %i.dd, %bb.d ] ; 2 uses
  switch i64 %i.df, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i31
  %i.dk = load i8, ptr %i.de, align 1, !tbaa !26
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.de, i64 %i.df, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i31
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !23
  %i.dn = load ptr, ptr %8, align 8, !tbaa !25
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  store i8 0, ptr %i.do, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.dp, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.dq, align 8, !tbaa !42
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !35
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store i64 0, ptr %i.dt, align 8, !tbaa !44
  %i.du = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.du, null
  br i1 %.not.i.i35, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %9, ptr %3, align 8, !tbaa !46
  %i.dv = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.du, ptr noundef nonnull %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i36 unwind label %bb.s ; 3 uses

.noexc.i.i36:                                     ; preds = %bb.h, %.noexc.i.i36
  %.0.i.i.i.i.i.i = phi ptr [ %i.dx, %.noexc.i.i36 ], [ %i.dv, %bb.h ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i36, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i36
  store ptr %.0.i.i.i.i.i.i, ptr %i.dr, align 8, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.dv, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.dz, %bb.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !49 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.j, label %bb.i, !llvm.loop !1

bb.j:                                             ; preds = %bb.i
  store ptr %.0.i.i7.i.i.i.i, ptr %i.ds, align 8, !tbaa !48
  %i.ea = load i64, ptr %i.bd, align 8, !tbaa !44
  store i64 %i.ea, ptr %i.dt, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.dv, ptr %i.dq, align 8, !tbaa !48
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit: ; preds = %bb.j, %bb.g
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.dc, ptr nofree noundef nonnull align 8 dereferenceable(32) %8, ptr nofree noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %2)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEEC2ERKSC_.exit
  %i.eb = load ptr, ptr %i.dq, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.eb)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit: ; preds = %bb.k
  %i.ee = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dd
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit
  %i.eg = load i64, ptr %i.dd, align 8, !tbaa !26
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ei = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %10
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ek = load i64, ptr %10, align 8, !tbaa !26
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.em = load ptr, ptr %i.ba, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.em)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit41 unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit41
  ret void

bb.o:                                             ; preds = %.noexc25, %.noexc18, %._crit_edge.i.i.i
  %.08 = phi ptr [ %i.ap, %.noexc25 ], [ %i.ae, %.noexc18 ], [ %i.o, %._crit_edge.i.i.i ]
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit44
  %i.eq = phi ptr [ %.08, %bb.o ], [ %i.er, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit44 ] ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -40 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !25 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.eq, i64 -24 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %bb.p
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !26
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit44

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit44: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42
  %i.ex = icmp eq ptr %i.er, %6
  br i1 %i.ex, label %.loopexit, label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %.body
  %i.ey = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.ez) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit47

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit47: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !25 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit47.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit47
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !26
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit47.1
end_hunk_5
begin_hunk_6_@_Z33validate_quregRenormProbIsNotZerodPKc:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.w = load i64, ptr %i.g, align 8, !tbaa !26
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a
  ret void

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !26
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define void @_Z32validate_numInitRandomPureStatesxPKc(i64 noundef %0, ptr noundef %1) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::map", align 8          ; 11 uses
  %5 = alloca [1 x %"struct.std::pair"], align 8  ; 13 uses
  %i.b = icmp sgt i64 %0, 0
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !24
  %i.d = load ptr, ptr @_ZN6report28INVALID_NUM_INIT_PURE_STATESB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6report28INVALID_NUM_INIT_PURE_STATESB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.e, ptr %i.a, align 8, !tbaa !30
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !25
  %i.h = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.h, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.d, align 1, !tbaa !26
  store i8 %i.j, ptr %i.i, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = load ptr, ptr %3, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, ptr noundef nonnull align 1 dereferenceable(13) @.str.668, i64 13, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 13, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 29
  store i8 0, ptr %i.q, align 1, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %0, ptr %i.r, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.s, ptr %i.u, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.s, ptr %i.v, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %4, ptr %2, align 8, !tbaa !46
  %i.x = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i7 unwind label %bb.d  ; 0 uses

.noexc.i7:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  invoke void @_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS4_xSt4lessIS4_ESaISt4pairIKS4_xEEEPKc(i1 noundef zeroext %i.b, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
          to label %bb.e unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #27
  br label %.body

bb.e:                                             ; preds = %.noexc.i7
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_xESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.z)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader unwind label %bb.f

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader: ; preds = %bb.e
  %i.aa = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ag) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ah = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.c
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !26
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.g:                                             ; preds = %.noexc.i7
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExSt4lessIS5_ESaISt4pairIKS5_xEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #27
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.al, %bb.g ], [ %i.y, %bb.d ]
  %i.am = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %.body
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !26
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #30
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ar = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10
  %i.at = load i64, ptr %i.c, align 8, !tbaa !26
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEExED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z33validate_expecPauliStrValueIsRealSt7complexIdEbPKc(double %0, double %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.b.i = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %i.c = load double, ptr @_ZL24global_validationEpsilon, align 8
  %i.d = fcmp oeq double %i.c, 0.000000e+00
  %i.e = select i1 %.b.i, i1 true, i1 %i.d
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %_ZN6report58CALC_DENSMATR_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E._ZN6report58CALC_STATEVEC_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E = select i1 %2, ptr @_ZN6report58CALC_DENSMATR_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E, ptr @_ZN6report58CALC_STATEVEC_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %6, ptr %4, align 8, !tbaa !24
  %_ZN6report58CALC_STATEVEC_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E.val = load ptr, ptr %_ZN6report58CALC_DENSMATR_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E._ZN6report58CALC_STATEVEC_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %_ZN6report58CALC_DENSMATR_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E._ZN6report58CALC_STATEVEC_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E, i64 8
  %.val22 = load i64, ptr %7, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val22, ptr %i.b, align 8, !tbaa !30
  %i.f = icmp ugt i64 %.val22, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !25
  %i.h = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.h, ptr %6, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %6, %bb.b ] ; 2 uses
  switch i64 %.val22, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %_ZN6report58CALC_STATEVEC_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.j, ptr %i.i, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %_ZN6report58CALC_STATEVEC_EXPECTED_PAULI_STR_VALUE_WAS_NOT_APPROX_REALB5cxx11E.val, i64 %.val22, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = load ptr, ptr %4, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.o = load double, ptr @REDUCTION_EPSILON_FACTOR, align 8, !tbaa !29
  %i.p = load double, ptr @_ZL24global_validationEpsilon, align 8, !tbaa !29
  %i.q = fmul double %i.o, %i.p
  %i.r = invoke noundef zeroext i1 @_Z17util_isApproxRealSt7complexIdEd(double %0, double %1, double noundef %i.q)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !24
  %i.t = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.u = load i64, ptr %i.l, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.u, ptr %i.a, align 8, !tbaa !30
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %bb.e
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i9
  store ptr %i.w, ptr %5, align 8, !tbaa !25
  %i.x = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.x, ptr %i.s, align 8, !tbaa !26
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc, %bb.e
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.s, %bb.e ] ; 2 uses
  switch i64 %i.u, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i8
  %i.z = load i8, ptr %i.t, align 1, !tbaa !26
  store i8 %i.z, ptr %i.y, align 1, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i8
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !23
  %i.ac = load ptr, ptr %5, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.b.i11 = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %or.cond.i = or i1 %i.r, %.b.i11
  br i1 %or.cond.i, label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @global_inputErrorHandler, align 8, !tbaa !27
  %i.af = load ptr, ptr %5, align 8, !tbaa !25
  invoke void %i.ae(ptr noundef %3, ptr noundef %i.af)
          to label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit unwind label %bb.l, !inline_history !50

_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %bb.h, %bb.i
  %i.ag = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !26
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %6
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %6, align 8, !tbaa !26
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  ret void

bb.k:                                             ; preds = %.noexc.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.l:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.s
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.l
  %i.as = load i64, ptr %i.s, align 8, !tbaa !26
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.ap, %bb.l ]
  %i.au = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.av = icmp eq ptr %i.au, %6
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.aw = load i64, ptr %6, align 8, !tbaa !26
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z36validate_expecPauliStrSumValueIsRealSt7complexIdEbPKc(double %0, double %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.b.i = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %i.c = load double, ptr @_ZL24global_validationEpsilon, align 8
  %i.d = fcmp oeq double %i.c, 0.000000e+00
  %i.e = select i1 %.b.i, i1 true, i1 %i.d
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %_ZN6report62CALC_DENSMATR_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E._ZN6report62CALC_STATEVEC_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E = select i1 %2, ptr @_ZN6report62CALC_DENSMATR_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E, ptr @_ZN6report62CALC_STATEVEC_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %6, ptr %4, align 8, !tbaa !24
  %_ZN6report62CALC_STATEVEC_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E.val = load ptr, ptr %_ZN6report62CALC_DENSMATR_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E._ZN6report62CALC_STATEVEC_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %_ZN6report62CALC_DENSMATR_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E._ZN6report62CALC_STATEVEC_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E, i64 8
  %.val22 = load i64, ptr %7, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val22, ptr %i.b, align 8, !tbaa !30
  %i.f = icmp ugt i64 %.val22, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !25
  %i.h = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.h, ptr %6, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %6, %bb.b ] ; 2 uses
  switch i64 %.val22, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %_ZN6report62CALC_STATEVEC_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.j, ptr %i.i, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %_ZN6report62CALC_STATEVEC_EXPECTED_PAULI_STR_SUM_VALUE_WAS_NOT_APPROX_REALB5cxx11E.val, i64 %.val22, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = load ptr, ptr %4, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.o = load double, ptr @REDUCTION_EPSILON_FACTOR, align 8, !tbaa !29
  %i.p = load double, ptr @_ZL24global_validationEpsilon, align 8, !tbaa !29
  %i.q = fmul double %i.o, %i.p
  %i.r = invoke noundef zeroext i1 @_Z17util_isApproxRealSt7complexIdEd(double %0, double %1, double noundef %i.q)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !24
  %i.t = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.u = load i64, ptr %i.l, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.u, ptr %i.a, align 8, !tbaa !30
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %bb.e
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i9
  store ptr %i.w, ptr %5, align 8, !tbaa !25
  %i.x = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.x, ptr %i.s, align 8, !tbaa !26
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc, %bb.e
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.s, %bb.e ] ; 2 uses
  switch i64 %i.u, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i8
  %i.z = load i8, ptr %i.t, align 1, !tbaa !26
  store i8 %i.z, ptr %i.y, align 1, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i8
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !23
  %i.ac = load ptr, ptr %5, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.b.i11 = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %or.cond.i = or i1 %i.r, %.b.i11
  br i1 %or.cond.i, label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @global_inputErrorHandler, align 8, !tbaa !27
  %i.af = load ptr, ptr %5, align 8, !tbaa !25
  invoke void %i.ae(ptr noundef %3, ptr noundef %i.af)
          to label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit unwind label %bb.l, !inline_history !50

_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %bb.h, %bb.i
  %i.ag = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !26
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %6
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %6, align 8, !tbaa !26
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  ret void

bb.k:                                             ; preds = %.noexc.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.l:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.s
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.l
  %i.as = load i64, ptr %i.s, align 8, !tbaa !26
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.ap, %bb.l ]
  %i.au = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.av = icmp eq ptr %i.au, %6
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.aw = load i64, ptr %6, align 8, !tbaa !26
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z41validate_densMatrExpecDiagMatrValueIsRealSt7complexIdES0_PKc(double %0, double %1, double %2, double %3, ptr noundef %4) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.b.i = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %i.c = load double, ptr @_ZL24global_validationEpsilon, align 8
  %i.d = fcmp oeq double %i.c, 0.000000e+00
  %i.e = select i1 %.b.i, i1 true, i1 %i.d
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.f = fcmp oeq double %2, 1.000000e+00
  %i.g = fcmp oeq double %3, 0.000000e+00
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  %_ZN6report58CALC_DENSMATR_EXPECTED_DIAG_MATR_VALUE_WAS_NOT_APPROX_REALB5cxx11E._ZN6report64CALC_DENSMATR_EXPECTED_DIAG_MATR_POWER_VALUE_WAS_NOT_APPROX_REALB5cxx11E = select i1 %i.h, ptr @_ZN6report58CALC_DENSMATR_EXPECTED_DIAG_MATR_VALUE_WAS_NOT_APPROX_REALB5cxx11E, ptr @_ZN6report64CALC_DENSMATR_EXPECTED_DIAG_MATR_POWER_VALUE_WAS_NOT_APPROX_REALB5cxx11E ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %7, ptr %5, align 8, !tbaa !24
  %_ZN6report64CALC_DENSMATR_EXPECTED_DIAG_MATR_POWER_VALUE_WAS_NOT_APPROX_REALB5cxx11E.val = load ptr, ptr %_ZN6report58CALC_DENSMATR_EXPECTED_DIAG_MATR_VALUE_WAS_NOT_APPROX_REALB5cxx11E._ZN6report64CALC_DENSMATR_EXPECTED_DIAG_MATR_POWER_VALUE_WAS_NOT_APPROX_REALB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %_ZN6report58CALC_DENSMATR_EXPECTED_DIAG_MATR_VALUE_WAS_NOT_APPROX_REALB5cxx11E._ZN6report64CALC_DENSMATR_EXPECTED_DIAG_MATR_POWER_VALUE_WAS_NOT_APPROX_REALB5cxx11E, i64 8
  %.val22 = load i64, ptr %8, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %.val22, ptr %i.b, align 8, !tbaa !30
  %i.i = icmp ugt i64 %.val22, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !25
  %i.k = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.k, ptr %7, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %7, %bb.b ] ; 2 uses
  switch i64 %.val22, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %_ZN6report64CALC_DENSMATR_EXPECTED_DIAG_MATR_POWER_VALUE_WAS_NOT_APPROX_REALB5cxx11E.val, align 1, !tbaa !26
  store i8 %i.m, ptr %i.l, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %_ZN6report64CALC_DENSMATR_EXPECTED_DIAG_MATR_POWER_VALUE_WAS_NOT_APPROX_REALB5cxx11E.val, i64 %.val22, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !23
  %i.p = load ptr, ptr %5, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.r = load double, ptr @REDUCTION_EPSILON_FACTOR, align 8, !tbaa !29
  %i.s = load double, ptr @_ZL24global_validationEpsilon, align 8, !tbaa !29
  %i.t = fmul double %i.r, %i.s
  %i.u = invoke noundef zeroext i1 @_Z17util_isApproxRealSt7complexIdEd(double %0, double %1, double noundef %i.t)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !24
  %i.w = load ptr, ptr %5, align 8, !tbaa !25     ; 2 uses
  %i.x = load i64, ptr %i.o, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.x, ptr %i.a, align 8, !tbaa !30
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %bb.e
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %i.z, ptr %6, align 8, !tbaa !25
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !26
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc, %bb.e
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.v, %bb.e ] ; 2 uses
  switch i64 %i.x, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i7
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !26
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.w, i64 %i.x, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i7
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !23
  %i.af = load ptr, ptr %6, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.b.i10 = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %or.cond.i = or i1 %i.u, %.b.i10
  br i1 %or.cond.i, label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr @global_inputErrorHandler, align 8, !tbaa !27
  %i.ai = load ptr, ptr %6, align 8, !tbaa !25
  invoke void %i.ah(ptr noundef %4, ptr noundef %i.ai)
          to label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit unwind label %bb.l, !inline_history !50

_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %bb.h, %bb.i
  %i.aj = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.v
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.al = load i64, ptr %i.v, align 8, !tbaa !26
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %7
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %7, align 8, !tbaa !26
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  ret void

bb.k:                                             ; preds = %.noexc.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.l:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.v
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.l
  %i.av = load i64, ptr %i.v, align 8, !tbaa !26
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.as, %bb.l ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %7
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.az = load i64, ptr %7, align 8, !tbaa !26
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z26validate_quregCanBeReduced5QuregiPKc(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, long long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, long long>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::map", align 8          ; 16 uses
  %7 = alloca [4 x %"struct.std::pair"], align 8  ; 41 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::map", align 8          ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70   ; 3 uses
  %i.h = icmp slt i32 %1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !24
  %i.j = load ptr, ptr @_ZN6report34NUM_TRACE_QUBITS_EQUALS_QUREG_SIZEB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6report34NUM_TRACE_QUBITS_EQUALS_QUREG_SIZEB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 %i.k, ptr %i.e, align 8, !tbaa !30
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !25
  %i.n = load i64, ptr %i.e, align 8, !tbaa !30
  store i64 %i.n, ptr %i.i, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !26
  store i8 %i.p, ptr %i.o, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.q = load i64, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !23
  %i.s = load ptr, ptr %5, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %.b.i = load i1, ptr @_ZL26global_isValidationEnabled, align 1
  %or.cond.i = or i1 %i.h, %.b.i
  br i1 %or.cond.i, label %_Z10assertThatbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = load ptr, ptr @global_inputErrorHandler, align 8, !tbaa !27
  %i.v = load ptr, ptr %5, align 8, !tbaa !25
  invoke void %i.u(ptr noundef %2, ptr noundef %i.v)
end_hunk_6
