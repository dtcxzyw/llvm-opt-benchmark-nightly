Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_distributive?download=true
inline.NumInlined: 35645
inline.NumDeleted: 8767
loop-unroll.NumCompletelyUnrolled: 340
loop-unroll.NumRuntimeUnrolled: 607
loop-unroll.NumUnrolled: 947
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation9OperationIaNS0_11BitAggStateIaEES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE:bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.046 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !394    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.r) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.046, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.046, label %common.resume.sink.split, label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.u = tail call noundef signext i8 @_ZNK6duckdb5Value8GetValueIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i8 %i.u, ptr %i.v, align 8, !tbaa !582
  %i.w = tail call noundef signext i8 @_ZNK6duckdb5Value8GetValueIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.k) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  store i8 %i.w, ptr %i.x, align 1, !tbaa !583
  %i.y = load i8, ptr %i.v, align 8, !tbaa !582
  %i.z = icmp sgt i8 %i.y, %i.w
  br i1 %i.z, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ab = load i8, ptr %i.v, align 8, !tbaa !582
  call void @_ZN6duckdb13NumericHelper8ToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i8 noundef signext %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ac = load i8, ptr %i.x, align 1, !tbaa !583
  call void @_ZN6duckdb13NumericHelper8ToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i8 noundef signext %i.ac)
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.044 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.af = load ptr, ptr %9, align 8, !tbaa !394   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ai = load ptr, ptr %8, align 8, !tbaa !394   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  call void @_ZdlPv(ptr noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.al = load ptr, ptr %6, align 8, !tbaa !394   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void @_ZdlPv(ptr noundef %i.al) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.044, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.044, label %common.resume.sink.split, label %common.resume

bb.m:                                             ; preds = %bb.h
  %i.ao = tail call noundef signext i8 @_ZNK6duckdb5Value8GetValueIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.g) ; 3 uses
  %i.ap = tail call noundef signext i8 @_ZNK6duckdb5Value8GetValueIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.k) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ao, ptr %i.a, align 1, !tbaa !393
  store i8 %i.ap, ptr %i.b, align 1, !tbaa !393
  %i.aq = icmp sgt i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRaS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.s unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !394   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.au) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.ax = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.ap, i8 noundef signext %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  br i1 %i.ax, label %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIaEEmT_S3_.exit, label %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIaEEmT_S3_.exit.thread

_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIaEEmT_S3_.exit.thread: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %.sink = phi ptr [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.p
  unreachable

_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIaEEmT_S3_.exit: ; preds = %bb.r
  %i.ay = load i8, ptr %i.c, align 1, !tbaa !393
  %i.az = call noundef i64 @_ZN6duckdb15NumericCastImplImaLb0EE7ConvertEa(i8 noundef signext %i.ay)
  %.08.i = call i64 @llvm.uadd.sat.i64(i64 %i.az, i64 1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ba = icmp ugt i64 %.08.i, 1000000000
  br i1 %i.ba, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIaEEmT_S3_.exit.thread, %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIaEEmT_S3_.exit
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bc = load i8, ptr %i.v, align 8, !tbaa !582
  call void @_ZN6duckdb13NumericHelper8ToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i8 noundef signext %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.bd = load i8, ptr %i.x, align 1, !tbaa !583
  call void @_ZN6duckdb13NumericHelper8ToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i8 noundef signext %i.bd)
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread: ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %common.resume.sink.split

bb.w:                                             ; preds = %bb.v, %bb.u
  %.042 = phi i1 [ false, %bb.v ], [ true, %bb.u ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %13, align 8, !tbaa !394  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.bg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.bj = load ptr, ptr %12, align 8, !tbaa !394  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  call void @_ZdlPv(ptr noundef %i.bj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.bm = load ptr, ptr %10, align 8, !tbaa !394  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @_ZdlPv(ptr noundef %i.bm) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.042, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.042, label %common.resume.sink.split, label %common.resume

bb.x:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIaEEmT_S3_.exit
  %i.bp = call noundef i64 @_ZN6duckdb3Bit19ComputeBitstringLenEm(i64 noundef %.08.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.bq = icmp ugt i64 %i.bp, 12
  br i1 %i.bq, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.br = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #28 ; 3 uses
  %i.bs = trunc i64 %i.bp to i32                  ; 3 uses
  store i32 %i.bs, ptr %14, align 8, !tbaa !393
  %i.bt = icmp ult i32 %i.bs, 13
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  br i1 %i.bt, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i8 0, i64 12, i1 false)
  %i.bv = icmp eq i32 %i.bs, 0
  br i1 %i.bv, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = and i64 %i.bp, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull align 1 %i.br, i64 %i.bw, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.ab:                                            ; preds = %bb.y
  %i.bx = load i32, ptr %i.br, align 1
  store i32 %i.bx, ptr %i.bu, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.br, ptr %i.by, align 8, !tbaa !393
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.ac:                                            ; preds = %bb.x
  %i.bz = trunc nuw nsw i64 %i.bp to i32
  store i32 %i.bz, ptr %14, align 8, !tbaa !393
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.ab, %bb.aa, %bb.z, %bb.ac
  call void @_ZN6duckdb3Bit17SetEmptyBitStringERNS_8string_tEm(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.08.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !584
  store i8 1, ptr %0, align 8, !tbaa !581
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit, %bb.a
  %i.cb = load i8, ptr %1, align 1, !tbaa !393    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !582
  %.not = icmp slt i8 %i.cb, %i.cd
  br i1 %.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !583
  %.not62 = icmp sgt i8 %i.cb, %i.cf
  br i1 %.not62, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ch = call noundef signext i8 @_ZNK6duckdb5Value8GetValueIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = sext i8 %i.cb to i64
  %i.ck = sext i8 %i.ch to i64
  %i.cl = sub nsw i64 %i.cj, %i.ck
  call void @_ZN6duckdb3Bit6SetBitERNS_8string_tEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 noundef %i.cl, i64 noundef 1)
  ret void

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.cm = call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.cn = load i8, ptr %1, align 1, !tbaa !393
  call void @_ZN6duckdb13NumericHelper8ToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i8 noundef signext %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.co = load i8, ptr %i.cc, align 8, !tbaa !582
  call void @_ZN6duckdb13NumericHelper8ToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i8 noundef signext %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !583
  call void @_ZN6duckdb13NumericHelper8ToStringIaEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i8 noundef signext %i.cq)
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %bb.ag
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %common.resume.sink.split

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ct = load ptr, ptr %19, align 8, !tbaa !394  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.ct) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.cw = load ptr, ptr %18, align 8, !tbaa !394  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  call void @_ZdlPv(ptr noundef %i.cw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.cz = load ptr, ptr %17, align 8, !tbaa !394  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.db = icmp eq ptr %i.cz, %i.da
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation9OperationIsNS0_11BitAggStateIsEES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE:bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.046 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !394    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.r) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.046, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.046, label %common.resume.sink.split, label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.u = tail call noundef signext i16 @_ZNK6duckdb5Value8GetValueIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i16 %i.u, ptr %i.v, align 8, !tbaa !3271
  %i.w = tail call noundef signext i16 @_ZNK6duckdb5Value8GetValueIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.k) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 3 uses
  store i16 %i.w, ptr %i.x, align 2, !tbaa !3272
  %i.y = load i16, ptr %i.v, align 8, !tbaa !3271
  %i.z = icmp sgt i16 %i.y, %i.w
  br i1 %i.z, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ab = load i16, ptr %i.v, align 8, !tbaa !3271
  call void @_ZN6duckdb13NumericHelper8ToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i16 noundef signext %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ac = load i16, ptr %i.x, align 2, !tbaa !3272
  call void @_ZN6duckdb13NumericHelper8ToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i16 noundef signext %i.ac)
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.044 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.af = load ptr, ptr %9, align 8, !tbaa !394   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ai = load ptr, ptr %8, align 8, !tbaa !394   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  call void @_ZdlPv(ptr noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.al = load ptr, ptr %6, align 8, !tbaa !394   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void @_ZdlPv(ptr noundef %i.al) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.044, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.044, label %common.resume.sink.split, label %common.resume

bb.m:                                             ; preds = %bb.h
  %i.ao = tail call noundef signext i16 @_ZNK6duckdb5Value8GetValueIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.g) ; 3 uses
  %i.ap = tail call noundef signext i16 @_ZNK6duckdb5Value8GetValueIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.k) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ao, ptr %i.a, align 2, !tbaa !565
  store i16 %i.ap, ptr %i.b, align 2, !tbaa !565
  %i.aq = icmp sgt i16 %i.ao, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRsS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.s unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !394   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.au) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.ax = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIsssEEbT_T0_RT1_(i16 noundef signext %i.ap, i16 noundef signext %i.ao, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
  br i1 %i.ax, label %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIsEEmT_S3_.exit, label %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIsEEmT_S3_.exit.thread

_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIsEEmT_S3_.exit.thread: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %.sink = phi ptr [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.p
  unreachable

_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIsEEmT_S3_.exit: ; preds = %bb.r
  %i.ay = load i16, ptr %i.c, align 2, !tbaa !565
  %i.az = call noundef i64 @_ZN6duckdb15NumericCastImplImsLb0EE7ConvertEs(i16 noundef signext %i.ay)
  %.08.i = call i64 @llvm.uadd.sat.i64(i64 %i.az, i64 1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ba = icmp ugt i64 %.08.i, 1000000000
  br i1 %i.ba, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIsEEmT_S3_.exit.thread, %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIsEEmT_S3_.exit
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bc = load i16, ptr %i.v, align 8, !tbaa !3271
  call void @_ZN6duckdb13NumericHelper8ToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i16 noundef signext %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.bd = load i16, ptr %i.x, align 2, !tbaa !3272
  call void @_ZN6duckdb13NumericHelper8ToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i16 noundef signext %i.bd)
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread: ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %common.resume.sink.split

bb.w:                                             ; preds = %bb.v, %bb.u
  %.042 = phi i1 [ false, %bb.v ], [ true, %bb.u ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %13, align 8, !tbaa !394  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.bg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.bj = load ptr, ptr %12, align 8, !tbaa !394  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  call void @_ZdlPv(ptr noundef %i.bj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.bm = load ptr, ptr %10, align 8, !tbaa !394  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @_ZdlPv(ptr noundef %i.bm) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.042, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.042, label %common.resume.sink.split, label %common.resume

bb.x:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIsEEmT_S3_.exit
  %i.bp = call noundef i64 @_ZN6duckdb3Bit19ComputeBitstringLenEm(i64 noundef %.08.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.bq = icmp ugt i64 %i.bp, 12
  br i1 %i.bq, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.br = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #28 ; 3 uses
  %i.bs = trunc i64 %i.bp to i32                  ; 3 uses
  store i32 %i.bs, ptr %14, align 8, !tbaa !393
  %i.bt = icmp ult i32 %i.bs, 13
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  br i1 %i.bt, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i8 0, i64 12, i1 false)
  %i.bv = icmp eq i32 %i.bs, 0
  br i1 %i.bv, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = and i64 %i.bp, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull align 1 %i.br, i64 %i.bw, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.ab:                                            ; preds = %bb.y
  %i.bx = load i32, ptr %i.br, align 1
  store i32 %i.bx, ptr %i.bu, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.br, ptr %i.by, align 8, !tbaa !393
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.ac:                                            ; preds = %bb.x
  %i.bz = trunc nuw nsw i64 %i.bp to i32
  store i32 %i.bz, ptr %14, align 8, !tbaa !393
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.ab, %bb.aa, %bb.z, %bb.ac
  call void @_ZN6duckdb3Bit17SetEmptyBitStringERNS_8string_tEm(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.08.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !584
  store i8 1, ptr %0, align 8, !tbaa !588
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit, %bb.a
  %i.cb = load i16, ptr %1, align 2, !tbaa !565   ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 8, !tbaa !3271
  %.not = icmp slt i16 %i.cb, %i.cd
  br i1 %.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !3272
  %.not62 = icmp sgt i16 %i.cb, %i.cf
  br i1 %.not62, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ch = call noundef signext i16 @_ZNK6duckdb5Value8GetValueIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = sext i16 %i.cb to i64
  %i.ck = sext i16 %i.ch to i64
  %i.cl = sub nsw i64 %i.cj, %i.ck
  call void @_ZN6duckdb3Bit6SetBitERNS_8string_tEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 noundef %i.cl, i64 noundef 1)
  ret void

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.cm = call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.cn = load i16, ptr %1, align 2, !tbaa !565
  call void @_ZN6duckdb13NumericHelper8ToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i16 noundef signext %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.co = load i16, ptr %i.cc, align 8, !tbaa !3271
  call void @_ZN6duckdb13NumericHelper8ToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i16 noundef signext %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !3272
  call void @_ZN6duckdb13NumericHelper8ToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i16 noundef signext %i.cq)
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %bb.ag
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %common.resume.sink.split

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ct = load ptr, ptr %19, align 8, !tbaa !394  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.ct) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.cw = load ptr, ptr %18, align 8, !tbaa !394  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  call void @_ZdlPv(ptr noundef %i.cw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.cz = load ptr, ptr %17, align 8, !tbaa !394  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.db = icmp eq ptr %i.cz, %i.da
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation9OperationIiNS0_11BitAggStateIiEES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE:bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.046 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !394    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.r) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.046, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.046, label %common.resume.sink.split, label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.u = tail call noundef i32 @_ZNK6duckdb5Value8GetValueIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !3365
  %i.w = tail call noundef i32 @_ZNK6duckdb5Value8GetValueIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.k) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3366
  %i.y = load i32, ptr %i.v, align 8, !tbaa !3365
  %i.z = icmp sgt i32 %i.y, %i.w
  br i1 %i.z, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !3365
  call void @_ZN6duckdb13NumericHelper8ToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i32 noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !3366
  call void @_ZN6duckdb13NumericHelper8ToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i32 noundef %i.ac)
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.044 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.af = load ptr, ptr %9, align 8, !tbaa !394   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ai = load ptr, ptr %8, align 8, !tbaa !394   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  call void @_ZdlPv(ptr noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.al = load ptr, ptr %6, align 8, !tbaa !394   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void @_ZdlPv(ptr noundef %i.al) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.044, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.044, label %common.resume.sink.split, label %common.resume

bb.m:                                             ; preds = %bb.h
  %i.ao = tail call noundef i32 @_ZNK6duckdb5Value8GetValueIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.g) ; 3 uses
  %i.ap = tail call noundef i32 @_ZNK6duckdb5Value8GetValueIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.k) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !178
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !178
  %i.aq = icmp sgt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRiS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.s unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.au = load ptr, ptr %2, align 8, !tbaa !394   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.au) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.ax = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %i.ap, i32 noundef %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.ax, label %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIiEEmT_S3_.exit, label %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIiEEmT_S3_.exit.thread

_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIiEEmT_S3_.exit.thread: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %.sink = phi ptr [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.p
  unreachable

_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIiEEmT_S3_.exit: ; preds = %bb.r
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !178
  %i.az = call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.ay)
  %.08.i = call i64 @llvm.uadd.sat.i64(i64 %i.az, i64 1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ba = icmp ugt i64 %.08.i, 1000000000
  br i1 %i.ba, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIiEEmT_S3_.exit.thread, %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIiEEmT_S3_.exit
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bc = load i32, ptr %i.v, align 8, !tbaa !3365
  call void @_ZN6duckdb13NumericHelper8ToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i32 noundef %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !3366
  call void @_ZN6duckdb13NumericHelper8ToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i32 noundef %i.bd)
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread: ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %common.resume.sink.split

bb.w:                                             ; preds = %bb.v, %bb.u
  %.042 = phi i1 [ false, %bb.v ], [ true, %bb.u ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %13, align 8, !tbaa !394  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.bg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.bj = load ptr, ptr %12, align 8, !tbaa !394  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  call void @_ZdlPv(ptr noundef %i.bj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.bm = load ptr, ptr %10, align 8, !tbaa !394  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @_ZdlPv(ptr noundef %i.bm) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.042, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.042, label %common.resume.sink.split, label %common.resume

bb.x:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIiEEmT_S3_.exit
  %i.bp = call noundef i64 @_ZN6duckdb3Bit19ComputeBitstringLenEm(i64 noundef %.08.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.bq = icmp ugt i64 %i.bp, 12
  br i1 %i.bq, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.br = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #28 ; 3 uses
  %i.bs = trunc i64 %i.bp to i32                  ; 3 uses
  store i32 %i.bs, ptr %14, align 8, !tbaa !393
  %i.bt = icmp ult i32 %i.bs, 13
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  br i1 %i.bt, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i8 0, i64 12, i1 false)
  %i.bv = icmp eq i32 %i.bs, 0
  br i1 %i.bv, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = and i64 %i.bp, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull align 1 %i.br, i64 %i.bw, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.ab:                                            ; preds = %bb.y
  %i.bx = load i32, ptr %i.br, align 1
  store i32 %i.bx, ptr %i.bu, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.br, ptr %i.by, align 8, !tbaa !393
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.ac:                                            ; preds = %bb.x
  %i.bz = trunc nuw nsw i64 %i.bp to i32
  store i32 %i.bz, ptr %14, align 8, !tbaa !393
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.ab, %bb.aa, %bb.z, %bb.ac
  call void @_ZN6duckdb3Bit17SetEmptyBitStringERNS_8string_tEm(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.08.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !584
  store i8 1, ptr %0, align 8, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit, %bb.a
  %i.cb = load i32, ptr %1, align 4, !tbaa !178   ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !3365
  %.not = icmp slt i32 %i.cb, %i.cd
  br i1 %.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3366
  %.not62 = icmp sgt i32 %i.cb, %i.cf
  br i1 %.not62, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ch = call noundef i32 @_ZNK6duckdb5Value8GetValueIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = sub nsw i32 %i.cb, %i.ch
  %i.ck = sext i32 %i.cj to i64
  call void @_ZN6duckdb3Bit6SetBitERNS_8string_tEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 noundef %i.ck, i64 noundef 1)
  ret void

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.cl = call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.cm = load i32, ptr %1, align 4, !tbaa !178
  call void @_ZN6duckdb13NumericHelper8ToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i32 noundef %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.cn = load i32, ptr %i.cc, align 8, !tbaa !3365
  call void @_ZN6duckdb13NumericHelper8ToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i32 noundef %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3366
  call void @_ZN6duckdb13NumericHelper8ToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i32 noundef %i.cp)
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ak unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %bb.ag
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %common.resume.sink.split

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cs = load ptr, ptr %19, align 8, !tbaa !394  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.cs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.cv = load ptr, ptr %18, align 8, !tbaa !394  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  call void @_ZdlPv(ptr noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.cy = load ptr, ptr %17, align 8, !tbaa !394  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation9OperationIlNS0_11BitAggStateIlEES1_EEvRT0_RKT_RNS_19AggregateUnaryInputE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.r) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.053, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.053, label %common.resume.sink.split, label %common.resume

bb.h:                                             ; preds = %bb.c
  %i.u = tail call noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !3459
  %i.w = tail call noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.k) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !3460
  %i.y = load i64, ptr %i.v, align 8, !tbaa !3459
  %i.z = icmp sgt i64 %i.y, %i.w
  br i1 %i.z, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !3459
  invoke void @_ZN6duckdb13NumericHelper8ToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i64 noundef %i.ab)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !3460
  invoke void @_ZN6duckdb13NumericHelper8ToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 noundef %i.ac)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.av unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.o:                                             ; preds = %bb.m, %bb.l
  %.049 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %9, align 8, !tbaa !394   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.n
  %.pn74 = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.af, %bb.o ] ; 4 uses
  %.150 = phi i1 [ true, %bb.n ], [ %.049, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.049, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.aj = load ptr, ptr %8, align 8, !tbaa !394   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @_ZdlPv(ptr noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.am = load ptr, ptr %6, align 8, !tbaa !394   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.aq = load ptr, ptr %6, align 8, !tbaa !394   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread
  call void @_ZdlPv(ptr noundef %i.aq) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  call void @_ZdlPv(ptr noundef %i.am) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.150, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %.150, label %common.resume.sink.split, label %common.resume

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.thread
  %.pn74.pn.pn6.ph = phi { ptr, i32 } [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume.sink.split

bb.p:                                             ; preds = %bb.h
  %i.at = tail call noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.g) ; 3 uses
  %i.au = tail call noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.k) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.at, ptr %i.a, align 8, !tbaa !455
  store i64 %i.au, ptr %i.b, align 8, !tbaa !455
  %i.av = icmp sgt i64 %i.at, %i.au
  br i1 %i.av, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRlS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.v unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume.sink.split

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !394   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.az) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.bc = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.au, i64 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.bc, label %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIlEEmT_S3_.exit, label %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIlEEmT_S3_.exit.thread

_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIlEEmT_S3_.exit.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %.sink.split71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %.sink.split70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aa, %.sink.split ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bg, %.sink.split70 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.cu, %.sink.split71 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.pn74.pn.pn6.ph, %.sink.split ], [ %.pn74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.pn.pn19.ph, %.sink.split70 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %.pn81.pn.pn.pn31.ph, %.sink.split71 ], [ %.pn81.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %.pn81.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  call void @__cxa_free_exception(ptr %.sink) #27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn81.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.pn81.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.s
  unreachable

_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIlEEmT_S3_.exit: ; preds = %bb.u
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !455
  %i.be = call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.bd)
  %.08.i = call i64 @llvm.uadd.sat.i64(i64 %i.be, i64 1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bf = icmp ugt i64 %.08.i, 1000000000
  br i1 %i.bf, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIlEEmT_S3_.exit.thread, %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIlEEmT_S3_.exit
  %i.bg = call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !3459
  invoke void @_ZN6duckdb13NumericHelper8ToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 noundef %i.bh)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.bi = load i64, ptr %i.x, align 8, !tbaa !3460
  invoke void @_ZN6duckdb13NumericHelper8ToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 noundef %i.bi)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.av unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread: ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split70

bb.ab:                                            ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %.045 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %13, align 8, !tbaa !394  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.bm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.ab ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.bl, %bb.ac ] ; 4 uses
  %.146 = phi i1 [ true, %bb.ab ], [ %.045, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %.045, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.bp = load ptr, ptr %12, align 8, !tbaa !394  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  call void @_ZdlPv(ptr noundef %i.bp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.bs = load ptr, ptr %10, align 8, !tbaa !394  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread: ; preds = %bb.x
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.bw = load ptr, ptr %10, align 8, !tbaa !394  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %.sink.split70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread
  call void @_ZdlPv(ptr noundef %i.bw) #31
  br label %.sink.split70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  call void @_ZdlPv(ptr noundef %i.bs) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.146, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.146, label %common.resume.sink.split, label %common.resume

.sink.split70:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread
  %.pn.pn.pn19.ph = phi { ptr, i32 } [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.thread ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %common.resume.sink.split

bb.ad:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_121BitStringAggOperation8GetRangeIlEEmT_S3_.exit
  %i.bz = call noundef i64 @_ZN6duckdb3Bit19ComputeBitstringLenEm(i64 noundef %.08.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ca = icmp ugt i64 %i.bz, 12
  br i1 %i.ca, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cb = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bz) #28 ; 3 uses
  %i.cc = trunc i64 %i.bz to i32                  ; 3 uses
  store i32 %i.cc, ptr %14, align 8, !tbaa !393
  %i.cd = icmp ult i32 %i.cc, 13
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  br i1 %i.cd, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i8 0, i64 12, i1 false)
  %i.cf = icmp eq i32 %i.cc, 0
  br i1 %i.cf, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = and i64 %i.bz, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ce, ptr nonnull align 1 %i.cb, i64 %i.cg, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.ah:                                            ; preds = %bb.ae
  %i.ch = load i32, ptr %i.cb, align 1
  store i32 %i.ch, ptr %i.ce, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.cb, ptr %i.ci, align 8, !tbaa !393
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.ai:                                            ; preds = %bb.ad
  %i.cj = trunc nuw nsw i64 %i.bz to i32
  store i32 %i.cj, ptr %14, align 8, !tbaa !393
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ai
  call void @_ZN6duckdb3Bit17SetEmptyBitStringERNS_8string_tEm(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.08.i)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !584
  store i8 1, ptr %0, align 8, !tbaa !596
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit, %bb.a
  %i.cl = load i64, ptr %1, align 8, !tbaa !455   ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !3459
  %.not = icmp slt i64 %i.cl, %i.cn
  br i1 %.not, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !3460
  %.not80 = icmp sgt i64 %i.cl, %i.cp
  br i1 %.not80, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cr = call noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = sub nsw i64 %i.cl, %i.cr
  call void @_ZN6duckdb3Bit6SetBitERNS_8string_tEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 noundef %i.ct, i64 noundef 1)
  ret void

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.cu = call ptr @__cxa_allocate_exception(i64 16) #27 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.cv = load i64, ptr %1, align 8, !tbaa !455
  invoke void @_ZN6duckdb13NumericHelper8ToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i64 noundef %i.cv)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.thread

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.cw = load i64, ptr %i.cm, align 8, !tbaa !3459
  invoke void @_ZN6duckdb13NumericHelper8ToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 noundef %i.cw)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !3460
  invoke void @_ZN6duckdb13NumericHelper8ToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 noundef %i.cy)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.av unwind label %bb.au
end_hunk_3
