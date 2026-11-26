Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCGPenaltyLSAcceptor?download=true
inline.NumInlined: 1819
inline.NumDeleted: 488
begin_hunk_0_@_ZN5Ipopt19CGPenaltyLSAcceptor18InitThisLineSearchEb:bb.a
  store double %i.af, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !96
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store double %i.ak, ptr %.sroa.6.0..sroa_idx7.i.i, align 8, !tbaa !96
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.j, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.am, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.not.i17.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !35
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bi) #23
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  store ptr %i.bc, ptr %i.al, align 8, !tbaa !34
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !97
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bj, ptr %i.ap, align 8, !tbaa !35
  br label %_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit

_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit: ; preds = %bb.g, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i
  store i8 0, ptr %i.x, align 8, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit, %bb.e
  br i1 %1, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.bo = tail call noundef double @_ZN5Ipopt11CGPenaltyCq21curr_penalty_functionEv(ptr noundef nonnull align 8 dereferenceable(241) %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.bo, ptr %i.bp, align 8, !tbaa !101
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef double %i.bt(ptr noundef nonnull align 8 dereferenceable(2185) %i.bq)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.bu, ptr %i.bv, align 8, !tbaa !102
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2192
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !82
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !103, !range !93, !noundef !94
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !100 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cg = tail call noundef double @_ZN5Ipopt11CGPenaltyCq39curr_fast_direct_deriv_penalty_functionEv(ptr noundef nonnull align 8 dereferenceable(241) %i.ce)
  store double %i.cg, ptr %i.cf, align 8, !tbaa !104
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ch = tail call noundef double @_ZN5Ipopt11CGPenaltyCq34curr_direct_deriv_penalty_functionEv(ptr noundef nonnull align 8 dereferenceable(241) %i.ce)
  store double %i.ch, ptr %i.cf, align 8, !tbaa !104
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ck = load <2 x double>, ptr %i.ci, align 8, !tbaa !96
  store <2 x double> %i.ck, ptr %i.cj, align 8, !tbaa !96
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  ret void
}

declare noundef double @_ZN5Ipopt11CGPenaltyCq21curr_penalty_functionEv(ptr noundef nonnull align 8 dereferenceable(241)) local_unnamed_addr #1

declare noundef double @_ZN5Ipopt11CGPenaltyCq39curr_fast_direct_deriv_penalty_functionEv(ptr noundef nonnull align 8 dereferenceable(241)) local_unnamed_addr #1

declare noundef double @_ZN5Ipopt11CGPenaltyCq34curr_direct_deriv_penalty_functionEv(ptr noundef nonnull align 8 dereferenceable(241)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt19CGPenaltyLSAcceptor30CheckAcceptabilityOfTrialPointEd(ptr noundef nonnull align 8 dereferenceable(408) %0, double noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(2185) %i.b) ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double %i.j(ptr noundef nonnull align 8 dereferenceable(2185) %i.g) ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef double %i.o(ptr noundef nonnull align 8 dereferenceable(2185) %i.l) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !86   ; 2 uses
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !86
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store double %1, ptr %i.y, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !89
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.z, align 4, !tbaa !89
  %i.ac = load ptr, ptr %0, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(408) %0)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ah, ptr %2, align 8, !tbaa !50
  store i32 1886221674, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.ai, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.aj, align 4, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !56
  %i.am = and i64 %i.al, -4
  %i.an = icmp eq i64 %i.am, 4611686018427387900
  br i1 %i.an, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #24
          to label %.noexc26 unwind label %bb.f

.noexc26:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull %i.ah, i64 noundef 4)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.aq = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ah
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.v

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ah
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.f
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !55
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.au

bb.g:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !95 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !95 ; 5 uses
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.h, label %_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35
  %.not.i.i.i = icmp eq ptr %i.ba, %i.bf
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.a, label %bb.i

bb.i:                                             ; preds = %bb.h
  store double 0.000000e+00, ptr %i.bc, align 8, !tbaa !96
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store double %i.f, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !96
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store double %i.k, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !96
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !97
  br label %_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.a: ; preds = %bb.h
  %3 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 5 uses
  store double 0.000000e+00, ptr %3, align 8, !tbaa !96
  %.sroa.5.0..sroa_idx5.i.i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.f, ptr %.sroa.5.0..sroa_idx5.i.i.a, align 8, !tbaa !96
  %.sroa.6.0..sroa_idx7.i.i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.k, ptr %.sroa.6.0..sroa_idx7.i.i.a, align 8, !tbaa !96
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.a
  %4 = ptrtoint ptr %i.ba to i64
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !35
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bk) #23
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.a
  store ptr %3, ptr %i.az, align 8, !tbaa !34
  store ptr %i.bh, ptr %i.bb, align 8, !tbaa !97
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !35
  br label %_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit

_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit: ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.i, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !67 ; 2 uses
  %i.bn = fcmp olt double %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !216
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.br = load double, ptr %i.bq, align 8, !tbaa !102 ; 2 uses
  %i.bs = fcmp ogt double %i.br, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.bs, double %i.br, double 1.000000e+00
  %i.bt = fmul double %i.bp, %.sroa.speculated.i  ; 2 uses
  store double %i.bt, ptr %i.bl, align 8, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit
  %i.bu = phi double [ %i.bt, %bb.k ], [ %i.bm, %_ZN5Ipopt16PiecewisePenalty24InitPiecewisePenaltyListEddd.exit ] ; 3 uses
  %i.bv = fcmp ogt double %i.bu, 0.000000e+00
  %i.bw = fcmp ogt double %i.p, %i.bu
  %or.cond = and i1 %i.bv, %i.bw
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !47 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.cb(ptr noundef nonnull align 8 dereferenceable(40) %i.by, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.34, double noundef %i.p, double noundef %i.bu)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.cc = tail call noundef zeroext i1 @_ZN5Ipopt19CGPenaltyLSAcceptor11ArmijoHoldsEd(ptr noundef nonnull align 8 dereferenceable(408) %0, double noundef %1)
  br i1 %i.cc, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !106, !range !93, !noundef !94
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = tail call noundef zeroext i1 @_ZN5Ipopt19CGPenaltyLSAcceptor30IsAcceptableToPiecewisePenaltyEd(ptr noundef nonnull align 8 dereferenceable(408) %0, double noundef %1)
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.ch, align 8, !tbaa !88
  br label %.thread

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !217
  %i.ck = fcmp olt double %1, %i.cj
  br i1 %i.ck, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.q, %bb.n, %bb.r
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !86
  %i.cm = icmp sgt i32 %i.cl, 15
  %i.cn = fcmp olt double %1, 1.000000e-05
  %or.cond3 = and i1 %i.cn, %i.cm
  br i1 %or.cond3, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.thread
  %i.co = load i32, ptr %i.z, align 4, !tbaa !89
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.z, align 4, !tbaa !89
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.thread
  store i32 0, ptr %i.q, align 8, !tbaa !86
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.022 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.m ], [ true, %bb.u ], [ false, %bb.r ]
  ret i1 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %1, align 8, !tbaa !54
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.h, i64 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt19CGPenaltyLSAcceptor11ArmijoHoldsEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = tail call noundef double @_ZN5Ipopt11CGPenaltyCq22trial_penalty_functionEv(ptr noundef nonnull align 8 dereferenceable(241) %i.d) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.35, double noundef %1)
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !101
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.36, double noundef %i.e, double noundef %i.m)
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef 6, i32 noundef 8)
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef double %i.z(ptr noundef nonnull align 8 dereferenceable(2185) %i.w)
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef double %i.ae(ptr noundef nonnull align 8 dereferenceable(2185) %i.ab)
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ai(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.37, double noundef %i.aa, double noundef %i.af)
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !47  ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef double %i.an(ptr noundef nonnull align 8 dereferenceable(2185) %i.ak)
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef double %i.as(ptr noundef nonnull align 8 dereferenceable(2185) %i.ap)
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.aw(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.38, double noundef %i.ao, double noundef %i.at)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ax = load double, ptr %i.l, align 8, !tbaa !101 ; 2 uses
  %i.ay = fsub double %i.e, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load double, ptr %i.az, align 8, !tbaa !218
  %i.bb = fmul double %1, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !104
  %i.be = fmul double %i.bb, %i.bd
  %i.bf = fsub double %i.ay, %i.be
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.ax)
  %i.bh = fmul double %i.bg, f0x3CE4000000000000
  %i.bi = fcmp ole double %i.bf, %i.bh
  ret i1 %i.bi
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt19CGPenaltyLSAcceptor30IsAcceptableToPiecewisePenaltyEd(ptr noundef nonnull align 8 dereferenceable(408) %0, double noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(2185) %i.b, i32 noundef 2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28, !noalias !236 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt9IpoptData5deltaEv.exit, label %bb.b

end_hunk_0
