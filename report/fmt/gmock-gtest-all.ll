Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/gmock-gtest-all?download=true
inline.NumInlined: 10506
inline.NumDeleted: 2792
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7testing9TestSuite11AddTestInfoEPNS_8TestInfoE:bb.a
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !389
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #57
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !283
  store ptr %i.u, ptr %i.b, align 8, !tbaa !282
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !389
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !390 ; 4 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !387 ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 4 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !388
  %.not.i.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !390
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  %i.al = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ag
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %i.ap = select i1 %i.an, i64 2305843009213693951, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #59 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.af ; 2 uses
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !73
  %i.at = icmp sgt i64 %i.af, 0
  br i1 %i.at, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !388
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ax) #57
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !387
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !390
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.ai, align 8, !tbaa !388
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !270, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !100

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !2
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %common.resume, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #56, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !107 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !253
  %i.j = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !100

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !101
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.h unwind label %common.resume, !inline_history !101

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #56, !inline_history !101 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !101
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

common.resume:                                    ; preds = %bb.d, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56
  resume { ptr, i32 } %i.n

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.f, %bb.h
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 504
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !254  ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 528 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !209  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !77
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.i:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.aa = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #59 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.aa, align 8, !tbaa !77
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !209
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.i
  %i.ab = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.i ], [ %.pre, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ac = phi ptr [ %i.aa, %bb.i ], [ %i.y, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite17RunSetUpTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.125)
  %i.af = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #56
  %i.ag = sdiv i64 %i.af, 1000000
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !391
  %i.ai = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #56
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !282
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !283 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit.thread
  %indvars.iv50 = phi i64 [ 1, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next51, %_ZNK7testing10TestResult6FailedEv.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit.thread ] ; 6 uses
  %i.av = phi ptr [ %i.am, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %.pre57, %_ZNK7testing10TestResult6FailedEv.exit.thread ]
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !390
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !387 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = shl i64 %i.ba, 30
  %i.bc = ashr i64 %i.bb, 32
  %.not.i.i19 = icmp slt i64 %indvars.iv, %i.bc
  tail call void @llvm.assume(i1 %.not.i.i19)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !73 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !274
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.bi)
  %i.bj = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !118, !range !119, !noundef !120
  %i.bk = trunc nuw i8 %i.bj to i1
  %.pre57 = load ptr, ptr %i.aj, align 8, !tbaa !283 ; 5 uses
  br i1 %i.bk, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21, label %_ZNK7testing10TestResult6FailedEv.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !390
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !387 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = shl i64 %i.bp, 30
  %i.br = ashr i64 %i.bq, 32
  %.not.i.i20 = icmp slt i64 %indvars.iv, %i.br
  tail call void @llvm.assume(i1 %.not.i.i20)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !73 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.pre57, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !274 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 200
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 208
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !234
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !239 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 112               ; 5 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.preheader.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread

.lr.ph.preheader.i:                               ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21
  %wide.trip.count.i = and i64 %i.cf, 2147483647
  br label %.lr.ph.i

bb.j:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond16.not.i, label %_ZNK7testing10TestResult6FailedEv.exit.thread, label %.lr.ph.i, !llvm.loop !10

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cf
  br i1 %exitcond.not.i, label %bb.k, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.cf, i64 noundef %i.cf) #58
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i: ; preds = %.lr.ph.i
  %i.ci = getelementptr inbounds nuw [112 x i8], ptr %i.cb, i64 %indvars.iv.i
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !250
  %i.ck = add i32 %i.cj, -1
  %spec.select.i.i = icmp ult i32 %i.ck, 2
  br i1 %spec.select.i.i, label %_ZNK7testing10TestResult6FailedEv.exit.preheader, label %bb.j

_ZNK7testing10TestResult6FailedEv.exit.preheader: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  %.043 = add nuw nsw i32 %i.cl, 1
  %i.cm = load ptr, ptr %i.ak, align 8, !tbaa !282
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %.pre57 to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = lshr exact i64 %i.cp, 3
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = icmp slt i32 %.043, %i.cr
  br i1 %i.cs, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24: ; preds = %_ZNK7testing10TestResult6FailedEv.exit.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24 ], [ %indvars.iv50, %_ZNK7testing10TestResult6FailedEv.exit.preheader ] ; 3 uses
  %i.ct = phi ptr [ %i.di, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24 ], [ %.pre57, %_ZNK7testing10TestResult6FailedEv.exit.preheader ]
  %i.cu = load ptr, ptr %i.au, align 8, !tbaa !390
  %i.cv = load ptr, ptr %i.at, align 8, !tbaa !387 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = shl i64 %i.cy, 30
  %i.da = ashr i64 %i.cz, 32
  %.not.i.i23 = icmp slt i64 %indvars.iv54, %i.da
  tail call void @llvm.assume(i1 %.not.i.i23)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv54
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !73 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !274
  tail call void @_ZN7testing8TestInfo4SkipEv(ptr noundef nonnull align 8 dereferenceable(272) %i.dg)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.dh = load ptr, ptr %i.ak, align 8, !tbaa !282
  %i.di = load ptr, ptr %i.aj, align 8, !tbaa !283 ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 3
  %i.dn = trunc i64 %i.dm to i32
  %i.do = trunc nuw i64 %indvars.iv.next55 to i32
  %i.dp = icmp slt i32 %i.do, %i.dn
  br i1 %i.dp, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24, label %.loopexit, !llvm.loop !1090

_ZNK7testing10TestResult6FailedEv.exit.thread:    ; preds = %bb.j, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = load ptr, ptr %i.ak, align 8, !tbaa !282
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %.pre57 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = shl i64 %i.dt, 29
  %i.dv = ashr i64 %i.du, 32
  %i.dw = icmp slt i64 %indvars.iv.next, %i.dv
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br i1 %i.dw, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !1091

.loopexit:                                        ; preds = %_ZNK7testing10TestResult6FailedEv.exit.thread, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i24, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit, %_ZNK7testing10TestResult6FailedEv.exit.preheader
  %i.dx = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #56
  %i.dy = sub nsw i64 %i.dx, %i.ai
  %i.dz = sdiv i64 %i.dy, 1000000
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !392
  %i.eb = load ptr, ptr %i.x, align 8, !tbaa !209 ; 3 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.l, label %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge

.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge: ; preds = %.loopexit
  %.pre58 = load ptr, ptr %i.eb, align 8, !tbaa !77
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26

bb.l:                                             ; preds = %.loopexit
  %i.ed = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #59 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.ed, align 8, !tbaa !77
  store ptr %i.ed, ptr %i.x, align 8, !tbaa !209
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26: ; preds = %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge, %bb.l
  %i.ee = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.l ], [ %.pre58, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge ]
  %i.ef = phi ptr [ %i.ed, %bb.l ], [ %i.eb, %.loopexit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26_crit_edge ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite20RunTearDownTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.126)
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.el = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(264) %0)
  store ptr null, ptr %i.i, align 8, !tbaa !253
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !2
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #56, !inline_history !2 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.y, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !2
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.h = load i8, ptr %i.g, align 8, !tbaa !377, !range !119, !noundef !120
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.k = and i64 %1, 1
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.m = getelementptr i8, ptr %i.l, i64 %1
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load ptr, ptr %i.n, align 8, !nosanitize !120
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = inttoptr i64 %1 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(264) %i.j)
          to label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit unwind label %bb.j, !inline_history !1092

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN7testing18AssertionExceptionE
          catch ptr @_ZTIN7testing8internal26GoogleTestFailureExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.r, 1        ; 3 uses
  %i.u = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing18AssertionExceptionE) #56
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.s) #56 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7testing8internal26GoogleTestFailureExceptionE) #56
  %i.y = icmp eq i32 %i.t, %i.x
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.s) #56 ; 0 uses
  invoke void @__cxa_rethrow() #58
          to label %bb.ae unwind label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #56
  %i.ab = icmp eq i32 %i.t, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.s) #56 ; 2 uses
  br i1 %i.ab, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #56
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.ag, ptr noundef %3)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !69
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  invoke fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef null, ptr noundef %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal30ReportFailureInUnknownLocationENS_14TestPartResult4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !69
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  call void @__cxa_end_catch()
  br label %_ZN7testing8internal38HandleSehExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc.exit

bb.u:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

end_hunk_0
begin_hunk_1_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !77
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx), !inline_history !1474
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.db, %i.cw
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %.lr.ph.i.i, %bb.m
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !428
  %i.dd = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.dc)
  %i.dg = call noundef zeroext i1 @_ZN7testing4Test9IsSkippedEv()
  br i1 %i.dg, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.dh = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.o, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !100

bb.o:                                             ; preds = %bb.n
  %i.dj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !2
  %.not.i.i53 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i53, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.q unwind label %common.resume, !inline_history !2

bb.q:                                             ; preds = %bb.p
  %i.dk = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #56, !inline_history !2 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !2
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.p
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !2
  resume { ptr, i32 } %i.dl

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.n, %bb.o, %bb.q
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !107 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 368
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !252 ; 2 uses
  %.not.i54 = icmp eq ptr %i.do, null
  br i1 %.not.i54, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.s:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 360
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !253 ; 2 uses
  %.not4.i = icmp eq ptr %i.dr, null
  br i1 %.not4.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 136
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

bb.u:                                             ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 376
  br label %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit

_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit: ; preds = %bb.r, %bb.t, %bb.u
  %.0.i = phi ptr [ %i.dp, %bb.r ], [ %i.ds, %bb.t ], [ %i.dt, %bb.u ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !234 ; 2 uses
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !239 ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 112               ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ab, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit
  %i.ee = load ptr, ptr @stdout, align 8, !tbaa !88
  %i.ef = call i32 @fflush(ptr noundef %i.ee)     ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit, %bb.ab
  %i.eg = phi ptr [ %i.fd, %bb.ab ], [ %i.dx, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %i.eh = phi ptr [ %i.fe, %bb.ab ], [ %i.dw, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ]
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %bb.ab ], [ 0, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 4 uses
  %i.ei = phi i64 [ %i.fi, %bb.ab ], [ %i.eb, %_ZN7testing8internal12UnitTestImpl19current_test_resultEv.exit ] ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ei, %indvars.iv143
  br i1 %.not.i.i.i, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %indvars.iv143, i64 noundef %i.ei) #58
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit: ; preds = %.lr.ph
  %i.ej = getelementptr inbounds nuw [112 x i8], ptr %i.eg, i64 %indvars.iv143 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !250
  %i.el = icmp eq i32 %i.ek, 3
  br i1 %i.el, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !68 ; 4 uses
  store ptr %i.bb, ptr %1, align 8, !tbaa !70
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.noexc, label %bb.x

.noexc:                                           ; preds = %bb.w
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.590) #58
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ep = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.en) #56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 %i.ep, ptr %i.a, align 8, !tbaa !96
  %i.eq = icmp ugt i64 %i.ep, 15
  br i1 %i.eq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.x
  %i.er = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.er, ptr %1, align 8, !tbaa !68
  %i.es = load i64, ptr %i.a, align 8, !tbaa !96
  store i64 %i.es, ptr %i.bb, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.x
  %i.et = phi ptr [ %i.er, %.noexc.i ], [ %i.bb, %bb.x ] ; 2 uses
  switch i64 %i.ep, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !69
  store i8 %i.eu, ptr %i.et, align 1, !tbaa !69
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr nonnull align 1 %i.en, i64 %i.ep, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  store i64 %i.ev, ptr %i.bc, align 8, !tbaa !71
  %i.ew = load ptr, ptr %1, align 8, !tbaa !68
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ex, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.ey = load ptr, ptr %1, align 8, !tbaa !68
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.ey) ; 0 uses
  %i.ez = load ptr, ptr %1, align 8, !tbaa !68    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.bb
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.fb = load i64, ptr %i.bb, align 8, !tbaa !69
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  %.pre = load ptr, ptr %i.dv, align 8, !tbaa !234
  %.pre146 = load ptr, ptr %i.du, align 8, !tbaa !239
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing10TestResult17GetTestPartResultEi.exit
  %i.fd = phi ptr [ %.pre146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.eg, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %i.fe = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.eh, %_ZNK7testing10TestResult17GetTestPartResultEi.exit ] ; 2 uses
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 112               ; 2 uses
  %i.fj = shl i64 %i.fi, 32
  %i.fk = ashr exact i64 %i.fj, 32
  %i.fl = icmp slt i64 %indvars.iv.next144, %i.fk
  br i1 %i.fl, label %.lr.ph, label %._crit_edge, !llvm.loop !1475

bb.ac:                                            ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_11EnvironmentESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.fm = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.fm, label %bb.ae, label %.preheader89

.preheader89:                                     ; preds = %bb.ac
  %i.fn = load ptr, ptr %i.ax, align 8, !tbaa !271
  %i.fo = load ptr, ptr %i.aw, align 8, !tbaa !272 ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = lshr exact i64 %i.fr, 3
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader89, %bb.ad
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.ad ], [ 1, %.preheader89 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ 0, %.preheader89 ] ; 6 uses
  %i.fv = phi ptr [ %i.ih, %bb.ad ], [ %i.fo, %.preheader89 ]
  %i.fw = load ptr, ptr %i.ba, align 8, !tbaa !390
  %i.fx = load ptr, ptr %i.av, align 8, !tbaa !387 ; 2 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = shl i64 %i.ga, 30
  %i.gc = ashr i64 %i.gb, 32
  %.not.i.i57 = icmp slt i64 %indvars.iv, %i.gc
  call void @llvm.assume(i1 %.not.i.i57)
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !73 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  call void @llvm.assume(i1 %i.gf)
  %i.gg = zext nneg i32 %i.ge to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !257
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gi)
  %i.gj = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !118, !range !119, !noundef !120
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i59, label %bb.ad

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i59: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.gl = load ptr, ptr %i.ba, align 8, !tbaa !390
  %i.gm = load ptr, ptr %i.av, align 8, !tbaa !387 ; 2 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = shl i64 %i.gp, 30
  %i.gr = ashr i64 %i.gq, 32
  %.not.i.i58 = icmp slt i64 %indvars.iv, %i.gr
  call void @llvm.assume(i1 %.not.i.i58)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !73 ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, -1
  call void @llvm.assume(i1 %i.gu)
  %i.gv = zext nneg i32 %i.gt to i64
  %i.gw = load ptr, ptr %i.aw, align 8, !tbaa !272
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !257
  %i.gz = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gy)
  br i1 %i.gz, label %.preheader87, label %bb.ad

.preheader87:                                     ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i59
  %i.ha = trunc nuw nsw i64 %indvars.iv to i32
  %.045110 = add nuw nsw i32 %i.ha, 1
  %i.hb = load ptr, ptr %i.ax, align 8, !tbaa !271
  %i.hc = load ptr, ptr %i.aw, align 8, !tbaa !272 ; 2 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = lshr exact i64 %i.hf, 3
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = icmp slt i32 %.045110, %i.hh
  br i1 %i.hi, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i62, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i62: ; preds = %.preheader87, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i62
  %indvars.iv137.a = phi i64 [ %indvars.iv.next138.a, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i62 ], [ %indvars.iv134, %.preheader87 ] ; 3 uses
  %i.hj = phi ptr [ %i.hy, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i62 ], [ %i.hc, %.preheader87 ]
  %i.hk = load ptr, ptr %i.ba, align 8, !tbaa !390
  %i.hl = load ptr, ptr %i.av, align 8, !tbaa !387 ; 2 uses
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = shl i64 %i.ho, 30
  %i.hq = ashr i64 %i.hp, 32
  %.not.i.i61 = icmp slt i64 %indvars.iv137.a, %i.hq
  call void @llvm.assume(i1 %.not.i.i61)
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv137.a
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !73 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, -1
  call void @llvm.assume(i1 %i.ht)
  %i.hu = zext nneg i32 %i.hs to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !257
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.hw)
  %indvars.iv.next138.a = add nuw nsw i64 %indvars.iv137.a, 1 ; 2 uses
  %i.hx = load ptr, ptr %i.ax, align 8, !tbaa !271
  %i.hy = load ptr, ptr %i.aw, align 8, !tbaa !272 ; 2 uses
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = lshr exact i64 %i.ib, 3
  %i.id = trunc i64 %i.ic to i32
  %i.ie = trunc nuw i64 %indvars.iv.next138.a to i32
  %i.if = icmp slt i32 %i.ie, %i.id
  br i1 %i.if, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i62, label %.loopexit, !llvm.loop !1476

bb.ad:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ig = load ptr, ptr %i.ax, align 8, !tbaa !271
  %i.ih = load ptr, ptr %i.aw, align 8, !tbaa !272 ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = shl i64 %i.ik, 29
  %i.im = ashr i64 %i.il, 32
  %i.in = icmp slt i64 %indvars.iv.next, %i.im
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  br i1 %i.in, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !1477

bb.ae:                                            ; preds = %bb.ac
  %i.io = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.io, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ae
  %i.ip = load ptr, ptr %i.ax, align 8, !tbaa !271
  %i.iq = load ptr, ptr %i.aw, align 8, !tbaa !272 ; 2 uses
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = lshr exact i64 %i.it, 3
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i65, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i65: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i65
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i65 ], [ 0, %.preheader ] ; 3 uses
  %i.ix = phi ptr [ %i.jm, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i65 ], [ %i.iq, %.preheader ]
  %i.iy = load ptr, ptr %i.ba, align 8, !tbaa !390
  %i.iz = load ptr, ptr %i.av, align 8, !tbaa !387 ; 2 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = shl i64 %i.jc, 30
  %i.je = ashr i64 %i.jd, 32
  %.not.i.i64 = icmp slt i64 %indvars.iv140, %i.je
  call void @llvm.assume(i1 %.not.i.i64)
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv140
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !73 ; 2 uses
  %i.jh = icmp sgt i32 %i.jg, -1
  call void @llvm.assume(i1 %i.jh)
  %i.ji = zext nneg i32 %i.jg to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !257
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.jk)
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.jl = load ptr, ptr %i.ax, align 8, !tbaa !271
  %i.jm = load ptr, ptr %i.aw, align 8, !tbaa !272 ; 2 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = shl i64 %i.jp, 29
  %i.jr = ashr i64 %i.jq, 32
  %i.js = icmp slt i64 %indvars.iv.next141, %i.jr
  br i1 %i.js, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i65, label %.loopexit, !llvm.loop !1478

.loopexit:                                        ; preds = %bb.ad, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i62, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i65, %.preheader89, %.preheader87, %.preheader, %bb.ae, %._crit_edge
  %i.jt = load ptr, ptr %i.al, align 8, !tbaa !428
  %i.ju = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 104
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.jt)
  %i.jx = load ptr, ptr %i.az, align 8, !tbaa !430, !noalias !1488 ; 2 uses
  %i.jy = load ptr, ptr %i.ay, align 8, !tbaa !430, !noalias !1489 ; 2 uses
  %.not4.i67 = icmp eq ptr %i.jx, %i.jy
  br i1 %.not4.i67, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.loopexit, %.lr.ph.i68
  %.sroa.082.0 = phi ptr [ %i.jz, %.lr.ph.i68 ], [ %i.jx, %.loopexit ]
  %i.jz = getelementptr inbounds i8, ptr %.sroa.082.0, i64 -8 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !425 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !77
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(8) %i.ka), !inline_history !1483
  %.not.i69 = icmp eq ptr %i.jz, %i.jy
  br i1 %.not.i69, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i68, !llvm.loop !1484

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i68, %.loopexit
  %i.ke = load ptr, ptr %i.al, align 8, !tbaa !428
  %i.kf = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 112
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.ke)
  br label %bb.af

bb.af:                                            ; preds = %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.ki = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #56
  %i.kj = sub nsw i64 %i.ki, %i.bl
  %i.kk = sdiv i64 %i.kj, 1000000
  store i64 %i.kk, ptr %i.bd, align 8, !tbaa !394
  %i.kl = load ptr, ptr %i.al, align 8, !tbaa !428
  %i.km = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 120
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.kl, i32 noundef %.049115)
  %i.kp = load ptr, ptr %i.aw, align 8, !tbaa !256 ; 4 uses
  %i.kq = load ptr, ptr %i.ax, align 8, !tbaa !256 ; 3 uses
  %.not7.i.i.i.i = icmp eq ptr %i.kp, %i.kq       ; 2 uses
  br i1 %.not7.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.af, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ 0, %bb.af ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.mg, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.kp, %bb.af ] ; 2 uses
  %i.kr = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !257 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 112
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !270, !range !119, !noundef !120
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.ag, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 48
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !273 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 56
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !273 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.kw, %i.ky
  br i1 %.not7.i.i.i, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i, label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %bb.ag, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i ], [ 0, %bb.ag ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.lr, %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i ], [ %i.kw, %bb.ag ] ; 2 uses
  %i.kz = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !274 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 128
  %i.lb = load i8, ptr %i.la, align 8, !tbaa !277, !range !119, !noundef !120
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %bb.ah, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i75
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 200
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 208
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !234
  %i.lg = load ptr, ptr %i.ld, align 8, !tbaa !239 ; 2 uses
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = sdiv exact i64 %i.lj, 112               ; 5 uses
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph.preheader.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ah
  %wide.trip.count.i.i.i.i = and i64 %i.lk, 2147483647
  br label %.lr.ph.i.i.i.i81

bb.ai:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i, label %.lr.ph.i.i.i.i81, !llvm.loop !10

.lr.ph.i.i.i.i81:                                 ; preds = %bb.ai, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.ai ] ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.lk
  br i1 %exitcond.not.i.i.i.i, label %bb.aj, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i81
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.lk, i64 noundef %i.lk) #58
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i81
  %i.ln = getelementptr inbounds nuw [112 x i8], ptr %i.lg, i64 %indvars.iv.i.i.i.i
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !250
  %i.lp = add i32 %i.lo, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.lp, 2
  br i1 %spec.select.i.i.i.i.i, label %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i, label %bb.ai

_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i, %bb.ai, %bb.ah, %.lr.ph.i.i.i75
  %i.lq = phi i32 [ 0, %.lr.ph.i.i.i75 ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 1, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i ]
  %spec.select.i.i.i = add nuw nsw i32 %i.lq, %.09.i.i.i ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.lr, %i.ky
  br i1 %.not.i.i.i76, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.i, label %.lr.ph.i.i.i75, !llvm.loop !11

_ZNK7testing9TestSuite17failed_test_countEv.exit.i: ; preds = %_ZN7testing9TestSuite10TestFailedEPKNS_8TestInfoE.exit.i.i
  %.not.i77 = icmp eq i32 %spec.select.i.i.i, 0
  br i1 %.not.i77, label %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i: ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.i, %bb.ag
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kr, i64 192
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kr, i64 200
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !234
  %i.lv = load ptr, ptr %i.ls, align 8, !tbaa !239 ; 2 uses
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = sdiv exact i64 %i.ly, 112               ; 5 uses
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = icmp sgt i32 %i.ma, 0
  br i1 %i.mb, label %.lr.ph.preheader.i.i78, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

.lr.ph.preheader.i.i78:                           ; preds = %_ZNK7testing9TestSuite17failed_test_countEv.exit.thread.i
  %wide.trip.count.i.i = and i64 %i.lz, 2147483647
  br label %.lr.ph.i.i79

bb.ak:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond16.not.i.i, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i, label %.lr.ph.i.i79, !llvm.loop !10

.lr.ph.i.i79:                                     ; preds = %bb.ak, %.lr.ph.preheader.i.i78
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i78 ], [ %indvars.iv.next.i.i, %bb.ak ] ; 3 uses
  %exitcond.not.i.i80 = icmp eq i64 %indvars.iv.i.i, %i.lz
  br i1 %exitcond.not.i.i80, label %bb.al, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.al:                                            ; preds = %.lr.ph.i.i79
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.lz, i64 noundef %i.lz) #58
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i79
end_hunk_1
