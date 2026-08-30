Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/benchmark?download=true
inline.NumInlined: 906
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK8AlgoWrap8plotLTRCERN2cv3MatE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZNSt12__shared_ptrIN2cv4plot6Plot2dELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn7.pn = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn7.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorI8AlgoWrapSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP8AlgoWrapEEvT_S4_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIP8AlgoWrapS0_EvT_S2_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIP8AlgoWrapS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !97     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI8AlgoWrapSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP8AlgoWrapS0_EvT_S2_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZNSt12_Vector_baseI8AlgoWrapSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI8AlgoWrapSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIP8AlgoWrapS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #27
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN2cv12VideoCaptureD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi6ignoreEli(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #2 align 2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIjEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8AlgoWrapC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.cv::Ptr.8", align 8        ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !9
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.aa    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !15
  %i.j = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.j, ptr %i.d, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !17
  store i8 %i.l, ptr %i.k, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.m, ptr %i.n, align 8, !tbaa !18
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.r = load atomic i8, ptr @_ZGVZL12getNextColorvE6colors acquire, align 8, !noalias !166
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.g, !prof !169

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL12getNextColorvE6colors) #25, !noalias !166
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double 1.600000e+02, ptr @_ZZL12getNextColorvE6colors, align 16, !tbaa !86, !noalias !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 8), i8 0, i64 40, i1 false), !noalias !166
  store double 1.600000e+02, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 48), align 16, !tbaa !86, !noalias !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 56), i8 0, i64 16, i1 false), !noalias !166
  store <2 x double> splat (double 1.600000e+02), ptr getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 72), align 8, !tbaa !86, !noalias !166
  store <2 x double> <double 0.000000e+00, double 1.600000e+02>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 88), align 8, !tbaa !86, !noalias !166
  store double 1.600000e+02, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 104), align 8, !tbaa !86, !noalias !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 112), i8 0, i64 16, i1 false), !noalias !166
  store <2 x double> <double 1.600000e+02, double 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 128), align 16, !tbaa !86, !noalias !166
  store <2 x double> <double 1.600000e+02, double 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 144), align 16, !tbaa !86, !noalias !166
  store <2 x double> <double 2.000000e+01, double 5.000000e+01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 160), align 16, !tbaa !86, !noalias !166
  store <2 x double> <double 1.600000e+02, double 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL12getNextColorvE6colors, i64 176), align 16, !tbaa !86, !noalias !166
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL12getNextColorvE6colors) #25, !noalias !166
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = load i32, ptr @_ZZL12getNextColorvE2id, align 4, !tbaa !19, !noalias !166 ; 3 uses
  %i.v = icmp slt i32 %i.u, 6
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw nsw i32 %i.u, 1
  store i32 %i.w, ptr @_ZZL12getNextColorvE2id, align 4, !tbaa !19, !noalias !166
  %3 = sext i32 %i.u to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = phi i64 [ %3, %bb.h ], [ 5, %bb.g ]
  %i.y = getelementptr inbounds [32 x i8], ptr @_ZZL12getNextColorvE6colors, i64 %i.x ; 2 uses
  %i.z = load <2 x double>, ptr %i.y, align 16, !tbaa !86, !noalias !166
  store <2 x double> %i.z, ptr %i.q, align 8, !tbaa !86, !alias.scope !166
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load <2 x double>, ptr %i.aa, align 16, !tbaa !86, !noalias !166
  store <2 x double> %i.ac, ptr %i.ab, align 8, !tbaa !86, !alias.scope !166
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ad, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false)
  %i.ag = invoke noalias noundef nonnull dereferenceable(404) ptr @_Znwm(i64 noundef 404) #29
          to label %.noexc7 unwind label %bb.ab   ; 3 uses

.noexc7:                                          ; preds = %bb.i
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 404 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(404) %i.ag, i8 0, i64 404, i1 false), !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_Z19createTrackerByNameRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.8") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %.noexc7
  %i.ak = load ptr, ptr %2, align 8, !tbaa !67
  store ptr %i.ak, ptr %0, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !116 ; 5 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_7TrackerEEaSERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not7.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !19
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !116
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %i.au = phi ptr [ %i.ao, %bb.k ], [ %i.ao, %bb.m ], [ %.pr.pre.i.i.i.i, %bb.n ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.av, align 8, !tbaa !117
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !119
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !171
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !171
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i9.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i9.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.r ], [ %i.bi, %bb.s ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.t, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !121

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.an, ptr %i.al, align 8, !tbaa !116
  %.pr = load ptr, ptr %i.am, align 8, !tbaa !116
  br label %_ZN2cv3PtrINS_7TrackerEEaSERKS2_.exit

_ZN2cv3PtrINS_7TrackerEEaSERKS2_.exit:            ; preds = %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.bk = phi ptr [ %i.an, %bb.j ], [ %.pr, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ] ; 8 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv7TrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN2cv3PtrINS_7TrackerEEaSERKS2_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bl, align 8, !tbaa !117
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !119
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #25, !inline_history !172
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #25, !inline_history !172
  br label %_ZNSt12__shared_ptrIN2cv7TrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bo, %bb.x ], [ %i.by, %bb.y ]
  %i.bz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bz, label %bb.z, label %_ZNSt12__shared_ptrIN2cv7TrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !121

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #25
  br label %_ZNSt12__shared_ptrIN2cv7TrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv7TrackerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2cv3PtrINS_7TrackerEEaSERKS2_.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.aa:                                            ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ab:                                            ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ac:                                            ; preds = %.noexc7
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.cd = load ptr, ptr %i.af, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load ptr, ptr %i.ai, align 8, !tbaa !115
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ch) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %i.cb, %bb.ab ], [ %i.cc, %bb.ac ] ; 2 uses
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.d
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !17
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #26
end_hunk_0
