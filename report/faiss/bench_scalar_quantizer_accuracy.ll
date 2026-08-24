Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/bench_scalar_quantizer_accuracy?download=true
inline.NumInlined: 384
inline.NumDeleted: 248
begin_hunk_0_@main:bb.a
  br i1 %i.w, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !26

.noexc11.i:                                       ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #19
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #20
          to label %.noexc15 unwind label %.loopexit ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.x, ptr %4, align 8, !tbaa !21
  store i64 %i.s, ptr %i.k, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc15, %bb.d
  %i.y = phi ptr [ %i.x, %.noexc15 ], [ %i.k, %bb.d ] ; 3 uses
  switch i64 %i.s, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.q, align 1, !tbaa !27
  store i8 %i.z, ptr %i.y, align 1, !tbaa !27
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  store i64 %i.s, ptr %i.l, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.aa, align 1, !tbaa !27
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ac = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #20
          to label %.noexc16 unwind label %bb.o   ; 8 uses

.noexc16:                                         ; preds = %bb.i
  invoke void @_ZN9benchmark9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(328) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEN5faiss15ScalarQuantizer13QuantizerTypeEiiEJRS8_RiSC_EEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSM_SS_EENSt8__detail9_MakeUniqISN_E15__single_objectESR_.exit.i.i unwind label %bb.j, !noalias !31

bb.j:                                             ; preds = %.noexc16
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 328) #21, !noalias !31
  br label %.body

_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEN5faiss15ScalarQuantizer13QuantizerTypeEiiEJRS8_RiSC_EEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSM_SS_EENSt8__detail9_MakeUniqISN_E15__single_objectESR_.exit.i.i: ; preds = %.noexc16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal15LambdaBenchmarkIZNS_17RegisterBenchmarkIRFvRNS_5StateEN5faiss15ScalarQuantizer13QuantizerTypeEiiEJRS7_RiSB_EEEPNS_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS4_E_EE, i64 16), ptr %i.ac, align 8, !tbaa !34, !noalias !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 304
  store ptr @_ZL26bench_reconstruction_errorRN9benchmark5StateEN5faiss15ScalarQuantizer13QuantizerTypeEii, ptr %i.ae, align 8, !tbaa !36, !noalias !31
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 312
  store i32 %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !29, !noalias !31
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 316
  store i32 %i.e, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !10, !noalias !31
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 320
  store i32 %i.f, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !10, !noalias !31
  store ptr %i.ac, ptr %2, align 8, !tbaa !37
  %i.af = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalESt10unique_ptrINS_9BenchmarkESt14default_deleteIS2_EE(ptr noundef nonnull align 8 %2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEN5faiss15ScalarQuantizer13QuantizerTypeEiiEJRS8_RiSC_EEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSM_SS_EENSt8__detail9_MakeUniqISN_E15__single_objectESR_.exit.i.i
  %i.ag = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.m, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i: ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(304) %i.ag) #18, !inline_history !41
  br label %bb.m

bb.l:                                             ; preds = %_ZSt11make_uniqueIN9benchmark8internal15LambdaBenchmarkIZNS0_17RegisterBenchmarkIRFvRNS0_5StateEN5faiss15ScalarQuantizer13QuantizerTypeEiiEJRS8_RiSC_EEEPNS0_9BenchmarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_DpOT0_EUlS5_E_EEJSM_SS_EENSt8__detail9_MakeUniqISN_E15__single_objectESR_.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !40    ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i4.i.i, label %.body, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i: ; preds = %bb.l
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(304) %i.al) #18, !inline_history !41
  br label %.body

bb.m:                                             ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ap = invoke noundef ptr @_ZN9benchmark9Benchmark10IterationsEl(ptr noundef nonnull align 8 dereferenceable(304) %i.af, i64 noundef %i.m)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.k
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.as = load i64, ptr %i.k, align 8, !tbaa !27
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.au = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.021.036) #22 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.i
  br i1 %i.av, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

.loopexit.split-lp:                               ; preds = %bb.c, %.noexc.i, %.noexc11.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.o:                                             ; preds = %bb.i, %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.l, %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.ad, %bb.j ], [ %i.ak, %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i5.i.i ], [ %i.ak, %bb.l ] ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.k
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.body
  %i.az = load i64, ptr %i.k, align 8, !tbaa !27
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %.body, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.t

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZN9benchmark8ShutdownEv()
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5faiss15ScalarQuantizer13QuantizerTypeEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.bc)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5faiss15ScalarQuantizer13QuantizerTypeESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5faiss15ScalarQuantizer13QuantizerTypeESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 0

bb.s:                                             ; preds = %bb.p, %._crit_edge
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.bf, %bb.s ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5faiss15ScalarQuantizer13QuantizerTypeESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN9benchmark16PrintDefaultHelpEv() #0

declare void @_ZN6google25AllowCommandLineReparsingEv() local_unnamed_addr #0

declare noundef i32 @_ZN6google21ParseCommandLineFlagsEPiPPPcb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN5faiss10perf_tests8sq_typesB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map") align 8) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal void @_ZL26bench_reconstruction_errorRN9benchmark5StateEN5faiss15ScalarQuantizer13QuantizerTypeEii(ptr noundef nonnull align 64 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.faiss::ScalarQuantizer", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = mul nsw i32 %3, %2                       ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 8 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc70

.noexc70:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #20 ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !43
  %i.g = add nsw i64 %i.b, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc70
  %i.i = getelementptr i8, ptr %i.e, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !43
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc70, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13198.0 = phi ptr [ %i.f, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.f, %.noexc70 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0191.0 = phi ptr [ %i.e, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.e, %.noexc70 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  invoke void @_ZN5faiss10float_randEPfml(ptr noundef %.sroa.0191.0, i64 noundef %i.b, i64 noundef 12345)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.j = sext i32 %2 to i64
  invoke void @_ZN5faiss15ScalarQuantizerC1EmNS0_13QuantizerTypeE(ptr noundef nonnull align 8 dereferenceable(160) %4, i64 noundef %i.j, i32 noundef %1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %3 to i64                       ; 5 uses
  invoke void @_ZN5faiss15ScalarQuantizer5trainEmPKf(ptr noundef nonnull align 8 dereferenceable(160) %4, i64 noundef %i.k, ptr noundef %.sroa.0191.0)
          to label %._crit_edge.i.i unwind label %bb.o

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.o, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9, ptr %i.p, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 0, ptr %i.q, align 1, !tbaa !27
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.p       ; 3 uses

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = uitofp i64 %i.m to double
  store double %i.s, ptr %i.r, align 8, !tbaa !47
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 0, ptr %.sroa.5188.0..sroa_idx, align 8, !tbaa !49
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1000, ptr %.sroa.6189.0..sroa_idx, align 4, !tbaa !51
  %i.t = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.o, align 8, !tbaa !27
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.x = mul i64 %i.m, %i.k                       ; 8 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
          to label %.noexc76 unwind label %bb.q

.noexc76:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i74 = icmp eq i64 %i.x, 0           ; 2 uses
  br i1 %.not.i.i.i.i74, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20
          to label %.noexc77 unwind label %bb.q   ; 5 uses

.noexc77:                                         ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.x    ; 3 uses
  store i8 0, ptr %i.z, align 1, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ac = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc77
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.g, %.noexc77, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0177.0 = phi ptr [ %i.z, %bb.g ], [ %i.z, %.noexc77 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.16.0 = phi ptr [ %i.aa, %bb.g ], [ %i.aa, %.noexc77 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.0.i.i.i.i.i75 = phi ptr [ %i.aa, %bb.g ], [ %i.ab, %.noexc77 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  invoke void @_ZNK5faiss15ScalarQuantizer13compute_codesEPKfPhm(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef %.sroa.0191.0, ptr noundef %.sroa.0177.0, i64 noundef %i.k)
          to label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78 unwind label %bb.r

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit86, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78
  %i.ae = shl nuw nsw i64 %i.b, 2
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #20
          to label %.noexc85 unwind label %bb.s   ; 5 uses

.noexc85:                                         ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.b ; 2 uses
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !43
  %i.ah = add nsw i64 %i.b, -1                    ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit86, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i80

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i80: ; preds = %.noexc85
  %i.aj = getelementptr i8, ptr %i.af, i64 4
  %.idx.i.i.i.i.i.i.i81 = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i81, i1 false), !tbaa !43
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit86

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit86:             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i80, %.noexc85, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78
  %.sroa.0169.0 = phi ptr [ %i.af, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i80 ], [ %i.af, %.noexc85 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78 ] ; 9 uses
  %.sroa.12.0 = phi ptr [ %i.ag, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i80 ], [ %i.ag, %.noexc85 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i78 ] ; 2 uses
  invoke void @_ZNK5faiss15ScalarQuantizer6decodeEPKhPfm(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef %.sroa.0177.0, ptr noundef %.sroa.0169.0, i64 noundef %i.k)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit86
  %i.ak = invoke noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef %.sroa.0191.0, ptr noundef %.sroa.0169.0, i64 noundef %i.b)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i88 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i88: ; preds = %bb.i
  %i.al = sitofp i32 %3 to float
  %i.am = fdiv float %i.ak, %i.al
  %i.an = fpext float %i.am to double
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ap = invoke noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #20
          to label %.noexc93 unwind label %bb.v   ; 3 uses

.noexc93:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i88
  store ptr %i.ap, ptr %6, align 8, !tbaa !21
  store i64 17, ptr %i.ao, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ap, ptr noundef nonnull align 1 dereferenceable(17) @.str.11, i64 17, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 17, ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 17
  store i8 0, ptr %i.ar, align 1, !tbaa !27
  %i.as = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.w       ; 3 uses

bb.j:                                             ; preds = %.noexc93
  store double %i.an, ptr %i.as, align 8, !tbaa !47
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 0, ptr %.sroa.5166.0..sroa_idx, align 8, !tbaa !49
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 1000, ptr %.sroa.6167.0..sroa_idx, align 4, !tbaa !51
  %i.at = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ao
  br i1 %i.au, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.j
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #21
  br label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i98

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i98: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %.not.i.i.i.i74, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit104, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i98
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20
          to label %.noexc103 unwind label %bb.x  ; 5 uses

.noexc103:                                        ; preds = %bb.k
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.x   ; 2 uses
  store i8 0, ptr %i.ax, align 1, !tbaa !27
  %i.az = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit104, label %bb.l

bb.l:                                             ; preds = %.noexc103
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bb, i8 0, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit104

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit104:            ; preds = %bb.l, %.noexc103, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i98
  %.sroa.0159.0 = phi ptr [ %i.ax, %bb.l ], [ %i.ax, %.noexc103 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i98 ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.ay, %bb.l ], [ %i.ay, %.noexc103 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i98 ] ; 2 uses
  invoke void @_ZNK5faiss15ScalarQuantizer13compute_codesEPKfPhm(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef %.sroa.0169.0, ptr noundef %.sroa.0159.0, i64 noundef %i.k)
          to label %.preheader unwind label %bb.y

.preheader:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit104
  %i.bc = ptrtoint ptr %.0.i.i.i.i.i75 to i64
  %i.bd = ptrtoint ptr %.sroa.0177.0 to i64       ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 5 uses
  %.not205 = icmp eq ptr %.0.i.i.i.i.i75, %.sroa.0177.0
  br i1 %.not205, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i106, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.be, 4
  br i1 %min.iters.check, label %.lr.ph.preheader234, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.be, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi230 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0177.0, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %wide.load = load <2 x i8>, ptr %i.bf, align 1, !tbaa !27
  %wide.load231 = load <2 x i8>, ptr %i.bg, align 1, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0159.0, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %wide.load232 = load <2 x i8>, ptr %i.bh, align 1, !tbaa !27
  %wide.load233 = load <2 x i8>, ptr %i.bi, align 1, !tbaa !27
  %i.bj = icmp ne <2 x i8> %wide.load, %wide.load232
  %i.bk = icmp ne <2 x i8> %wide.load231, %wide.load233
  %i.bl = zext <2 x i1> %i.bj to <2 x i64>
  %i.bm = zext <2 x i1> %i.bk to <2 x i64>
  %i.bn = add <2 x i64> %vec.phi, %i.bl           ; 2 uses
  %i.bo = add <2 x i64> %vec.phi230, %i.bm        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bo, %i.bn
  %i.bq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i106.loopexit, label %.lr.ph.preheader234

.lr.ph.preheader234:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0202.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.030201.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i106.loopexit: ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %i.bq, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.br = uitofp i64 %spec.select.lcssa to double
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i106.loopexit, %.preheader
  %.030.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i106.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bt = invoke noalias noundef nonnull dereferenceable(22) ptr @_Znwm(i64 noundef 22) #20
          to label %.noexc111 unwind label %bb.ai ; 3 uses

.noexc111:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i106
  store ptr %i.bt, ptr %7, align 8, !tbaa !21
  store i64 21, ptr %i.bs, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bt, ptr noundef nonnull align 1 dereferenceable(21) @.str.12, i64 21, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 21, ptr %i.bu, align 8, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 21
  store i8 0, ptr %i.bv, align 1, !tbaa !27
  %i.bw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.z unwind label %bb.aj      ; 3 uses

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.n:                                             ; preds = %bb.b
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.o:                                             ; preds = %bb.c
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit150

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.o
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.p
  %i.cd = load i64, ptr %i.o, align 8, !tbaa !27
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit150

bb.q:                                             ; preds = %bb.f, %bb.e
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit150

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit148

bb.s:                                             ; preds = %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit148

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit86
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit146

bb.u:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit146

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i88
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.w:                                             ; preds = %.noexc93
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ao
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.w
  %i.co = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.v
  %.pn51 = phi { ptr, i32 } [ %i.ck, %bb.v ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.cl, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit146

bb.x:                                             ; preds = %bb.k
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit146

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit104
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph:                                           ; preds = %.lr.ph.preheader234, %.lr.ph
  %.0202 = phi i64 [ %i.cx, %.lr.ph ], [ %.0202.ph, %.lr.ph.preheader234 ] ; 3 uses
  %.030201 = phi i64 [ %spec.select, %.lr.ph ], [ %.030201.ph, %.lr.ph.preheader234 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0177.0, i64 %.0202
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0159.0, i64 %.0202
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !27
  %.not = icmp ne i8 %i.ct, %i.cv
  %i.cw = zext i1 %.not to i64
  %spec.select = add i64 %.030201, %i.cw          ; 2 uses
  %i.cx = add nuw i64 %.0202, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %i.be
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i106.loopexit, label %.lr.ph, !llvm.loop !57

bb.z:                                             ; preds = %.noexc111
  store double %.030.lcssa, ptr %i.bw, align 8, !tbaa !47
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 0, ptr %.sroa.5156.0..sroa_idx, align 8, !tbaa !49
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 1000, ptr %.sroa.6157.0..sroa_idx, align 4, !tbaa !51
  %i.cy = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bs
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.z
  %i.da = load i64, ptr %i.bs, align 8, !tbaa !27
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.dc, ptr %8, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.dc, ptr noundef nonnull align 1 dereferenceable(13) @.str.13, i64 13, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 13, ptr %i.dd, align 8, !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 29
  store i8 0, ptr %i.de, align 1, !tbaa !27
  %i.df = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.aa unwind label %bb.ak     ; 3 uses

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.dg = uitofp i64 %i.be to double
  store double %i.dg, ptr %i.df, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !49
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 1000, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !51
  %i.dh = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.dc
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.aa
  %i.dj = load i64, ptr %i.dc, align 8, !tbaa !27
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.not.i.i.i = icmp eq ptr %.sroa.0159.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.dl = ptrtoint ptr %.sroa.11.0 to i64
  %i.dm = ptrtoint ptr %.sroa.0159.0 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.0, i64 noundef %i.dn) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.ab
  %.not.i.i.i133 = icmp eq ptr %.sroa.0169.0, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.do = ptrtoint ptr %.sroa.12.0 to i64
  %i.dp = ptrtoint ptr %.sroa.0169.0 to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0, i64 noundef %i.dq) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.ac
  %.not.i.i.i134 = icmp eq ptr %.sroa.0177.0, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIhSaIhEED2Ev.exit135, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.dr = ptrtoint ptr %.sroa.16.0 to i64
  %i.ds = sub i64 %i.dr, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.0, i64 noundef %i.ds) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit135

_ZNSt6vectorIhSaIhEED2Ev.exit135:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.ad
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss15ScalarQuantizerE, i64 16), ptr %4, align 8, !tbaa !34
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 120
end_hunk_0
