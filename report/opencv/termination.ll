Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/termination?download=true
inline.NumInlined: 512
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2cv4usac31StandardTerminationCriteriaImpl6updateERKNS_3MatEi:._crit_edge
  %or.cond = select i1 %i.p, i1 %i.r, i1 false
  %i.s = fptosi double %i.n to i32
  %.0 = select i1 %or.cond, i32 %i.s, i32 %.pre
  ret i32 %.0
}

declare void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac19SPRTTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac19SPRTTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %i.a) #16, !inline_history !121
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac19SPRTTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv4usac19SPRTTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac19SPRTTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #16
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac19SPRTTerminationImplD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2cv4usac19SPRTTerminationImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv4usac12AdaptiveSPRTELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !12
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !122
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !122
  br label %_ZNSt12__shared_ptrIN2cv4usac12AdaptiveSPRTELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN2cv4usac12AdaptiveSPRTELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt12__shared_ptrIN2cv4usac12AdaptiveSPRTELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv4usac12AdaptiveSPRTELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac19SPRTTerminationImplD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2cv4usac19SPRTTerminationImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN2cv4usac19SPRTTerminationImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !12
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !0
  br label %_ZN2cv4usac19SPRTTerminationImplD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN2cv4usac19SPRTTerminationImplD2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !51
  br label %_ZN2cv4usac19SPRTTerminationImplD2Ev.exit

_ZN2cv4usac19SPRTTerminationImplD2Ev.exit:        ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(44) %0) #16, !inline_history !51
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac19SPRTTerminationImpl6updateERKNS_3MatEi(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !126  ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !127  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 33
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !37
  %i.p = sitofp i32 %2 to double
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !38
  %i.s = sitofp i32 %i.r to double
  %i.t = fdiv double %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39
  %i.w = sitofp i32 %i.v to double
  %i.x = tail call noundef double @pow(double noundef %i.t, double noundef %i.w) #16
  %i.y = fsub double 1.000000e+00, %i.x
  %i.z = tail call double @log(double noundef %i.y) #16
  %i.aa = fdiv double %i.o, %i.z                  ; 3 uses
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp une double %i.ab, +inf
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !40 ; 2 uses
  %i.ad = sitofp i32 %.pre.i to double
  %i.ae = fcmp olt double %i.aa, %i.ad
  %or.cond.i = select i1 %i.ac, i1 %i.ae, i1 false
  %i.af = fptosi double %i.aa to i32
  %i.ag = select i1 %or.cond.i, i32 %i.af, i32 %.pre.i
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.ah = sitofp i32 %2 to double
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !38
  %i.ak = sitofp i32 %i.aj to double
  %i.al = fdiv double %i.ah, %i.ak                ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = sitofp i32 %i.an to double              ; 3 uses
  %i.ap = tail call noundef double @pow(double noundef %i.al, double noundef %i.ao) #16 ; 2 uses
  %3 = fsub double 1.000000e+00, %i.al            ; 3 uses
  %4 = fdiv double 1.000000e+00, %3
  %5 = fneg double %i.ap                          ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f
  %6 = fsub double 1.000000e+00, %i.ap
  %7 = sitofp i32 %.1 to double                   ; 2 uses
  %i.aq = tail call noundef double @pow(double noundef %6, double noundef %7) #16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !37 ; 4 uses
  %i.at = fcmp olt double %i.aq, %i.as
  br i1 %i.at, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.f
  %.056 = phi i32 [ 0, %bb.c ], [ %.1, %bb.f ]    ; 2 uses
  %.03355 = phi double [ 0.000000e+00, %bb.c ], [ %.134, %bb.f ] ; 2 uses
  %.sroa.049.054 = phi ptr [ %i.i, %bb.c ], [ %i.cl, %bb.f ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.049.054, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !129 ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.049.054, i64 16
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !130
  %i.az = load <2 x double>, ptr %.sroa.049.054, align 8, !tbaa !52 ; 3 uses
  %i.ba = fsub <2 x double> splat (double 1.000000e+00), %i.az ; 2 uses
  %i.bb = shufflevector <2 x double> %i.az, <2 x double> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.bc = shufflevector <2 x double> %i.az, <2 x double> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.bd = fdiv <2 x double> %i.bb, %i.bc          ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = tail call double @log(double noundef %i.be) #16 ; 2 uses
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  %i.bh = tail call double @log(double noundef %i.bg) #16 ; 3 uses
  %i.bi = tail call double @log(double noundef %4) #16
  %i.bj = fdiv double %i.bi, %i.bh                ; 3 uses
  %i.bk = fmul double %i.bf, %i.bj
  %i.bl = tail call double @exp(double noundef %i.bk) #16
  %i.bm = fmul double %i.al, %i.bl                ; 3 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double -2.000000e+00, double 1.000000e+00)
  %i.bo = fdiv double %i.bn, %3
  %i.bp = tail call double @log(double noundef %i.bo) #16
  %i.bq = fdiv double %i.bp, %i.bh                ; 3 uses
  %i.br = fmul double %i.bf, %i.bq
  %i.bs = tail call double @exp(double noundef %i.br) #16
  %i.bt = fmul double %i.bh, %i.bq
  %i.bu = tail call double @exp(double noundef %i.bt) #16
  %i.bv = fmul double %3, %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.al, double %i.bs, double %i.bv)
  %i.bx = fsub double %i.bj, %i.bq
  %i.by = fadd double %i.bm, 1.000000e+00
  %i.bz = fsub double %i.by, %i.bw
  %i.ca = fneg double %i.bx
  %i.cb = fdiv double %i.ca, %i.bz
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.bm, double %i.bj) ; 2 uses
  %.inv.i = fcmp ord double %i.cc, 0.000000e+00
  %.neg = fneg double %i.cc
  %i.cd = select i1 %.inv.i, double %.neg, double -0.000000e+00
  %i.ce = tail call double @pow(double noundef %i.ay, double noundef %i.cd) #16
  %i.cf = fsub double 1.000000e+00, %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %5, double %i.cf, double 1.000000e+00)
  %i.ch = tail call double @log(double noundef %i.cg) #16
  %i.ci = sitofp i32 %i.av to double
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ci, double %.03355)
  %i.ck = add nsw i32 %i.av, %.056
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.134 = phi double [ %i.cj, %bb.e ], [ %.03355, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.ck, %bb.e ], [ %.056, %bb.d ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.049.054, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.cl, %i.h
  br i1 %.not, label %._crit_edge, label %bb.d

bb.g:                                             ; preds = %._crit_edge
  %i.cm = tail call noundef double @pow(double noundef %i.al, double noundef %i.ao) #16
  %i.cn = fsub double 1.000000e+00, %i.cm
  %i.co = tail call double @log(double noundef %i.cn) #16
  %i.cp = fdiv double %i.as, %i.co                ; 3 uses
  %i.cq = tail call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp une double %i.cq, +inf
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i40 = load i32, ptr %.phi.trans.insert.i39, align 8, !tbaa !40 ; 2 uses
  %i.cs = sitofp i32 %.pre.i40 to double
  %i.ct = fcmp olt double %i.cp, %i.cs
  %or.cond.i41 = select i1 %i.cr, i1 %i.ct, i1 false
  %i.cu = fptosi double %i.cp to i32
  %i.cv = select i1 %or.cond.i41, i32 %i.cu, i32 %.pre.i40
  br label %bb.n

bb.h:                                             ; preds = %._crit_edge
  %i.cw = fsub double %i.as, %.134
  %i.cx = getelementptr inbounds i8, ptr %i.h, i64 -16
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !130
  %i.cz = fdiv double 1.000000e+00, %i.cy
  %i.da = fsub double 1.000000e+00, %i.cz
  %i.db = tail call double @llvm.fmuladd.f64(double %5, double %i.da, double 1.000000e+00)
  %i.dc = tail call double @log(double noundef %i.db) #16
  %i.dd = fdiv double %i.cw, %i.dc
  %i.de = fadd double %i.dd, %7                   ; 4 uses
  %i.df = tail call double @llvm.fabs.f64(double %i.de)
  %or.cond = fcmp ueq double %i.df, +inf
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dg = tail call noundef double @pow(double noundef %i.al, double noundef %i.ao) #16
  %i.dh = fsub double 1.000000e+00, %i.dg
  %i.di = tail call double @log(double noundef %i.dh) #16
  %i.dj = fdiv double %i.as, %i.di                ; 3 uses
  %i.dk = tail call double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp une double %i.dk, +inf
  %.phi.trans.insert.i42 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i43 = load i32, ptr %.phi.trans.insert.i42, align 8, !tbaa !40 ; 2 uses
  %i.dm = sitofp i32 %.pre.i43 to double
  %i.dn = fcmp olt double %i.dj, %i.dm
  %or.cond.i44 = select i1 %i.dl, i1 %i.dn, i1 false
  %i.do = fptosi double %i.dj to i32
  %i.dp = select i1 %or.cond.i44, i32 %i.do, i32 %.pre.i43
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.dq = fcmp olt double %i.de, 0.000000e+00
  br i1 %i.dq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !40
  %i.dt = sitofp i32 %i.ds to double
  %i.du = fcmp olt double %i.de, %i.dt
  br i1 %i.du, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dv = fptosi double %i.de to i32
  %i.dw = tail call noundef i32 @_ZNK2cv4usac19SPRTTerminationImpl21getStandardUpperBoundEi(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %2)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.dv)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dx = tail call noundef i32 @_ZNK2cv4usac19SPRTTerminationImpl21getStandardUpperBoundEi(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.j, %bb.m, %bb.l, %bb.i, %bb.b
  %.2 = phi i32 [ %i.ag, %bb.b ], [ %i.cv, %bb.g ], [ %i.dp, %bb.i ], [ %i.dx, %bb.m ], [ %.sroa.speculated, %bb.l ], [ 0, %bb.j ]
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac19SPRTTerminationImpl21getStandardUpperBoundEi(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !37
  %i.c = sitofp i32 %1 to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !38
  %i.f = sitofp i32 %i.e to double
  %i.g = fdiv double %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = sitofp i32 %i.i to double
  %i.k = tail call noundef double @pow(double noundef %i.g, double noundef %i.j) #16
  %i.l = fsub double 1.000000e+00, %i.k
  %i.m = tail call double @log(double noundef %i.l) #16
  %i.n = fdiv double %i.b, %i.m                   ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp une double %i.o, +inf
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !40 ; 2 uses
  %i.q = sitofp i32 %.pre to double
  %i.r = fcmp olt double %i.n, %i.q
  %or.cond = select i1 %i.p, i1 %i.r, i1 false
  %i.s = fptosi double %i.n to i32
  %i.t = select i1 %or.cond, i32 %i.s, i32 %.pre
  ret i32 %i.t
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac26SPRTPNapsacTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac26SPRTPNapsacTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %i.a) #16, !inline_history !131
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac26SPRTPNapsacTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv4usac26SPRTPNapsacTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac26SPRTPNapsacTerminationImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #16
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac26SPRTPNapsacTerminationImplD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2cv4usac26SPRTPNapsacTerminationImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2cv4usac19SPRTTerminationImplE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN2cv4usac19SPRTTerminationImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !12
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16, !inline_history !0
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16, !inline_history !0
  br label %_ZN2cv4usac19SPRTTerminationImplD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN2cv4usac19SPRTTerminationImplD2Ev.exit, !prof !50

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16, !inline_history !51
  br label %_ZN2cv4usac19SPRTTerminationImplD2Ev.exit

_ZN2cv4usac19SPRTTerminationImplD2Ev.exit:        ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(44) %i.a) #16, !inline_history !51
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac26SPRTPNapsacTerminationImplD0Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
