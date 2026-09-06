Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark_register?download=true
inline.NumInlined: 5083
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN9benchmark8internal8AddRangeIlEEvPSt6vectorIT_SaIS3_EES3_S3_i:bb.a

bb.ag:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr align 8 %i.ck, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i27

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i27: ; preds = %bb.ag, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.not.i17.i.i28 = icmp eq ptr %i.ck, null
  br i1 %.not.i17.i.i28, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i29, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i27
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.db) #34
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i29

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i29: ; preds = %bb.ah, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i27
  store ptr %i.cv, ptr %0, align 8, !tbaa !92
  store ptr %i.cy, ptr %i.g, align 8, !tbaa !91
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.dc, ptr %i.i, align 8, !tbaa !93
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit21

_ZNSt6vectorIlSaIlEE9push_backERKl.exit21:        ; preds = %bb.ab, %bb.ad, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i29, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i20, %bb.m, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN9benchmark9Benchmark6RangesERKSt6vectorISt4pairIllESaIS3_EE(ptr noundef nonnull returned align 8 dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.15", align 8    ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !474  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !475    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4                   ; 3 uses
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #35
  unreachable

_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge

bb.d:                                             ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.l = mul nuw nsw i64 %i.j, 24                 ; 3 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36 ; 7 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.j ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.m, i64 %i.l ; 3 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !474
  %.pre18 = load ptr, ptr %1, align 8, !tbaa !475 ; 2 uses
  %i.o = icmp eq ptr %.pre, %.pre18
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.n, ptr %i.q, align 8, !tbaa !132
  store ptr %scevgep.i.i.i.i.i, ptr %i.p, align 8, !tbaa !95
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.e

._crit_edge:                                      ; preds = %bb.f, %.thread, %bb.d
  %i.s = phi ptr [ null, %.thread ], [ %scevgep.i.i.i.i.i, %bb.d ], [ %scevgep.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.t = phi ptr [ null, %.thread ], [ %i.n, %bb.d ], [ %i.n, %bb.f ]
  %.pr.i28 = phi ptr [ null, %.thread ], [ %i.m, %bb.d ], [ %i.m, %bb.f ] ; 5 uses
  %i.u = invoke noundef ptr @_ZN9benchmark9Benchmark11ArgsProductERKSt6vectorIS1_IlSaIlEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.v = phi ptr [ %.pre18, %.lr.ph ], [ %i.ae, %bb.f ]
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.017
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.017 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !477
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !478
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !163
  invoke void @_ZN9benchmark8internal8AddRangeIlEEvPSt6vectorIT_SaIS3_EES3_S3_i(ptr noundef nonnull %i.w, i64 noundef %i.y, i64 noundef %i.aa, i32 noundef %i.ab)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = add nuw i64 %.017, 1                    ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !474
  %i.ae = load ptr, ptr %1, align 8, !tbaa !475   ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %i.ac, %i.ai
  br i1 %i.aj, label %bb.e, label %._crit_edge, !llvm.loop !471

bb.g:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %._crit_edge
  %.not4.i.i.i = icmp eq ptr %.pr.i28, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i ], [ %.pr.i28, %bb.h ] ; 3 uses
  %i.al = load ptr, ptr %.05.i.i.i, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !93
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #34
  br label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i:  ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i, %bb.h
  %.not.i.i1.i = icmp eq ptr %.pr.i28, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i
  %i.as = ptrtoint ptr %i.t to i64
  %i.at = ptrtoint ptr %.pr.i28 to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i28, i64 noundef %i.au) #34
  br label %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0

bb.k:                                             ; preds = %._crit_edge
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.av, %bb.k ]
  call void @_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN9benchmark9Benchmark11ArgsProductERKSt6vectorIS1_IlSaIlEESaIS3_EE(ptr noundef nonnull returned align 8 dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.28", align 8    ; 15 uses
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24                  ; 4 uses
  %3 = icmp ugt i64 %i.j, 1152921504606846975
  br i1 %3, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #35
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %.noexc35

.noexc35:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #36 ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !135
  %i.n = add nsw i64 %i.j, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc35
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !135
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc35, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi ptr [ %i.m, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc35 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.052.0 = phi ptr [ %i.l, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc35 ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !86     ; 4 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !86   ; 4 uses
  %.not6.i = icmp eq ptr %i.q, %i.r
  br i1 %.not6.i, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIlSaIlEES2_IS4_SaIS4_EEEEmZN9benchmark9Benchmark11ArgsProductERKS8_E3$_0ET0_T_SG_SF_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, %.lr.ph.i
  %.08.i = phi i64 [ %i.x, %.lr.ph.i ], [ 1, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ]
  %.sroa.03.07.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.q, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 3 uses
  %.val.i = load ptr, ptr %.sroa.03.07.i, align 8, !tbaa !92
  %i.s = getelementptr i8, ptr %.sroa.03.07.i, i64 8
  %.val2.i = load ptr, ptr %i.s, align 8, !tbaa !91
  %i.t = ptrtoint ptr %.val2.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = mul i64 %i.w, %.08.i                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 24 ; 2 uses
  %.not.i36 = icmp eq ptr %i.y, %i.r
  br i1 %.not.i36, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIlSaIlEES2_IS4_SaIS4_EEEEmZN9benchmark9Benchmark11ArgsProductERKS8_E3$_0ET0_T_SG_SF_T1_.exit", label %.lr.ph.i, !llvm.loop !479

"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIlSaIlEES2_IS4_SaIS4_EEEEmZN9benchmark9Benchmark11ArgsProductERKS8_E3$_0ET0_T_SG_SF_T1_.exit": ; preds = %.lr.ph.i, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %.0.lcssa.i = phi i64 [ 1, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ %i.x, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.z = ptrtoint ptr %i.r to i64
  %i.aa = ptrtoint ptr %i.q to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 24                ; 3 uses
  %4 = icmp ugt i64 %i.ac, 1152921504606846975
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIlSaIlEES2_IS4_SaIS4_EEEEmZN9benchmark9Benchmark11ArgsProductERKS8_E3$_0ET0_T_SG_SF_T1_.exit"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.181) #35
          to label %.noexc37 unwind label %bb.j

.noexc37:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIlSaIlEES2_IS4_SaIS4_EEEEmZN9benchmark9Benchmark11ArgsProductERKS8_E3$_0ET0_T_SG_SF_T1_.exit"
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %.not95 = icmp eq ptr %i.r, %i.q
  br i1 %.not95, label %_ZNSt6vectorIlSaIlEE7reserveEm.exit, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.af = shl nuw nsw i64 %i.ac, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #36
          to label %.noexc38 unwind label %bb.j   ; 5 uses

.noexc38:                                         ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.ah = load ptr, ptr %2, align 8, !tbaa !92    ; 4 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !91
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %bb.f, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.f:                                             ; preds = %.noexc38
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.ah, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.f, %.noexc38
  %.not.i8.i = icmp eq ptr %i.ah, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !93
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ap) #34
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i: ; preds = %bb.g, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  store ptr %i.ag, ptr %2, align 8, !tbaa !92
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ac
  store ptr %i.aq, ptr %i.ad, align 8, !tbaa !93
  br label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

_ZNSt6vectorIlSaIlEE7reserveEm.exit:              ; preds = %bb.e, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i
  %i.ar = phi ptr [ null, %bb.e ], [ %i.ag, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i ] ; 3 uses
  %.not = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not, label %._crit_edge66, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load ptr, ptr %1, align 8, !tbaa !96
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.aw = phi ptr [ %i.ar, %.preheader.lr.ph ], [ %i.dw, %.critedge ] ; 2 uses
  %i.ax = phi ptr [ %i.ar, %.preheader.lr.ph ], [ %i.dy, %.critedge ] ; 2 uses
  %i.ay = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.dz, %.critedge ] ; 2 uses
  %.02465 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.eu, %.critedge ]
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !95
  %.not67 = icmp eq ptr %i.az, %i.ay
  br i1 %.not67, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre68 = load ptr, ptr %i.ad, align 8, !tbaa !93
  br label %.lr.ph

._crit_edge66:                                    ; preds = %.critedge, %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.ba = phi ptr [ %i.ar, %_ZNSt6vectorIlSaIlEE7reserveEm.exit ], [ %i.dw, %.critedge ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge66
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !93
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #34
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge66, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.not.i.i.i39 = icmp eq ptr %.sroa.052.0, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.bf = ptrtoint ptr %.sroa.13.0 to i64
  %i.bg = ptrtoint ptr %.sroa.052.0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.052.0, i64 noundef %i.bh) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.i
  ret ptr %0

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %.preheader
  %i.bj = phi ptr [ %i.aw, %.preheader ], [ %i.dm, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 2 uses
  %i.bk = phi ptr [ %i.ax, %.preheader ], [ %i.do, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 2 uses
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !95 ; 6 uses
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !132
  %.not.i40 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i40, label %bb.p, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bj to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i.i.i.i.i, label %.noexc42, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp ugt i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i, !prof !130

.noexc.i.i.i:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc41 unwind label %.loopexit.split-lp60

.noexc41:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #36
          to label %.noexc42 unwind label %.loopexit59

.noexc42:                                         ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i, %bb.k
  %i.bs = phi ptr [ null, %bb.k ], [ %i.br, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.bs, ptr %i.bl, align 8, !tbaa !92
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !93
  %i.bw = load ptr, ptr %2, align 8, !tbaa !133   ; 4 uses
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !133
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp sgt i64 %i.ca, 8
  br i1 %i.cb, label %bb.m, label %bb.n, !prof !134

bb.m:                                             ; preds = %.noexc42
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bs, ptr align 8 %i.bw, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.i

bb.n:                                             ; preds = %.noexc42
  %i.cc = icmp eq i64 %i.ca, 8
  br i1 %i.cc, label %bb.o, label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cd = load i64, ptr %i.bw, align 8, !tbaa !135
  store i64 %i.cd, ptr %i.bs, align 8, !tbaa !135
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.i

_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.i:              ; preds = %bb.o, %bb.n, %bb.m
  %i.ce = getelementptr inbounds i8, ptr %i.bs, i64 %i.ca
  store ptr %i.ce, ptr %i.bt, align 8, !tbaa !91
  %i.cf = load ptr, ptr %i.at, align 8, !tbaa !95
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.cg, ptr %i.at, align 8, !tbaa !95
  br label %_ZNSt6vectorIS_IlSaIlEESaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %._ZNSt6vectorIS_IlSaIlEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %.loopexit59

._ZNSt6vectorIS_IlSaIlEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.p
  %.pre70 = load ptr, ptr %2, align 8, !tbaa !92
  br label %_ZNSt6vectorIS_IlSaIlEESaIS1_EE9push_backERKS1_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.ch = phi ptr [ %i.dl, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ %i.ay, %.lr.ph.preheader ] ; 2 uses
  %i.ci = phi ptr [ %i.dm, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ %i.aw, %.lr.ph.preheader ] ; 5 uses
  %i.cj = phi ptr [ %i.dn, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ %.pre68, %.lr.ph.preheader ] ; 3 uses
  %i.ck = phi ptr [ %i.do, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ %i.ax, %.lr.ph.preheader ] ; 3 uses
  %.02364 = phi i64 [ %i.dp, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %.02364
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.052.0, i64 %.02364
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !135
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !92
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %.not.i44 = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i44, label %bb.r, label %bb.q

end_hunk_0
begin_hunk_1_@_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.o, align 8, !tbaa !61
  store i8 0, ptr %i.n, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.r = load i32, ptr %i.q, align 4, !tbaa !236
  %i.s = and i32 %i.r, 16
  %.not = icmp eq i32 %i.s, 0
  %.elt = select i1 %.not, i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE19_M_eat_escape_posixEv to i64), i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE18_M_eat_escape_ecmaEv to i64)
  store i64 %.elt, ptr %i.p, align 8, !tbaa !237
  %.repack5 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.repack5, align 8, !tbaa !237
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !223
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 27, ptr %i.w, align 8, !tbaa !221
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.d:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !224
  switch i32 %i.y, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit:    ; preds = %bb.d, %bb.c, %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !76  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !62
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !238  ; 4 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !238
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !239
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !241    ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #36 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store i64 %i.b, ptr %i.u, align 8, !tbaa !135
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !240
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !241
  store ptr %i.w, ptr %i.d, align 8, !tbaa !239
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !240
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store i32 8, ptr %1, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.ab, align 8, !tbaa !220
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.b, ptr %i.ac, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !243
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !244 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !245
  %.not.i.i.i2 = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i.i.i2, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.ai = load i32, ptr %2, align 8, !tbaa !232
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.h, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 24, i1 false)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !247
  store ptr %i.an, ptr %i.al, align 8, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.i, %bb.h, %bb.g
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !244
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  store ptr %i.at, ptr %i.ae, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr %i.af, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.au = phi ptr [ %i.at, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !217
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %3 = sdiv exact i64 %i.ay, 48                   ; 2 uses
  %i.az = icmp ugt i64 %3, 100000
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ba = load i32, ptr %2, align 8, !tbaa !232
  %i.bb = icmp eq i32 %i.ba, 11
  br i1 %i.bb, label %bb.m, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !124 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.l, %bb.m, %bb.n
  %i.bi = load i32, ptr %1, align 8, !tbaa !232
  %i.bj = icmp eq i32 %i.bi, 11
  br i1 %i.bj, label %bb.p, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.p:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !124 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i4, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit5 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.p, %bb.q
  %i.bp = add nsw i64 %3, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i64 %i.bp

bb.s:                                             ; preds = %bb.k, %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #33
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.bq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !221
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %.lr.ph, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !222
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.i, align 8, !tbaa !224
  switch i32 %i.u, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !225, !noalias !529 ; 4 uses
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !226, !noalias !529 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 -24 ; 2 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !248
  %.sroa.512.0..sroa_idx = getelementptr inbounds i8, ptr %i.v, i64 -16
  %.sroa.512.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !tbaa !135
  %.sroa.615.0..sroa_idx = getelementptr inbounds i8, ptr %i.v, i64 -8
  %.sroa.615.0.copyload = load i64, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !135
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.j:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !227, !noalias !529
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !228, !noalias !530 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 480
  %.sroa.010.0.copyload11 = load ptr, ptr %i.ac, align 8, !tbaa !248
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ab, i64 488
  %.sroa.512.0.copyload14 = load i64, ptr %.sroa.512.0..sroa_idx13, align 8, !tbaa !135
  %.sroa.615.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ab, i64 496
  %.sroa.615.0.copyload17 = load i64, ptr %.sroa.615.0..sroa_idx16, align 8, !tbaa !135
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef 504) #34, !noalias !530
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !229, !noalias !530
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !227, !noalias !530
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !228, !noalias !530 ; 3 uses
  store ptr %i.af, ptr %i.k, align 8, !tbaa !226, !noalias !530
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 504
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !230, !noalias !530
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.i, %bb.j
  %.sroa.615.0 = phi i64 [ %.sroa.615.0.copyload17, %bb.j ], [ %.sroa.615.0.copyload, %bb.i ]
  %.sroa.512.0 = phi i64 [ %.sroa.512.0.copyload14, %bb.j ], [ %.sroa.512.0.copyload, %bb.i ]
  %.sroa.010.0 = phi ptr [ %.sroa.010.0.copyload11, %bb.j ], [ %.sroa.010.0.copyload, %bb.i ]
  %storemerge.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %i.y, %bb.i ]
  store ptr %storemerge.i.i.i, ptr %i.j, align 8, !tbaa !231, !noalias !530
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !225, !noalias !531 ; 4 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !226, !noalias !531 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -24 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.al, align 8, !tbaa !248
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !135
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !135
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4

bb.l:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !227, !noalias !531
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !228, !noalias !532 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 480
  %.sroa.0.0.copyload5 = load ptr, ptr %i.ap, align 8, !tbaa !248
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ao, i64 488
  %.sroa.5.0.copyload7 = load i64, ptr %.sroa.5.0..sroa_idx6, align 8, !tbaa !135
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ao, i64 496
  %.sroa.6.0.copyload9 = load i64, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !135
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef 504) #34, !noalias !532
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !229, !noalias !532
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8 ; 2 uses
  store ptr %i.ar, ptr %i.l, align 8, !tbaa !227, !noalias !532
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !228, !noalias !532 ; 3 uses
  store ptr %i.as, ptr %i.k, align 8, !tbaa !226, !noalias !532
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  store ptr %i.at, ptr %i.m, align 8, !tbaa !230, !noalias !532
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4: ; preds = %bb.k, %bb.l
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload9, %bb.l ], [ %.sroa.6.0.copyload, %bb.k ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload7, %bb.l ], [ %.sroa.5.0.copyload, %bb.k ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload5, %bb.l ], [ %.sroa.0.0.copyload, %bb.k ]
  %storemerge.i.i.i3 = phi ptr [ %i.au, %bb.l ], [ %i.al, %bb.k ]
  store ptr %storemerge.i.i.i3, ptr %i.j, align 8, !tbaa !231, !noalias !532
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !199
  %i.aw = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !217
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.sroa.615.0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !220
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !217
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %.sroa.6.0
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !199 ; 2 uses
  %i.bg = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE13_M_insert_altEllb(ptr noundef nonnull align 8 dereferenceable(88) %i.bf, i64 noundef %.sroa.5.0, i64 noundef %.sroa.512.0, i1 noundef zeroext false)
  store ptr %i.bf, ptr %1, align 8, !tbaa !248
  store i64 %i.bg, ptr %i.o, align 8, !tbaa !250
  store i64 %i.aw, ptr %i.p, align 8, !tbaa !251
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !231 ; 2 uses
  %i.bi = load ptr, ptr %i.m, align 8, !tbaa !252
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !253
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bl, ptr %i.j, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit4
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.bm = load i32, ptr %i.b, align 8, !tbaa !221
  %i.bn = icmp eq i32 %i.bm, 19
  br i1 %i.bn, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, !llvm.loop !528

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !221
  %i.d = icmp eq i32 %1, %i.c                     ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !222
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !224
  switch i32 %i.m, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit:    ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret i1 %i.d
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE21_M_insert_subexpr_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store i32 9, ptr %1, align 8, !tbaa !232
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !62
  store ptr %i.d, ptr %i.b, align 8, !tbaa !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !243
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !244  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.l = load i32, ptr %2, align 8, !tbaa !232
  %i.m = icmp eq i32 %i.l, 11
  br i1 %i.m, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !247
  store ptr %i.q, ptr %i.o, align 8, !tbaa !247
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  store ptr %i.s, ptr %i.t, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !244
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.x = phi ptr [ %i.w, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !217
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %3 = sdiv exact i64 %i.ab, 48                   ; 2 uses
  %i.ac = icmp ugt i64 %3, 100000
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc2 unwind label %bb.m

.noexc2:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ad = load i32, ptr %2, align 8, !tbaa !232
  %i.ae = icmp eq i32 %i.ad, 11
  br i1 %i.ae, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !124 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.al = load i32, ptr %1, align 8, !tbaa !232
  %i.am = icmp eq i32 %i.al, 11
  br i1 %i.am, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit4

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !124 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i3, label %_ZNSt8__detail6_StateIcED2Ev.exit4, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit4 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit4:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.as = add nsw i64 %3, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i64 %i.as

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #33
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_acceptEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 12, ptr %1, align 8, !tbaa !232
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !244  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !243
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %2 = sdiv exact i64 %i.l, 48                    ; 2 uses
  %i.m = icmp ugt i64 %2, 100000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !232
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = add nsw i64 %2, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #33
  resume { ptr, i32 } %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !229  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !228
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 504) #34
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, !llvm.loop !8

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !233
  br label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i: ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !235
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #34
  br label %_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit

_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !129
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !7
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #33 ; 3 uses
  invoke void @_ZNSt11regex_errorC2ENSt15regex_constants10error_typeEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %0, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11regex_error, ptr nonnull @_ZNSt11regex_errorD1Ev) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11regex_errorC2ENSt15regex_constants10error_typeEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt11regex_error, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !538
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11regex_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #18

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #21

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail12_ScannerBaseC2ENSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  store i8 94, ptr %0, align 8, !tbaa !255
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.a, align 4, !tbaa !256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 36, ptr %i.b, align 8, !tbaa !255
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 23, ptr %i.c, align 4, !tbaa !256
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 46, ptr %i.d, align 8, !tbaa !255
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !256
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 42, ptr %i.f, align 8, !tbaa !255
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.g, align 4, !tbaa !256
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 43, ptr %i.h, align 8, !tbaa !255
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 21, ptr %i.i, align 4, !tbaa !256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 63, ptr %i.j, align 8, !tbaa !255
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 18, ptr %i.k, align 4, !tbaa !256
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 124, ptr %i.l, align 8, !tbaa !255
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 19, ptr %i.m, align 4, !tbaa !256
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 10, ptr %i.n, align 8, !tbaa !255
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 19, ptr %i.o, align 4, !tbaa !256
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.p, align 8, !tbaa !255
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 19, ptr %i.q, align 4, !tbaa !256
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store <16 x i8> <i8 48, i8 0, i8 98, i8 8, i8 102, i8 12, i8 110, i8 10, i8 114, i8 13, i8 116, i8 9, i8 118, i8 11, i8 0, i8 0>, ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store <16 x i8> <i8 34, i8 34, i8 47, i8 47, i8 92, i8 92, i8 97, i8 7, i8 98, i8 8, i8 102, i8 12, i8 110, i8 10, i8 114, i8 13>, ptr %i.s, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i8> <i8 116, i8 9, i8 118, i8 11>, ptr %i.t, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 0, ptr %i.u, align 4, !tbaa !258
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.v, align 1, !tbaa !259
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.12, ptr %i.w, align 8, !tbaa !539
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @.str.13, ptr %i.x, align 8, !tbaa !540
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @.str.14, ptr %i.y, align 8, !tbaa !541
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !570
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_atomEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !570
  br i1 %i.b, label %.preheader, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit

.preheader:                                       ; preds = %bb.b, %.preheader
  %i.c = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !570
  br i1 %i.c, label %.preheader, label %.loopexit, !llvm.loop !571

.loopexit:                                        ; preds = %.preheader, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225, !noalias !580 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226, !noalias !580 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !253
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.d:                                             ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !227, !noalias !580
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !228, !noalias !581
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !253
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef 504) #34, !noalias !581
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !229, !noalias !581
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !227, !noalias !581
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !228, !noalias !581 ; 3 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !226, !noalias !581
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 504
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.r, ptr %i.s, align 8, !tbaa !230, !noalias !581
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.t, %bb.d ]
  store ptr %storemerge.i.i.i, ptr %i.d, align 8, !tbaa !231, !noalias !581
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !225, !noalias !582 ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !226, !noalias !582 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !135
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !135
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !252
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2

bb.f:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !227, !noalias !582
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !228, !noalias !583 ; 2 uses
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ab, i64 488
  %.sroa.4.0.copyload5 = load i64, ptr %.sroa.4.0..sroa_idx4, align 8, !tbaa !135
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ab, i64 496
  %.sroa.5.0.copyload7 = load i64, ptr %.sroa.5.0..sroa_idx6, align 8, !tbaa !135
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef 504) #34, !noalias !583
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !229, !noalias !583
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !227, !noalias !583
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !228, !noalias !583 ; 3 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !226, !noalias !583
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 504 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !230, !noalias !583
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2: ; preds = %bb.e, %bb.f
  %i.ai = phi ptr [ %i.af, %bb.f ], [ %.pre, %bb.e ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload7, %bb.f ], [ %.sroa.5.0.copyload, %bb.e ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload5, %bb.f ], [ %.sroa.4.0.copyload, %bb.e ]
  %storemerge.i.i.i1 = phi ptr [ %i.ah, %bb.f ], [ %i.x, %bb.e ] ; 3 uses
  store ptr %storemerge.i.i.i1, ptr %i.d, align 8, !tbaa !231, !noalias !583
  %i.aj = load ptr, ptr %1, align 8, !tbaa !273, !nonnull !104, !align !264
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !251
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !217
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.4.0, ptr %i.ap, align 8, !tbaa !220
  store i64 %.sroa.5.0, ptr %i.al, align 8, !tbaa !251
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %.not.i.i = icmp eq ptr %storemerge.i.i.i1, %i.aq
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge.i.i.i1, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !253
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %i.d, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.k

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !199 ; 2 uses
  %i.aw = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %i.av) ; 2 uses
  store ptr %i.av, ptr %2, align 8, !tbaa !248
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !250
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !251
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !231 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !252
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %.not.i.i.i = icmp eq ptr %i.ba, %i.bd
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !253
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !231
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.j:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 10, ptr %1, align 8, !tbaa !232
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !244  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !243
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %2 = sdiv exact i64 %i.l, 48                    ; 2 uses
  %i.m = icmp ugt i64 %2, 100000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !232
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = add nsw i64 %2, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #33
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE13_M_insert_altEllb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i32 1, ptr %4, align 8, !tbaa !232
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !243
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !244  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.h = load i32, ptr %5, align 8, !tbaa !232
  %i.i = icmp eq i32 %i.h, 11
  br i1 %i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !247
  store ptr %i.m, ptr %i.k, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !244
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  store ptr %i.s, ptr %i.d, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.t = phi ptr [ %i.s, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !217
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %6 = sdiv exact i64 %i.x, 48                    ; 2 uses
  %i.y = icmp ugt i64 %6, 100000
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.z = load i32, ptr %5, align 8, !tbaa !232
  %i.aa = icmp eq i32 %i.z, 11
  br i1 %i.aa, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ah = load i32, ptr %4, align 8, !tbaa !232
  %i.ai = icmp eq i32 %i.ah, 11
  br i1 %i.ai, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit6

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !124 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit6 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit6:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.ao = add nsw i64 %6, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.ao

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #33
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %3 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !221
  switch i32 %i.c, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8 [
    i32 22, label %bb.b
    i32 23, label %bb.k
    i32 24, label %bb.t
    i32 7, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !222
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !224
  switch i32 %i.l, label %bb.h [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !199  ; 2 uses
  %i.o = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_line_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %i.n) ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !248
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.o, ptr %i.q, align 8, !tbaa !251
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !231  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.not.i.i.i = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !253
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !231
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.x, ptr %i.r, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.k:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !222
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !223
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !224
  switch i32 %i.ah, label %bb.q [
    i32 0, label %bb.n
    i32 2, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !199 ; 2 uses
  %i.ak = tail call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE18_M_insert_line_endEv(ptr noundef nonnull align 8 dereferenceable(88) %i.aj) ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !248
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !250
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !251
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !231 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !252
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -24
  %.not.i.i.i3 = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i.i3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !253
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !231
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.at, ptr %i.an, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit4: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.t:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !222
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !223
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !224
  switch i32 %i.bd, label %bb.z [
    i32 0, label %bb.w
    i32 2, label %bb.x
    i32 1, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.z
end_hunk_2
begin_hunk_3_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv:bb.a
  %i.lg = load ptr, ptr %i.km, align 8, !tbaa !280 ; 3 uses
  %i.lh = load ptr, ptr %i.kn, align 8, !tbaa !281
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -8
  %.not.i.i49 = icmp eq ptr %i.lg, %i.li
  br i1 %.not.i.i49, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !135
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %i.lj, ptr %i.km, align 8, !tbaa !280
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.dp:                                            ; preds = %bb.dn
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit unwind label %bb.dr

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %bb.do, %bb.dp
  %i.lk = load i64, ptr %i.a, align 8, !tbaa !135
  %i.ll = load i64, ptr %i.ko, align 8, !tbaa !251 ; 2 uses
  %i.lm = load ptr, ptr %i.kp, align 8, !tbaa !217 ; 2 uses
  %i.ln = getelementptr inbounds nuw [48 x i8], ptr %i.lm, i64 %i.lc
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store i64 %i.lk, ptr %i.lo, align 8, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.lp = add nuw nsw i64 %.02087, 1              ; 2 uses
  %exitcond95.not = icmp eq i64 %i.lp, %.022
  br i1 %exitcond95.not, label %._crit_edge90, label %bb.dl, !llvm.loop !621

bb.dq:                                            ; preds = %bb.dl
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp, %bb.dm
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn = phi { ptr, i32 } [ %i.lr, %bb.dr ], [ %i.lq, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %.pn

bb.dt:                                            ; preds = %.lr.ph92, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.ls = phi ptr [ %i.kx, %.lr.ph92 ], [ %i.mo, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ]
  %i.lt = phi ptr [ %.pre97, %.lr.ph92 ], [ %i.mp, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 3 uses
  %i.lu = phi ptr [ %i.kw, %.lr.ph92 ], [ %storemerge.i.i, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 2 uses
  %i.lv = load ptr, ptr %i.hh, align 8, !tbaa !199
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 56 ; 2 uses
  %i.lx = icmp eq ptr %i.lu, %i.lt
  br i1 %i.lx, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ly = getelementptr inbounds i8, ptr %i.lu, i64 -8 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !135
  %i.ma = load ptr, ptr %i.lw, align 8, !tbaa !217
  %i.mb = getelementptr inbounds nuw [48 x i8], ptr %i.ma, i64 %i.lz
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.dv:                                            ; preds = %bb.dt
  %i.mc = load ptr, ptr %i.la, align 8, !tbaa !282, !noalias !631
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !133
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 504
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !135
  %i.mh = load ptr, ptr %i.lw, align 8, !tbaa !217
  %i.mi = getelementptr inbounds nuw [48 x i8], ptr %i.mh, i64 %i.mg
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef 512) #34
  %i.mj = load ptr, ptr %i.la, align 8, !tbaa !283
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 -8 ; 2 uses
  store ptr %i.mk, ptr %i.la, align 8, !tbaa !282
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !133 ; 4 uses
  store ptr %i.ml, ptr %i.kz, align 8, !tbaa !278
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 512
  store ptr %i.mm, ptr %i.lb, align 8, !tbaa !284
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 504
  %.pre98 = load ptr, ptr %i.kv, align 8, !tbaa !277
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.du, %bb.dv
  %i.mo = phi ptr [ %i.ls, %bb.du ], [ %.pre98, %bb.dv ] ; 2 uses
  %i.mp = phi ptr [ %i.lt, %bb.du ], [ %i.ml, %bb.dv ]
  %i.mq = phi ptr [ %i.mb, %bb.du ], [ %i.mi, %bb.dv ]
  %storemerge.i.i = phi ptr [ %i.ly, %bb.du ], [ %i.mn, %bb.dv ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.ku, align 8, !tbaa !280
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %i.ms = load <2 x i64>, ptr %i.mr, align 8, !tbaa !135
  %i.mt = shufflevector <2 x i64> %i.ms, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.mt, ptr %i.mr, align 8, !tbaa !135
  %i.mu = icmp eq ptr %storemerge.i.i, %i.mo
  br i1 %i.mu, label %._crit_edge93, label %bb.dt, !llvm.loop !622

._crit_edge93:                                    ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit, %._crit_edge90
  %i.mv = load ptr, ptr %8, align 8, !tbaa !285   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge93
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !286 ; 2 uses
  %i.mz = load ptr, ptr %i.mw, align 8, !tbaa !283 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = icmp ult ptr %i.my, %i.na
  br i1 %i.nb, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dw, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.nd, %.lr.ph.i.i.i.i ], [ %i.my, %bb.dw ] ; 3 uses
  %i.nc = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !133
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef 512) #34
  %i.nd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ne = icmp ult ptr %.06.i.i.i.i, %i.mz
  br i1 %i.ne, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, !llvm.loop !11

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %8, align 8, !tbaa !285
  br label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, %bb.dw
  %i.nf = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i ], [ %i.mv, %bb.dw ]
  %i.ng = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !287
  %i.ni = shl i64 %i.nh, 3
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #34
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit

_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit:          ; preds = %._crit_edge93, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, %bb.dh
  %i.nj = load ptr, ptr %i.gf, align 8, !tbaa !231 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !252
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 -24
  %.not.i.i51 = icmp eq ptr %i.nj, %i.nm
  br i1 %.not.i.i51, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nj, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !253
  %i.nn = load ptr, ptr %i.gf, align 8, !tbaa !231
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  store ptr %i.no, ptr %i.gf, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52

bb.dz:                                            ; preds = %bb.dx
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52: ; preds = %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit41

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit41: ; preds = %bb.a, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit32
  %.0 = phi i1 [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit32 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit52 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit40 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_line_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 4, ptr %1, align 8, !tbaa !232
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !244  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !243
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %2 = sdiv exact i64 %i.l, 48                    ; 2 uses
  %i.m = icmp ugt i64 %2, 100000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !232
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = add nsw i64 %2, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #33
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE18_M_insert_line_endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 8 uses
  store i32 5, ptr %1, align 8, !tbaa !232
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !244  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !243
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.h = phi ptr [ %i.g, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %2 = sdiv exact i64 %i.l, 48                    ; 2 uses
  %i.m = icmp ugt i64 %2, 100000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.n = load i32, ptr %1, align 8, !tbaa !232
  %i.o = icmp eq i32 %i.n, 11
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = add nsw i64 %2, -1
  ret i64 %i.v

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #33
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_word_boundEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i32 6, ptr %2, align 8, !tbaa !232
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !220
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.a, ptr %i.c, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !243
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !244  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.i = load i32, ptr %3, align 8, !tbaa !232
  %i.j = icmp eq i32 %i.i, 11
  br i1 %i.j, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !247
  store ptr %i.n, ptr %i.l, align 8, !tbaa !247
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  store ptr %i.p, ptr %i.q, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !244
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store ptr %i.t, ptr %i.e, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.u = phi ptr [ %i.t, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !217
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %4 = sdiv exact i64 %i.y, 48                    ; 2 uses
  %i.z = icmp ugt i64 %4, 100000
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc3 unwind label %bb.m

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.aa = load i32, ptr %3, align 8, !tbaa !232
  %i.ab = icmp eq i32 %i.aa, 11
  br i1 %i.ab, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !124 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.ai = load i32, ptr %2, align 8, !tbaa !232
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !124 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.al, null
  br i1 %.not.i.i4, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit5 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.aq = add nsw i64 %4, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE19_M_insert_lookaheadElb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i32 7, ptr %3, align 8, !tbaa !232
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !220
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.a, ptr %i.d, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !243
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !244  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.j = load i32, ptr %4, align 8, !tbaa !232
  %i.k = icmp eq i32 %i.j, 11
  br i1 %i.k, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !247
  store ptr %i.o, ptr %i.m, align 8, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !244
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.v = phi ptr [ %i.u, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !217
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %5 = sdiv exact i64 %i.z, 48                    ; 2 uses
  %i.aa = icmp ugt i64 %5, 100000
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc4 unwind label %bb.m

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ab = load i32, ptr %4, align 8, !tbaa !232
  %i.ac = icmp eq i32 %i.ab, 11
  br i1 %i.ac, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !124 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = load i32, ptr %3, align 8, !tbaa !232
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit6

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !124 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit6 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit6:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.aq = add nsw i64 %5, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function.92", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.d, align 8, !tbaa !247
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !124
  %i.e = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !248
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.e, ptr %i.g, align 8, !tbaa !251
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !231  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !252
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24
  %.not.i.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !253
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %i.h, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %.not.i2 = icmp eq ptr %i.u, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function.92", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274, !nonnull !104, !align !264
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = ptrtoint ptr %i.d to i64
  store i64 %i.h, ptr %2, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.f, align 8, !tbaa !247
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !124
  %i.i = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !248
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !250
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.i, ptr %i.k, align 8, !tbaa !251
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !231  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !252
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -24
  %.not.i.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !253
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !231
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.l, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.g

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.c, %bb.d
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !124  ; 2 uses
  %.not.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE27_M_insert_any_matcher_posixILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::function.92", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274, !nonnull !104, !align !264
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_3
begin_hunk_4_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb1EEEvv:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !274, !nonnull !104, !align !264 ; 2 uses
  %i.h = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !201
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !205
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !207  ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i.i.i, label %bb.b, label %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit: ; preds = %bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext %i.e), !inline_history !633
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.t, align 8
  store ptr %i.g, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.s, align 8, !tbaa !247
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.r, align 8, !tbaa !124
  %i.u = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit
  store ptr %i.b, ptr %1, align 8, !tbaa !248
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !250
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.u, ptr %i.w, align 8, !tbaa !251
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !231  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -24
  %.not.i.i.i = icmp eq ptr %i.y, %i.ab
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !253
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !231
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !231
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.h

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.d, %bb.e
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !124 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.h:                                             ; preds = %bb.e, %_ZNSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2EcRKS3_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !124 ; 2 uses
  %.not.i2 = icmp eq ptr %i.ak, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !272
  %i.c = and i32 %i.b, 1024
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 11, ptr noundef nonnull @.str.25) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !238
  %.not8 = icmp ult i64 %1, %i.e
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.26) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !133    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133  ; 2 uses
  %.not1516 = icmp eq ptr %i.f, %i.h
  br i1 %.not1516, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.i, %i.h
  br i1 %.not15, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %.lr.ph

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.j, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i32 3, ptr %2, align 8, !tbaa !232
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.k, align 8, !tbaa !220
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %1, ptr %i.l, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !243
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !244  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.r = load i32, ptr %3, align 8, !tbaa !232
  %i.s = icmp eq i32 %i.r, 11
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !247
  store ptr %i.w, ptr %i.u, align 8, !tbaa !247
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !244
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ad = phi ptr [ %i.ac, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !217
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %4 = sdiv exact i64 %i.ah, 48                   ; 2 uses
  %i.ai = icmp ugt i64 %4, 100000
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc9 unwind label %bb.t

.noexc9:                                          ; preds = %bb.k
  unreachable

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.012.017 = phi ptr [ %i.i, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.aj = load i64, ptr %.sroa.012.017, align 8, !tbaa !135
  %i.ak = icmp eq i64 %1, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.f

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.27) #35
  unreachable

bb.m:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.al = load i32, ptr %3, align 8, !tbaa !232
  %i.am = icmp eq i32 %i.al, 11
  br i1 %i.am, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !124 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.m, %bb.n, %bb.o
  %i.at = load i32, ptr %2, align 8, !tbaa !232
  %i.au = icmp eq i32 %i.at, 11
  br i1 %i.au, label %bb.q, label %_ZNSt8__detail6_StateIcED2Ev.exit11

bb.q:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !124 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i10, label %_ZNSt8__detail6_StateIcED2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit11 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit11:              ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.q, %bb.r
  %i.ba = add nsw i64 %4, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i64 %i.ba

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %.not12 = icmp samesign eq i64 %i.d, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.e ]
  %.sroa.08.013 = phi ptr [ %i.b, %.lr.ph ], [ %i.p, %bb.e ] ; 2 uses
  %i.g = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.014, i32 %1) ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i32, i1 } %i.g, 0
  %i.j = load i8, ptr %.sroa.08.013, align 1, !tbaa !62
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !274, !nonnull !104, !align !264
  %i.l = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %i.j, i32 noundef %1)
  %i.m = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.i, i32 %i.l) ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.28) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = extractvalue { i32, i1 } %i.m, 0         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 22 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function.92", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289, !nonnull !104, !align !264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !269
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !271
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !274, !nonnull !104, !align !264 ; 2 uses
  %i.m = lshr i16 %i.j, 8
  %i.n = trunc nuw i16 %i.m to i8
  %i.o = and i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 99, i1 false)
  store ptr %i.l, ptr %i.p, align 8, !tbaa !200
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %i.o, ptr %i.q, align 16, !tbaa !308
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = load i64, ptr %i.s, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  %i.v = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.w = and i32 %i.v, 131071
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.30) #35
          to label %.noexc6 unwind label %bb.p

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.04.0.insert.ext.i = lshr i32 %i.v, 16
  %i.z = load i16, ptr %i.y, align 16, !tbaa !309
  %i.aa = trunc i32 %i.v to i16
  %i.ab = or i16 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !310
  %i.ae = trunc i32 %.sroa.04.0.insert.ext.i to i8
  %i.af = or i8 %i.ad, %i.ae
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.af to i32
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.ab to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ag = trunc nuw i32 %.sroa.0.0.insert.insert.i.i.i to i24
  store i24 %i.ag, ptr %i.y, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !199 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.al = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #36
          to label %bb.f unwind label %bb.e       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load <2 x ptr>, ptr %1, align 16, !tbaa !311
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !311
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !312
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !88
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !177
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bb = load <2 x ptr>, ptr %i.ba, align 16, !tbaa !313
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !313
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !314
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !315
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !315
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !316
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 16 dereferenceable(56) %i.y, i64 56, i1 false)
  store ptr %i.al, ptr %3, align 8, !tbaa !318
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.an, align 8, !tbaa !247
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ak, align 8, !tbaa !124
  %i.bm = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.q       ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.aj, ptr %2, align 8, !tbaa !248
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !250
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !251
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !231 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !252
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bq, %i.bt
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !253
end_hunk_4
begin_hunk_5_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !224
  switch i32 %i.m, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.a
  %i.n = icmp eq i32 %i.c, 9
  br i1 %i.n, label %bb.h, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.h:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !223
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8, !tbaa !221
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !224
  switch i32 %i.w, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = load i32, ptr %0, align 8, !tbaa !198    ; 2 uses
  %i.y = and i32 %i.x, 1
  %.not = icmp eq i32 %i.y, 0
  %i.z = and i32 %i.x, 8
  %.not6 = icmp eq i32 %i.z, 0                    ; 2 uses
  br i1 %.not, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.p:                                             ; preds = %bb.n
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.q:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread
  br i1 %.not6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb1ELb1EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit8: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, %bb.p, %bb.o, %bb.s, %bb.r
  %.0 = phi i1 [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.o ], [ false, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.92", align 8  ; 5 uses
  %3 = alloca %"struct.std::__detail::_State", align 8 ; 11 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i32 11, ptr %3, align 8, !tbaa !232
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124  ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null      ; 2 uses
  br i1 %.not.i.i.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !131
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.d, ptr %i.h, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !243
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.d, ptr %i.j, align 8, !tbaa !247
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !125
  store ptr %i.f, ptr %i.k, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !244  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !243
  %i.q = load i32, ptr %4, align 8, !tbaa !232
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.f, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !247
  store ptr %i.v, ptr %i.t, align 8, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 16, i1 false), !tbaa.struct !125
  store ptr %i.x, ptr %i.z, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !244
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.h:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !217
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %5 = sdiv exact i64 %i.ag, 48                   ; 2 uses
  %i.ah = icmp ugt i64 %5, 100000
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc4 unwind label %bb.q

.noexc4:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ai = load i32, ptr %4, align 8, !tbaa !232
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.k, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !124 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.al, null
  br i1 %.not.i.i5, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.j, %bb.k, %bb.l
  %i.aq = load i32, ptr %3, align 8, !tbaa !232
  %i.ar = icmp eq i32 %i.aq, 11
  br i1 %i.ar, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.n:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !124 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.n, %bb.o
  %i.aw = add nsw i64 %5, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i64 %i.aw

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !62
  %i.b = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul) #33
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul, align 1, !tbaa !62
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul) #33
  br label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEclEcE5__nul, align 1, !tbaa !62
  %i.f = icmp ne i8 %i.a, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEE, ptr %0, align 8, !tbaa !348
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !635
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 8
  store i8 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !62
  %i.b = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul) #33
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul, align 1, !tbaa !62
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul) #33
  br label %_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZSt10__invoke_rIbRNSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEJcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEclEcE5__nul, align 1, !tbaa !62
  %i.f = icmp ne i8 %i.a, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEE, ptr %0, align 8, !tbaa !348
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !637
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE9_M_invokeERKSt9_Any_dataOc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !62
  %i.b = tail call noundef zeroext i1 @_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEE, ptr %0, align 8, !tbaa !348
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !639
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef signext i8 @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  store i8 %i.d, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul, align 1, !tbaa !62
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !349, !nonnull !104, !align !264
  %i.f = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !207  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.not.i.i.i, label %bb.f, label %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit: ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext %1), !inline_history !12
  %i.p = load i8, ptr @_ZZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul, align 1, !tbaa !62
  %i.q = icmp ne i8 %i.o, %i.p
  ret i1 %i.q

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEclEcE5__nul) #33
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef signext i8 @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #4 comdat align 2 {
end_hunk_5
begin_hunk_6_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE13_M_make_rangeEcc:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.aq, ptr %i.bq, align 8, !tbaa !61
  store ptr %i.ah, ptr %5, align 8, !tbaa !76
  store i64 0, ptr %i.as, align 8, !tbaa !61
  store i8 0, ptr %i.ah, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 3 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !58
  %i.bt = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.au
  br i1 %i.bu, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bv = load i64, ptr %i.bf, align 8, !tbaa !61 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !76
  %i.by = load i64, ptr %i.au, align 8, !tbaa !62
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !62
  %.pre = load i64, ptr %i.bf, align 8, !tbaa !61
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.bz = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.bv, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !61
  store ptr %i.au, ptr %i.at, align 8, !tbaa !76
  store i64 0, ptr %i.bf, align 8, !tbaa !61
  store i8 0, ptr %i.au, align 8, !tbaa !62
  %i.cb = load ptr, ptr %i.bg, align 8, !tbaa !367
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  store ptr %i.cc, ptr %i.bg, align 8, !tbaa !367
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.n:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.p

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.n
  %.pre29 = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.cd = icmp eq ptr %.pre29, %i.au
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ce = load i64, ptr %i.au, align 8, !tbaa !62
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %.pre29, i64 noundef %i.cf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  %i.cg = load ptr, ptr %5, align 8, !tbaa !76    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ah
  br i1 %i.ch, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ci = load i64, ptr %i.ah, align 8, !tbaa !62
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #34
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ck = load ptr, ptr %7, align 8, !tbaa !76    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aw
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.cm = load i64, ptr %i.aw, align 8, !tbaa !62
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.co = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.aj
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.aj, align 8, !tbaa !62
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void

bb.o:                                             ; preds = %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_transformEc.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #33
  %i.cu = load ptr, ptr %7, align 8, !tbaa !76    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.aw
  br i1 %i.cv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.p
  %i.cw = load i64, ptr %i.aw, align 8, !tbaa !62
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #34
  br label %.body

.body:                                            ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11 ], [ %i.cs, %bb.o ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.ct, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.cy = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.body
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !62
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i32 2, ptr %4, align 8, !tbaa !232
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !220
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 %2, ptr %i.c, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.a, ptr %i.d, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !243
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !244  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.j = load i32, ptr %5, align 8, !tbaa !232
  %i.k = icmp eq i32 %i.j, 11
  br i1 %i.k, label %bb.b, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !247
  store ptr %i.o, ptr %i.m, align 8, !tbaa !247
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.c, %bb.b, %bb.a
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !244
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.v = phi ptr [ %i.u, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !217
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %6 = sdiv exact i64 %i.z, 48                    ; 2 uses
  %i.aa = icmp ugt i64 %6, 100000
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ab = load i32, ptr %5, align 8, !tbaa !232
  %i.ac = icmp eq i32 %i.ab, 11
  br i1 %i.ac, label %bb.g, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !124 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = load i32, ptr %4, align 8, !tbaa !232
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.j, label %_ZNSt8__detail6_StateIcED2Ev.exit7

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !124 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.am, null
  br i1 %.not.i.i6, label %_ZNSt8__detail6_StateIcED2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit7 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit7:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.j, %bb.k
  %i.aq = add nsw i64 %6, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.aq

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #33
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::__detail::_StateSeq") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map.176", align 8      ; 13 uses
  %3 = alloca %"class.std::stack.172", align 8    ; 19 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"struct.std::__detail::_State", align 8 ; 13 uses
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 19 uses
  store i32 0, ptr %i.b, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr null, ptr %i.c, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !119
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIlSaIlEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit unwind label %bb.ab

_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit:    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !280  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !281
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %.not.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit
  %i.m = load i64, ptr %i.g, align 8, !tbaa !135
  store i64 %i.m, ptr %i.i, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.h, align 8, !tbaa !280
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.c:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEEC2IS2_vEEv.exit
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge unwind label %bb.ac

._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !277
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge, %bb.b
  %i.o = phi ptr [ %.pre, %._ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit_crit_edge ], [ %i.n, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !277
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt8__detail6_StateIcED2Ev.exit55
  %i.ac = phi ptr [ %i.o, %.lr.ph ], [ %i.dz, %_ZNSt8__detail6_StateIcED2Ev.exit55 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !278, !noalias !832 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !135 ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !135
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !282, !noalias !832
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !133
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 504
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135
  store i64 %i.al, ptr %i.a, align 8, !tbaa !135
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef 512) #34
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !283
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  store ptr %i.an, ptr %i.t, align 8, !tbaa !282
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !133 ; 3 uses
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !278
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !284
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 504
  %.pre110 = load i64, ptr %i.a, align 8, !tbaa !135
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.e, %bb.f
  %i.ar = phi i64 [ %i.ag, %bb.e ], [ %.pre110, %bb.f ]
  %storemerge.i.i = phi ptr [ %i.af, %bb.e ], [ %i.aq, %bb.f ]
  store ptr %storemerge.i.i, ptr %i.h, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.as = load ptr, ptr %1, align 8, !tbaa !273, !nonnull !104, !align !264 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !217
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.au, i64 %i.ar ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 48, i1 false), !tbaa.struct !243
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !232
  %i.ax = icmp eq i32 %i.aw, 11
  br i1 %i.ax, label %bb.g, label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit

bb.g:                                             ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i32 noundef 2)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bc = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !131
  store <2 x ptr> %i.bc, ptr %i.v, align 8, !tbaa !131
  %.pre111 = load ptr, ptr %1, align 8, !tbaa !273
  br label %_ZNSt8__detail6_StateIcEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #37
  unreachable

_ZNSt8__detail6_StateIcEC2ERKS1_.exit:            ; preds = %bb.i, %bb.g, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.bi = phi ptr [ %.pre111, %bb.i ], [ %i.as, %bb.g ], [ %i.as, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !243
  %i.bj = load i32, ptr %4, align 8, !tbaa !232
  %i.bk = icmp eq i32 %i.bj, 11
  br i1 %i.bk, label %bb.m, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.m:                                             ; preds = %_ZNSt8__detail6_StateIcEC2ERKS1_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !247
  store ptr %i.bl, ptr %i.y, align 8, !tbaa !247
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.not.i.i30 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.not.i.i30, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 16, i1 false), !tbaa.struct !125
  store ptr %i.bm, ptr %i.z, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNSt8__detail6_StateIcEC2ERKS1_.exit, %bb.m, %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 64 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !244 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !245
  %.not.i.i.i31 = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i31, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !243
  %i.bs = load i32, ptr %5, align 8, !tbaa !232
  %i.bt = icmp eq i32 %i.bs, 11
  br i1 %i.bt, label %bb.p, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 24, i1 false)
  %i.bw = load ptr, ptr %i.y, align 8, !tbaa !247
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !247
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !124
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 16, i1 false), !tbaa.struct !125
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !124
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.q, %bb.p, %bb.o
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !244
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  store ptr %i.cb, ptr %i.bo, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.r:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !244
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc32, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.cc = phi ptr [ %i.cb, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc32 ]
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !217
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %6 = sdiv exact i64 %i.cg, 48                   ; 2 uses
  %i.ch = icmp ugt i64 %6, 100000
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.24) #35
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ci = add nsw i64 %6, -1
  %i.cj = load i32, ptr %5, align 8, !tbaa !232
  %i.ck = icmp eq i32 %i.cj, 11
  br i1 %i.ck, label %bb.u, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i34, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.t, %bb.u, %bb.v
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  store i64 %i.ci, ptr %i.cp, align 8, !tbaa !135
  %i.cq = load i32, ptr %4, align 8, !tbaa !232
  switch i32 %i.cq, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38 [
    i32 1, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
    i32 2, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
    i32 7, label %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  ]

_ZNKSt8__detail11_State_base10_M_has_altEv.exit:  ; preds = %bb.x, %bb.x, %bb.x
  %i.cr = load i64, ptr %i.u, align 8             ; 4 uses
  %.not89 = icmp eq i64 %i.cr, -1
  br i1 %.not89, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38, label %bb.y

bb.y:                                             ; preds = %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !114 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cs, %bb.y ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.y ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !135
  %i.cv = icmp slt i64 %i.cu, %i.cr               ; 3 uses
  %.19.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !116 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i35, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !830

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cw = icmp eq ptr %.19.i.i.i, %i.b
  br i1 %i.cw, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cx = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !135
  %.not90 = icmp slt i64 %i.cr, %i.cx
  br i1 %.not90, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.y, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !280 ; 3 uses
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !281
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %.not.i.i36 = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i36, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  store i64 %i.cr, ptr %i.cy, align 8, !tbaa !135
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.db, ptr %i.h, align 8, !tbaa !280
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38

bb.aa:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38 unwind label %bb.ae

bb.ab:                                            ; preds = %bb.a
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ac:                                            ; preds = %bb.c, %bb.at, %._crit_edge106
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #33
  br label %bb.am

bb.ae:                                            ; preds = %bb.ai, %bb.aa, %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38:   ; preds = %bb.x, %bb.z, %bb.aa, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit, %_ZNKSt8__detail11_State_base10_M_has_altEv.exit
  %i.df = load i64, ptr %i.a, align 8, !tbaa !135
  %i.dg = load i64, ptr %i.aa, align 8, !tbaa !251
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, label %bb.af, !llvm.loop !831

bb.af:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38
  %i.di = load i64, ptr %i.ab, align 8, !tbaa !220 ; 4 uses
  %.not23 = icmp eq i64 %i.di, -1
  br i1 %.not23, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !114 ; 2 uses
  %.not10.i.i.i39 = icmp eq ptr %i.dj, null
  br i1 %.not10.i.i.i39, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %bb.ag, %.lr.ph.i.i.i40
  %.012.i.i.i41 = phi ptr [ %.1.i.i.i46, %.lr.ph.i.i.i40 ], [ %i.dj, %bb.ag ] ; 4 uses
  %.0811.i.i.i42 = phi ptr [ %.19.i.i.i43, %.lr.ph.i.i.i40 ], [ %i.b, %bb.ag ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i41, i64 32
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !135
  %i.dm = icmp slt i64 %i.dl, %i.di               ; 3 uses
  %.19.i.i.i43 = select i1 %i.dm, ptr %.0811.i.i.i42, ptr %.012.i.i.i41 ; 2 uses
  %.1.in.v.i.i.i44 = select i1 %i.dm, i64 24, i64 16
  %.1.in.i.i.i45 = getelementptr inbounds nuw i8, ptr %.012.i.i.i41, i64 %.1.in.v.i.i.i44
  %.1.i.i.i46 = load ptr, ptr %.1.in.i.i.i45, align 8, !tbaa !116 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %.1.i.i.i46, null
  br i1 %.not.i.i.i47, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48, label %.lr.ph.i.i.i40, !llvm.loop !830

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48: ; preds = %.lr.ph.i.i.i40
  %i.dn = icmp eq ptr %.19.i.i.i43, %i.b
  br i1 %i.dn, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48
  %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dm, ptr %.0811.i.i.i42, ptr %.012.i.i.i41
  %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.do = load i64, ptr %.19.i.i.i43.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !135
  %.not91 = icmp slt i64 %i.di, %i.do
  br i1 %.not91, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread, label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i48, %bb.ag, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !280 ; 3 uses
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !281
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %.not.i.i51 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i.i51, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread
  store i64 %i.di, ptr %i.dp, align 8, !tbaa !135
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.ds, ptr %i.h, align 8, !tbaa !280
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53

bb.ai:                                            ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50.thread
  invoke void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53 unwind label %bb.ae

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53:   ; preds = %bb.ah, %bb.ai, %bb.af, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit50, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit38
  %i.dt = load i32, ptr %4, align 8, !tbaa !232
  %i.du = icmp eq i32 %i.dt, 11
  br i1 %i.du, label %bb.aj, label %_ZNSt8__detail6_StateIcED2Ev.exit55

bb.aj:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53
  %i.dv = load ptr, ptr %i.v, align 8, !tbaa !124 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i54, label %_ZNSt8__detail6_StateIcED2Ev.exit55, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = invoke noundef zeroext i1 %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit55 unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #37
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit55:              ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit53, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !277 ; 2 uses
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !277
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %._crit_edge, label %bb.d

end_hunk_6
begin_hunk_7_@_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb:bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !238
  %i.f = add i64 %i.e, 3
  %i.g = and i64 %i.f, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 17, i1 false)
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(17) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.h = load i32, ptr %3, align 8, !tbaa !75
  %i.i = and i32 %i.h, 1024
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %5, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !387 ; 5 uses
  br i1 %i.j, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.l = load i8, ptr %i.k, align 8, !tbaa !288, !range !103, !noundef !104
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %9, ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !tbaa !311
  store i64 %i.p, ptr %i.o, align 8, !tbaa !311
  br i1 %6, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 0)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.f, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.r = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  br i1 %i.r, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !408  ; 2 uses
  %i.u = and i32 %i.t, 64
  %.not.i64 = icmp eq i32 %i.u, 0
  br i1 %.not.i64, label %bb.j, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.v = or i32 %i.t, 128
  store i32 %i.v, ptr %i.s, align 8, !tbaa !409
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.noexc65, %bb.j
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !311  ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !311
  %.not2.not.i.not.not = icmp ne ptr %i.x, %i.y   ; 3 uses
  br i1 %.not2.not.i.not.not, label %bb.l, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !410
  %.cast.i = ptrtoint ptr %i.z to i64
  store i64 %.cast.i, ptr %i.o, align 8, !tbaa !311
  %i.aa = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1)
          to label %.noexc65 unwind label %.loopexit

.noexc65:                                         ; preds = %bb.l
  br i1 %i.aa, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.k, !llvm.loop !839

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit: ; preds = %.noexc65, %bb.k, %bb.i, %.noexc, %bb.f
  %.060.in = phi i1 [ %i.q, %bb.f ], [ false, %bb.i ], [ true, %.noexc ], [ %.not2.not.i.not.not, %bb.k ], [ %.not2.not.i.not.not, %.noexc65 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !411 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !412 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !413 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !108
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !412
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.n
  %i.aq = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !414
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.p, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !415 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !416
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.q, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.bd = load ptr, ptr %9, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !108
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %.060.in, label %bb.aa, label %bb.ag

bb.s:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.bj, align 8, !tbaa !311
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.bk, align 8, !tbaa !311
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %3, ptr %i.bl, align 8, !tbaa !417
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %.pre, ptr %i.bm, align 8, !tbaa !248
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %2, ptr %i.bn, align 8, !tbaa !418
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !244 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !217 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 48                ; 7 uses
  %11 = icmp ugt i64 %i.bw, 576460752303423487
  %i.bx = ptrtoint ptr %0 to i64
  br i1 %11, label %.noexc.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

.noexc.i:                                         ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #35
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i66 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i.i66, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.by = shl nuw nsw i64 %i.bw, 4
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #36 ; 4 uses
  store ptr %i.bz, ptr %i.bo, align 8, !tbaa !415
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !416
  %xtraiter = and i64 %i.bw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bz, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bw, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !410
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.cc, align 8, !tbaa !420
  %i.cd = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !840

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.bz, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.bw, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cf = icmp ult i64 %i.bw, 8
  br i1 %i.cf, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !410
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.cg, align 8, !tbaa !420
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ch, align 8, !tbaa !410
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ci, align 8, !tbaa !420
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.cj, align 8, !tbaa !410
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ck, align 8, !tbaa !420
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.cl, align 8, !tbaa !410
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.cm, align 8, !tbaa !420
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.cn, align 8, !tbaa !410
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.co, align 8, !tbaa !420
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.cp, align 8, !tbaa !410
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.cq, align 8, !tbaa !420
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.cr, align 8, !tbaa !410
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.cs, align 8, !tbaa !420
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.ct, align 8, !tbaa !410
  %i.cu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.cu, align 8, !tbaa !420
  %i.cv = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !29

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cw, %.lr.ph.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cx, align 8, !tbaa !421
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !214
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !841
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  store ptr null, ptr %i.db, align 8, !tbaa !410
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.dd = and i32 %4, 128
  %.not.i68 = icmp eq i32 %i.dd, 0
  %i.de = and i32 %4, -6
  %spec.select = select i1 %.not.i68, i32 %4, i32 %i.de
  store i32 %spec.select, ptr %i.dc, align 8, !tbaa !409
  br i1 %6, label %bb.t, label %bb.v

common.resume:                                    ; preds = %bb.g, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %i.dl, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %.loopexit.i
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.bx, ptr %i.df, align 8, !tbaa !311
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 116 ; 2 uses
  store i8 0, ptr %i.dg, align 4, !tbaa !424
  store i64 0, ptr %i.db, align 8, !tbaa !311
  %i.dh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %10, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc69 unwind label %bb.u   ; 0 uses

.noexc69:                                         ; preds = %bb.t
  %i.di = load i64, ptr %i.cy, align 8, !tbaa !425
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 noundef zeroext 0, i64 noundef %i.di)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit unwind label %bb.u

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit: ; preds = %.noexc69
  %i.dj = load i8, ptr %i.dg, align 4, !tbaa !424, !range !103, !noundef !104
  %i.dk = trunc nuw i8 %i.dj to i1
  br label %bb.w

bb.u:                                             ; preds = %.noexc69, %bb.t, %bb.v
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %common.resume

bb.v:                                             ; preds = %.loopexit.i
  %i.dm = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %10)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit, %bb.v
  %.1.in = phi i1 [ %i.dk, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit ], [ %i.dm, %bb.v ]
  %i.dn = load ptr, ptr %i.bo, align 8, !tbaa !415 ; 3 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i71, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !416
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72: ; preds = %bb.x, %bb.w
  %i.dt = load ptr, ptr %10, align 8, !tbaa !107  ; 3 uses
  %.not.i.i.i1.i73 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i1.i73, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !108
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br i1 %.1.in, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  %i.dz = load ptr, ptr %2, align 8, !tbaa !426   ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !426 ; 3 uses
  %.not8184 = icmp eq ptr %i.dz, %i.eb
  br i1 %.not8184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %.cast = ptrtoint ptr %1 to i64
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.ad, %bb.aa
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr i8, ptr %i.dz, i64 %i.ee  ; 10 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -48    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 -24    ; 2 uses
  br i1 %6, label %bb.ae, label %bb.af

bb.ab:                                            ; preds = %.lr.ph, %bb.ad
  %.sroa.076.085 = phi ptr [ %i.dz, %.lr.ph ], [ %i.em, %bb.ad ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 16
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !429, !range !103, !noundef !104
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 8
  store ptr %1, ptr %i.el, align 8, !tbaa !311
  store i64 %.cast, ptr %.sroa.076.085, align 8, !tbaa !311
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 24 ; 2 uses
  %.not81 = icmp eq ptr %i.em, %i.eb
  br i1 %.not81, label %._crit_edge, label %bb.ab

bb.ae:                                            ; preds = %._crit_edge
  %i.en = getelementptr i8, ptr %i.ef, i64 -32
  store i8 0, ptr %i.en, align 8, !tbaa !429
  store ptr %0, ptr %i.eg, align 8, !tbaa !311
  %i.eo = getelementptr i8, ptr %i.ef, i64 -40
  store ptr %0, ptr %i.eo, align 8, !tbaa !311
  %i.ep = getelementptr i8, ptr %i.ef, i64 -8
  store i8 0, ptr %i.ep, align 8, !tbaa !429
  store ptr %1, ptr %i.eh, align 8, !tbaa !311
  %i.eq = getelementptr i8, ptr %i.ef, i64 -16
  store ptr %1, ptr %i.eq, align 8, !tbaa !311
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  store ptr %0, ptr %i.eg, align 8, !tbaa !311
  %i.er = getelementptr i8, ptr %i.ef, i64 -40
  %i.es = load i64, ptr %i.dz, align 8, !tbaa !311 ; 2 uses
  store i64 %i.es, ptr %i.er, align 8, !tbaa !311
  %.cast82 = inttoptr i64 %i.es to ptr
  %i.et = icmp ne ptr %0, %.cast82
  %i.eu = getelementptr i8, ptr %i.ef, i64 -32
  %i.ev = zext i1 %i.et to i8
  store i8 %i.ev, ptr %i.eu, align 8, !tbaa !429
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !311 ; 2 uses
  store i64 %i.ex, ptr %i.eh, align 8, !tbaa !311
  %i.ey = getelementptr i8, ptr %i.ef, i64 -16
  store ptr %1, ptr %i.ey, align 8, !tbaa !311
  %.cast83 = inttoptr i64 %i.ex to ptr
  %i.ez = icmp ne ptr %1, %.cast83
  %i.fa = getelementptr i8, ptr %i.ef, i64 -8
  %i.fb = zext i1 %i.ez to i8
  store i8 %i.fb, ptr %i.fa, align 8, !tbaa !429
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.fd, align 8, !tbaa !311
  %.cast.i75 = ptrtoint ptr %1 to i64
  store i64 %.cast.i75, ptr %7, align 8, !tbaa !311
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(17) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.ae ], [ true, %bb.af ], [ false, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !311
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.b, align 8, !tbaa !311
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.c, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !248
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.g, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !244  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !217  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 48                  ; 7 uses
  %6 = icmp ugt i64 %i.p, 576460752303423487
  br i1 %6, label %bb.b, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #35
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36
          to label %.noexc11 unwind label %bb.d   ; 4 uses

.noexc11:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !415
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.s, ptr %i.t, align 8, !tbaa !416
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc11, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.r, %.noexc11 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.noexc11 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc11 ]
  store ptr null, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !410
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !420
  %i.v = add i64 %.01012.i.i.i.i.i.prol, -1       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !842

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc11
  %.lcssa.unr = phi ptr [ poison, %.noexc11 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.r, %.noexc11 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.p, %.noexc11 ], [ %i.v, %.lr.ph.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.p, 8
  br i1 %i.x, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i, align 8, !tbaa !410
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !420
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !410
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i32 0, ptr %i.aa, align 8, !tbaa !420
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ab, align 8, !tbaa !410
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ac, align 8, !tbaa !420
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ad, align 8, !tbaa !410
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i32 0, ptr %i.ae, align 8, !tbaa !420
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store ptr null, ptr %i.af, align 8, !tbaa !410
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i32 0, ptr %i.ag, align 8, !tbaa !420
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store ptr null, ptr %i.ah, align 8, !tbaa !410
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i32 0, ptr %i.ai, align 8, !tbaa !420
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store ptr null, ptr %i.aj, align 8, !tbaa !410
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i32 0, ptr %i.ak, align 8, !tbaa !420
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store ptr null, ptr %i.al, align 8, !tbaa !410
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i32 0, ptr %i.am, align 8, !tbaa !420
  %i.an = add i64 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !430
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i, %.loopexit.loopexit
  %i.ap = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.f, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.lcssa, %.loopexit.loopexit ], [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !421
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !214
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !244
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !217
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 48                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i8 0, i64 24, i1 false)
  %i.bc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #36
          to label %bb.c unwind label %.body      ; 2 uses

.body:                                            ; preds = %.loopexit
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.ar) #33
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !415 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 0, i64 %i.bb, i1 false)
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !411
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.at, ptr %i.bg, align 8, !tbaa !843
  %i.bh = and i32 %5, 128
  %.not = icmp eq i32 %i.bh, 0
  %i.bi = and i32 %5, -6
  %spec.select = select i1 %.not, i32 %5, i32 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %spec.select, ptr %i.bj, align 8, !tbaa !409
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

bb.e:                                             ; preds = %.body
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !416
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.be to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bp) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit: ; preds = %bb.e, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.d ], [ %i.bd, %.body ], [ %i.bd, %bb.e ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !108
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !411  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !412  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !413  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !412
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !414
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !415  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !416
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit, %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.g

end_hunk_7
begin_hunk_8_@_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_:bb.a
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.av = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !847

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12, %.lr.ph.i.i.i.i12.prol.loopexit
  %.lcssa29 = phi ptr [ %.lcssa29.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i12 ]
  store ptr %.lcssa29, ptr %i.aa, align 8, !tbaa !433
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.ax = icmp eq i64 %1, 0
  br i1 %i.ax, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i15 = load i8, ptr %i.ba, align 8, !tbaa !429, !range !103 ; 5 uses
  %i.bb = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.bc = udiv i64 %i.bb, 24
  %i.bd = add nuw nsw i64 %i.bc, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i14, %.prol.preheader
  %.06.i.i.i.i16.prol = phi ptr [ %i.bi, %.prol.preheader ], [ %i.c, %.lr.ph.i.i.i.i14 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i14 ]
  %i.be = load i64, ptr %2, align 8, !tbaa !311
  store i64 %i.be, ptr %.06.i.i.i.i16.prol, align 8, !tbaa !311
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16.prol, i64 8
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !311
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !311
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16.prol, i64 16
  store i8 %.pre.i.i.i.i15, ptr %i.bh, align 8, !tbaa !429
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !850

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i16.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.bi, %.prol.preheader ]
  %i.bj = icmp ult i64 %i.bb, 72
  br i1 %i.bj, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new

.lr.ph.i.i.i.i14.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new
  %.06.i.i.i.i16 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i14.new ], [ %.06.i.i.i.i16.unr, %.prol.loopexit ] ; 13 uses
  %i.bk = load i64, ptr %2, align 8, !tbaa !311
  store i64 %i.bk, ptr %.06.i.i.i.i16, align 8, !tbaa !311
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 8
  %i.bm = load i64, ptr %i.az, align 8, !tbaa !311
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !311
  %i.bn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 16
  store i8 %.pre.i.i.i.i15, ptr %i.bn, align 8, !tbaa !429
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 24
  %i.bp = load i64, ptr %2, align 8, !tbaa !311
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !311
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 32
  %i.br = load i64, ptr %i.az, align 8, !tbaa !311
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !311
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 40
  store i8 %.pre.i.i.i.i15, ptr %i.bs, align 8, !tbaa !429
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 48
  %i.bu = load i64, ptr %2, align 8, !tbaa !311
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !311
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 56
  %i.bw = load i64, ptr %i.az, align 8, !tbaa !311
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !311
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 64
  store i8 %.pre.i.i.i.i15, ptr %i.bx, align 8, !tbaa !429
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 72
  %i.bz = load i64, ptr %2, align 8, !tbaa !311
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !311
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 80
  %i.cb = load i64, ptr %i.az, align 8, !tbaa !311
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !311
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 88
  store i8 %.pre.i.i.i.i15, ptr %i.cc, align 8, !tbaa !429
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 96 ; 2 uses
  %.not.i.i.i.i17.3 = icmp eq ptr %i.cd, %i.ay
  br i1 %.not.i.i.i.i17.3, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14.new, !llvm.loop !848

_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i14.new, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.ay, %.lr.ph.i.i.i.i14.new ], [ %i.ay, %.prol.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.aa, align 8, !tbaa !433
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !412    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !413  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !412
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !414
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #34
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.207", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !434  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !435, !nonnull !104, !align !264 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !413  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !414
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.h, align 8, !tbaa !437
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !433  ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !107  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = sdiv exact i64 %i.q, 24
  %i.r = icmp ugt i64 %3, 384307168202282325
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !130

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.b
  %i.t = phi ptr [ null, %bb.b ], [ %i.s, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.t, ptr %i.k, align 8, !tbaa !107
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !433
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !108
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !426  ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !426  ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.x, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !30

_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !433
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !413
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !413
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit

bb.e:                                             ; preds = %bb.a
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq i8 %1, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit
  %.012 = phi i8 [ 0, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit ] ; 3 uses
  store i8 0, ptr %i.ad, align 4, !tbaa !438
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !851 ; 7 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !851 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !430, !nonnull !104, !align !264 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !244 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !217 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.lr.ph.preheader, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 48
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !852
  call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.ay, i1 false), !tbaa !439
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.am, ptr %2, align 8, !tbaa !412
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !413
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !414 ; 2 uses
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !414
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.sroa.019.027 = phi ptr [ %i.bl, %bb.i ], [ %i.am, %.lr.ph.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !108
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !426
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %0, align 8, !tbaa !107   ; 3 uses
  %i.bg = load ptr, ptr %i.ai, align 8, !tbaa !108
  store <2 x ptr> %i.be, ptr %0, align 8, !tbaa !426
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !108
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %bb.h, %.lr.ph
  %i.bk = load i64, ptr %.sroa.019.027, align 8, !tbaa !437
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bk)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.bm

bb.k:                                             ; preds = %._crit_edge
  %i.bn = load i8, ptr %i.ad, align 4, !tbaa !438, !range !103, !noundef !104
  %i.bo = or i8 %i.bn, %.012
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.1 = phi i8 [ %i.bo, %bb.k ], [ %.012, %._crit_edge ] ; 2 uses
  %i.bp = load ptr, ptr %i.ak, align 8, !tbaa !311 ; 2 uses
  %i.bq = load ptr, ptr %i.al, align 8, !tbaa !311
  %.not23 = icmp eq ptr %i.bp, %i.bq              ; 2 uses
  br i1 %.not23, label %.lr.ph.i.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.br, ptr %i.ak, align 8, !tbaa !410
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m, %bb.l
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i ], [ %i.am, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !108
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bz, %i.an
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i
  %i.ca = ptrtoint ptr %i.ba to i64
  %i.cb = ptrtoint ptr %i.am to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.cc) #34
  br label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.not23, label %bb.p, label %bb.f

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit, %bb.f
  %.2 = phi i8 [ %.012, %bb.f ], [ %.1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev.exit ]
  %i.cd = icmp eq i8 %1, 0
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = load i8, ptr %i.ad, align 4, !tbaa !438, !range !103, !noundef !104
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3 = phi i8 [ %i.ce, %bb.q ], [ %.2, %bb.p ]
end_hunk_8
begin_hunk_9_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl:bb.a
  %i.br = and i32 %i.bq, 1
  %.not.i26 = icmp eq i32 %i.br, 0
  br i1 %.not.i26, label %bb.o, label %common.ret

bb.o:                                             ; preds = %bb.n
  %i.bs = and i32 %i.bq, 128
  %.not3.i = icmp eq i32 %i.bs, 0
  br i1 %.not3.i, label %tailrecurse.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !387
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !272
  %i.by = and i32 %i.bx, 2064
  %i.bz = icmp eq i32 %i.by, 2064
  br i1 %i.bz, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !387
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !272
  %i.cf = and i32 %i.ce, 2064
  %i.cg = icmp eq i32 %i.cf, 2064
  br i1 %i.cg, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.ch = getelementptr inbounds i8, ptr %i.bn, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !62
  %i.cj = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.ci)
  br i1 %i.cj, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %.lr.ph
  %i.ck = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !311
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.cn = load i32, ptr %i.j, align 8, !tbaa !408
  %i.co = and i32 %i.cn, 2
  %.not.i28 = icmp eq i32 %i.co, 0
  br i1 %.not.i28, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !387
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !272
  %i.cu = and i32 %i.ct, 2064
  %i.cv = icmp eq i32 %i.cu, 2064
  br i1 %i.cv, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.cw = load i8, ptr %i.ck, align 1, !tbaa !62
  %i.cx = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cw)
  br i1 %i.cx, label %tailrecurse.backedge, label %common.ret

bb.t:                                             ; preds = %.lr.ph
  %i.cy = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !857
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !62, !range !103, !noundef !104
  %i.db = zext i1 %i.cy to i8
  %.not.i = icmp eq i8 %i.da, %i.db
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !62
  %i.de = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.dd), !inline_history !858
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !62, !range !103, !noundef !104
  %i.dh = zext i1 %i.de to i8
  %.not.i24 = icmp eq i8 %i.dg, %i.dh
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.x:                                             ; preds = %.lr.ph
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !311 ; 2 uses
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !311
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dl = load i32, ptr %i.j, align 8, !tbaa !408
  %i.dm = and i32 %i.dl, 32
  %.not.i25 = icmp eq i32 %i.dm, 0
  br i1 %.not.i25, label %bb.z, label %common.ret

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dn = icmp eq i8 %1, 1
  br i1 %i.dn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !311
  %i.dp = icmp eq ptr %i.di, %i.do
  br i1 %i.dp, label %bb.ab, label %common.ret

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dq = load i8, ptr %i.m, align 4, !tbaa !438, !range !103, !noundef !104
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %common.ret, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.m, align 4, !tbaa !438
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !435, !nonnull !104, !align !264
  %i.du = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ad:                                            ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !272
  %i.dx = and i32 %i.dw, 16
  %.not.i88 = icmp eq i32 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dz), !inline_history !859
  %i.ea = load i8, ptr %i.m, align 4, !tbaa !438, !range !103, !noundef !104 ; 2 uses
  br i1 %.not.i88, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !220 ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !411
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !439, !range !103, !noundef !104
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %common.ret, label %.lr.ph.backedge

bb.af:                                            ; preds = %bb.ad
  store i8 0, ptr %i.m, align 4, !tbaa !438
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !220
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ej), !inline_history !859
  %i.ek = load i8, ptr %i.m, align 4, !tbaa !438, !range !103, !noundef !104
  %i.el = or i8 %i.ek, %i.ea
  store i8 %i.el, ptr %i.m, align 4, !tbaa !438
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !412    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !135
  store i64 %i.r, ptr %i.q, align 8, !tbaa !437
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !433  ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !107    ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %4 = sdiv exact i64 %i.y, 24
  %i.z = icmp ugt i64 %4, 384307168202282325
  br i1 %i.z, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !130

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #36
          to label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge unwind label %bb.f

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !426
  %.pre45 = load ptr, ptr %i.t, align 8, !tbaa !426
  br label %.noexc27

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.ab = phi ptr [ %i.u, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ], [ %.pre45, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 2 uses
  %i.ac = phi ptr [ %i.v, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 2 uses
  %i.ad = phi ptr [ null, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ], [ %i.aa, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 5 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !433
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !108
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.noexc27 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !30

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc27
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc27 ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !433
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !437, !alias.scope !868, !noalias !867
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !437, !alias.scope !867, !noalias !868
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !426, !alias.scope !868, !noalias !867
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !426, !alias.scope !867, !noalias !868
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !108, !alias.scope !868, !noalias !867
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !108, !alias.scope !867, !noalias !868
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !alias.scope !868, !noalias !867
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i, !llvm.loop !863

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bb, %.lr.ph.i.i.i29 ], [ %i.as, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.ba, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.at = load i64, ptr %.0911.i.i.i31, align 8, !tbaa !437, !alias.scope !870, !noalias !869
  store i64 %i.at, ptr %.012.i.i.i30, align 8, !tbaa !437, !alias.scope !869, !noalias !870
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !426, !alias.scope !870, !noalias !869
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !426, !alias.scope !869, !noalias !870
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !108, !alias.scope !870, !noalias !869
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !108, !alias.scope !869, !noalias !870
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !870, !noalias !869
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !863

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.as, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ], [ %i.bb, %.lr.ph.i.i.i29 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !414
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #34
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit: ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !412
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !413
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !414
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = tail call ptr @__cxa_begin_catch(ptr %i.bj) #33 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bh

bb.h:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #37
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430, !nonnull !104, !align !264
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !217
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %2 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !311  ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !311
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.j, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.m, ptr %i.b, align 1, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #35
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit:     ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !247
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !220  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.u, ptr %i.a, align 8, !tbaa !135
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !413  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !414
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.u, ptr %i.w, align 8, !tbaa !437
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !433 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !107   ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = sdiv exact i64 %i.af, 24
  %i.ag = icmp ugt i64 %3, 384307168202282325
  br i1 %i.ag, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !130

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #36
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ai = phi ptr [ null, %bb.e ], [ %i.ah, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !433
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !108
  %i.am = load ptr, ptr %0, align 8, !tbaa !426   ; 2 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !426 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.am, %bb.g ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !30

_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !433
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !413
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !413
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit

bb.h:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit: ; preds = %_ZNSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEEC2IRlRKSF_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISM_SN_EEEbE4typeELb1EEEOSM_OSN_.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EE8_M_queueElRKSM_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_Backref_matcher", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !430, !nonnull !104, !align !264
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !62
  %i.h = load ptr, ptr %0, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.g ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !429, !range !103, !noundef !104
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !311  ; 2 uses
  %.not22 = icmp eq ptr %i.q, %i.o
  br i1 %.not22, label %..critedge_crit_edge, label %.lr.ph

..critedge_crit_edge:                             ; preds = %bb.b
  %.sroa.05.0.copyload.pre = load ptr, ptr %i.i, align 8, !tbaa !311
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.04.0.copyload.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !311
  br label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.i, align 8
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !311  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.024 = phi ptr [ %i.t, %.lr.ph ], [ %i.ag, %bb.d ] ; 2 uses
  %.sroa.017.023 = phi ptr [ %i.o, %.lr.ph ], [ %i.af, %bb.d ] ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.024, %i.u
  br i1 %.not20, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %bb.d, %..critedge_crit_edge
  %.sroa.04.0.copyload = phi ptr [ %.sroa.04.0.copyload.pre, %..critedge_crit_edge ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  %.sroa.05.0.copyload = phi ptr [ %.sroa.05.0.copyload.pre, %..critedge_crit_edge ], [ %i.t, %bb.d ], [ %i.t, %bb.c ]
  %.sroa.017.0.lcssa = phi ptr [ %i.o, %..critedge_crit_edge ], [ %.sroa.017.023, %bb.c ], [ %i.af, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !440, !nonnull !104, !align !264 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !75
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !387
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = and i8 %i.y, 1
  store i8 %i.ac, ptr %3, align 8, !tbaa !442
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !200
  %i.ae = call noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %.sroa.05.0.copyload, ptr %.sroa.04.0.copyload, ptr %i.o, ptr %.sroa.017.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %i.ae, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.017.023, i64 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 1
  %.not = icmp eq ptr %i.af, %i.q
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !872

bb.e:                                             ; preds = %.critedge
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !311 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.017.0.lcssa, %i.ah
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = ptrtoint ptr %.sroa.017.0.lcssa to i64
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !311
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !220
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ak)
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !311
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !220
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.am)
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_rep_once_moreENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !430, !nonnull !104, !align !264
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !415
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !420  ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.sroa.0.0.copyload.pre = load i64, ptr %i.h, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !311
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq ptr %i.m, %i.n
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.q = phi i64 [ %.pre, %._crit_edge ], [ %i.p, %bb.b ]
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %._crit_edge ], [ %i.o, %bb.b ]
  store i64 %i.q, ptr %i.h, align 8, !tbaa !311
  store i32 1, ptr %i.i, align 8, !tbaa !420
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.s)
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !311
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.t = icmp slt i32 %i.j, 2
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.j, 1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !420
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62
end_hunk_9
begin_hunk_10_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !311  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !311
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !408
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !311
  %i.k = icmp eq ptr %i.c, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !408
  %i.n = and i32 %i.m, 8
  %.not5 = icmp eq i32 %i.n, 0
  br i1 %.not5, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load i32, ptr %i.o, align 8, !tbaa !408
  %i.q = and i32 %i.p, 128
  %.not6 = icmp eq i32 %i.q, 0
  br i1 %.not6, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !62    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !387
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !205
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !269
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !271
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !358
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !62
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !873
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !311 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !311
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !62  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !387
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !201
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !205
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !207 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !269
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !271
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !358
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !62
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !873
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.197", align 8   ; 10 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !433  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %4, 384307168202282325
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !130

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  %.pre = load ptr, ptr %0, align 8, !tbaa !426
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !426
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre22, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !108
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !433
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !311
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !311
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !440, !nonnull !104, !align !264
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !408
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr %.sroa.06.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.v)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.w, align 8, !tbaa !434
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.x, align 8, !tbaa !311
  store i64 %i.z, ptr %i.y, align 8, !tbaa !311
  %i.aa = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !874 ; 2 uses

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.aa, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !433 ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !107   ; 5 uses
  %.not = icmp eq ptr %i.ab, %i.ac
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = sdiv exact i64 %i.af, 24                ; 3 uses
  %xtraiter = and i64 %i.ag, 1
  %i.ah = icmp eq i64 %i.af, 24
  br i1 %i.ah, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ag, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #33
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bh, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.021 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i8, ptr %i.al, align 8, !tbaa !429, !range !103, !noundef !104
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.ao = load ptr, ptr %0, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.021 ; 3 uses
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !311
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !311
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !311
  store i64 %i.at, ptr %i.as, align 8, !tbaa !311
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i8 1, ptr %i.au, align 8, !tbaa !429
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.av = or disjoint i64 %.021, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !429, !range !103, !noundef !104
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.ba = load ptr, ptr %0, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.av ; 3 uses
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !311
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !311
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !311
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !311
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i8 1, ptr %i.bg, align 8, !tbaa !429
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bh = add nuw i64 %.021, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !875

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i64 %i.ag to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.021.epil.init ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !429, !range !103, !noundef !104
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bm = load ptr, ptr %0, align 8, !tbaa !107
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.021.epil.init ; 3 uses
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !311
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !311
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !311
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !311
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i8 1, ptr %i.bs, align 8, !tbaa !429
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !411 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !412 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !413 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bx, %i.bz
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bx, %bb.l ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i16
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !108
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #34
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
end_hunk_10
begin_hunk_11_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl:bb.a
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !414
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !415 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !416
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cv = load ptr, ptr %3, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !108
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #34
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.db = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i1 %i.aa

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.ai, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.dg = load ptr, ptr %2, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dk) #34
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !442, !range !103, !noundef !104
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !878, !nonnull !104, !align !264
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #33
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.l = load ptr, ptr %5, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !205
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  %.not.i16 = icmp eq i64 %i.s, %i.v
  br i1 %.not.i16, label %bb.g, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.not8.i.i = icmp eq ptr %1, %2
  br i1 %.not8.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.05.010.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %1, %bb.g ] ; 2 uses
  %.sroa.02.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %3, %bb.g ] ; 2 uses
  %i.w = load i8, ptr %.sroa.05.010.i.i, align 1, !tbaa !62
  %i.x = load i8, ptr %.sroa.02.09.i.i, align 1, !tbaa !62
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.w), !inline_history !876
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.x), !inline_history !876
  %i.ag = icmp eq i8 %i.ab, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.09.i.i, i64 1
  %.not.i.i = icmp ne ptr %i.ah, %2
  %or.cond.not = select i1 %i.ag, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, !llvm.loop !877

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %i.aj

_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit: ; preds = %.lr.ph.i.i, %bb.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ %.not9.i.i.i.i.i, %bb.d ], [ false, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ], [ true, %bb.g ], [ %i.ag, %.lr.ph.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !433  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !107    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = load ptr, ptr %0, align 8, !tbaa !107    ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.f, 24
  %i.n = icmp ugt i64 %2, 384307168202282325
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i, !prof !130

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #34
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.z, ptr %i.g, align 8, !tbaa !108
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !433 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ad, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.f, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.af = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.ag = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !311
  store i64 %i.ag, ptr %.0811.i.i.i.i.i, align 8, !tbaa !311
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !311
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !311
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !429, !range !103, !noundef !104
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.al, ptr %i.am, align 8, !tbaa !429
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ap = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, !llvm.loop !879

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.as = icmp sgt i64 %i.ad, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.at = udiv exact i64 %i.ad, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i27 ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %i.au = load i64, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !311
  store i64 %i.au, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !311
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !311
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !311
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !429, !range !103, !noundef !104
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i8 %i.az, ptr %i.ba, align 8, !tbaa !429
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.bd = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, !llvm.loop !880

_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ar, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.ar, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !881

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !107
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit
  %i.bh = phi ptr [ %i.o, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !433
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr37 = phi i64 [ %2, %bb.a ], [ %.tr37.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !443, !nonnull !104, !align !264 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !217
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr37 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !232
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.u
    i32 6, label %bb.w
    i32 7, label %bb.x
    i32 11, label %bb.y
    i32 3, label %bb.ac
    i32 12, label %bb.ad
    i32 1, label %bb.am
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !62, !range !103, !noundef !104
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !415
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr37 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !420  ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.sroa.029.0.copyload.pre = load i64, ptr %i.s, align 8
  %.pre = load i64, ptr %i.c, align 8, !tbaa !311
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.w, %i.x
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.aa = phi i64 [ %.pre, %._crit_edge ], [ %i.z, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.y, %bb.d ]
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !311
  store i32 1, ptr %i.t, align 8, !tbaa !420
end_hunk_11
begin_hunk_12_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE21_M_is_line_terminatorEc:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(117) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !311  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !311
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !432
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !311
  %i.k = icmp eq ptr %i.c, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !432
  %i.n = and i32 %i.m, 8
  %.not5 = icmp eq i32 %i.n, 0
  br i1 %.not5, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !432
  %i.q = and i32 %i.p, 128
  %.not6 = icmp eq i32 %i.q, 0
  br i1 %.not6, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !62    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !444, !nonnull !104, !align !264
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !387
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !205
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !269
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !271
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !358
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !62
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !892
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !311 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !311
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !62  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !444, !nonnull !104, !align !264
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !387
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #33
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !201
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !205
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !207 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !269
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !271
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !358
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !62
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !892
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.197", align 8   ; 11 uses
  %3 = alloca %"class.std::__detail::_Executor.212", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !433  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = sdiv exact i64 %i.f, 24
  %i.g = icmp ugt i64 %4, 384307168202282325
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !130

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  %.pre = load ptr, ptr %0, align 8, !tbaa !426
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !426
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre26, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !108
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !433
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !311 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i32, ptr %i.t, align 8, !tbaa !432  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.v, align 8, !tbaa !311
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !444, !nonnull !104, !align !264
  %i.y = load <2 x ptr>, ptr %i.r, align 8, !tbaa !131
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !387 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !248
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ac, align 8, !tbaa !418
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !244 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !217 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 48                ; 7 uses
  %5 = icmp ugt i64 %i.al, 576460752303423487
  %i.am = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %5, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #35
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i.i.i16, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.an = shl nuw nsw i64 %i.al, 4
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #36
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !415
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !416
  %xtraiter = and i64 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.al, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !410
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.ar, align 8, !tbaa !420
  %i.as = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !893

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ao, %.noexc9.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.al, %.noexc9.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.au = icmp ult i64 %i.al, 8
  br i1 %i.au, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !410
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !420
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.aw, align 8, !tbaa !410
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ax, align 8, !tbaa !420
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ay, align 8, !tbaa !410
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.az, align 8, !tbaa !420
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ba, align 8, !tbaa !410
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bb, align 8, !tbaa !420
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bc, align 8, !tbaa !410
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bd, align 8, !tbaa !420
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.be, align 8, !tbaa !410
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bf, align 8, !tbaa !420
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bg, align 8, !tbaa !410
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bh, align 8, !tbaa !420
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bi, align 8, !tbaa !410
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bj, align 8, !tbaa !420
  %i.bk = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !29

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !421
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bq = and i32 %i.u, 128
  %.not.i = icmp eq i32 %i.bq, 0
  %i.br = and i32 %i.u, -6
  %spec.select = select i1 %.not.i, i32 %i.u, i32 %i.br
  store i32 %spec.select, ptr %i.bp, align 8, !tbaa !409
  store i64 %1, ptr %i.bn, align 8, !tbaa !425
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.am, ptr %i.bs, align 8, !tbaa !311
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bt, align 4, !tbaa !424
  store i64 0, ptr %i.bo, align 8, !tbaa !311
  %i.bu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !894 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.bw = load i64, ptr %i.bn, align 8, !tbaa !425
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.bw)
          to label %bb.f unwind label %bb.g, !inline_history !894

bb.f:                                             ; preds = %.noexc
  %i.bx = load i8, ptr %i.bt, align 4, !tbaa !424, !range !103, !noundef !104
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  br i1 %i.by, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !433 ; 2 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !107   ; 5 uses
  %.not = icmp eq ptr %i.bz, %i.ca
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = sdiv exact i64 %i.cd, 24                ; 3 uses
  %xtraiter40 = and i64 %i.ce, 1
  %i.cf = icmp eq i64 %i.cd, 24
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ce, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #33
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.de, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.024 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !429, !range !103, !noundef !104
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %0, align 8, !tbaa !107
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.024 ; 3 uses
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !311
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !311
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !311
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !311
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i8 1, ptr %i.cr, align 8, !tbaa !429
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cs = or disjoint i64 %.024, 1                ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !429, !range !103, !noundef !104
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cx = load ptr, ptr %0, align 8, !tbaa !107
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cs ; 3 uses
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !311
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !311
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !311
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !311
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i8 1, ptr %i.dd, align 8, !tbaa !429
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.de = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !895

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.de, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i64 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.024.epil.init ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !429, !range !103, !noundef !104
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dj = load ptr, ptr %0, align 8, !tbaa !107
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %.024.epil.init ; 3 uses
  %i.dl = load i64, ptr %i.df, align 8, !tbaa !311
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !311
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !311
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !311
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i8 1, ptr %i.dp, align 8, !tbaa !429
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dq = load ptr, ptr %i.ad, align 8, !tbaa !415 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !416
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #34
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.dw = load ptr, ptr %3, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !108
end_hunk_12
