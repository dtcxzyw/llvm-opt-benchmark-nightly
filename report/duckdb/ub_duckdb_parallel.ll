Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_parallel?download=true
inline.NumInlined: 6986
inline.NumDeleted: 3568
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6duckdb8Executor8GetErrorEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_9ErrorDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %bb.c unwind label %bb.d, !noalias !759

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  invoke void @_ZN6duckdb9ErrorDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %_ZN6duckdb16TaskErrorManager8GetErrorEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %i.e

_ZN6duckdb16TaskErrorManager8GetErrorEv.exit:     ; preds = %bb.c
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(65) %i.a) #34 ; 0 uses
  ret void
}

declare void @_ZN6duckdb13QueryProfiler5FlushERNS_16OperatorProfilerE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

declare void @_ZN6duckdb13QueryProfiler14SetBlockedTimeERKd(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb8Executor20GetPipelinesProgressERNS_12ProgressDataE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::ProgressData", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !259  ; 2 uses
  %.not16 = icmp eq ptr %i.d, %i.f
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.0.lcssa = phi i64 [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.1, %bb.i ]
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  ret i64 %.0.lcssa

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.018 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.i ]  ; 2 uses
  %.sroa.010.017 = phi ptr [ %i.d, %.lr.ph ], [ %i.v, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %2, i8 0, i64 17, i1 false)
  %i.j = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8PipelineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.017)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 @_ZN6duckdb8Pipeline11GetProgressERNS_12ProgressDataE(ptr noundef nonnull align 8 dereferenceable(224) %i.j, ptr noundef nonnull align 8 dereferenceable(17) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %.018, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %i.m

bb.h:                                             ; preds = %bb.e
  %i.o = load <2 x double>, ptr %2, align 16, !tbaa !385
  %i.p = load <2 x double>, ptr %1, align 8, !tbaa !385
  %i.q = fadd <2 x double> %i.o, %i.p
  store <2 x double> %i.q, ptr %1, align 8, !tbaa !385
  %i.r = load i8, ptr %i.g, align 8, !tbaa !762, !range !268, !noundef !132
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = load i8, ptr %i.h, align 16, !range !268
  %i.u = select i1 %i.s, i8 1, i8 %i.t
  store i8 %i.u, ptr %i.g, align 8, !tbaa !762
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.1 = phi i64 [ %.018, %bb.h ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.f
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb8Pipeline11GetProgressERNS_12ProgressDataE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) initializes((0, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::ProgressData", align 8 ; 4 uses
  %3 = alloca %"struct.duckdb::ProgressData", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !764
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 1)
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.e, i64 281474976710656) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.g = load atomic i8, ptr %i.f seq_cst, align 1, !range !268, !noundef !132
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %1, align 8, !tbaa !765
  %i.i = uitofp nneg i64 %spec.store.select to double
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.i, ptr %i.j, align 8, !tbaa !766
  br label %_ZNK6duckdb12ProgressData7IsValidEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !156, !nonnull !132, !align !133
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61, !nonnull !132, !align !133 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  tail call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !485  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ProgressData") align 8 %2, ptr noundef nonnull align 8 dereferenceable(136) %i.n, ptr noundef nonnull align 8 dereferenceable(512) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 17, i1 false), !tbaa.struct !767
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.t = uitofp nneg i64 %spec.store.select to double ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !762, !range !268, !noundef !132
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZNK6duckdb12ProgressData7IsValidEv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load double, ptr %1, align 8, !tbaa !765 ; 3 uses
  %i.y = fcmp ult double %i.x, 0.000000e+00
  br i1 %i.y, label %_ZNK6duckdb12ProgressData7IsValidEv.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !766 ; 4 uses
  %i.ab = fcmp ole double %i.x, %i.aa
  %i.ac = fcmp oge double %i.aa, 0.000000e+00
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %bb.f, label %_ZNK6duckdb12ProgressData7IsValidEv.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ad = fcmp ogt double %i.aa, 0.000000e+00
  %i.ae = select i1 %i.ad, double %i.aa, double 1.000000e+00
  %i.af = fdiv double %i.x, %i.ae
  %i.ag = fmul double %i.af, %i.t
  store double %i.ag, ptr %1, align 8, !tbaa !765
  store double %i.t, ptr %i.z, align 8, !tbaa !766
  br label %_ZN6duckdb12ProgressData9NormalizeEd.exit

_ZNK6duckdb12ProgressData7IsValidEv.exit.thread.i: ; preds = %bb.e, %bb.d, %bb.c
  store i8 1, ptr %i.u, align 8, !tbaa !762
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %1, align 8, !tbaa !385
  br label %_ZN6duckdb12ProgressData9NormalizeEd.exit

_ZN6duckdb12ProgressData9NormalizeEd.exit:        ; preds = %bb.f, %_ZNK6duckdb12ProgressData7IsValidEv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !485 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !485
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = call noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 208
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ProgressData") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %i.ai, ptr noundef nonnull align 8 dereferenceable(512) %i.m, ptr noundef nonnull align 8 dereferenceable(81) %i.al, ptr noundef nonnull byval(%"struct.duckdb::ProgressData") align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 17, i1 false), !tbaa.struct !767
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ap = load i8, ptr %i.u, align 8, !tbaa !762, !range !268, !noundef !132
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNK6duckdb12ProgressData7IsValidEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb12ProgressData9NormalizeEd.exit
  %i.ar = load double, ptr %1, align 8, !tbaa !765 ; 2 uses
  %i.as = fcmp ult double %i.ar, 0.000000e+00
  br i1 %i.as, label %_ZNK6duckdb12ProgressData7IsValidEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !766 ; 2 uses
  %4 = fcmp ole double %i.ar, %i.au
  %5 = fcmp oge double %i.au, 0.000000e+00
  %spec.select.i = and i1 %4, %5
  br label %_ZNK6duckdb12ProgressData7IsValidEv.exit

_ZNK6duckdb12ProgressData7IsValidEv.exit:         ; preds = %bb.h, %bb.g, %_ZN6duckdb12ProgressData9NormalizeEd.exit, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %spec.select.i, %bb.h ], [ false, %bb.g ], [ false, %_ZN6duckdb12ProgressData9NormalizeEd.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb8Executor18HasResultCollectorEv(ptr noundef nonnull align 8 dereferenceable(424) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !486
  %i.e = icmp eq i8 %i.d, 76
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(320) ptr @_ZN6duckdb16PhysicalOperator4CastINS_23PhysicalResultCollectorEEERT_v(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !486
  %.not = icmp eq i8 %i.b, 76
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Executor9GetResultEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.781") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485
  %i.c = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZN6duckdb16PhysicalOperator4CastINS_23PhysicalResultCollectorEEERT_v(ptr noundef nonnull align 8 dereferenceable(136) %i.b) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = tail call noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.781") align 8 %0, ptr noundef nonnull align 8 dereferenceable(320) %i.c, ptr noundef nonnull align 8 dereferenceable(81) %i.e)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !768    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5Event18CompleteDependencyEv(ptr noundef nonnull align 8 dereferenceable(113) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !607
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(113) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb5Event6FinishEv(ptr noundef nonnull align 8 dereferenceable(113) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5Event6FinishEv(ptr noundef nonnull align 8 dereferenceable(113) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::shared_ptr.371", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
end_hunk_0
