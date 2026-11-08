Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/benchmark_runner?download=true
inline.NumInlined: 770
inline.NumDeleted: 435
begin_hunk_0_@_ZN9benchmark8internal12_GLOBAL__N_111RunInThreadEPKNS0_17BenchmarkInstanceEliPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE:bb.a
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !207
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !208
  %i.bl = fadd double %i.bi, %i.bk
  store double %i.bl, ptr %i.bj, align 8, !tbaa !208
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !209
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !138
  %i.bq = add nsw i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !138
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @_ZN9benchmark8internal9IncrementEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7CounterESt4lessIS7_ESaISt4pairIKS7_S8_EEERKSF_(ptr noundef nonnull %i.br, ptr noundef nonnull align 8 dereferenceable(48) %i.bs) #20
  %i.bt = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #20 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.bv = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(100) %i.bu) #20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN9benchmark9MutexLockD2Ev.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.bv) #23
  unreachable

_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i.i:   ; preds = %_ZN9benchmark9MutexLockD2Ev.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !102
  %i.by = add nsw i32 %i.bx, -1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !102
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !104
  %.not.i.i19 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i19, label %_ZN9benchmark8internal13ThreadManager20NotifyThreadCompleteEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 240
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cb) #20
  br label %_ZN9benchmark8internal13ThreadManager20NotifyThreadCompleteEv.exit

_ZN9benchmark8internal13ThreadManager20NotifyThreadCompleteEv.exit: ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i.i, %bb.l
  %i.cc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(100) %i.bu) #20 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !17 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9benchmark8internal13ThreadManager20NotifyThreadCompleteEv.exit
  %i.ch = load i64, ptr %i.cf, align 64, !tbaa !18
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN9benchmark8internal13ThreadManager20NotifyThreadCompleteEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ck = load ptr, ptr %i.cj, align 16, !tbaa !93
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cm = load ptr, ptr %i.cl, align 32, !tbaa !210 ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i20, label %_ZN9benchmark5StateD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !211
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #24
  br label %_ZN9benchmark5StateD2Ev.exit

_ZN9benchmark5StateD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner18RunProfilerManagerEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #22 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.a, i8 0, i64 40, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.d, align 8, !tbaa !16
  store i8 0, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.g, align 8, !tbaa !16
  store i8 0, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.h, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.i, ptr %i.k, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.i, ptr %i.l, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, i8 0, i64 88, i1 false)
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i32 1, ptr %i.o, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  store i32 0, ptr %i.p, align 4, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i32 0, ptr %i.q, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48, !nonnull !47, !align !73
  tail call void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(472) %i.s) #20
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !48, !nonnull !47, !align !73
  %i.u = load ptr, ptr @_ZN9benchmark8internal16profiler_managerE, align 8, !tbaa !139
  tail call fastcc void @_ZN9benchmark8internal12_GLOBAL__N_111RunInThreadEPKNS0_17BenchmarkInstanceEliPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE(ptr noundef %i.t, i64 noundef %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %i.u)
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.n) #20
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !93
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.w)
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2: ; preds = %bb.a
  %i.z = load i64, ptr %i.f, align 8, !tbaa !18
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i3: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i3
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !18
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #24
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 304) #24
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !48, !nonnull !47, !align !73
  tail call void @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv(ptr noundef nonnull align 8 dereferenceable(472) %i.af) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner15DoOneRepetitionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %2 = alloca %"struct.benchmark::internal::BenchmarkRunner::IterationResults", align 8 ; 27 uses
  %3 = alloca %"struct.benchmark::internal::BenchmarkRunner::IterationResults", align 8 ; 15 uses
  %4 = alloca %"struct.benchmark::MemoryManager::Result", align 16 ; 6 uses
  %5 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 70 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72
  %.fr32 = freeze i32 %i.b
  %i.c = icmp eq i32 %.fr32, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !69, !range !46, !noundef !47
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9benchmark8internal15BenchmarkRunner9RunWarmUpEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %2, i8 0, i64 40, i1 false)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !16
  store i8 0, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.l, align 8, !tbaa !16
  store i8 0, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 136
  store ptr %i.n, ptr %i.p, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.n, ptr %i.q, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  store i64 0, ptr %i.r, align 8, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  br i1 %i.c, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %.critedge.us
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !48, !nonnull !47, !align !73
  call void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(472) %i.af) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEv(ptr dead_on_unwind nonnull writable sret(%"struct.benchmark::internal::BenchmarkRunner::IterationResults") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.ag = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN9benchmark8internal13ThreadManager6ResultaSEOS2_(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(176) %3) #20 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !93
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef %i.ah)
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !17  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.z
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us: ; preds = %.split.us
  %i.ak = load i64, ptr %i.z, align 8, !tbaa !18
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.us: ; preds = %.split.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ab
  br i1 %i.an, label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.us
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit.us

_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !48, !nonnull !47, !align !73
  call void @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv(ptr noundef nonnull align 8 dereferenceable(472) %i.aq) #20
  %i.ar = load i8, ptr %i.ac, align 8, !tbaa !71, !range !46, !noundef !47
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit.us
  %i.at = load i32, ptr %i.m, align 8, !tbaa !128
  %i.au = icmp ne i32 %i.at, 0
  %i.av = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !range !46
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond.i.us = select i1 %i.au, i1 true, i1 %i.aw
  %i.ax = load i64, ptr %i.u, align 8
  %i.ay = icmp sgt i64 %i.ax, 999999999999
  %or.cond8.i.us = select i1 %or.cond.i.us, i1 true, i1 %i.ay
  br i1 %or.cond8.i.us, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load double, ptr %i.s, align 8, !tbaa !126
  %i.ba = load i8, ptr %i.d, align 8, !tbaa !69, !range !46, !noundef !47
  %i.bb = trunc nuw i8 %i.ba to i1
  %.in.v.i.i.us = select i1 %i.bb, i64 88, i64 96
  %.in.i.i.us = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i.i.us
  %i.bc = load double, ptr %.in.i.i.us, align 8, !tbaa !68 ; 2 uses
  %i.bd = fcmp ult double %i.az, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.be = load double, ptr %i.ad, align 8, !tbaa !129
  %i.bf = fmul double %i.bc, 5.000000e+00
  %i.bg = fcmp ult double %i.be, %i.bf
  br i1 %i.bg, label %.critedge.us, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.us

_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.us: ; preds = %bb.f
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !48, !nonnull !47, !align !73
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 294
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !127, !range !46, !noundef !47
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.critedge.us, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread

.critedge.us:                                     ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.us, %bb.f
  %i.bl = call noundef i64 @_ZNK9benchmark8internal15BenchmarkRunner21PredictNumItersNeededERKNS1_16IterationResultsE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(176) %2)
  store i64 %i.bl, ptr %i.ae, align 8, !tbaa !84
  br label %.split.us

.split:                                           ; preds = %bb.c
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !48, !nonnull !47, !align !73
  call void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(472) %i.bm) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEv(ptr dead_on_unwind nonnull writable sret(%"struct.benchmark::internal::BenchmarkRunner::IterationResults") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.bn = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN9benchmark8internal13ThreadManager6ResultaSEOS2_(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(176) %3) #20 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.x, align 8, !tbaa !93
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef %i.bo)
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !17  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.z
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.split
  %i.br = load i64, ptr %i.z, align 8, !tbaa !18
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ab
  br i1 %i.bu, label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bv = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #24
  br label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit

_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bx = load ptr, ptr %i.t, align 8, !tbaa !48, !nonnull !47, !align !73
  call void @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv(ptr noundef nonnull align 8 dereferenceable(472) %i.bx) #20
  br label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread

_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread: ; preds = %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit.us, %bb.d, %bb.e, %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.us, %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit
  %i.by = load ptr, ptr @_ZN9benchmark8internal14memory_managerE, align 8, !tbaa !131
  %.not = icmp eq ptr %i.by, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread
  %i.bz = load i64, ptr %i.ae, align 8, !tbaa !86
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.bz, i64 16) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN9benchmark8internal15BenchmarkRunner16RunMemoryManagerEl(ptr dead_on_unwind nonnull writable sret(%"struct.benchmark::MemoryManager::Result") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %.sroa.speculated)
  %i.ca = load <2 x i64>, ptr %4, align 16, !tbaa !86
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = load <2 x i64>, ptr %.sroa.621.0..sroa_idx, align 16, !tbaa !86
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread
  %.sroa.8.0 = phi i64 [ 0, %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread ], [ %.sroa.8.0.copyload, %bb.g ]
  %.0 = phi i64 [ 0, %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread ], [ %.sroa.speculated, %bb.g ] ; 2 uses
  %i.cc = phi <2 x i64> [ zeroinitializer, %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread ], [ %i.ca, %bb.g ] ; 2 uses
  %i.cd = phi <2 x i64> [ splat (i64 9223372036854775807), %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread ], [ %i.cb, %bb.g ]
  %i.ce = load ptr, ptr @_ZN9benchmark8internal16profiler_managerE, align 8, !tbaa !139
  %.not7 = icmp eq ptr %i.ce, null
  br i1 %.not7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = load i64, ptr %i.ae, align 8, !tbaa !84
  call void @_ZN9benchmark8internal15BenchmarkRunner18RunProfilerManagerEl(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %i.cf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !48, !nonnull !47, !align !73 ; 16 uses
  %i.ch = load double, ptr %i.s, align 8, !tbaa !126
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !72
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !70
  %i.cm = sext i32 %i.cl to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.cn, ptr %5, align 8, !tbaa !88, !alias.scope !214
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.cn, align 8, !tbaa !18, !alias.scope !214
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !88, !alias.scope !214
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.cr, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.cq, align 8, !tbaa !18, !alias.scope !214
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !88, !alias.scope !214
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 0, ptr %i.cu, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.ct, align 8, !tbaa !18, !alias.scope !214
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !88, !alias.scope !214
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 0, ptr %i.cx, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.cw, align 8, !tbaa !18, !alias.scope !214
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !88, !alias.scope !214
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 0, ptr %i.da, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.cz, align 8, !tbaa !18, !alias.scope !214
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 2 uses
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !88, !alias.scope !214
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 0, ptr %i.dd, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.dc, align 8, !tbaa !18, !alias.scope !214
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.df, ptr %i.de, align 8, !tbaa !88, !alias.scope !214
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 200
  store i64 0, ptr %i.dg, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.df, align 8, !tbaa !18, !alias.scope !214
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !88, !alias.scope !214
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 232
  store i64 0, ptr %i.dj, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.di, align 8, !tbaa !18, !alias.scope !214
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 272
  store i32 0, ptr %i.dk, align 8, !tbaa !215, !alias.scope !214
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 280 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 296 ; 4 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !88, !alias.scope !214
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 288
  store i64 0, ptr %i.dn, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.dm, align 8, !tbaa !18, !alias.scope !214
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 312
  store i32 0, ptr %i.do, align 8, !tbaa !143, !alias.scope !214
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 320 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 336 ; 4 uses
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !88, !alias.scope !214
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 328
  store i64 0, ptr %i.dr, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.dq, align 8, !tbaa !18, !alias.scope !214
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 352 ; 4 uses
  store i32 0, ptr %i.ds, align 8, !tbaa !144, !alias.scope !214
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 360 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 376 ; 4 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !88, !alias.scope !214
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 368
  store i64 0, ptr %i.dv, align 8, !tbaa !16, !alias.scope !214
  store i8 0, ptr %i.du, align 8, !tbaa !18, !alias.scope !214
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 392 ; 2 uses
  store i64 1, ptr %i.dw, align 8, !tbaa !216, !alias.scope !214
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 400 ; 2 uses
  store i64 1, ptr %i.dx, align 8, !tbaa !217, !alias.scope !214
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 424 ; 2 uses
  %i.dz = call noundef i32 @_ZN9benchmark18GetDefaultTimeUnitEv() #20
  store i32 %i.dz, ptr %i.dy, align 8, !tbaa !218, !alias.scope !214
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 432 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 460 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 504 ; 6 uses
  store i32 0, ptr %i.ec, align 8, !tbaa !92, !alias.scope !214
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 5 uses
  store ptr null, ptr %i.ed, align 8, !tbaa !93, !alias.scope !214
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 520 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ea, i8 0, i64 25, i1 false), !alias.scope !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(30) %i.eb, i8 0, i64 30, i1 false), !alias.scope !214
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !94, !alias.scope !214
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 528 ; 4 uses
  store ptr %i.ec, ptr %i.ef, align 8, !tbaa !95, !alias.scope !214
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 536 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 560 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false), !alias.scope !214
  store i64 9223372036854775807, ptr %i.eh, align 8, !tbaa !133, !alias.scope !214
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 568
  store i64 9223372036854775807, ptr %i.ei, align 8, !tbaa !134, !alias.scope !214
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 576 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false), !alias.scope !214
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(256) %5, ptr noundef nonnull align 8 dereferenceable(472) %i.cg) #20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %i.ek) #20
  %i.el = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.el) #20
  %i.em = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.em) #20
  %i.en = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %i.en) #20
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cg, i64 160
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %i.eo) #20
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cg, i64 192
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.ep) #20
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cg, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.eq) #20
  %i.er = getelementptr inbounds nuw i8, ptr %i.cg, i64 264
  %i.es = load i32, ptr %i.er, align 8, !tbaa !219, !noalias !214
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 256
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !220, !alias.scope !214
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cg, i64 268
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !221, !noalias !214
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 264
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !222, !alias.scope !214
  %i.ez = load i32, ptr %i.m, align 8, !tbaa !91, !noalias !214
  store i32 %i.ez, ptr %i.ds, align 8, !tbaa !144, !alias.scope !214
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #20
  %i.fa = load i64, ptr %2, align 8, !tbaa !136, !noalias !214
  store i64 %i.fa, ptr %i.dw, align 8, !tbaa !216, !alias.scope !214
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cg, i64 288
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !223, !noalias !214
  store i32 %i.fc, ptr %i.dy, align 8, !tbaa !218, !alias.scope !214
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cg, i64 400 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !74, !noalias !214
  %i.ff = sext i32 %i.fe to i64
  store i64 %i.ff, ptr %i.dx, align 8, !tbaa !217, !alias.scope !214
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 408
  store i64 %i.cj, ptr %i.fg, align 8, !tbaa !224, !alias.scope !214
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 416
  store i64 %i.cm, ptr %i.fh, align 8, !tbaa !225, !alias.scope !214
  %i.fi = load i32, ptr %i.ds, align 8, !tbaa !144, !alias.scope !214
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.k, label %_ZN9benchmark8internal12_GLOBAL__N_115CreateRunReportERKNS0_17BenchmarkInstanceERKNS0_13ThreadManager6ResultElRKNS_13MemoryManager6ResultEdll.exit

bb.k:                                             ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cg, i64 294
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !127, !range !46, !noalias !214, !noundef !47 ; 2 uses
  %i.fm = trunc nuw i8 %i.fl to i1
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.gep.val = load double, ptr %.sroa.gep, align 8
  %.val = load double, ptr %i.ad, align 8
  %storemerge.i = select i1 %i.fm, double %.sroa.gep.val, double %.val
  store double %storemerge.i, ptr %i.ea, align 8, !tbaa !226, !alias.scope !214
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 456
  store i8 %i.fl, ptr %i.fn, align 8, !tbaa !227, !alias.scope !214
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !137, !noalias !214
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 440
  store double %i.fp, ptr %i.fq, align 8, !tbaa !228, !alias.scope !214
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !138, !noalias !214
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 472
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !229, !alias.scope !214
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cg, i64 296
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !230, !noalias !214
  store i32 %i.fv, ptr %i.eb, align 4, !tbaa !231, !alias.scope !214
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cg, i64 304
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !232, !noalias !214
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 464
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !233, !alias.scope !214
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cg, i64 360
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !234, !noalias !214, !nonnull !47, !align !73
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 480
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !235, !alias.scope !214
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 496 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !214
  %i.gd = load ptr, ptr %i.ed, align 8, !tbaa !113, !alias.scope !214 ; 4 uses
  store ptr %i.gd, ptr %1, align 8, !tbaa !116, !noalias !214
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gf = load ptr, ptr %i.ef, align 8, !tbaa !113, !alias.scope !214 ; 2 uses
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !117, !noalias !214
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.gc, ptr %i.gg, align 8, !tbaa !118, !noalias !214
  %.not.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr null, ptr %i.gh, align 8, !tbaa !119
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !120 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not5.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i, label %.sink.split.i.i.i.i

end_hunk_0
