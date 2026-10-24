Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/unigram_model?download=true
inline.NumInlined: 4081
inline.NumDeleted: 1860
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN13sentencepiece7unigram7Lattice6InsertEii:bb.a
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.ai, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %.pre-phi = phi i32 [ %i.p, %bb.b ], [ %.pre24.pre-phi, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = zext i32 %.pre-phi to i64
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bc ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !83 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53
  %.not.i9 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit
  store ptr %i.b, ptr %i.bg, align 8, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !83
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit16

bb.h:                                             ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !52 ; 4 uses
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 6 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.i, label %_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
  unreachable

_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10: ; preds = %bb.h
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i11, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i12 = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i12)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #32 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 2 uses
  store ptr %i.b, ptr %i.bw, align 8, !tbaa !59
  %i.bx = icmp sgt i64 %i.bn, 0
  br i1 %i.bx, label %bb.j, label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13

bb.j:                                             ; preds = %_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %i.bk, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13: ; preds = %bb.j, %_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.not.i17.i.i14 = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i14, label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #30
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15: ; preds = %bb.k, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13
  store ptr %i.bv, ptr %i.be, align 8, !tbaa !52
  store ptr %i.by, ptr %i.bf, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.bz, ptr %i.bh, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit16

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit16: ; preds = %bb.g, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN13sentencepiece7unigram7Lattice7ViterbiEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -1
  %.sroa.speculated.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.k = zext nneg i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %.0101 = phi i64 [ 0, %bb.a ], [ %i.an, %.critedge ] ; 4 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.0101 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 2 uses
  %.not7997 = icmp eq ptr %i.q, %i.s
  br i1 %.not7997, label %.critedge, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.0101 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85   ; 2 uses
  %.not8092 = icmp eq ptr %i.u, %i.w
  br i1 %.not8092, label %.lr.ph100.split.us, label %.lr.ph

.lr.ph100.split.us:                               ; preds = %.lr.ph100
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr null, ptr %i.y, align 8, !tbaa !316
  br label %.split

.lr.ph:                                           ; preds = %.lr.ph100, %bb.e
  %.sroa.074.098 = phi ptr [ %i.am, %bb.e ], [ %i.q, %.lr.ph100 ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.074.098, align 8, !tbaa !59 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !316
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !86
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %.not44 = icmp eq ptr %.139, null
  br i1 %.not44, label %.split, label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.03895 = phi ptr [ null, %.lr.ph ], [ %.139, %bb.c ] ; 2 uses
  %.04094 = phi float [ 0.000000e+00, %.lr.ph ], [ %.141, %bb.c ] ; 2 uses
  %.sroa.070.093 = phi ptr [ %i.u, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ad = load ptr, ptr %.sroa.070.093, align 8, !tbaa !59 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !87
  %i.ag = fadd float %i.af, %i.ac                 ; 2 uses
  %i.ah = icmp eq ptr %.03895, null
  %i.ai = fcmp ogt float %i.ag, %.04094
  %or.cond = select i1 %i.ah, i1 true, i1 %i.ai   ; 2 uses
  %.141 = select i1 %or.cond, float %i.ag, float %.04094 ; 2 uses
  %.139 = select i1 %or.cond, ptr %i.ad, ptr %.03895 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.070.093, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.aj, %i.w
  br i1 %.not80, label %._crit_edge, label %bb.c

.split:                                           ; preds = %._crit_edge, %.lr.ph100.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 194) #34
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 40, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit: ; preds = %.split
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit, %.split
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit56

bb.e:                                             ; preds = %._crit_edge
  store ptr %.139, ptr %i.aa, align 8, !tbaa !316
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  store float %.141, ptr %i.al, align 4, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.074.098, i64 8 ; 2 uses
  %.not79 = icmp eq ptr %i.am, %i.s
  br i1 %.not79, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.e, %bb.b
  %i.an = add nuw nsw i64 %.0101, 1
  %exitcond = icmp eq i64 %.0101, %i.k
  br i1 %exitcond, label %.critedge50, label %bb.b, !llvm.loop !315

bb.f:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit

.critedge50:                                      ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.k
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !59 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.as = load float, ptr %i.ar, align 4, !tbaa !87 ; 2 uses
  %storemerge.in102 = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %storemerge103 = load ptr, ptr %storemerge.in102, align 8, !tbaa !316 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge103, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !316
  %.not45104 = icmp eq ptr %i.au, null
  br i1 %.not45104, label %.thread, label %.lr.ph109

._crit_edge110:                                   ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit
  %i.av = icmp ult ptr %.sroa.0.1, %.pn
  br i1 %i.av, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge110, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn, %._crit_edge110 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.sroa.0.1, %._crit_edge110 ] ; 3 uses
  %i.aw = load ptr, ptr %.sroa.05.09.i.i, align 8, !tbaa !59
  %i.ax = load ptr, ptr %.sroa.0.010.i.i, align 8, !tbaa !59
  store ptr %i.ax, ptr %.sroa.05.09.i.i, align 8, !tbaa !59
  store ptr %i.aw, ptr %.sroa.0.010.i.i, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.az = icmp ult ptr %i.ay, %.sroa.0.0.i.i
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.thread, !llvm.loop !2

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.thread: ; preds = %.lr.ph.i.i
  %3 = ptrtoint ptr %.sroa.11.1 to i64
  %4 = ptrtoint ptr %.sroa.0.1 to i64             ; 2 uses
  %5 = sub i64 %3, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 24, i1 false)
  br label %bb.l

.lr.ph109:                                        ; preds = %.critedge50, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit
  %storemerge108 = phi ptr [ %storemerge, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit ], [ %storemerge103, %.critedge50 ] ; 3 uses
  %.sroa.17.0107 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit ], [ null, %.critedge50 ] ; 5 uses
  %.sroa.11.0106 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit ], [ null, %.critedge50 ] ; 3 uses
  %.sroa.0.0105 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit ], [ null, %.critedge50 ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.11.0106, %.sroa.17.0107
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph109
  store ptr %storemerge108, ptr %.sroa.11.0106, align 8, !tbaa !59
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit

bb.h:                                             ; preds = %.lr.ph109
  %i.ba = ptrtoint ptr %.sroa.17.0107 to i64
  %i.bb = ptrtoint ptr %.sroa.0.0105 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.i, label %_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #32
          to label %.noexc51 unwind label %.loopexit ; 4 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %storemerge108, ptr %i.bl, align 8, !tbaa !59
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.j, label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.j:                                             ; preds = %.noexc51
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %.sroa.0.0105, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.j, %.noexc51
  %.not.i17.i.i = icmp eq ptr %.sroa.0.0105, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0105, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.g, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %.sroa.0.1 = phi ptr [ %i.bk, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.0.0105, %bb.g ] ; 14 uses
  %.pn = phi ptr [ %i.bl, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.11.0106, %bb.g ] ; 3 uses
  %.sroa.17.1 = phi ptr [ %i.bn, %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.17.0107, %bb.g ] ; 7 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 4 uses
  %storemerge.in = getelementptr inbounds nuw i8, ptr %storemerge108, i64 40
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !316 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %storemerge, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !316
  %.not45 = icmp eq ptr %i.bp, null
  br i1 %.not45, label %._crit_edge110, label %.lr.ph109

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit: ; preds = %._crit_edge110
  %.not = icmp eq ptr %.sroa.0.1, %.sroa.11.1
  %i.bq = ptrtoint ptr %.sroa.11.1 to i64
  %i.br = ptrtoint ptr %.sroa.0.1 to i64          ; 3 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 24, i1 false)
  br i1 %.not, label %.thread, label %bb.l

.thread:                                          ; preds = %.critedge50, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit
  %i.bt = phi i64 [ %i.bs, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit ], [ 0, %.critedge50 ]
  %i.bu = phi i64 [ %i.br, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit ], [ 0, %.critedge50 ]
  %.sroa.0.0.lcssa132142.a = phi ptr [ %.sroa.0.1, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit ], [ null, %.critedge50 ]
  %.sroa.17.0.lcssa134140.a = phi ptr [ %.sroa.17.1, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit ], [ null, %.critedge50 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = getelementptr inbounds i8, ptr null, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !53
  br label %bb.p

bb.l:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.thread, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit
  %6 = phi i64 [ %5, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.thread ], [ %i.bs, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit ] ; 6 uses
  %7 = phi i64 [ %4, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.thread ], [ %i.br, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN13sentencepiece7unigram7Lattice4NodeESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit ] ; 3 uses
  %i.by = icmp ugt i64 %6, 9223372036854775800
  br i1 %i.by, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN13sentencepiece7unigram7Lattice4NodeEE8allocateEmPKv.exit.i.i.i.i.i, !prof !88

.noexc.i.i.i:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc52 unwind label %.loopexit.split-lp

.noexc52:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN13sentencepiece7unigram7Lattice4NodeEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #32
          to label %.noexc53 unwind label %.loopexit.split-lp ; 5 uses

.noexc53:                                         ; preds = %_ZNSt15__new_allocatorIPN13sentencepiece7unigram7Lattice4NodeEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.bz, ptr %0, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %6 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !53
  %i.cd = icmp samesign ugt i64 %6, 8
  br i1 %i.cd, label %bb.m, label %bb.n, !prof !317

bb.m:                                             ; preds = %.noexc53
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %.sroa.0.1, i64 %6, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc53
  %i.ce = icmp eq i64 %6, 8
  br i1 %i.ce, label %.thread77, label %bb.p

.thread77:                                        ; preds = %bb.n
  %i.cf = load ptr, ptr %.sroa.0.1, align 8, !tbaa !59
  store ptr %i.cf, ptr %i.bz, align 8, !tbaa !59
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !83
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.as, ptr %i.cg, align 8, !tbaa !93
  br label %bb.q

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i, %_ZNSt15__new_allocatorIPN13sentencepiece7unigram7Lattice4NodeEE8allocateEmPKv.exit.i.i.i.i.i, %bb.i
  %.sroa.0.091 = phi ptr [ %.sroa.0.1, %.noexc.i.i.i ], [ %.sroa.0.1, %_ZNSt15__new_allocatorIPN13sentencepiece7unigram7Lattice4NodeEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.sroa.0.0105, %bb.i ]
  %.sroa.17.084 = phi ptr [ %.sroa.17.1, %.noexc.i.i.i ], [ %.sroa.17.1, %_ZNSt15__new_allocatorIPN13sentencepiece7unigram7Lattice4NodeEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.sroa.17.0107, %bb.i ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.090 = phi ptr [ %.sroa.0.0105, %.loopexit ], [ %.sroa.0.091, %.loopexit.split-lp ] ; 3 uses
  %.sroa.17.083 = phi ptr [ %.sroa.17.0107, %.loopexit ], [ %.sroa.17.084, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %.sroa.0.090, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit56, label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.m, %.thread
  %i.ch = phi i64 [ %7, %bb.m ], [ %7, %bb.n ], [ %i.bu, %.thread ]
  %.sroa.0.0.lcssa132141 = phi ptr [ %.sroa.0.1, %bb.m ], [ %.sroa.0.1, %bb.n ], [ %.sroa.0.0.lcssa132142.a, %.thread ] ; 2 uses
  %.sroa.17.0.lcssa134139 = phi ptr [ %.sroa.17.1, %bb.m ], [ %.sroa.17.1, %bb.n ], [ %.sroa.17.0.lcssa134140.a, %.thread ]
  %i.ci = phi ptr [ %i.cb, %bb.m ], [ %i.cb, %bb.n ], [ %i.bw, %.thread ]
  %i.cj = phi ptr [ %i.ca, %bb.m ], [ %i.ca, %bb.n ], [ %i.bv, %.thread ]
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !83
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.as, ptr %i.ck, align 8, !tbaa !93
  %.not.i.i.i54 = icmp eq ptr %.sroa.0.0.lcssa132141, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.thread77, %bb.p
  %i.cl = phi i64 [ %7, %.thread77 ], [ %i.ch, %bb.p ]
  %.sroa.0.0.lcssa132143 = phi ptr [ %.sroa.0.1, %.thread77 ], [ %.sroa.0.0.lcssa132141, %bb.p ]
  %.sroa.17.0.lcssa135 = phi ptr [ %.sroa.17.1, %.thread77 ], [ %.sroa.17.0.lcssa134139, %bb.p ]
  %i.cm = ptrtoint ptr %.sroa.17.0.lcssa135 to i64
  %i.cn = sub i64 %i.cm, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa132143, i64 noundef %i.cn) #30
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.co = ptrtoint ptr %.sroa.17.083 to i64
  %i.cp = ptrtoint ptr %.sroa.0.090 to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.090, i64 noundef %i.cq) #30
  br label %_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit56

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit: ; preds = %bb.q, %bb.p, %bb.f
  ret void

_ZNSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EED2Ev.exit56: ; preds = %bb.r, %bb.o, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.d ], [ %lpad.phi, %bb.o ], [ %lpad.phi, %bb.r ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #7

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZNK13sentencepiece7unigram7Lattice16ForwardAlgorithmEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.17") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, float noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -1
  %.sroa.speculated.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72
  %i.o = mul i64 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !73
  %i.r = add i64 %i.o, %i.q                       ; 4 uses
  %i.s = icmp ugt i64 %i.r, 2305843009213693951
  br i1 %i.s, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #33
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %.noexc22

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

.noexc22:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.t = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 5 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 %i.t, i1 false), !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc22, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %i.y = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.u, %.noexc22 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.x, %.noexc22 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !99
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %narrow = add nuw i32 %.sroa.speculated.i, 1
  %i.ad = zext i32 %narrow to i64
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %._crit_edge41.split
  %.042 = phi i64 [ 0, %.loopexit ], [ %i.ao, %._crit_edge41.split ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.042 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !85 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85 ; 2 uses
  %.not3237 = icmp eq ptr %i.af, %i.ah
  br i1 %.not3237, label %._crit_edge41.split, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.b
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.042 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !85 ; 2 uses
  %.not3334 = icmp eq ptr %i.ak, %i.am
  br i1 %.not3334, label %._crit_edge41.split, label %.lr.ph40.split

.lr.ph40.split:                                   ; preds = %.lr.ph40
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !59
  br label %.lr.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %.lr.ph40, %bb.b
  %i.ao = add nuw nsw i64 %.042, 1                ; 2 uses
  %exitcond = icmp eq i64 %i.ao, %i.ad
  br i1 %exitcond, label %bb.f, label %bb.b, !llvm.loop !318

.lr.ph:                                           ; preds = %.lr.ph40.split, %._crit_edge
  %.sroa.028.038 = phi ptr [ %i.af, %.lr.ph40.split ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.ap = load ptr, ptr %.sroa.028.038, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !76
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.as ; 2 uses
  %.promoted = load float, ptr %i.at, align 4
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN13sentencepiece7unigram12_GLOBAL__N_19LogSumExpEffb.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.028.038, i64 8 ; 2 uses
  %.not32 = icmp eq ptr %i.au, %i.ah
  br i1 %.not32, label %._crit_edge41.split, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph, %_ZN13sentencepiece7unigram12_GLOBAL__N_19LogSumExpEffb.exit
  %.1.i36 = phi float [ %.promoted, %.lr.ph ], [ %.1.i, %_ZN13sentencepiece7unigram12_GLOBAL__N_19LogSumExpEffb.exit ] ; 4 uses
  %.sroa.024.035 = phi ptr [ %i.ak, %.lr.ph ], [ %i.br, %_ZN13sentencepiece7unigram12_GLOBAL__N_19LogSumExpEffb.exit ] ; 2 uses
  %i.av = load ptr, ptr %.sroa.024.035, align 8, !tbaa !59 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !76
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !98
  %i.bd = tail call float @llvm.fmuladd.f32(float %2, float %i.ax, float %i.bc) ; 5 uses
  %i.be = icmp eq ptr %i.av, %i.an
  br i1 %i.be, label %_ZN13sentencepiece7unigram12_GLOBAL__N_19LogSumExpEffb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = fcmp olt float %i.bd, %.1.i36
  %.sroa.speculated13.i = select i1 %i.bf, float %i.bd, float %.1.i36 ; 2 uses
  %i.bg = fcmp olt float %.1.i36, %i.bd
  %.sroa.speculated.i23 = select i1 %i.bg, float %i.bd, float %.1.i36 ; 4 uses
  %i.bh = fadd float %.sroa.speculated13.i, 5.000000e+01
  %i.bi = fcmp ogt float %.sroa.speculated.i23, %i.bh
  br i1 %i.bi, label %_ZN13sentencepiece7unigram12_GLOBAL__N_19LogSumExpEffb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = fpext float %.sroa.speculated.i23 to double
  %i.bk = fsub float %.sroa.speculated13.i, %.sroa.speculated.i23
  %i.bl = fpext float %i.bk to double
  %i.bm = tail call double @exp(double noundef %i.bl) #31
  %i.bn = fadd double %i.bm, 1.000000e+00
  %i.bo = tail call double @log(double noundef %i.bn) #31
  %i.bp = fadd double %i.bo, %i.bj
  %i.bq = fptrunc double %i.bp to float
  br label %_ZN13sentencepiece7unigram12_GLOBAL__N_19LogSumExpEffb.exit

_ZN13sentencepiece7unigram12_GLOBAL__N_19LogSumExpEffb.exit: ; preds = %bb.e, %bb.d, %bb.c
  %.1.i = phi float [ %i.bd, %bb.c ], [ %i.bq, %bb.e ], [ %.sroa.speculated.i23, %bb.d ] ; 2 uses
  store float %.1.i, ptr %i.at, align 4, !tbaa !98
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.024.035, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.br, %i.am
  br i1 %.not33, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %._crit_edge41.split
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress uwtable
define void @_ZNK13sentencepiece7unigram7Lattice17BackwardAlgorithmEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.17") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, float %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -1
  %.sroa.speculated.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72
  %i.o = mul i64 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !73
end_hunk_0
