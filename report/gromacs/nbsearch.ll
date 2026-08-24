Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nbsearch?download=true
inline.NumInlined: 744
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3gmx26AnalysisNeighborhoodSearch5resetEv:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !234
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !234
  br label %_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !52

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37
  br label %_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN3gmx8internal30AnalysisNeighborhoodSearchImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !50
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !50
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !52

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 1, 3) i32 @_ZNK3gmx26AnalysisNeighborhoodSearch4modeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx26AnalysisNeighborhoodSearch4modeEvENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 1358) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.c = load i8, ptr %i.b, align 8, !tbaa !94, !range !95, !noundef !92
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.d, i32 2, i32 1
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3gmx26AnalysisNeighborhoodSearch8isWithinERKNS_29AnalysisNeighborhoodPositionsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.gmx::internal::AnalysisNeighborhoodPairSearchImpl", align 8 ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx26AnalysisNeighborhoodSearch8isWithinERKNS_29AnalysisNeighborhoodPositionsEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 1365) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.a, ptr %2, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 60
  store <2 x float> zeroinitializer, ptr %i.d, align 4, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 68
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <2 x float> zeroinitializer, ptr %i.f, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 108
  store i32 -1, ptr %i.k, align 4, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 -1, ptr %i.l, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.n, align 8, !tbaa !86
  store i8 0, ptr %i.b, align 8, !tbaa !78
  %i.o = load i32, ptr %1, align 8, !tbaa !150
  store i32 %i.o, ptr %i.c, align 4, !tbaa !190
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !160
  %i.t = load <2 x ptr>, ptr %i.p, align 8, !tbaa !100
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.v, ptr %i.w, align 8, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = icmp ne ptr %i.y, null
  %.not.i = icmp eq ptr %i.s, null
  %or.cond.i = select i1 %i.z, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl11startSearchERKNS_29AnalysisNeighborhoodPositionsEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 1048) #41
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139 ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl11startSearchERKNS_29AnalysisNeighborhoodPositionsE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nuw nsw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !190
  br label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl11startSearchERKNS_29AnalysisNeighborhoodPositionsE.exit

_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl11startSearchERKNS_29AnalysisNeighborhoodPositionsE.exit: ; preds = %bb.e, %bb.f
  %.sink.i = phi i32 [ %i.ab, %bb.f ], [ 0, %bb.e ]
  call void @_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl5resetEi(ptr noundef nonnull align 8 dereferenceable(140) %2, i32 noundef %.sink.i)
  %i.ae = call noundef zeroext i1 @_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10searchNextIPFbifPKfEEEbT_(ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull @_ZN3gmx12_GLOBAL__N_112withinActionEifPKf)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret i1 %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10searchNextIPFbifPKfEEEbT_(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 8 uses
  %i.b = alloca [3 x float], align 8              ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !83
  %i.f = load i32, ptr %i.d, align 4, !tbaa !190
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %.lr.ph126, label %.loopexit78

.lr.ph126:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 124
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph126, %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl16nextTestPositionEv.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !91     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 440
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !94, !range !95, !noundef !92
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !86
  %i.ad = add nsw i32 %i.ac, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.v, %bb.c
  %.036 = phi i32 [ %i.ad, %bb.c ], [ %.339.ph, %bb.v ] ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !91    ; 25 uses
  %i.af = load i32, ptr %i.q, align 8, !tbaa !41  ; 4 uses
  %i.ag = load i32, ptr %i.r, align 4, !tbaa !41  ; 4 uses
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !41  ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 520
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 442
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !41 ; 5 uses
  %i.am = load i8, ptr %i.aj, align 2, !tbaa !40, !range !95, !noundef !92
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.preheader20.i, label %.loopexit.i

.preheader20.i:                                   ; preds = %bb.d
  %i.ao = icmp slt i32 %i.af, 0
  br i1 %i.ao, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader20.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.aq = load <2 x float>, ptr %i.ak, align 4, !tbaa !82
  %i.ar = load float, ptr %i.ap, align 4, !tbaa !82
  br label %bb.e

.preheader.i:                                     ; preds = %bb.e, %.preheader20.i
  %.sroa.18.4 = phi float [ 0.000000e+00, %.preheader20.i ], [ %i.bf, %bb.e ] ; 2 uses
  %.lcssa21.i = phi i32 [ %i.af, %.preheader20.i ], [ %i.bd, %bb.e ] ; 3 uses
  %i.as = phi <2 x float> [ zeroinitializer, %.preheader20.i ], [ %i.be, %bb.e ] ; 2 uses
  %.not23.i = icmp slt i32 %.lcssa21.i, %i.al
  %i.at = extractelement <2 x float> %i.as, i64 0 ; 2 uses
  %i.au = extractelement <2 x float> %i.as, i64 1 ; 2 uses
  br i1 %.not23.i, label %.loopexit.i, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ax = load float, ptr %i.ak, align 4, !tbaa !82
  %i.ay = load float, ptr %i.av, align 4, !tbaa !82
  %i.az = load float, ptr %i.aw, align 4, !tbaa !82
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ba = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bf, %bb.e ]
  %i.bb = phi i32 [ %i.af, %.lr.ph.i ], [ %i.bd, %bb.e ]
  %i.bc = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.be, %bb.e ]
  %i.bd = add nsw i32 %i.bb, %i.al                ; 3 uses
  %i.be = fadd <2 x float> %i.bc, %i.aq           ; 2 uses
  %i.bf = fadd float %i.ba, %i.ar                 ; 2 uses
  %i.bg = icmp slt i32 %i.bd, 0
  br i1 %i.bg, label %bb.e, label %.preheader.i, !llvm.loop !137

bb.f:                                             ; preds = %bb.f, %.lr.ph24.i
  %i.bh = phi float [ %.sroa.18.4, %.lr.ph24.i ], [ %i.bo, %bb.f ]
  %i.bi = phi float [ %i.au, %.lr.ph24.i ], [ %i.bn, %bb.f ]
  %i.bj = phi float [ %i.at, %.lr.ph24.i ], [ %i.bm, %bb.f ]
  %i.bk = phi i32 [ %.lcssa21.i, %.lr.ph24.i ], [ %i.bl, %bb.f ]
  %i.bl = sub nsw i32 %i.bk, %i.al                ; 3 uses
  %i.bm = fsub float %i.bj, %i.ax                 ; 2 uses
  %i.bn = fsub float %i.bi, %i.ay                 ; 2 uses
  %i.bo = fsub float %i.bh, %i.az                 ; 2 uses
  %.not.i = icmp slt i32 %i.bl, %i.al
  br i1 %.not.i, label %.loopexit.i, label %bb.f, !llvm.loop !138

.loopexit.i:                                      ; preds = %bb.f, %.preheader.i, %bb.d
  %.sroa.18.0 = phi float [ %.sroa.18.4, %.preheader.i ], [ 0.000000e+00, %bb.d ], [ %i.bo, %bb.f ] ; 3 uses
  %.sroa.10.0 = phi float [ %i.au, %.preheader.i ], [ 0.000000e+00, %bb.d ], [ %i.bn, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi float [ %i.at, %.preheader.i ], [ 0.000000e+00, %bb.d ], [ %i.bm, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.lcssa21.i, %.preheader.i ], [ %i.af, %bb.d ], [ %i.bl, %bb.f ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 524
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !41 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 443
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !40, !range !95, !noundef !92
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.preheader20.1.i, label %.loopexit.1.i

.preheader20.1.i:                                 ; preds = %.loopexit.i
  %i.bu = icmp slt i32 %i.ag, 0
  br i1 %i.bu, label %.lr.ph.1.i, label %.preheader.1.i

.lr.ph.1.i:                                       ; preds = %.preheader20.1.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 84
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 92
  %i.by = load float, ptr %i.bv, align 4, !tbaa !82
  %i.bz = load float, ptr %i.bw, align 4, !tbaa !82
  %i.ca = load float, ptr %i.bx, align 4, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.1.i
  %i.cb = phi float [ %.sroa.18.0, %.lr.ph.1.i ], [ %i.ci, %bb.g ]
  %i.cc = phi float [ %.sroa.10.0, %.lr.ph.1.i ], [ %i.ch, %bb.g ]
  %i.cd = phi float [ %.sroa.0.0, %.lr.ph.1.i ], [ %i.cg, %bb.g ]
  %i.ce = phi i32 [ %i.ag, %.lr.ph.1.i ], [ %i.cf, %bb.g ]
  %i.cf = add nsw i32 %i.ce, %i.bq                ; 3 uses
  %i.cg = fadd float %i.cd, %i.by                 ; 2 uses
  %i.ch = fadd float %i.cc, %i.bz                 ; 2 uses
  %i.ci = fadd float %i.cb, %i.ca                 ; 2 uses
  %i.cj = icmp slt i32 %i.cf, 0
  br i1 %i.cj, label %bb.g, label %.preheader.1.i, !llvm.loop !137

.preheader.1.i:                                   ; preds = %bb.g, %.preheader20.1.i
  %.sroa.18.3 = phi float [ %.sroa.18.0, %.preheader20.1.i ], [ %i.ci, %bb.g ] ; 2 uses
  %.sroa.10.3 = phi float [ %.sroa.10.0, %.preheader20.1.i ], [ %i.ch, %bb.g ] ; 2 uses
  %.sroa.0.3 = phi float [ %.sroa.0.0, %.preheader20.1.i ], [ %i.cg, %bb.g ] ; 2 uses
  %.lcssa21.1.i = phi i32 [ %i.ag, %.preheader20.1.i ], [ %i.cf, %bb.g ] ; 3 uses
  %.not23.1.i = icmp slt i32 %.lcssa21.1.i, %i.bq
  br i1 %.not23.1.i, label %.loopexit.1.i, label %.lr.ph24.1.i

.lr.ph24.1.i:                                     ; preds = %.preheader.1.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 84
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 92
  %i.cn = load float, ptr %i.ck, align 4, !tbaa !82
  %i.co = load float, ptr %i.cl, align 4, !tbaa !82
  %i.cp = load float, ptr %i.cm, align 4, !tbaa !82
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph24.1.i
  %i.cq = phi float [ %.sroa.18.3, %.lr.ph24.1.i ], [ %i.cx, %bb.h ]
  %i.cr = phi float [ %.sroa.10.3, %.lr.ph24.1.i ], [ %i.cw, %bb.h ]
  %i.cs = phi float [ %.sroa.0.3, %.lr.ph24.1.i ], [ %i.cv, %bb.h ]
  %i.ct = phi i32 [ %.lcssa21.1.i, %.lr.ph24.1.i ], [ %i.cu, %bb.h ]
  %i.cu = sub nsw i32 %i.ct, %i.bq                ; 3 uses
  %i.cv = fsub float %i.cs, %i.cn                 ; 2 uses
  %i.cw = fsub float %i.cr, %i.co                 ; 2 uses
  %i.cx = fsub float %i.cq, %i.cp                 ; 2 uses
  %.not.1.i = icmp slt i32 %i.cu, %i.bq
  br i1 %.not.1.i, label %.loopexit.1.i, label %bb.h, !llvm.loop !138

.loopexit.1.i:                                    ; preds = %bb.h, %.preheader.1.i, %.loopexit.i
  %.sroa.18.1 = phi float [ %.sroa.18.3, %.preheader.1.i ], [ %.sroa.18.0, %.loopexit.i ], [ %i.cx, %bb.h ] ; 3 uses
  %.sroa.10.1 = phi float [ %.sroa.10.3, %.preheader.1.i ], [ %.sroa.10.0, %.loopexit.i ], [ %i.cw, %bb.h ] ; 3 uses
  %.sroa.0.1 = phi float [ %.sroa.0.3, %.preheader.1.i ], [ %.sroa.0.0, %.loopexit.i ], [ %i.cv, %bb.h ] ; 3 uses
  %.sroa.7.0.i = phi i32 [ %.lcssa21.1.i, %.preheader.1.i ], [ %i.ag, %.loopexit.i ], [ %i.cu, %bb.h ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ae, i64 528
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !41 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ae, i64 444
  %i.db = load i8, ptr %i.da, align 4, !tbaa !40, !range !95, !noundef !92
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.preheader20.2.i, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit

.preheader20.2.i:                                 ; preds = %.loopexit.1.i
  %i.dd = icmp slt i32 %i.ah, 0
  br i1 %i.dd, label %.lr.ph.2.i, label %.preheader.2.i

.lr.ph.2.i:                                       ; preds = %.preheader20.2.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.df = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.dh = load float, ptr %i.de, align 4, !tbaa !82
  %i.di = load float, ptr %i.df, align 4, !tbaa !82
  %i.dj = load float, ptr %i.dg, align 4, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.2.i
  %i.dk = phi float [ %.sroa.18.1, %.lr.ph.2.i ], [ %i.dr, %bb.i ]
  %i.dl = phi float [ %.sroa.10.1, %.lr.ph.2.i ], [ %i.dq, %bb.i ]
  %i.dm = phi float [ %.sroa.0.1, %.lr.ph.2.i ], [ %i.dp, %bb.i ]
  %i.dn = phi i32 [ %i.ah, %.lr.ph.2.i ], [ %i.do, %bb.i ]
  %i.do = add nsw i32 %i.dn, %i.cz                ; 3 uses
  %i.dp = fadd float %i.dm, %i.dh                 ; 2 uses
  %i.dq = fadd float %i.dl, %i.di                 ; 2 uses
  %i.dr = fadd float %i.dk, %i.dj                 ; 2 uses
  %i.ds = icmp slt i32 %i.do, 0
  br i1 %i.ds, label %bb.i, label %.preheader.2.i, !llvm.loop !137

.preheader.2.i:                                   ; preds = %bb.i, %.preheader20.2.i
  %.sroa.18.2 = phi float [ %.sroa.18.1, %.preheader20.2.i ], [ %i.dr, %bb.i ] ; 2 uses
  %.sroa.10.2 = phi float [ %.sroa.10.1, %.preheader20.2.i ], [ %i.dq, %bb.i ] ; 2 uses
  %.sroa.0.2 = phi float [ %.sroa.0.1, %.preheader20.2.i ], [ %i.dp, %bb.i ] ; 2 uses
  %.lcssa21.2.i = phi i32 [ %i.ah, %.preheader20.2.i ], [ %i.do, %bb.i ] ; 3 uses
  %.not23.2.i = icmp slt i32 %.lcssa21.2.i, %i.cz
  br i1 %.not23.2.i, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit, label %.lr.ph24.2.i

.lr.ph24.2.i:                                     ; preds = %.preheader.2.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.dw = load float, ptr %i.dt, align 4, !tbaa !82
  %i.dx = load float, ptr %i.du, align 4, !tbaa !82
  %i.dy = load float, ptr %i.dv, align 4, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph24.2.i
  %i.dz = phi float [ %.sroa.18.2, %.lr.ph24.2.i ], [ %i.eg, %bb.j ]
  %i.ea = phi float [ %.sroa.10.2, %.lr.ph24.2.i ], [ %i.ef, %bb.j ]
  %i.eb = phi float [ %.sroa.0.2, %.lr.ph24.2.i ], [ %i.ee, %bb.j ]
  %i.ec = phi i32 [ %.lcssa21.2.i, %.lr.ph24.2.i ], [ %i.ed, %bb.j ]
  %i.ed = sub nsw i32 %i.ec, %i.cz                ; 3 uses
  %i.ee = fsub float %i.eb, %i.dw                 ; 2 uses
  %i.ef = fsub float %i.ea, %i.dx                 ; 2 uses
  %i.eg = fsub float %i.dz, %i.dy                 ; 2 uses
  %.not.2.i = icmp slt i32 %i.ed, %i.cz
  br i1 %.not.2.i, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit, label %bb.j, !llvm.loop !138

_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit: ; preds = %bb.j, %.loopexit.1.i, %.preheader.2.i
  %.sroa.18.5 = phi float [ %.sroa.18.2, %.preheader.2.i ], [ %.sroa.18.1, %.loopexit.1.i ], [ %i.eg, %bb.j ]
  %.sroa.10.5 = phi float [ %.sroa.10.2, %.preheader.2.i ], [ %.sroa.10.1, %.loopexit.1.i ], [ %i.ef, %bb.j ]
  %.sroa.0.5 = phi float [ %.sroa.0.2, %.preheader.2.i ], [ %.sroa.0.1, %.loopexit.1.i ], [ %i.ee, %bb.j ]
  %.sroa.12.0.i = phi i32 [ %.lcssa21.2.i, %.preheader.2.i ], [ %i.ah, %.loopexit.1.i ], [ %i.ed, %bb.j ]
  %i.eh = mul i32 %.sroa.12.0.i, %i.bq
  %reass.add.i.i = add i32 %i.eh, %.sroa.7.0.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %i.al
  %i.ei = add i32 %reass.mul.i.i, %.sroa.0.0.i    ; 3 uses
  %i.ej = load i8, ptr %i.t, align 8, !tbaa !78, !range !95, !noundef !92
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit
  %i.el = load i32, ptr %i.u, align 4, !tbaa !84
  %i.em = icmp sgt i32 %i.ei, %i.el
  br i1 %i.em, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.ae, i64 536
  %i.eo = sext i32 %i.ei to i64                   ; 2 uses
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !63
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.ep, i64 %i.eo ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !99
  %i.et = load ptr, ptr %i.eq, align 8, !tbaa !65
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 2
  %i.ey = trunc i64 %i.ex to i32                  ; 2 uses
  %i.ez = icmp slt i32 %.036, %i.ey
  br i1 %i.ez, label %.lr.ph124.preheader, label %._crit_edge

.lr.ph124.preheader:                              ; preds = %bb.l
  %i.fa = sext i32 %.036 to i64
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.thread
  %indvars.iv164 = phi i64 [ %i.fa, %.lr.ph124.preheader ], [ %indvars.iv.next165, %.thread ] ; 3 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !91    ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 536
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !63
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.eo
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !65
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv164
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !41 ; 6 uses
  %i.fi = load i8, ptr %i.t, align 8, !tbaa !78, !range !95, !noundef !92
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph124
  %i.fk = load i32, ptr %i.u, align 4, !tbaa !84
  %i.fl = icmp eq i32 %i.ei, %i.fk
  br i1 %i.fl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fm = load i32, ptr %i.c, align 8, !tbaa !83
  %.not49 = icmp slt i32 %i.fh, %i.fm
  br i1 %.not49, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph124
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.i, align 8 ; 2 uses
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !191
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = lshr exact i64 %i.fq, 2
  %i.fs = trunc i64 %i.fr to i32                  ; 2 uses
  %i.ft = load i32, ptr %i.k, align 4, !tbaa !192 ; 2 uses
  %i.fu = icmp slt i32 %i.ft, %i.fs
  br i1 %i.fu, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !152 ; 2 uses
  %.not.i50 = icmp eq ptr %i.fw, null
  br i1 %.not.i50, label %.lr.ph.i51, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fx = sext i32 %i.fh to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !41
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.q, %bb.p
  %i.ga = phi i32 [ %i.fz, %bb.q ], [ %i.fh, %bb.p ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !159
  %i.gd = sext i32 %i.ga to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !41 ; 2 uses
  %i.gg = sext i32 %i.ft to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i51
  %indvars.iv.i = phi i64 [ %i.gg, %.lr.ph.i51 ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %indvars.iv.i
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !41 ; 2 uses
  %i.gj = icmp slt i32 %i.gi, %i.gf
  br i1 %i.gj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gk = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  store i32 %i.gk, ptr %i.k, align 4, !tbaa !192
  %exitcond.not.i = icmp eq i32 %i.gk, %i.fs
  br i1 %exitcond.not.i, label %.loopexit, label %bb.r, !llvm.loop !193

bb.t:                                             ; preds = %bb.r
  %i.gl = icmp eq i32 %i.gf, %i.gi
  br i1 %i.gl, label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit, label %.loopexit

_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit: ; preds = %bb.t
  %i.gm = trunc nsw i64 %indvars.iv.i to i32
  %i.gn = add nsw i32 %i.gm, 1
  store i32 %i.gn, ptr %i.k, align 4, !tbaa !192
  br label %.thread

.loopexit:                                        ; preds = %bb.s, %bb.t, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.go = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !154
  %i.gq = sext i32 %i.fh to i64
  %i.gr = getelementptr inbounds [12 x i8], ptr %i.gp, i64 %i.gq ; 3 uses
  %4 = load float, ptr %i.gr, align 4, !tbaa !82
  %5 = load float, ptr %i.l, align 4, !tbaa !82
  %6 = fsub float %4, %5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !82
  %i.gu = load float, ptr %2, align 8, !tbaa !82
  %i.gv = fsub float %i.gt, %i.gu
  %7 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %8 = load float, ptr %7, align 4, !tbaa !82
  %9 = load float, ptr %i.m, align 4, !tbaa !82
  %i.gw = fsub float %8, %9
  %10 = fsub float %6, %.sroa.0.5                 ; 3 uses
  %11 = fsub float %i.gv, %.sroa.10.5             ; 3 uses
  %12 = fsub float %i.gw, %.sroa.18.5             ; 3 uses
  store float %10, ptr %i.a, align 8, !tbaa !82
  store float %11, ptr %3, align 4, !tbaa !82
  store float %12, ptr %i.v, align 8, !tbaa !82
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.gy = load i8, ptr %i.gx, align 4, !tbaa !38, !range !95, !noundef !92
  %i.gz = trunc nuw i8 %i.gy to i1
  %13 = fmul float %11, %11
  %i.ha = call float @llvm.fmuladd.f32(float %10, float %10, float %13) ; 2 uses
  %i.hb = call float @llvm.fmuladd.f32(float %12, float %12, float %i.ha)
  %i.hc = select i1 %i.gz, float %i.ha, float %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.he = load float, ptr %i.hd, align 8, !tbaa !37
  %i.hf = fcmp ugt float %i.hc, %i.he
  br i1 %i.hf, label %.thread64, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.hg = call noundef zeroext i1 %1(i32 noundef %i.fh, float noundef %i.hc, ptr noundef nonnull %i.a)
  br i1 %i.hg, label %bb.w, label %.thread64

.thread64:                                        ; preds = %bb.u, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.thread

.thread:                                          ; preds = %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit, %bb.n, %.thread64
  %indvars.iv.next165 = add nsw i64 %indvars.iv164, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next165 to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.ey
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph124, !llvm.loop !235

._crit_edge.loopexit:                             ; preds = %.thread
  %.pre168.pre = load ptr, ptr %0, align 8, !tbaa !91
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.pre168 = phi ptr [ %.pre168.pre, %._crit_edge.loopexit ], [ %i.ae, %bb.l ]
  store i32 0, ptr %i.k, align 4, !tbaa !192
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %._crit_edge
  %i.hh = phi ptr [ %.pre168, %._crit_edge ], [ %i.ae, %bb.k ]
  %.339.ph = phi i32 [ 0, %._crit_edge ], [ %.036, %bb.k ]
  %i.hi = call noundef zeroext i1 @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl8nextCellEPKfPiS4_(ptr noundef nonnull align 8 dereferenceable(624) %i.hh, ptr noundef nonnull %i.w, ptr noundef nonnull %i.q, ptr noundef nonnull %i.x)
  br i1 %i.hi, label %bb.d, label %.thread71, !llvm.loop !236

bb.w:                                             ; preds = %bb.u
  %i.hj = trunc nsw i64 %indvars.iv164 to i32
  store i32 %i.hj, ptr %i.p, align 8, !tbaa !86
  store i32 %i.fh, ptr %i.h, align 8, !tbaa !85
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.hc, ptr %i.hk, align 4, !tbaa !237
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hm = load <2 x float>, ptr %i.a, align 8, !tbaa !82
  store <2 x float> %i.hm, ptr %i.hl, align 8, !tbaa !82
  %i.hn = load float, ptr %i.v, align 8, !tbaa !82
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.hn, ptr %i.ho, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.loopexit78

bb.x:                                             ; preds = %bb.b
  %i.hp = load i32, ptr %i.h, align 8, !tbaa !85  ; 2 uses
  %.0120 = add nsw i32 %i.hp, 1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !39
  %i.hs = icmp slt i32 %.0120, %i.hr
  br i1 %i.hs, label %.lr.ph.preheader, label %.thread71

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.ht = sext i32 %i.hp to i64
  %i.hu = add nsw i64 %i.ht, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %.pre167173 = phi ptr [ %i.y, %.lr.ph.preheader ], [ %.pre167174, %bb.ai ] ; 2 uses
  %i.hv = phi ptr [ %i.y, %.lr.ph.preheader ], [ %i.jy, %bb.ai ] ; 6 uses
  %indvars.iv = phi i64 [ %i.hu, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i52 = load ptr, ptr %i.i, align 8 ; 2 uses
  %i.hw = load ptr, ptr %i.j, align 8, !tbaa !191
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %.sroa.0.0.copyload.i.i.i52 to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = lshr exact i64 %i.hz, 2
  %i.ib = trunc i64 %i.ia to i32                  ; 2 uses
  %i.ic = load i32, ptr %i.k, align 4, !tbaa !192 ; 2 uses
  %i.id = icmp slt i32 %i.ic, %i.ib
  br i1 %i.id, label %bb.y, label %.loopexit76

bb.y:                                             ; preds = %.lr.ph
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !152 ; 2 uses
  %.not.i54 = icmp eq ptr %i.if, null
  br i1 %.not.i54, label %.lr.ph.i55, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.if, i64 %indvars.iv
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !41
  %i.ii = sext i32 %i.ih to i64
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.z, %bb.y
  %i.ij = phi i64 [ %i.ii, %bb.z ], [ %indvars.iv, %bb.y ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !159
  %i.im = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ij
  %i.in = load i32, ptr %i.im, align 4, !tbaa !41 ; 2 uses
  %i.io = sext i32 %i.ic to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i55
  %indvars.iv.i56 = phi i64 [ %i.io, %.lr.ph.i55 ], [ %indvars.iv.next.i58, %bb.ab ] ; 3 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i.i52, i64 %indvars.iv.i56
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !41 ; 2 uses
  %i.ir = icmp slt i32 %i.iq, %i.in
  br i1 %i.ir, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %i.is = trunc i64 %indvars.iv.next.i58 to i32   ; 2 uses
  store i32 %i.is, ptr %i.k, align 4, !tbaa !192
  %exitcond.not.i59 = icmp eq i32 %i.is, %i.ib
  br i1 %exitcond.not.i59, label %.loopexit76, label %bb.aa, !llvm.loop !193

bb.ac:                                            ; preds = %bb.aa
  %i.it = icmp eq i32 %i.in, %i.iq
  br i1 %i.it, label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit60, label %.loopexit76

_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit60: ; preds = %bb.ac
  %i.iu = trunc nsw i64 %indvars.iv.i56 to i32
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.k, align 4, !tbaa !192
  br label %bb.ai

.loopexit76:                                      ; preds = %bb.ab, %bb.ac, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !149
  %.not = icmp eq i32 %i.ix, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !154
  %i.ja = getelementptr inbounds [12 x i8], ptr %i.iz, i64 %indvars.iv ; 3 uses
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit76
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %i.iw, ptr noundef %i.ja, ptr noundef nonnull %i.l, ptr noundef nonnull %i.b)
  %.pre = load ptr, ptr %0, align 8, !tbaa !91    ; 2 uses
  br label %bb.af

bb.ae:                                            ; preds = %.loopexit76
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !82
  %i.jd = load float, ptr %i.m, align 4, !tbaa !82
  %i.je = fsub float %i.jc, %i.jd
  %i.jf = load <2 x float>, ptr %i.ja, align 4, !tbaa !82
  %i.jg = load <2 x float>, ptr %i.l, align 4, !tbaa !82
  %i.jh = fsub <2 x float> %i.jf, %i.jg
  store <2 x float> %i.jh, ptr %i.b, align 8, !tbaa !82
  store float %i.je, ptr %i.o, align 8, !tbaa !82
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pre167172 = phi ptr [ %.pre167173, %bb.ae ], [ %.pre, %bb.ad ]
  %i.ji = phi ptr [ %i.hv, %bb.ae ], [ %.pre, %bb.ad ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.jk = load i8, ptr %i.jj, align 4, !tbaa !38, !range !95, !noundef !92
  %i.jl = trunc nuw i8 %i.jk to i1
  %i.jm = load float, ptr %i.b, align 8, !tbaa !82 ; 2 uses
  %i.jn = load float, ptr %i.n, align 4, !tbaa !82 ; 2 uses
  %i.jo = fmul float %i.jn, %i.jn
  %i.jp = call float @llvm.fmuladd.f32(float %i.jm, float %i.jm, float %i.jo) ; 2 uses
  %i.jq = load float, ptr %i.o, align 8           ; 2 uses
  %i.jr = call float @llvm.fmuladd.f32(float %i.jq, float %i.jq, float %i.jp)
  %i.js = select i1 %i.jl, float %i.jp, float %i.jr ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.ju = load float, ptr %i.jt, align 8, !tbaa !37
  %i.jv = fcmp ugt float %i.js, %i.ju
  br i1 %i.jv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jw = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.jx = call noundef zeroext i1 %1(i32 noundef %i.jw, float noundef %i.js, ptr noundef nonnull %i.b)
  br i1 %i.jx, label %bb.aj, label %._crit_edge171

._crit_edge171:                                   ; preds = %bb.ag
  %.pre167.pre = load ptr, ptr %0, align 8, !tbaa !91
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge171, %bb.af
  %.pre167 = phi ptr [ %.pre167.pre, %._crit_edge171 ], [ %.pre167172, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit60, %bb.ah
  %.pre167174 = phi ptr [ %.pre167173, %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit60 ], [ %.pre167, %bb.ah ]
  %i.jy = phi ptr [ %i.hv, %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit60 ], [ %.pre167, %bb.ah ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !39
  %i.kb = sext i32 %i.ka to i64
  %i.kc = icmp slt i64 %indvars.iv.next, %i.kb
  br i1 %i.kc, label %.lr.ph, label %.thread71, !llvm.loop !238

bb.aj:                                            ; preds = %bb.ag
  store i32 %i.jw, ptr %i.h, align 8, !tbaa !85
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.js, ptr %i.kd, align 4, !tbaa !237
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kf = load <2 x float>, ptr %i.b, align 8, !tbaa !82
  store <2 x float> %i.kf, ptr %i.ke, align 8, !tbaa !82
  %i.kg = load float, ptr %i.o, align 8, !tbaa !82
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.kg, ptr %i.kh, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %.loopexit78

.thread71:                                        ; preds = %bb.ai, %bb.v, %bb.x
  %i.ki = load i32, ptr %i.c, align 8, !tbaa !83  ; 2 uses
  %i.kj = load i32, ptr %i.d, align 4, !tbaa !190
  %i.kk = icmp slt i32 %i.ki, %i.kj
  br i1 %i.kk, label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl16nextTestPositionEv.exit, label %.loopexit78

_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl16nextTestPositionEv.exit: ; preds = %.thread71
  %i.kl = add nsw i32 %i.ki, 1                    ; 2 uses
  store i32 %i.kl, ptr %i.c, align 8, !tbaa !83
  call void @_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl5resetEi(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.kl)
  %.pre169 = load i32, ptr %i.c, align 8, !tbaa !83
  %.pre170 = load i32, ptr %i.d, align 4, !tbaa !190
  %i.km = icmp slt i32 %.pre169, %.pre170
  br i1 %i.km, label %bb.b, label %.loopexit78, !llvm.loop !239

.loopexit78:                                      ; preds = %.thread71, %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl16nextTestPositionEv.exit, %bb.a, %bb.aj, %bb.w
  %i.kn = phi i1 [ true, %bb.w ], [ true, %bb.aj ], [ false, %bb.a ], [ false, %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl16nextTestPositionEv.exit ], [ false, %.thread71 ]
  ret i1 %i.kn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN3gmx12_GLOBAL__N_112withinActionEifPKf(i32 %0, float %1, ptr nofree readnone captures(none) %2) #32 {
bb.a:
  ret i1 true
}

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK3gmx26AnalysisNeighborhoodSearch15minimumDistanceERKNS_29AnalysisNeighborhoodPositionsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.gmx::internal::AnalysisNeighborhoodPairSearchImpl", align 8 ; 20 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [3 x float], align 4              ; 4 uses
  %3 = alloca %"class.gmx::(anonymous namespace)::MindistAction", align 8 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !196    ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx26AnalysisNeighborhoodSearch15minimumDistanceERKNS_29AnalysisNeighborhoodPositionsEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 1373) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.d, ptr %2, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 60
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 68
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <2 x float> zeroinitializer, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 108
  store i32 -1, ptr %i.n, align 4, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 -1, ptr %i.o, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.q, align 8, !tbaa !86
  store i8 0, ptr %i.e, align 8, !tbaa !78
  %i.r = load i32, ptr %1, align 8, !tbaa !150
  store i32 %i.r, ptr %i.f, align 4, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !160
  %i.w = load <2 x ptr>, ptr %i.s, align 8, !tbaa !100
  store <2 x ptr> %i.w, ptr %i.t, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = icmp ne ptr %i.ab, null
  %.not.i = icmp eq ptr %i.v, null
  %or.cond.i = select i1 %i.ac, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl11startSearchERKNS_29AnalysisNeighborhoodPositionsEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 1048) #41
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !139 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl11startSearchERKNS_29AnalysisNeighborhoodPositionsE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add nuw nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !190
  br label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl11startSearchERKNS_29AnalysisNeighborhoodPositionsE.exit

_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl11startSearchERKNS_29AnalysisNeighborhoodPositionsE.exit: ; preds = %bb.e, %bb.f
  %.sink.i = phi i32 [ %i.ae, %bb.f ], [ 0, %bb.e ]
  call void @_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl5resetEi(ptr noundef nonnull align 8 dereferenceable(140) %2, i32 noundef %.sink.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ah = load ptr, ptr %0, align 8, !tbaa !196
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !37
  store float %i.aj, ptr %i.a, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 -1, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  store ptr %i.b, ptr %3, align 8, !tbaa !124
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240
  call fastcc void @_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10searchNextINS_12_GLOBAL__N_113MindistActionEEEbT_(ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull byval(%"class.gmx::(anonymous namespace)::MindistAction") align 8 %3)
  %i.ak = load float, ptr %i.a, align 4, !tbaa !82
  %i.al = call noundef float @sqrtf(float noundef %i.ak) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret float %i.al
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10searchNextINS_12_GLOBAL__N_113MindistActionEEEbT_(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr nofree noundef readonly byval(%"class.gmx::(anonymous namespace)::MindistAction") align 8 captures(none) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !83
  %i.e = load i32, ptr %i.c, align 4, !tbaa !190
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !92, !align !241 ; 4 uses
  %i.q = load ptr, ptr %1, align 8, !nonnull !92, !align !241 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !92, !align !241 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph108, %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl16nextTestPositionEv.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !91, !nonnull !92, !align !93 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 440
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !94, !range !95, !noundef !92
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.ah = load i32, ptr %i.v, align 8, !tbaa !86
  %i.ai = add nsw i32 %i.ah, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.x, %bb.c
  %.034 = phi i32 [ %i.ai, %bb.c ], [ %.337, %bb.x ] ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !91, !nonnull !92, !align !93 ; 29 uses
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !41  ; 4 uses
  %i.al = load i32, ptr %i.x, align 4, !tbaa !41  ; 4 uses
  %i.am = load i32, ptr %i.y, align 8, !tbaa !41  ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 520
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 442
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !41 ; 5 uses
  %i.ar = load i8, ptr %i.ao, align 2, !tbaa !40, !range !95, !noundef !92
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.preheader20.i, label %.loopexit.i

.preheader20.i:                                   ; preds = %bb.d
  %i.at = icmp slt i32 %i.ak, 0
  br i1 %i.at, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader20.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.av = load <2 x float>, ptr %i.ap, align 8, !tbaa !82
  %i.aw = load float, ptr %i.au, align 8, !tbaa !82
  br label %bb.e

.preheader.i:                                     ; preds = %bb.e, %.preheader20.i
  %.sroa.18.4 = phi float [ 0.000000e+00, %.preheader20.i ], [ %i.bk, %bb.e ] ; 2 uses
  %.lcssa21.i = phi i32 [ %i.ak, %.preheader20.i ], [ %i.bi, %bb.e ] ; 3 uses
  %i.ax = phi <2 x float> [ zeroinitializer, %.preheader20.i ], [ %i.bj, %bb.e ] ; 2 uses
  %.not23.i = icmp slt i32 %.lcssa21.i, %i.aq
  %i.ay = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  br i1 %.not23.i, label %.loopexit.i, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.preheader.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.bc = load float, ptr %i.ap, align 8, !tbaa !82
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !82
  %i.be = load float, ptr %i.bb, align 8, !tbaa !82
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.bf = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bk, %bb.e ]
  %i.bg = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.bi, %bb.e ]
  %i.bh = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bj, %bb.e ]
  %i.bi = add nsw i32 %i.bg, %i.aq                ; 3 uses
  %i.bj = fadd <2 x float> %i.bh, %i.av           ; 2 uses
  %i.bk = fadd float %i.bf, %i.aw                 ; 2 uses
  %i.bl = icmp slt i32 %i.bi, 0
  br i1 %i.bl, label %bb.e, label %.preheader.i, !llvm.loop !137

bb.f:                                             ; preds = %bb.f, %.lr.ph24.i
  %i.bm = phi float [ %.sroa.18.4, %.lr.ph24.i ], [ %i.bt, %bb.f ]
  %i.bn = phi float [ %i.az, %.lr.ph24.i ], [ %i.bs, %bb.f ]
  %i.bo = phi float [ %i.ay, %.lr.ph24.i ], [ %i.br, %bb.f ]
  %i.bp = phi i32 [ %.lcssa21.i, %.lr.ph24.i ], [ %i.bq, %bb.f ]
  %i.bq = sub nsw i32 %i.bp, %i.aq                ; 3 uses
  %i.br = fsub float %i.bo, %i.bc                 ; 2 uses
  %i.bs = fsub float %i.bn, %i.bd                 ; 2 uses
  %i.bt = fsub float %i.bm, %i.be                 ; 2 uses
  %.not.i = icmp slt i32 %i.bq, %i.aq
  br i1 %.not.i, label %.loopexit.i, label %bb.f, !llvm.loop !138

.loopexit.i:                                      ; preds = %bb.f, %.preheader.i, %bb.d
  %.sroa.18.0 = phi float [ %.sroa.18.4, %.preheader.i ], [ 0.000000e+00, %bb.d ], [ %i.bt, %bb.f ] ; 3 uses
  %.sroa.10.0 = phi float [ %i.az, %.preheader.i ], [ 0.000000e+00, %bb.d ], [ %i.bs, %bb.f ] ; 3 uses
  %.sroa.068.0 = phi float [ %i.ay, %.preheader.i ], [ 0.000000e+00, %bb.d ], [ %i.br, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.lcssa21.i, %.preheader.i ], [ %i.ak, %bb.d ], [ %i.bq, %bb.f ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 524
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !41 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 443
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !40, !range !95, !noundef !92
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %.preheader20.1.i, label %.loopexit.1.i

.preheader20.1.i:                                 ; preds = %.loopexit.i
  %i.bz = icmp slt i32 %i.al, 0
  br i1 %i.bz, label %.lr.ph.1.i, label %.preheader.1.i

.lr.ph.1.i:                                       ; preds = %.preheader20.1.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aj, i64 92
  %i.cd = load float, ptr %i.ca, align 4, !tbaa !82
  %i.ce = load float, ptr %i.cb, align 8, !tbaa !82
  %i.cf = load float, ptr %i.cc, align 4, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.1.i
  %i.cg = phi float [ %.sroa.18.0, %.lr.ph.1.i ], [ %i.cn, %bb.g ]
  %i.ch = phi float [ %.sroa.10.0, %.lr.ph.1.i ], [ %i.cm, %bb.g ]
  %i.ci = phi float [ %.sroa.068.0, %.lr.ph.1.i ], [ %i.cl, %bb.g ]
  %i.cj = phi i32 [ %i.al, %.lr.ph.1.i ], [ %i.ck, %bb.g ]
  %i.ck = add nsw i32 %i.cj, %i.bv                ; 3 uses
  %i.cl = fadd float %i.ci, %i.cd                 ; 2 uses
  %i.cm = fadd float %i.ch, %i.ce                 ; 2 uses
  %i.cn = fadd float %i.cg, %i.cf                 ; 2 uses
  %i.co = icmp slt i32 %i.ck, 0
  br i1 %i.co, label %bb.g, label %.preheader.1.i, !llvm.loop !137

.preheader.1.i:                                   ; preds = %bb.g, %.preheader20.1.i
  %.sroa.18.3 = phi float [ %.sroa.18.0, %.preheader20.1.i ], [ %i.cn, %bb.g ] ; 2 uses
  %.sroa.10.3 = phi float [ %.sroa.10.0, %.preheader20.1.i ], [ %i.cm, %bb.g ] ; 2 uses
  %.sroa.068.3 = phi float [ %.sroa.068.0, %.preheader20.1.i ], [ %i.cl, %bb.g ] ; 2 uses
  %.lcssa21.1.i = phi i32 [ %i.al, %.preheader20.1.i ], [ %i.ck, %bb.g ] ; 3 uses
  %.not23.1.i = icmp slt i32 %.lcssa21.1.i, %i.bv
  br i1 %.not23.1.i, label %.loopexit.1.i, label %.lr.ph24.1.i

.lr.ph24.1.i:                                     ; preds = %.preheader.1.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aj, i64 92
  %i.cs = load float, ptr %i.cp, align 4, !tbaa !82
  %i.ct = load float, ptr %i.cq, align 8, !tbaa !82
  %i.cu = load float, ptr %i.cr, align 4, !tbaa !82
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph24.1.i
  %i.cv = phi float [ %.sroa.18.3, %.lr.ph24.1.i ], [ %i.dc, %bb.h ]
  %i.cw = phi float [ %.sroa.10.3, %.lr.ph24.1.i ], [ %i.db, %bb.h ]
  %i.cx = phi float [ %.sroa.068.3, %.lr.ph24.1.i ], [ %i.da, %bb.h ]
  %i.cy = phi i32 [ %.lcssa21.1.i, %.lr.ph24.1.i ], [ %i.cz, %bb.h ]
  %i.cz = sub nsw i32 %i.cy, %i.bv                ; 3 uses
  %i.da = fsub float %i.cx, %i.cs                 ; 2 uses
  %i.db = fsub float %i.cw, %i.ct                 ; 2 uses
  %i.dc = fsub float %i.cv, %i.cu                 ; 2 uses
  %.not.1.i = icmp slt i32 %i.cz, %i.bv
  br i1 %.not.1.i, label %.loopexit.1.i, label %bb.h, !llvm.loop !138

.loopexit.1.i:                                    ; preds = %bb.h, %.preheader.1.i, %.loopexit.i
  %.sroa.18.1 = phi float [ %.sroa.18.3, %.preheader.1.i ], [ %.sroa.18.0, %.loopexit.i ], [ %i.dc, %bb.h ] ; 3 uses
  %.sroa.10.1 = phi float [ %.sroa.10.3, %.preheader.1.i ], [ %.sroa.10.0, %.loopexit.i ], [ %i.db, %bb.h ] ; 3 uses
  %.sroa.068.1 = phi float [ %.sroa.068.3, %.preheader.1.i ], [ %.sroa.068.0, %.loopexit.i ], [ %i.da, %bb.h ] ; 3 uses
  %.sroa.7.0.i = phi i32 [ %.lcssa21.1.i, %.preheader.1.i ], [ %i.al, %.loopexit.i ], [ %i.cz, %bb.h ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 528
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !41 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 444
  %i.dg = load i8, ptr %i.df, align 4, !tbaa !40, !range !95, !noundef !92
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.preheader20.2.i, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit

.preheader20.2.i:                                 ; preds = %.loopexit.1.i
  %i.di = icmp slt i32 %i.am, 0
  br i1 %i.di, label %.lr.ph.2.i, label %.preheader.2.i

.lr.ph.2.i:                                       ; preds = %.preheader20.2.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 100
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.dm = load float, ptr %i.dj, align 8, !tbaa !82
  %i.dn = load float, ptr %i.dk, align 4, !tbaa !82
  %i.do = load float, ptr %i.dl, align 8, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.2.i
  %i.dp = phi float [ %.sroa.18.1, %.lr.ph.2.i ], [ %i.dw, %bb.i ]
  %i.dq = phi float [ %.sroa.10.1, %.lr.ph.2.i ], [ %i.dv, %bb.i ]
  %i.dr = phi float [ %.sroa.068.1, %.lr.ph.2.i ], [ %i.du, %bb.i ]
  %i.ds = phi i32 [ %i.am, %.lr.ph.2.i ], [ %i.dt, %bb.i ]
  %i.dt = add nsw i32 %i.ds, %i.de                ; 3 uses
  %i.du = fadd float %i.dr, %i.dm                 ; 2 uses
  %i.dv = fadd float %i.dq, %i.dn                 ; 2 uses
  %i.dw = fadd float %i.dp, %i.do                 ; 2 uses
  %i.dx = icmp slt i32 %i.dt, 0
  br i1 %i.dx, label %bb.i, label %.preheader.2.i, !llvm.loop !137

.preheader.2.i:                                   ; preds = %bb.i, %.preheader20.2.i
  %.sroa.18.2 = phi float [ %.sroa.18.1, %.preheader20.2.i ], [ %i.dw, %bb.i ] ; 2 uses
  %.sroa.10.2 = phi float [ %.sroa.10.1, %.preheader20.2.i ], [ %i.dv, %bb.i ] ; 2 uses
  %.sroa.068.2 = phi float [ %.sroa.068.1, %.preheader20.2.i ], [ %i.du, %bb.i ] ; 2 uses
  %.lcssa21.2.i = phi i32 [ %i.am, %.preheader20.2.i ], [ %i.dt, %bb.i ] ; 3 uses
  %.not23.2.i = icmp slt i32 %.lcssa21.2.i, %i.de
  br i1 %.not23.2.i, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit, label %.lr.ph24.2.i

.lr.ph24.2.i:                                     ; preds = %.preheader.2.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aj, i64 100
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.eb = load float, ptr %i.dy, align 8, !tbaa !82
  %i.ec = load float, ptr %i.dz, align 4, !tbaa !82
  %i.ed = load float, ptr %i.ea, align 8, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph24.2.i
  %i.ee = phi float [ %.sroa.18.2, %.lr.ph24.2.i ], [ %i.el, %bb.j ]
  %i.ef = phi float [ %.sroa.10.2, %.lr.ph24.2.i ], [ %i.ek, %bb.j ]
  %i.eg = phi float [ %.sroa.068.2, %.lr.ph24.2.i ], [ %i.ej, %bb.j ]
  %i.eh = phi i32 [ %.lcssa21.2.i, %.lr.ph24.2.i ], [ %i.ei, %bb.j ]
  %i.ei = sub nsw i32 %i.eh, %i.de                ; 3 uses
  %i.ej = fsub float %i.eg, %i.eb                 ; 2 uses
  %i.ek = fsub float %i.ef, %i.ec                 ; 2 uses
  %i.el = fsub float %i.ee, %i.ed                 ; 2 uses
  %.not.2.i = icmp slt i32 %i.ei, %i.de
  br i1 %.not.2.i, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit, label %bb.j, !llvm.loop !138

_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit: ; preds = %bb.j, %.loopexit.1.i, %.preheader.2.i
  %.sroa.18.5 = phi float [ %.sroa.18.2, %.preheader.2.i ], [ %.sroa.18.1, %.loopexit.1.i ], [ %i.el, %bb.j ]
  %.sroa.10.5 = phi float [ %.sroa.10.2, %.preheader.2.i ], [ %.sroa.10.1, %.loopexit.1.i ], [ %i.ek, %bb.j ]
  %.sroa.068.5 = phi float [ %.sroa.068.2, %.preheader.2.i ], [ %.sroa.068.1, %.loopexit.1.i ], [ %i.ej, %bb.j ]
  %.sroa.12.0.i = phi i32 [ %.lcssa21.2.i, %.preheader.2.i ], [ %i.am, %.loopexit.1.i ], [ %i.ei, %bb.j ]
  %i.em = mul i32 %.sroa.12.0.i, %i.bv
  %reass.add.i.i = add i32 %i.em, %.sroa.7.0.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %i.aq
  %i.en = add i32 %reass.mul.i.i, %.sroa.0.0.i    ; 3 uses
  %i.eo = load i8, ptr %i.z, align 8, !tbaa !78, !range !95, !noundef !92
  %i.ep = trunc nuw i8 %i.eo to i1                ; 2 uses
  br i1 %i.ep, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit
  %i.eq = load i32, ptr %i.ac, align 4, !tbaa !84
  %i.er = icmp sgt i32 %i.en, %i.eq
  br i1 %i.er, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.aj, i64 536
  %i.et = sext i32 %i.en to i64
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !63
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.et ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !99
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !65 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 2 uses
  %i.fc = lshr exact i64 %i.fb, 2
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = icmp slt i32 %.034, %i.fd
  br i1 %i.fe, label %.lr.ph106, label %._crit_edge

.lr.ph106:                                        ; preds = %bb.l
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.fk = sext i32 %.034 to i64
  %sext = shl i64 %i.fb, 30
  %wide.trip.count = ashr i64 %sext, 32
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph106, %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit
  %indvars.iv141 = phi i64 [ %i.fk, %.lr.ph106 ], [ %indvars.iv.next142, %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv141
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !41 ; 5 uses
  br i1 %i.ep, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fn = load i32, ptr %i.ac, align 4, !tbaa !84
  %i.fo = icmp eq i32 %i.en, %i.fn
  br i1 %i.fo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fp = load i32, ptr %i.b, align 8, !tbaa !83
  %.not47 = icmp slt i32 %i.fm, %i.fp
  br i1 %.not47, label %bb.p, label %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8 ; 2 uses
  %i.fq = load ptr, ptr %i.i, align 8, !tbaa !191
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = lshr exact i64 %i.ft, 2
  %i.fv = trunc i64 %i.fu to i32                  ; 2 uses
  %i.fw = load i32, ptr %i.j, align 4, !tbaa !192 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, %i.fv
  br i1 %i.fx, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.fy = load ptr, ptr %i.ff, align 8, !tbaa !152 ; 2 uses
  %.not.i48 = icmp eq ptr %i.fy, null
  br i1 %.not.i48, label %.lr.ph.i49, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fz = sext i32 %i.fm to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !41
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.r, %bb.q
  %i.gc = phi i32 [ %i.gb, %bb.r ], [ %i.fm, %bb.q ]
  %i.gd = load ptr, ptr %i.fg, align 8, !tbaa !159
  %i.ge = sext i32 %i.gc to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !41 ; 2 uses
  %i.gh = sext i32 %i.fw to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i49
  %indvars.iv.i = phi i64 [ %i.gh, %.lr.ph.i49 ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %indvars.iv.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !41 ; 2 uses
  %i.gk = icmp slt i32 %i.gj, %i.gg
  br i1 %i.gk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gl = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  store i32 %i.gl, ptr %i.j, align 4, !tbaa !192
  %exitcond.not.i = icmp eq i32 %i.gl, %i.fv
  br i1 %exitcond.not.i, label %.loopexit, label %bb.s, !llvm.loop !193

bb.u:                                             ; preds = %bb.s
  %i.gm = icmp eq i32 %i.gg, %i.gj
  br i1 %i.gm, label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit, label %.loopexit

_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit: ; preds = %bb.u
  %i.gn = trunc nsw i64 %indvars.iv.i to i32
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.j, align 4, !tbaa !192
  br label %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit

.loopexit:                                        ; preds = %bb.t, %bb.u, %bb.p
  %i.gp = load ptr, ptr %i.fh, align 8, !tbaa !154
  %i.gq = sext i32 %i.fm to i64
  %i.gr = getelementptr inbounds [12 x i8], ptr %i.gp, i64 %i.gq ; 2 uses
  %3 = load float, ptr %i.gr, align 4, !tbaa !82
  %i.gs = load float, ptr %i.k, align 4, !tbaa !82
  %4 = fsub float %3, %i.gs
  %5 = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load <2 x float>, ptr %5, align 4, !tbaa !82
  %i.gu = load <2 x float>, ptr %2, align 8, !tbaa !82
  %i.gv = fsub <2 x float> %i.gt, %i.gu           ; 2 uses
  %6 = fsub float %4, %.sroa.068.5                ; 3 uses
  %7 = extractelement <2 x float> %i.gv, i64 0
  %i.gw = fsub float %7, %.sroa.10.5              ; 3 uses
  %8 = extractelement <2 x float> %i.gv, i64 1
  %9 = fsub float %8, %.sroa.18.5                 ; 3 uses
  %10 = load i8, ptr %i.fi, align 4, !tbaa !38, !range !95, !noundef !92
  %11 = trunc nuw i8 %10 to i1
  %12 = fmul float %i.gw, %i.gw
  %i.gx = call float @llvm.fmuladd.f32(float %6, float %6, float %12) ; 2 uses
  %i.gy = call float @llvm.fmuladd.f32(float %9, float %9, float %i.gx)
  %i.gz = select i1 %11, float %i.gx, float %i.gy ; 3 uses
  %i.ha = load float, ptr %i.fj, align 8, !tbaa !37
  %i.hb = fcmp ugt float %i.gz, %i.ha
  br i1 %i.hb, label %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.hc = load float, ptr %i.p, align 4, !tbaa !82
  %i.hd = fcmp olt float %i.gz, %i.hc
  br i1 %i.hd, label %bb.w, label %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit

bb.w:                                             ; preds = %bb.v
  store i32 %i.fm, ptr %i.q, align 4, !tbaa !41
  store float %i.gz, ptr %i.p, align 4, !tbaa !82
  store float %6, ptr %i.s, align 4, !tbaa !82
  store float %i.gw, ptr %i.t, align 4, !tbaa !82
  store float %9, ptr %i.u, align 4, !tbaa !82
  br label %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit

_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit: ; preds = %.loopexit, %bb.v, %bb.w, %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit, %bb.o
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !242

._crit_edge:                                      ; preds = %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit, %bb.l
  store i32 0, ptr %i.j, align 4, !tbaa !192
  br label %bb.x

bb.x:                                             ; preds = %bb.k, %._crit_edge
  %.337 = phi i32 [ 0, %._crit_edge ], [ %.034, %bb.k ]
  %i.he = call noundef zeroext i1 @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl8nextCellEPKfPiS4_(ptr noundef nonnull align 8 dereferenceable(624) %i.aj, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ab)
  br i1 %i.he, label %bb.d, label %.loopexit72, !llvm.loop !243

bb.y:                                             ; preds = %bb.b
  %i.hf = load i32, ptr %i.g, align 8, !tbaa !85  ; 2 uses
  %.0103 = add nsw i32 %i.hf, 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !39
  %i.hi = icmp slt i32 %.0103, %i.hh
  br i1 %i.hi, label %.lr.ph.preheader, label %.loopexit72

.lr.ph.preheader:                                 ; preds = %bb.y
  %i.hj = sext i32 %i.hf to i64
  %i.hk = add nsw i64 %i.hj, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aj
  %i.hl = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %i.js, %bb.aj ] ; 6 uses
  %indvars.iv = phi i64 [ %i.hk, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.aj ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i50 = load ptr, ptr %i.h, align 8 ; 2 uses
  %i.hm = load ptr, ptr %i.i, align 8, !tbaa !191
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %.sroa.0.0.copyload.i.i.i50 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = lshr exact i64 %i.hp, 2
  %i.hr = trunc i64 %i.hq to i32                  ; 2 uses
  %i.hs = load i32, ptr %i.j, align 4, !tbaa !192 ; 2 uses
  %i.ht = icmp slt i32 %i.hs, %i.hr
  br i1 %i.ht, label %bb.z, label %.loopexit71

bb.z:                                             ; preds = %.lr.ph
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !152 ; 2 uses
  %.not.i52 = icmp eq ptr %i.hv, null
  br i1 %.not.i52, label %.lr.ph.i53, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %indvars.iv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !41
  %i.hy = sext i32 %i.hx to i64
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.aa, %bb.z
  %i.hz = phi i64 [ %i.hy, %bb.aa ], [ %indvars.iv, %bb.z ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !159
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.hz
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !41 ; 2 uses
  %i.ie = sext i32 %i.hs to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ %i.ie, %.lr.ph.i53 ], [ %indvars.iv.next.i56, %bb.ac ] ; 3 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i.i50, i64 %indvars.iv.i54
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !41 ; 2 uses
  %i.ih = icmp slt i32 %i.ig, %i.id
  br i1 %i.ih, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next.i56 = add nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.ii = trunc i64 %indvars.iv.next.i56 to i32   ; 2 uses
  store i32 %i.ii, ptr %i.j, align 4, !tbaa !192
  %exitcond.not.i57 = icmp eq i32 %i.ii, %i.hr
  br i1 %exitcond.not.i57, label %.loopexit71, label %bb.ab, !llvm.loop !193

bb.ad:                                            ; preds = %bb.ab
  %i.ij = icmp eq i32 %i.id, %i.ig
  br i1 %i.ij, label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit58, label %.loopexit71

_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit58: ; preds = %bb.ad
  %i.ik = trunc nsw i64 %indvars.iv.i54 to i32
  %i.il = add nsw i32 %i.ik, 1
  store i32 %i.il, ptr %i.j, align 4, !tbaa !192
  br label %bb.aj

.loopexit71:                                      ; preds = %bb.ac, %bb.ad, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.im = getelementptr inbounds nuw i8, ptr %i.hl, i64 56 ; 2 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !149
  %.not = icmp eq i32 %i.in, 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !154
  %i.iq = getelementptr inbounds [12 x i8], ptr %i.ip, i64 %indvars.iv ; 3 uses
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.loopexit71
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %i.im, ptr noundef %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !91
  br label %bb.ag

bb.af:                                            ; preds = %.loopexit71
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load float, ptr %i.ir, align 4, !tbaa !82
  %i.it = load float, ptr %i.l, align 4, !tbaa !82
  %i.iu = fsub float %i.is, %i.it
  %i.iv = load <2 x float>, ptr %i.iq, align 4, !tbaa !82
  %i.iw = load <2 x float>, ptr %i.k, align 4, !tbaa !82
  %i.ix = fsub <2 x float> %i.iv, %i.iw
  store <2 x float> %i.ix, ptr %i.a, align 8, !tbaa !82
  store float %i.iu, ptr %i.n, align 8, !tbaa !82
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.iy = phi ptr [ %i.hl, %bb.af ], [ %.pre, %bb.ae ] ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %i.ja = load i8, ptr %i.iz, align 4, !tbaa !38, !range !95, !noundef !92
  %i.jb = trunc nuw i8 %i.ja to i1
  %i.jc = load float, ptr %i.a, align 8, !tbaa !82 ; 2 uses
  %i.jd = load float, ptr %i.m, align 4, !tbaa !82 ; 2 uses
  %i.je = fmul float %i.jd, %i.jd
  %i.jf = call float @llvm.fmuladd.f32(float %i.jc, float %i.jc, float %i.je) ; 2 uses
  %i.jg = load float, ptr %i.n, align 8           ; 2 uses
  %i.jh = call float @llvm.fmuladd.f32(float %i.jg, float %i.jg, float %i.jf)
  %i.ji = select i1 %i.jb, float %i.jf, float %i.jh ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jk = load float, ptr %i.jj, align 8, !tbaa !37
  %i.jl = fcmp ugt float %i.ji, %i.jk
  br i1 %i.jl, label %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit59, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jm = load float, ptr %i.p, align 4, !tbaa !82
  %i.jn = fcmp olt float %i.ji, %i.jm
  br i1 %i.jn, label %bb.ai, label %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit59

bb.ai:                                            ; preds = %bb.ah
  %i.jo = trunc nsw i64 %indvars.iv to i32
  store i32 %i.jo, ptr %i.q, align 4, !tbaa !41
  store float %i.ji, ptr %i.p, align 4, !tbaa !82
  %i.jp = load float, ptr %i.a, align 8, !tbaa !82
  store float %i.jp, ptr %i.s, align 4, !tbaa !82
  %i.jq = load float, ptr %i.m, align 4, !tbaa !82
  store float %i.jq, ptr %i.t, align 4, !tbaa !82
  %i.jr = load float, ptr %i.n, align 8, !tbaa !82
  store float %i.jr, ptr %i.u, align 4, !tbaa !82
  br label %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit59

_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit59: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit58, %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit59
  %i.js = phi ptr [ %i.hl, %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl10isExcludedEi.exit58 ], [ %i.iy, %_ZN3gmx12_GLOBAL__N_113MindistActionclEifPKf.exit59 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !39
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next, %i.jv
  br i1 %i.jw, label %.lr.ph, label %.loopexit72, !llvm.loop !244

.loopexit72:                                      ; preds = %bb.aj, %bb.x, %bb.y
  %i.jx = load i32, ptr %i.b, align 8, !tbaa !83  ; 2 uses
  %i.jy = load i32, ptr %i.c, align 4, !tbaa !190
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl16nextTestPositionEv.exit, label %._crit_edge109

_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl16nextTestPositionEv.exit: ; preds = %.loopexit72
  %i.ka = add nsw i32 %i.jx, 1                    ; 2 uses
  store i32 %i.ka, ptr %i.b, align 8, !tbaa !83
  call void @_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl5resetEi(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.ka)
  %.pre144 = load i32, ptr %i.b, align 8, !tbaa !83
  %.pre145 = load i32, ptr %i.c, align 4, !tbaa !190
  %i.kb = icmp slt i32 %.pre144, %.pre145
  br i1 %i.kb, label %bb.b, label %._crit_edge109, !llvm.loop !245

._crit_edge109:                                   ; preds = %.loopexit72, %_ZN3gmx8internal34AnalysisNeighborhoodPairSearchImpl16nextTestPositionEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx26AnalysisNeighborhoodSearch12nearestPointERKNS_29AnalysisNeighborhoodPositionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.gmx::AnalysisNeighborhoodPair") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %3 = alloca %"class.gmx::internal::AnalysisNeighborhoodPairSearchImpl", align 8 ; 20 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %4 = alloca %"class.gmx::(anonymous namespace)::MindistAction", align 8 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !196    ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx26AnalysisNeighborhoodSearch12nearestPointERKNS_29AnalysisNeighborhoodPositionsEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 1386) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.d, ptr %3, align 8, !tbaa !76
end_hunk_0
