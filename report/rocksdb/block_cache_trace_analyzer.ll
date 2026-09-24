Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_cache_trace_analyzer?download=true
inline.NumInlined: 8970
inline.NumDeleted: 3445
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7rocksdb21BlockCacheTraceRecordD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !46
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb23BlockCacheTraceAnalyzer19PrintBlockSizeStatsEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1049088) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.rocksdb::HistogramStat", align 8 ; 6 uses
  %2 = alloca %"class.std::map.342", align 8      ; 11 uses
  %3 = alloca %"class.std::map.347", align 8      ; 11 uses
  %4 = alloca %"class.std::function", align 8     ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN7rocksdb13HistogramStatC1Ev(ptr noundef nonnull align 8 dereferenceable(920) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !157
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !158
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !158
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !159
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.l = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %bb.e unwind label %bb.b       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !195  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.d      ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %1, ptr %i.l, align 16, !tbaa !339
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !341
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %3, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !343
  store ptr %i.l, ptr %4, align 8, !tbaa !196
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer19PrintBlockSizeStatsEvE3$_0E9_M_invokeERKSt9_Any_dataS7_OmOjOS9_S7_SK_SC_", ptr %i.r, align 8, !tbaa !204
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer19PrintBlockSizeStatsEvE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr %i.k, align 8, !tbaa !195
  invoke void @_ZNK7rocksdb23BlockCacheTraceAnalyzer14TraverseBlocksESt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS_9TraceTypeES9_mRKNS_15BlockAccessInfoEEEPSt3setIS7_St4lessIS7_ESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1049088) %0, ptr noundef nonnull align 8 %4, ptr noundef null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !195  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.f, %bb.g
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(920) %1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.x = load ptr, ptr %5, align 8, !tbaa !45
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.196, ptr noundef %i.x) #30 ; 0 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !45     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !129 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 16 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 29
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 21
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 27
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !129 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.f
  br i1 %i.ap, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 16 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 29
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 21
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 22
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 27
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !195 ; 2 uses
  %.not.i22 = icmp eq ptr %i.az, null
  br i1 %.not.i22, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #29
  unreachable

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body

_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit: ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.sroa.062.068 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ] ; 3 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.be) ; 0 uses
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.062.068, i64 32
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bg = load i8, ptr %10, align 8, !tbaa !348
  store ptr %i.ag, ptr %6, align 8, !tbaa !104, !alias.scope !893
  switch i8 %i.bg, label %._crit_edge.i.i38.i [
    i8 8, label %._crit_edge.i.i.i
    i8 9, label %._crit_edge.i.i6.i
    i8 7, label %._crit_edge.i.i14.i
    i8 11, label %._crit_edge.i.i22.i
    i8 10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i
  ]

._crit_edge.i.i.i:                                ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ag, ptr noundef nonnull align 1 dereferenceable(6) @.str.260, i64 6, i1 false)
  store i64 6, ptr %i.ah, align 8, !tbaa !55, !alias.scope !893
  store i8 0, ptr %i.al, align 2, !tbaa !46, !alias.scope !893
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i6.i:                               ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  store i32 1635017028, ptr %i.ag, align 8, !alias.scope !893
  store i64 4, ptr %i.ah, align 8, !tbaa !55, !alias.scope !893
  store i8 0, ptr %i.ak, align 4, !tbaa !46, !alias.scope !893
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i14.i:                              ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ag, ptr noundef nonnull align 1 dereferenceable(5) @.str.262, i64 5, i1 false)
  store i64 5, ptr %i.ah, align 8, !tbaa !55, !alias.scope !893
  store i8 0, ptr %i.aj, align 1, !tbaa !46, !alias.scope !893
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i22.i:                              ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ag, ptr noundef nonnull align 1 dereferenceable(13) @.str.263, i64 13, i1 false)
  store i64 13, ptr %i.ah, align 8, !tbaa !55, !alias.scope !893
  store i8 0, ptr %i.ai, align 1, !tbaa !46, !alias.scope !893
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i: ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  %i.bh = invoke noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #31
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i
  store ptr %i.bh, ptr %6, align 8, !tbaa !45, !alias.scope !893
  store i64 17, ptr %i.ag, align 8, !tbaa !46, !alias.scope !893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bh, ptr noundef nonnull align 1 dereferenceable(17) @.str.264, i64 17, i1 false)
  store i64 17, ptr %i.ah, align 8, !tbaa !55, !alias.scope !893
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 17
  store i8 0, ptr %i.bi, align 1, !tbaa !46
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i38.i:                              ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ag, ptr noundef nonnull align 1 dereferenceable(11) @.str.265, i64 11, i1 false)
  store i64 11, ptr %i.ah, align 8, !tbaa !55, !alias.scope !893
  store i8 0, ptr %i.am, align 1, !tbaa !46, !alias.scope !893
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit: ; preds = %._crit_edge.i.i38.i, %.noexc, %._crit_edge.i.i22.i, %._crit_edge.i.i14.i, %._crit_edge.i.i6.i, %._crit_edge.i.i.i
  %i.bj = phi ptr [ %i.ag, %._crit_edge.i.i38.i ], [ %i.bh, %.noexc ], [ %i.ag, %._crit_edge.i.i22.i ], [ %i.ag, %._crit_edge.i.i14.i ], [ %i.ag, %._crit_edge.i.i6.i ], [ %i.ag, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.062.068, i64 40
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(920) %i.bk)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit
  %i.bl = load ptr, ptr %7, align 8, !tbaa !45
  %i.bm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.197, ptr noundef nonnull %i.bj, ptr noundef %i.bl) #30 ; 0 uses
  %i.bn = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.an
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.n
  %i.bp = load i64, ptr %i.an, align 8, !tbaa !46
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.br = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ag
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bt = load i64, ptr %i.ag, align 8, !tbaa !46
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.062.068) #33 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.a
  br i1 %i.bw, label %._crit_edge, label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.p:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.bz = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.ag
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.p
  %i.cb = load i64, ptr %i.ag, align 8, !tbaa !46
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.o
  %.pn19 = phi { ptr, i32 } [ %i.bx, %bb.o ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.by, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.body

._crit_edge76:                                    ; preds = %._crit_edge72, %._crit_edge
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN7rocksdb9TraceTypeENS9_13HistogramStatESt4lessISA_ESaIS6_IKSA_SB_EEEESt10_Select1stISI_ESC_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.cd)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %._crit_edge76
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit: ; preds = %._crit_edge76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_13HistogramStatEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.cg)
          to label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #29
  unreachable

_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.s:                                             ; preds = %.lr.ph75, %._crit_edge72
  %.sroa.058.073 = phi ptr [ %i.ao, %.lr.ph75 ], [ %i.co, %._crit_edge72 ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.058.073, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.058.073, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !129 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.058.073, i64 72 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %._crit_edge72, label %.lr.ph71

._crit_edge72:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.s
  %i.co = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.058.073) #33 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.f
  br i1 %i.cp, label %._crit_edge76, label %bb.s

.lr.ph71:                                         ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.sroa.054.069 = phi ptr [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.cl, %bb.s ] ; 3 uses
  %i.cq = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i34 = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.cq) ; 0 uses
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.054.069, i64 32
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !214
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ct = load i8, ptr %11, align 8, !tbaa !348
  store ptr %i.aq, ptr %8, align 8, !tbaa !104, !alias.scope !894
  switch i8 %i.ct, label %._crit_edge.i.i38.i42 [
    i8 8, label %._crit_edge.i.i.i41
    i8 9, label %._crit_edge.i.i6.i40
    i8 7, label %._crit_edge.i.i14.i39
    i8 11, label %._crit_edge.i.i22.i38
    i8 10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i37
  ]

._crit_edge.i.i.i41:                              ; preds = %.lr.ph71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aq, ptr noundef nonnull align 1 dereferenceable(6) @.str.260, i64 6, i1 false)
  store i64 6, ptr %i.ar, align 8, !tbaa !55, !alias.scope !894
  store i8 0, ptr %i.av, align 2, !tbaa !46, !alias.scope !894
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit44

._crit_edge.i.i6.i40:                             ; preds = %.lr.ph71
  store i32 1635017028, ptr %i.aq, align 8, !alias.scope !894
  store i64 4, ptr %i.ar, align 8, !tbaa !55, !alias.scope !894
  store i8 0, ptr %i.au, align 4, !tbaa !46, !alias.scope !894
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit44

._crit_edge.i.i14.i39:                            ; preds = %.lr.ph71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aq, ptr noundef nonnull align 1 dereferenceable(5) @.str.262, i64 5, i1 false)
  store i64 5, ptr %i.ar, align 8, !tbaa !55, !alias.scope !894
  store i8 0, ptr %i.at, align 1, !tbaa !46, !alias.scope !894
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit44

._crit_edge.i.i22.i38:                            ; preds = %.lr.ph71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aq, ptr noundef nonnull align 1 dereferenceable(13) @.str.263, i64 13, i1 false)
  store i64 13, ptr %i.ar, align 8, !tbaa !55, !alias.scope !894
  store i8 0, ptr %i.as, align 1, !tbaa !46, !alias.scope !894
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i37: ; preds = %.lr.ph71
  %i.cu = invoke noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #31
          to label %.noexc43 unwind label %bb.u   ; 4 uses

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i37
  store ptr %i.cu, ptr %8, align 8, !tbaa !45, !alias.scope !894
  store i64 17, ptr %i.aq, align 8, !tbaa !46, !alias.scope !894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.cu, ptr noundef nonnull align 1 dereferenceable(17) @.str.264, i64 17, i1 false)
  store i64 17, ptr %i.ar, align 8, !tbaa !55, !alias.scope !894
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 17
  store i8 0, ptr %i.cv, align 1, !tbaa !46
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit44

._crit_edge.i.i38.i42:                            ; preds = %.lr.ph71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.aq, ptr noundef nonnull align 1 dereferenceable(11) @.str.265, i64 11, i1 false)
  store i64 11, ptr %i.ar, align 8, !tbaa !55, !alias.scope !894
  store i8 0, ptr %i.aw, align 1, !tbaa !46, !alias.scope !894
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit44

_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit44: ; preds = %._crit_edge.i.i38.i42, %.noexc43, %._crit_edge.i.i22.i38, %._crit_edge.i.i14.i39, %._crit_edge.i.i6.i40, %._crit_edge.i.i.i41
  %i.cw = phi ptr [ %i.aq, %._crit_edge.i.i38.i42 ], [ %i.cu, %.noexc43 ], [ %i.aq, %._crit_edge.i.i22.i38 ], [ %i.aq, %._crit_edge.i.i14.i39 ], [ %i.aq, %._crit_edge.i.i6.i40 ], [ %i.aq, %._crit_edge.i.i.i41 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.054.069, i64 40
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(920) %i.cx)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit44
  %i.cy = load ptr, ptr %9, align 8, !tbaa !45
  %i.cz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.198, ptr noundef %i.cs, ptr noundef nonnull %i.cw, ptr noundef %i.cy) #30 ; 0 uses
  %i.da = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ax
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.t
  %i.dc = load i64, ptr %i.ax, align 8, !tbaa !46
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.de = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.aq
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.dg = load i64, ptr %i.aq, align 8, !tbaa !46
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.di = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.054.069) #33 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cm
  br i1 %i.dj, label %._crit_edge72, label %.lr.ph71

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i37
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.v:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit44
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.dm = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.aq
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.v
  %i.do = load i64, ptr %i.aq, align 8, !tbaa !46
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.u
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.u ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.dl, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

.body:                                            ; preds = %bb.k, %bb.j, %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.m
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.bd, %bb.m ], [ %i.m, %bb.b ], [ %i.ay, %bb.k ], [ %i.m, %bb.c ], [ %i.ay, %bb.j ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn19.pn
}

declare void @_ZN7rocksdb13HistogramStatC1Ev(ptr noundef nonnull align 8 dereferenceable(920)) unnamed_addr #1

declare void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN7rocksdb9TraceTypeENS9_13HistogramStatESt4lessISA_ESaIS6_IKSA_SB_EEEESt10_Select1stISI_ESC_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN7rocksdb9TraceTypeENS9_13HistogramStatESt4lessISA_ESaIS6_IKSA_SB_EEEESt10_Select1stISI_ESC_IS5_ESaISI_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN7rocksdb9TraceTypeENS9_13HistogramStatESt4lessISA_ESaIS6_IKSA_SB_EEEESt10_Select1stISI_ESC_IS5_ESaISI_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_13HistogramStatEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_13HistogramStatEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_13HistogramStatEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjj(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1049088) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %4 = alloca %"struct.rocksdb::HistogramStat", align 8 ; 6 uses
  %5 = alloca %"class.std::map.342", align 8      ; 11 uses
  %6 = alloca %"class.std::map.347", align 8      ; 11 uses
  %7 = alloca %"class.std::map.232", align 8      ; 11 uses
  %8 = alloca %"class.std::function", align 8     ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::map.188", align 8     ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 30 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 90 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = zext i1 %1 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !264
end_hunk_0
begin_hunk_1_@_ZNK7rocksdb23BlockCacheTraceAnalyzer21PrintAccessCountStatsEbjj:bb.a
  br label %bb.nf

bb.nf:                                            ; preds = %.loopexit.split-lp1246, %.loopexit1245
  %lpad.phi1249 = phi { ptr, i32 } [ %lpad.loopexit1247, %.loopexit1245 ], [ %lpad.loopexit.split-lp1248, %.loopexit.split-lp1246 ] ; 2 uses
  %i.avv = load ptr, ptr %19, align 8, !tbaa !45  ; 2 uses
  %i.avw = icmp eq ptr %i.avv, %i.lw
  br i1 %i.avw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585: ; preds = %bb.nf
  %i.avx = load i64, ptr %i.lw, align 8, !tbaa !46
  %i.avy = add i64 %i.avx, 1
  call void @_ZdlPvm(ptr noundef %i.avv, i64 noundef %i.avy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587: ; preds = %bb.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585, %bb.ne
  %.pn139 = phi { ptr, i32 } [ %i.avu, %bb.ne ], [ %lpad.phi1249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585 ], [ %lpad.phi1249, %bb.nf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.no

bb.ng:                                            ; preds = %bb.iq
  %i.avz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590

.loopexit1250:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i960
  %lpad.loopexit1252 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nh

.loopexit.split-lp1251:                           ; preds = %.invoke2255, %bb.iz
  %lpad.loopexit.split-lp1253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nh

bb.nh:                                            ; preds = %.loopexit.split-lp1251, %.loopexit1250
  %lpad.phi1254 = phi { ptr, i32 } [ %lpad.loopexit1252, %.loopexit1250 ], [ %lpad.loopexit.split-lp1253, %.loopexit.split-lp1251 ] ; 2 uses
  %i.awa = load ptr, ptr %20, align 8, !tbaa !45  ; 2 uses
  %i.awb = icmp eq ptr %i.awa, %i.lz
  br i1 %i.awb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588: ; preds = %bb.nh
  %i.awc = load i64, ptr %i.lz, align 8, !tbaa !46
  %i.awd = add i64 %i.awc, 1
  call void @_ZdlPvm(ptr noundef %i.awa, i64 noundef %i.awd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590: ; preds = %bb.nh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588, %bb.ng
  %.pn141 = phi { ptr, i32 } [ %i.avz, %bb.ng ], [ %lpad.phi1254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588 ], [ %lpad.phi1254, %bb.nh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.no

bb.ni:                                            ; preds = %.noexc.i494
  %i.awe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

.loopexit1255:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i1004
  %lpad.loopexit1257 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nj

.loopexit.split-lp1256:                           ; preds = %.invoke2257, %bb.kk
  %lpad.loopexit.split-lp1258 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nj

bb.nj:                                            ; preds = %.loopexit.split-lp1256, %.loopexit1255
  %lpad.phi1259 = phi { ptr, i32 } [ %lpad.loopexit1257, %.loopexit1255 ], [ %lpad.loopexit.split-lp1258, %.loopexit.split-lp1256 ] ; 2 uses
  %i.awf = load ptr, ptr %21, align 8, !tbaa !45  ; 2 uses
  %i.awg = icmp eq ptr %i.awf, %i.ma
  br i1 %i.awg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591: ; preds = %bb.nj
  %i.awh = load i64, ptr %i.ma, align 8, !tbaa !46
  %i.awi = add i64 %i.awh, 1
  call void @_ZdlPvm(ptr noundef %i.awf, i64 noundef %i.awi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593: ; preds = %bb.nj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591, %bb.ni
  %.pn143 = phi { ptr, i32 } [ %i.awe, %bb.ni ], [ %lpad.phi1259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i591 ], [ %lpad.phi1259, %bb.nj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.no

bb.nk:                                            ; preds = %bb.kz
  %i.awj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596

.loopexit1260:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i1048
  %lpad.loopexit1262 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

.loopexit.split-lp1261:                           ; preds = %.invoke2259, %bb.li
  %lpad.loopexit.split-lp1263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.nl:                                            ; preds = %.loopexit.split-lp1261, %.loopexit1260
  %lpad.phi1264 = phi { ptr, i32 } [ %lpad.loopexit1262, %.loopexit1260 ], [ %lpad.loopexit.split-lp1263, %.loopexit.split-lp1261 ] ; 2 uses
  %i.awk = load ptr, ptr %22, align 8, !tbaa !45  ; 2 uses
  %i.awl = icmp eq ptr %i.awk, %i.md
  br i1 %i.awl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594: ; preds = %bb.nl
  %i.awm = load i64, ptr %i.md, align 8, !tbaa !46
  %i.awn = add i64 %i.awm, 1
  call void @_ZdlPvm(ptr noundef %i.awk, i64 noundef %i.awn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596: ; preds = %bb.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594, %bb.nk
  %.pn145 = phi { ptr, i32 } [ %i.awj, %bb.nk ], [ %lpad.phi1264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594 ], [ %lpad.phi1264, %bb.nl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.no

bb.nm:                                            ; preds = %.noexc.i559
  %i.awo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599

.loopexit1265:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i1092
  %lpad.loopexit1267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

.loopexit.split-lp1266:                           ; preds = %.invoke2261, %bb.ms
  %lpad.loopexit.split-lp1268 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

bb.nn:                                            ; preds = %.loopexit.split-lp1266, %.loopexit1265
  %lpad.phi1269 = phi { ptr, i32 } [ %lpad.loopexit1267, %.loopexit1265 ], [ %lpad.loopexit.split-lp1268, %.loopexit.split-lp1266 ] ; 2 uses
  %i.awp = load ptr, ptr %23, align 8, !tbaa !45  ; 2 uses
  %i.awq = icmp eq ptr %i.awp, %i.me
  br i1 %i.awq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597: ; preds = %bb.nn
  %i.awr = load i64, ptr %i.me, align 8, !tbaa !46
  %i.aws = add i64 %i.awr, 1
  call void @_ZdlPvm(ptr noundef %i.awp, i64 noundef %i.aws) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599: ; preds = %bb.nn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597, %bb.nm
  %.pn147 = phi { ptr, i32 } [ %i.awo, %bb.nm ], [ %lpad.phi1269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597 ], [ %lpad.phi1269, %bb.nn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.no

bb.no:                                            ; preds = %.loopexit1230, %.loopexit.split-lp1231, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599
  %.pn153.pn.pn = phi { ptr, i32 } [ %.pn135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599 ], [ %.pn145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596 ], [ %.pn143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.pn141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590 ], [ %.pn139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587 ], [ %.pn137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584 ], [ %.pn153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ], [ %.pn151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit1232, %.loopexit1230 ], [ %lpad.loopexit.split-lp1233, %.loopexit.split-lp1231 ]
  %i.awt = load ptr, ptr %14, align 8, !tbaa !45  ; 2 uses
  %i.awu = icmp eq ptr %i.awt, %i.lc
  br i1 %i.awu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600: ; preds = %bb.no
  %i.awv = load i64, ptr %i.lc, align 8, !tbaa !46
  %i.aww = add i64 %i.awv, 1
  call void @_ZdlPvm(ptr noundef %i.awt, i64 noundef %i.aww) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602: ; preds = %bb.no, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %.body

._crit_edge1816.._crit_edge1821.loopexit_crit_edge: ; preds = %._crit_edge1816
  br label %._crit_edge1821, !llvm.loop !902

._crit_edge1821:                                  ; preds = %bb.bw, %.lr.ph1820, %._crit_edge1816.._crit_edge1821.loopexit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge1779
  %i.awx = load ptr, ptr %i.e, align 8, !tbaa !129 ; 2 uses
  %i.awy = icmp eq ptr %i.awx, %i.c
  br i1 %i.awy, label %._crit_edge1826, label %.lr.ph1825

.lr.ph1825:                                       ; preds = %._crit_edge1821
  %i.awz = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 16 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 6 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %24, i64 29
  %i.axc = getelementptr inbounds nuw i8, ptr %24, i64 21
  %i.axd = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.axe = getelementptr inbounds nuw i8, ptr %24, i64 22
  %i.axf = getelementptr inbounds nuw i8, ptr %24, i64 27
  %i.axg = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  br label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit

._crit_edge1826:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %._crit_edge1821
  %i.axh = load ptr, ptr %i.j, align 8, !tbaa !129 ; 2 uses
  %i.axi = icmp eq ptr %i.axh, %i.h
  br i1 %i.axi, label %._crit_edge1834, label %.lr.ph1833

.lr.ph1833:                                       ; preds = %._crit_edge1826
  %i.axj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 16 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 6 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %26, i64 29
  %i.axm = getelementptr inbounds nuw i8, ptr %26, i64 21
  %i.axn = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.axo = getelementptr inbounds nuw i8, ptr %26, i64 22
  %i.axp = getelementptr inbounds nuw i8, ptr %26, i64 27
  %i.axq = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  br label %bb.nv

_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit: ; preds = %.lr.ph1825, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614
  %.sroa.01119.01823 = phi ptr [ %i.awx, %.lr.ph1825 ], [ %i.ayi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614 ] ; 3 uses
  %i.axr = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.axr) ; 0 uses
  %28 = getelementptr inbounds nuw i8, ptr %.sroa.01119.01823, i64 32
  %i.axs = load ptr, ptr @stdout, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.axt = load i8, ptr %28, align 8, !tbaa !348
  store ptr %i.awz, ptr %24, align 8, !tbaa !104, !alias.scope !930
  switch i8 %i.axt, label %._crit_edge.i.i38.i607 [
    i8 8, label %._crit_edge.i.i.i606
    i8 9, label %._crit_edge.i.i6.i605
    i8 7, label %._crit_edge.i.i14.i604
    i8 11, label %._crit_edge.i.i22.i603
    i8 10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i
  ]

._crit_edge.i.i.i606:                             ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.awz, ptr noundef nonnull align 1 dereferenceable(6) @.str.260, i64 6, i1 false)
  store i64 6, ptr %i.axa, align 8, !tbaa !55, !alias.scope !930
  store i8 0, ptr %i.axe, align 2, !tbaa !46, !alias.scope !930
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i6.i605:                            ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  store i32 1635017028, ptr %i.awz, align 8, !alias.scope !930
  store i64 4, ptr %i.axa, align 8, !tbaa !55, !alias.scope !930
  store i8 0, ptr %i.axd, align 4, !tbaa !46, !alias.scope !930
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i14.i604:                           ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.awz, ptr noundef nonnull align 1 dereferenceable(5) @.str.262, i64 5, i1 false)
  store i64 5, ptr %i.axa, align 8, !tbaa !55, !alias.scope !930
  store i8 0, ptr %i.axc, align 1, !tbaa !46, !alias.scope !930
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i22.i603:                           ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.awz, ptr noundef nonnull align 1 dereferenceable(13) @.str.263, i64 13, i1 false)
  store i64 13, ptr %i.axa, align 8, !tbaa !55, !alias.scope !930
  store i8 0, ptr %i.axb, align 1, !tbaa !46, !alias.scope !930
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i: ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  %i.axu = invoke noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #31
          to label %.noexc608 unwind label %bb.nq ; 4 uses

.noexc608:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i
  store ptr %i.axu, ptr %24, align 8, !tbaa !45, !alias.scope !930
  store i64 17, ptr %i.awz, align 8, !tbaa !46, !alias.scope !930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.axu, ptr noundef nonnull align 1 dereferenceable(17) @.str.264, i64 17, i1 false)
  store i64 17, ptr %i.axa, align 8, !tbaa !55, !alias.scope !930
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 17
  store i8 0, ptr %i.axv, align 1, !tbaa !46
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

._crit_edge.i.i38.i607:                           ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.awz, ptr noundef nonnull align 1 dereferenceable(11) @.str.265, i64 11, i1 false)
  store i64 11, ptr %i.axa, align 8, !tbaa !55, !alias.scope !930
  store i8 0, ptr %i.axf, align 1, !tbaa !46, !alias.scope !930
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit

_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit: ; preds = %._crit_edge.i.i38.i607, %.noexc608, %._crit_edge.i.i22.i603, %._crit_edge.i.i14.i604, %._crit_edge.i.i6.i605, %._crit_edge.i.i.i606
  %i.axw = phi ptr [ %i.awz, %._crit_edge.i.i38.i607 ], [ %i.axu, %.noexc608 ], [ %i.awz, %._crit_edge.i.i22.i603 ], [ %i.awz, %._crit_edge.i.i14.i604 ], [ %i.awz, %._crit_edge.i.i6.i605 ], [ %i.awz, %._crit_edge.i.i.i606 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  %i.axx = getelementptr inbounds nuw i8, ptr %.sroa.01119.01823, i64 40
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(920) %i.axx)
          to label %bb.np unwind label %bb.nr

bb.np:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit
  %i.axy = load ptr, ptr %25, align 8, !tbaa !45
  %i.axz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.axs, ptr noundef nonnull @.str.213, ptr noundef nonnull %i.axw, ptr noundef %i.axy) #30 ; 0 uses
  %i.aya = load ptr, ptr %25, align 8, !tbaa !45  ; 2 uses
  %i.ayb = icmp eq ptr %i.aya, %i.axg
  br i1 %i.ayb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609: ; preds = %bb.np
  %i.ayc = load i64, ptr %i.axg, align 8, !tbaa !46
  %i.ayd = add i64 %i.ayc, 1
  call void @_ZdlPvm(ptr noundef %i.aya, i64 noundef %i.ayd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611: ; preds = %bb.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i609
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.aye = load ptr, ptr %24, align 8, !tbaa !45  ; 2 uses
  %i.ayf = icmp eq ptr %i.aye, %i.awz
  br i1 %i.ayf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611
  %i.ayg = load i64, ptr %i.awz, align 8, !tbaa !46
  %i.ayh = add i64 %i.ayg, 1
  call void @_ZdlPvm(ptr noundef %i.aye, i64 noundef %i.ayh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.ayi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01119.01823) #33 ; 2 uses
  %i.ayj = icmp eq ptr %i.ayi, %i.c
  br i1 %i.ayj, label %._crit_edge1826, label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit

bb.nq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i
  %i.ayk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617

bb.nr:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit
  %i.ayl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.aym = load ptr, ptr %24, align 8, !tbaa !45  ; 2 uses
  %i.ayn = icmp eq ptr %i.aym, %i.awz
  br i1 %i.ayn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615: ; preds = %bb.nr
  %i.ayo = load i64, ptr %i.awz, align 8, !tbaa !46
  %i.ayp = add i64 %i.ayo, 1
  call void @_ZdlPvm(ptr noundef %i.aym, i64 noundef %i.ayp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617: ; preds = %bb.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615, %bb.nq
  %.pn162 = phi { ptr, i32 } [ %i.ayk, %bb.nq ], [ %i.ayl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615 ], [ %i.ayl, %bb.nr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %.body

._crit_edge1834:                                  ; preds = %._crit_edge1830, %._crit_edge1826
  %i.ayq = load ptr, ptr %i.n, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ayq)
          to label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit unwind label %bb.ns

bb.ns:                                            ; preds = %._crit_edge1834
  %i.ayr = landingpad { ptr, i32 }
          catch ptr null
  %i.ays = extractvalue { ptr, i32 } %i.ayr, 0
  call void @__clang_call_terminate(ptr %i.ays) #29
  unreachable

_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit: ; preds = %._crit_edge1834
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ayt = load ptr, ptr %i.i, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN7rocksdb9TraceTypeENS9_13HistogramStatESt4lessISA_ESaIS6_IKSA_SB_EEEESt10_Select1stISI_ESC_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ayt)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit unwind label %bb.nt

bb.nt:                                            ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit
  %i.ayu = landingpad { ptr, i32 }
          catch ptr null
  %i.ayv = extractvalue { ptr, i32 } %i.ayu, 0
  call void @__clang_call_terminate(ptr %i.ayv) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit: ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ayw = load ptr, ptr %i.d, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_13HistogramStatEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ayw)
          to label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit unwind label %bb.nu

bb.nu:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit
  %i.ayx = landingpad { ptr, i32 }
          catch ptr null
  %i.ayy = extractvalue { ptr, i32 } %i.ayx, 0
  call void @__clang_call_terminate(ptr %i.ayy) #29
  unreachable

_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.nv:                                            ; preds = %.lr.ph1833, %._crit_edge1830
  %.sroa.01115.01831 = phi ptr [ %i.axh, %.lr.ph1833 ], [ %i.aze, %._crit_edge1830 ] ; 4 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %.sroa.01115.01831, i64 32
  %i.aza = getelementptr inbounds nuw i8, ptr %.sroa.01115.01831, i64 88
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !129 ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %.sroa.01115.01831, i64 72 ; 2 uses
  %i.azd = icmp eq ptr %i.azb, %i.azc
  br i1 %i.azd, label %._crit_edge1830, label %.lr.ph1829

._crit_edge1830:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, %bb.nv
  %i.aze = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01115.01831) #33 ; 2 uses
  %i.azf = icmp eq ptr %i.aze, %i.h
  br i1 %i.azf, label %._crit_edge1834, label %bb.nv

.lr.ph1829:                                       ; preds = %bb.nv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635
  %.sroa.01111.01827 = phi ptr [ %i.azy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ], [ %i.azb, %bb.nv ] ; 3 uses
  %i.azg = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i619 = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.azg) ; 0 uses
  %29 = getelementptr inbounds nuw i8, ptr %.sroa.01111.01827, i64 32
  %i.azh = load ptr, ptr @stdout, align 8, !tbaa !214
  %i.azi = load ptr, ptr %i.ayz, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  %i.azj = load i8, ptr %29, align 8, !tbaa !348
  store ptr %i.axj, ptr %26, align 8, !tbaa !104, !alias.scope !931
  switch i8 %i.azj, label %._crit_edge.i.i38.i627 [
    i8 8, label %._crit_edge.i.i.i626
    i8 9, label %._crit_edge.i.i6.i625
    i8 7, label %._crit_edge.i.i14.i624
    i8 11, label %._crit_edge.i.i22.i623
    i8 10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i622
  ]

._crit_edge.i.i.i626:                             ; preds = %.lr.ph1829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.axj, ptr noundef nonnull align 1 dereferenceable(6) @.str.260, i64 6, i1 false)
  store i64 6, ptr %i.axk, align 8, !tbaa !55, !alias.scope !931
  store i8 0, ptr %i.axo, align 2, !tbaa !46, !alias.scope !931
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit629

._crit_edge.i.i6.i625:                            ; preds = %.lr.ph1829
  store i32 1635017028, ptr %i.axj, align 8, !alias.scope !931
  store i64 4, ptr %i.axk, align 8, !tbaa !55, !alias.scope !931
  store i8 0, ptr %i.axn, align 4, !tbaa !46, !alias.scope !931
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit629

._crit_edge.i.i14.i624:                           ; preds = %.lr.ph1829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.axj, ptr noundef nonnull align 1 dereferenceable(5) @.str.262, i64 5, i1 false)
  store i64 5, ptr %i.axk, align 8, !tbaa !55, !alias.scope !931
  store i8 0, ptr %i.axm, align 1, !tbaa !46, !alias.scope !931
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit629

._crit_edge.i.i22.i623:                           ; preds = %.lr.ph1829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.axj, ptr noundef nonnull align 1 dereferenceable(13) @.str.263, i64 13, i1 false)
  store i64 13, ptr %i.axk, align 8, !tbaa !55, !alias.scope !931
  store i8 0, ptr %i.axl, align 1, !tbaa !46, !alias.scope !931
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit629

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i622: ; preds = %.lr.ph1829
  %i.azk = invoke noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #31
          to label %.noexc628 unwind label %bb.nx ; 4 uses

.noexc628:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i622
  store ptr %i.azk, ptr %26, align 8, !tbaa !45, !alias.scope !931
  store i64 17, ptr %i.axj, align 8, !tbaa !46, !alias.scope !931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.azk, ptr noundef nonnull align 1 dereferenceable(17) @.str.264, i64 17, i1 false)
  store i64 17, ptr %i.axk, align 8, !tbaa !55, !alias.scope !931
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 17
  store i8 0, ptr %i.azl, align 1, !tbaa !46
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit629

._crit_edge.i.i38.i627:                           ; preds = %.lr.ph1829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.axj, ptr noundef nonnull align 1 dereferenceable(11) @.str.265, i64 11, i1 false)
  store i64 11, ptr %i.axk, align 8, !tbaa !55, !alias.scope !931
  store i8 0, ptr %i.axp, align 1, !tbaa !46, !alias.scope !931
  br label %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit629

_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit629: ; preds = %._crit_edge.i.i38.i627, %.noexc628, %._crit_edge.i.i22.i623, %._crit_edge.i.i14.i624, %._crit_edge.i.i6.i625, %._crit_edge.i.i.i626
  %i.azm = phi ptr [ %i.axj, %._crit_edge.i.i38.i627 ], [ %i.azk, %.noexc628 ], [ %i.axj, %._crit_edge.i.i22.i623 ], [ %i.axj, %._crit_edge.i.i14.i624 ], [ %i.axj, %._crit_edge.i.i6.i625 ], [ %i.axj, %._crit_edge.i.i.i626 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  %i.azn = getelementptr inbounds nuw i8, ptr %.sroa.01111.01827, i64 40
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(920) %i.azn)
          to label %bb.nw unwind label %bb.ny

bb.nw:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit629
  %i.azo = load ptr, ptr %27, align 8, !tbaa !45
  %i.azp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.azh, ptr noundef nonnull @.str.214, ptr noundef %i.azi, ptr noundef nonnull %i.azm, ptr noundef %i.azo) #30 ; 0 uses
  %i.azq = load ptr, ptr %27, align 8, !tbaa !45  ; 2 uses
  %i.azr = icmp eq ptr %i.azq, %i.axq
  br i1 %i.azr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630: ; preds = %bb.nw
  %i.azs = load i64, ptr %i.axq, align 8, !tbaa !46
  %i.azt = add i64 %i.azs, 1
  call void @_ZdlPvm(ptr noundef %i.azq, i64 noundef %i.azt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632: ; preds = %bb.nw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  %i.azu = load ptr, ptr %26, align 8, !tbaa !45  ; 2 uses
  %i.azv = icmp eq ptr %i.azu, %i.axj
  br i1 %i.azv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632
  %i.azw = load i64, ptr %i.axj, align 8, !tbaa !46
  %i.azx = add i64 %i.azw, 1
  call void @_ZdlPvm(ptr noundef %i.azu, i64 noundef %i.azx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  %i.azy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01111.01827) #33 ; 2 uses
  %i.azz = icmp eq ptr %i.azy, %i.azc
  br i1 %i.azz, label %._crit_edge1830, label %.lr.ph1829

bb.nx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31.i622
  %i.baa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638

bb.ny:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_120block_type_to_stringB5cxx11ENS_9TraceTypeE.exit629
  %i.bab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  %i.bac = load ptr, ptr %26, align 8, !tbaa !45  ; 2 uses
  %i.bad = icmp eq ptr %i.bac, %i.axj
  br i1 %i.bad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636: ; preds = %bb.ny
  %i.bae = load i64, ptr %i.axj, align 8, !tbaa !46
  %i.baf = add i64 %i.bae, 1
  call void @_ZdlPvm(ptr noundef %i.bac, i64 noundef %i.baf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638: ; preds = %bb.ny, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636, %bb.nx
  %.pn160 = phi { ptr, i32 } [ %i.baa, %bb.nx ], [ %i.bab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636 ], [ %i.bab, %bb.ny ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602, %bb.k, %bb.j, %bb.c, %bb.b, %.body173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, %bb.m
  %.pn162.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %i.bt, %bb.m ], [ %i.t, %bb.b ], [ %.pn131.pn, %.body173 ], [ %.pn162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %.pn160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638 ], [ %.pn153.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602 ], [ %i.t, %bb.c ], [ %i.bo, %bb.j ]
  %i.bag = load ptr, ptr %i.n, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.bag)
          to label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit639 unwind label %bb.nz

bb.nz:                                            ; preds = %.body
  %i.bah = landingpad { ptr, i32 }
          catch ptr null
  %i.bai = extractvalue { ptr, i32 } %i.bah, 0
  call void @__clang_call_terminate(ptr %i.bai) #29
  unreachable

_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit639: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.baj = load ptr, ptr %i.i, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN7rocksdb9TraceTypeENS9_13HistogramStatESt4lessISA_ESaIS6_IKSA_SB_EEEESt10_Select1stISI_ESC_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.baj)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit640 unwind label %bb.oa

bb.oa:                                            ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit639
  %i.bak = landingpad { ptr, i32 }
          catch ptr null
  %i.bal = extractvalue { ptr, i32 } %i.bak, 0
  call void @__clang_call_terminate(ptr %i.bal) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit640: ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit639
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bam = load ptr, ptr %i.d, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeIN7rocksdb9TraceTypeESt4pairIKS1_NS0_13HistogramStatEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.bam)
          to label %_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit641 unwind label %bb.ob

bb.ob:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit640
  %i.ban = landingpad { ptr, i32 }
          catch ptr null
  %i.bao = extractvalue { ptr, i32 } %i.ban, 0
  call void @__clang_call_terminate(ptr %i.bao) #29
  unreachable

_ZNSt3mapIN7rocksdb9TraceTypeENS0_13HistogramStatESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit641: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9TraceTypeENS6_13HistogramStatESt4lessIS7_ESaISt4pairIKS7_S8_EEES9_IS5_ESaISB_IKS5_SF_EEED2Ev.exit640
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn162.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb17TableReaderCallerEmSt4lessIS1_ESaISt4pairIKS1_mEEEixERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !283     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i8, ptr %i.e, align 1, !tbaa !283
  %i.g = icmp slt i8 %i.f, %i.d                   ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN7rocksdb17TableReaderCallerEmSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit, label %bb.b, !llvm.loop !20

_ZNSt3mapIN7rocksdb17TableReaderCallerEmSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN7rocksdb17TableReaderCallerEmSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i8, ptr %i.i, align 1, !tbaa !283
  %i.k = icmp slt i8 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIN7rocksdb17TableReaderCallerESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIN7rocksdb17TableReaderCallerEmSt4lessIS1_ESaISt4pairIKS1_mEEE11lower_boundERS5_.exit, %bb.c
end_hunk_1
begin_hunk_2_@_ZNK7rocksdb23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEv:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !157
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.p, ptr %i.r, align 8, !tbaa !129
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.t, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN7rocksdb13HistogramStatC1Ev(ptr noundef nonnull align 8 dereferenceable(920) %9)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i32 0, ptr %i.u, align 8, !tbaa !157
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8, !tbaa !129
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.u, ptr %i.x, align 8, !tbaa !158
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN7rocksdb13HistogramStatC1Ev(ptr noundef nonnull align 8 dereferenceable(920) %11)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i32 0, ptr %i.z, align 8, !tbaa !157
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !158
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !159
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31
          to label %bb.j unwind label %bb.g       ; 11 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !195 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %.body unwind label %bb.i      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #29
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %9, ptr %i.af, align 16, !tbaa !339
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %10, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !361
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %11, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !339
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %12, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !361
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %1, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !339
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %2, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !361
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr %3, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !339
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store ptr %4, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !361
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store ptr %5, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !339
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store ptr %6, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !361
  store ptr %i.af, ptr %13, align 8, !tbaa !196
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E9_M_invokeERKSt9_Any_dataS7_OmOjOS9_S7_SK_SC_", ptr %i.al, align 8, !tbaa !204
  store ptr @"_ZNSt17_Function_handlerIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjN7rocksdb9TraceTypeES7_mRKNS8_15BlockAccessInfoEEZNKS8_23BlockCacheTraceAnalyzer25PrintDataBlockAccessStatsEvE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr %i.ae, align 8, !tbaa !195
  invoke void @_ZNK7rocksdb23BlockCacheTraceAnalyzer14TraverseBlocksESt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmjNS_9TraceTypeES9_mRKNS_15BlockAccessInfoEEEPSt3setIS7_St4lessIS7_ESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1049088) %0, ptr noundef nonnull align 8 %13, ptr noundef null)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !195 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.k, %bb.l
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(920) %1)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ar = load ptr, ptr %14, align 8, !tbaa !45
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.215, ptr noundef %i.ar) #30 ; 0 uses
  %i.at = load ptr, ptr %14, align 8, !tbaa !45   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !46
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !129 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %.preheader114, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  br label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit39

.preheader114:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.bb) ; 0 uses
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(920) %3)
          to label %bb.z unwind label %bb.aa

bb.o:                                             ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.p:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.q:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.r:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.s:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.t:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !195 ; 2 uses
  %.not.i34 = icmp eq ptr %i.bj, null
  br i1 %.not.i34, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %.body unwind label %bb.v      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #29
  unreachable

bb.w:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %.body

_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit39: ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.sroa.0108.0115 = phi ptr [ %i.ay, %.lr.ph ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 3 uses
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i37 = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.bo) ; 0 uses
  %24 = getelementptr inbounds nuw i8, ptr %.sroa.0108.0115, i64 32
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !214
  %i.bq = load ptr, ptr %24, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0108.0115, i64 64
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(920) %i.br)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit39
  %i.bs = load ptr, ptr %15, align 8, !tbaa !45
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.216, ptr noundef %i.bq, ptr noundef %i.bs) #30 ; 0 uses
  %i.bu = load ptr, ptr %15, align 8, !tbaa !45   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ba
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.x
  %i.bw = load i64, ptr %i.ba, align 8, !tbaa !46
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.by = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0108.0115) #33 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.a
  br i1 %i.bz, label %.preheader114, label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit39

bb.y:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit39
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body

bb.z:                                             ; preds = %.preheader114
  %i.cb = load ptr, ptr %16, align 8, !tbaa !45
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.217, ptr noundef %i.cb) #30 ; 0 uses
  %i.cd = load ptr, ptr %16, align 8, !tbaa !45   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.z
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !46
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !129 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.f
  br i1 %i.cj, label %.preheader113, label %.lr.ph117

.lr.ph117:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  br label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit53

.preheader113:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.cl = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i47 = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.cl) ; 0 uses
  %i.cm = load ptr, ptr @stdout, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(920) %5)
          to label %bb.ad unwind label %bb.ae

bb.aa:                                            ; preds = %.preheader114
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %.body

_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit53: ; preds = %.lr.ph117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.sroa.0104.0116 = phi ptr [ %i.ci, %.lr.ph117 ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ] ; 3 uses
  %i.co = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i51 = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.co) ; 0 uses
  %25 = getelementptr inbounds nuw i8, ptr %.sroa.0104.0116, i64 32
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !214
  %i.cq = load ptr, ptr %25, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0104.0116, i64 64
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(920) %i.cr)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit53
  %i.cs = load ptr, ptr %17, align 8, !tbaa !45
  %i.ct = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.216, ptr noundef %i.cq, ptr noundef %i.cs) #30 ; 0 uses
  %i.cu = load ptr, ptr %17, align 8, !tbaa !45   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ck
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.ab
  %i.cw = load i64, ptr %i.ck, align 8, !tbaa !46
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.cy = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0104.0116) #33 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.f
  br i1 %i.cz, label %.preheader113, label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit53

bb.ac:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit53
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body

bb.ad:                                            ; preds = %.preheader113
  %i.db = load ptr, ptr %18, align 8, !tbaa !45
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.218, ptr noundef %i.db) #30 ; 0 uses
  %i.dd = load ptr, ptr %18, align 8, !tbaa !45   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ad
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !46
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.di = load ptr, ptr %i.m, align 8, !tbaa !129 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.k
  br i1 %i.dj, label %.preheader112, label %.lr.ph119

.lr.ph119:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  br label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit67

.preheader112:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.dl = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i61 = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.dl) ; 0 uses
  %i.dm = load ptr, ptr @stdout, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(920) %9)
          to label %bb.ah unwind label %bb.ai

bb.ae:                                            ; preds = %.preheader113
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.body

_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit67: ; preds = %.lr.ph119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.sroa.0100.0118 = phi ptr [ %i.di, %.lr.ph119 ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ] ; 3 uses
  %i.do = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i65 = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.do) ; 0 uses
  %26 = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118, i64 32
  %i.dp = load ptr, ptr @stdout, align 8, !tbaa !214
  %i.dq = load ptr, ptr %26, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118, i64 64
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(920) %i.dr)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit67
  %i.ds = load ptr, ptr %19, align 8, !tbaa !45
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.216, ptr noundef %i.dq, ptr noundef %i.ds) #30 ; 0 uses
  %i.du = load ptr, ptr %19, align 8, !tbaa !45   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dk
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.af
  %i.dw = load i64, ptr %i.dk, align 8, !tbaa !46
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.dy = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0100.0118) #33 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.k
  br i1 %i.dz, label %.preheader112, label %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit67

bb.ag:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_117print_break_linesEj.exit67
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %.body

bb.ah:                                            ; preds = %.preheader112
  %i.eb = load ptr, ptr %20, align 8, !tbaa !45
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dm, ptr noundef nonnull @.str.219, ptr noundef %i.eb) #30 ; 0 uses
  %i.ed = load ptr, ptr %20, align 8, !tbaa !45   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ah
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !46
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  %i.ei = load ptr, ptr %i.w, align 8, !tbaa !129 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.u
  br i1 %i.ej, label %.preheader, label %.lr.ph121

.lr.ph121:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ek = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  br label %bb.aj

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.el = load ptr, ptr @stdout, align 8, !tbaa !214
  %fwrite.i75 = call i64 @fwrite(ptr nonnull @_ZN7rocksdb12_GLOBAL__N_110kBreakLineE, i64 64, i64 1, ptr %i.el) ; 0 uses
  %i.em = load ptr, ptr @stdout, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(920) %11)
          to label %bb.am unwind label %bb.at

bb.ai:                                            ; preds = %.preheader112
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %.body

bb.aj:                                            ; preds = %.lr.ph121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.sroa.096.0120 = phi ptr [ %i.ei, %.lr.ph121 ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.096.0120, i64 32
  %i.ep = load ptr, ptr @stdout, align 8, !tbaa !214
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.096.0120, i64 64
  invoke void @_ZNK7rocksdb13HistogramStat8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(920) %i.er)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.es = load ptr, ptr %21, align 8, !tbaa !45
  %i.et = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.216, ptr noundef %i.eq, ptr noundef %i.es) #30 ; 0 uses
  %i.eu = load ptr, ptr %21, align 8, !tbaa !45   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ek
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.ak
  %i.ew = load i64, ptr %i.ek, align 8, !tbaa !46
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  %i.ey = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.096.0120) #33 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.u
  br i1 %i.ez, label %.preheader, label %bb.aj

bb.al:                                            ; preds = %bb.aj
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %.body

bb.am:                                            ; preds = %.preheader
  %i.fb = load ptr, ptr %22, align 8, !tbaa !45
  %i.fc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.220, ptr noundef %i.fb) #30 ; 0 uses
  %i.fd = load ptr, ptr %22, align 8, !tbaa !45   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.am
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !46
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  %i.fi = load ptr, ptr %i.ab, align 8, !tbaa !129 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.z
  br i1 %i.fj, label %._crit_edge, label %.lr.ph123

.lr.ph123:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.fk = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  br label %bb.au

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.fl = load ptr, ptr %i.aa, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb13HistogramStatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.fl)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %._crit_edge
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.fo = load ptr, ptr %i.v, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb13HistogramStatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.fo)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit84 unwind label %bb.ao

bb.ao:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit84: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.fr = load ptr, ptr %i.q, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb13HistogramStatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.fr)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit85 unwind label %bb.ap

bb.ap:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit84
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit85: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit84
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.fu = load ptr, ptr %i.l, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb13HistogramStatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.fu)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit86 unwind label %bb.aq

bb.aq:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit85
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit86: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.fx = load ptr, ptr %i.g, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb13HistogramStatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.fx)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit87 unwind label %bb.ar

bb.ar:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit86
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit87: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb13HistogramStatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
end_hunk_2
