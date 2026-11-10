Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/slow?download=true
inline.NumInlined: 212
inline.NumDeleted: 107
begin_hunk_0_@_ZTv0_n24_N5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED1Ev:bb.a
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !guid !211 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5arrow2io16RandomAccessFileD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN5arrow2io16RandomAccessFileD0Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_N5arrow2io16RandomAccessFileD1Ev(ptr noundef) unnamed_addr #9 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_N5arrow2io16RandomAccessFileD0Ev(ptr noundef) unnamed_addr #9 align 2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !213 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !212
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !212
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn8_N5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED1Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !guid !214 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn8_N5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !guid !215 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !guid !216 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !guid !217 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !219 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow2io20LatencyGeneratorImplEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #24, !inline_history !218
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !220 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 !guid !221 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !224  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !67
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow2io16LatencyGeneratorD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #17 align 2 !guid !225 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io20LatencyGeneratorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 !guid !226 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5arrow2io20LatencyGeneratorImpl11NextLatencyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !227 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #28
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = invoke noundef double @_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(25) %i.c)
          to label %_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_.exit unwind label %bb.c ; 2 uses

_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  %.sroa.speculated = select i1 %i.f, double %i.e, double 0.000000e+00
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  ret double %.sroa.speculated

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  resume { ptr, i32 } %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 !guid !229 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59, !range !230, !noundef !231
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000), !tbaa !7
  %i.e = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !7
  %i.f = fdiv x86_fp80 %i.d, %i.e
  %i.g = fptoui x86_fp80 %i.f to i64              ; 2 uses
  %i.h = add i64 %i.g, 52
  %i.i = udiv i64 %i.h, %i.g
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %.promoted = load i64, ptr %1, align 8, !tbaa !52
  br label %select.unfold.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !232
  br label %bb.h

bb.c:                                             ; preds = %select.unfold.i.i
  %i.l = fdiv double %i.s, %i.v                   ; 2 uses
  %i.m = fcmp ult double %i.l, 1.000000e+00
  br i1 %i.m, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit, label %bb.d, !prof !233

select.unfold.i.i:                                ; preds = %select.unfold.i.i.backedge, %.preheader
  %.023.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ %.023.i.i.be, %select.unfold.i.i.backedge ]
  %.01422.i.i = phi double [ 1.000000e+00, %.preheader ], [ %.01422.i.i.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.01521.i.i = phi double [ 0.000000e+00, %.preheader ], [ %.01521.i.i.be, %select.unfold.i.i.backedge ]
  %i.n = phi i64 [ %.promoted, %.preheader ], [ %.be, %select.unfold.i.i.backedge ]
  %i.o = mul i64 %i.n, 16807
  %i.p = urem i64 %i.o, 2147483647                ; 3 uses
  %i.q = add nsw i64 %i.p, -1
  %i.r = uitofp i64 %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %.01422.i.i, double %.01521.i.i) ; 2 uses
  %i.t = fpext double %.01422.i.i to x86_fp80
  %i.u = fmul x86_fp80 %i.t, f0x401DFFFFFFFC00000000
  %i.v = fptrunc x86_fp80 %i.u to double          ; 2 uses
  %i.w = add i64 %.023.i.i, -1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.c, label %select.unfold.i.i.backedge

select.unfold.i.i.backedge:                       ; preds = %select.unfold.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27
  %.023.i.i.be = phi i64 [ %i.w, %select.unfold.i.i ], [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  %.01422.i.i.be = phi double [ %i.v, %select.unfold.i.i ], [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  %.01521.i.i.be = phi double [ %i.s, %select.unfold.i.i ], [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  %.be = phi i64 [ %i.p, %select.unfold.i.i ], [ %i.ac, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  br label %select.unfold.i.i

bb.d:                                             ; preds = %bb.c
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.l, %bb.c ]
  br label %select.unfold.i.i21

bb.e:                                             ; preds = %select.unfold.i.i21
  %i.x = tail call double @llvm.fmuladd.f64(double %.016.i.i, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.y = fdiv double %i.af, %i.ai                 ; 2 uses
  %i.z = fcmp ult double %i.y, 1.000000e+00
  br i1 %i.z, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27, label %bb.f, !prof !233

select.unfold.i.i21:                              ; preds = %select.unfold.i.i21, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
  %.023.i.i22 = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.aj, %select.unfold.i.i21 ]
  %.01422.i.i23 = phi double [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.ai, %select.unfold.i.i21 ] ; 2 uses
  %.01521.i.i24 = phi double [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.af, %select.unfold.i.i21 ]
  %i.aa = phi i64 [ %i.p, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.ac, %select.unfold.i.i21 ]
  %i.ab = mul nuw nsw i64 %i.aa, 16807
  %i.ac = urem i64 %i.ab, 2147483647              ; 4 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = uitofp i64 %i.ad to double
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %.01422.i.i23, double %.01521.i.i24) ; 2 uses
  %i.ag = fpext double %.01422.i.i23 to x86_fp80
  %i.ah = fmul x86_fp80 %i.ag, f0x401DFFFFFFFC00000000
  %i.ai = fptrunc x86_fp80 %i.ah to double        ; 2 uses
  %i.aj = add i64 %.023.i.i22, -1                 ; 2 uses
  %.not.i.i25 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i25, label %bb.e, label %select.unfold.i.i21, !llvm.loop !228

bb.f:                                             ; preds = %bb.e
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27: ; preds = %bb.e, %bb.f
  %.016.i.i26 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.f ], [ %i.y, %bb.e ]
  %i.ak = tail call double @llvm.fmuladd.f64(double %.016.i.i26, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.al) ; 4 uses
  %i.an = fcmp ogt double %i.am, 1.000000e+00
  %i.ao = fcmp oeq double %i.am, 0.000000e+00
  %i.ap = or i1 %i.an, %i.ao
  br i1 %i.ap, label %select.unfold.i.i.backedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27
  store i64 %i.ac, ptr %1, align 8, !tbaa !52
  %i.aq = tail call ninf double @llvm.log.f64(double %i.am)
  %i.ar = fmul double %i.aq, -2.000000e+00
  %i.as = fdiv double %i.ar, %i.am
  %i.at = tail call double @sqrt(double noundef %i.as) #24, !tbaa !7 ; 2 uses
  %i.au = fmul double %i.x, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.au, ptr %i.av, align 8, !tbaa !232
  store i8 1, ptr %i.a, align 8, !tbaa !59
  %i.aw = fmul double %i.ak, %i.at
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi double [ %i.k, %bb.b ], [ %i.aw, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !234
  %i.az = load double, ptr %2, align 8, !tbaa !55
  %i.ba = tail call double @llvm.fmuladd.f64(double %.0, double %i.ay, double %i.az)
  ret double %i.ba
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #20

attributes #0 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !47}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 6958178186285412451}
!9 = !{i64 3152216586072017753}
!10 = !{i64 -6764967822028028172}
!11 = !{i64 2803955955444405643}
!12 = !{i64 8248669414607686188}
!13 = !{i64 -8077237541838106272}
!14 = !{i64 8542172319961012460}
!15 = !{i64 -6317381677353242785}
!16 = !{i64 -9104800081668156129}
!17 = !{i64 -8871610226754269509}
!18 = !{i64 -436254695499645112}
!19 = !{i64 2122317568767500571}
!20 = !{i64 4892071927777270609}
!21 = !{i64 241936392002372376}
!22 = !{i64 722796729138940852}
!23 = !{i64 820075672305079738}
!24 = !{i64 -6518153652264627704}
!25 = !{i64 -4392976292432187726}
!26 = !{i64 -3448332058848605358}
!27 = !{i64 2276551960973668068}
!28 = !{i64 6898146773935568198}
!29 = !{i64 7448653870551465562}
!30 = !{i64 -8914904055740107034}
!31 = !{i64 6127075404161887657}
!32 = !{i64 5417530800929007426}
!33 = !{i64 4121808080836887625}
!34 = !{i64 1894422723941341130}
!35 = !{i64 -5715588497314230729}
!36 = !{i64 3119860589887630569}
!37 = !{i64 -1236552655435450385}
!38 = !{i64 170551932145141620}
!39 = !{i64 -1401153881513814600}
!40 = !{i64 -931772335144866154}
!41 = !{!"vtable pointer", !4, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"long", !5, i64 0}
!44 = !{!"_ZTS8timespec", !43, i64 0, !43, i64 8}
!45 = !{!44, !43, i64 0}
!46 = !{!44, !43, i64 8}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!49 = !{!48, !6, i64 8}
!50 = !{!48, !6, i64 12}
!51 = !{!"_ZTSSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE", !43, i64 0}
!52 = !{!51, !43, i64 0}
!53 = !{!"double", !5, i64 0}
!54 = !{!"_ZTSNSt19normal_distributionIdE10param_typeE", !53, i64 0, !53, i64 8}
!55 = !{!54, !53, i64 0}
!56 = !{!53, !53, i64 0}
!57 = !{!"bool", !5, i64 0}
!58 = !{!"_ZTSSt19normal_distributionIdE", !54, i64 0, !53, i64 16, !57, i64 24}
!59 = !{!58, !57, i64 24}
!60 = !{!"any pointer", !5, i64 0}
!61 = !{!"p1 _ZTSN5arrow2io16LatencyGeneratorE", !60, i64 0}
!62 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0}
!63 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !62, i64 0}
!64 = !{!"_ZTSSt12__shared_ptrIN5arrow2io16LatencyGeneratorELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !63, i64 8}
!65 = !{!64, !61, i64 0}
!66 = !{!63, !62, i64 0}
!67 = !{!5, !5, i64 0}
!68 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!69 = !{ptr @_ZN5arrow2io15SlowInputStreamD1Ev}
!70 = !{!"p1 _ZTSN5arrow2io11InputStreamE", !60, i64 0}
!71 = !{!"_ZTSSt12__shared_ptrIN5arrow2io11InputStreamELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !63, i64 8}
!72 = !{!71, !70, i64 0}
!73 = !{ptr @_ZN5arrow2io16LatencyGenerator5SleepEv}
!74 = !{ptr @_ZN5arrow2io20SlowRandomAccessFileD1Ev, ptr @_ZN5arrow2io20SlowRandomAccessFileD2Ev}
!75 = !{ptr @_ZN5arrow2io20SlowRandomAccessFileD1Ev}
!76 = !{ptr @_ZN5arrow2io20SlowRandomAccessFileD0Ev, ptr @_ZN5arrow2io20SlowRandomAccessFileD1Ev, ptr @_ZN5arrow2io20SlowRandomAccessFileD2Ev}
!77 = !{ptr @_ZN5arrow2io20SlowRandomAccessFileD0Ev, ptr @_ZN5arrow2io20SlowRandomAccessFileD1Ev}
!78 = !{ptr @_ZN5arrow2io20SlowRandomAccessFileD0Ev}
!79 = !{!"p1 _ZTSN5arrow2io16RandomAccessFileE", !60, i64 0}
!80 = !{!"_ZTSSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !63, i64 8}
!81 = !{!80, !79, i64 0}
!82 = !{i64 -9069021449362221528}
!83 = !{i64 5269681464607203827}
!84 = distinct !{!84, i1 true, !"_ZSt11make_sharedIN5arrow2io20LatencyGeneratorImplEJRdiEESt10shared_ptrIT_EDpOT0_"}
!85 = distinct !{!85, !84, !"_ZSt11make_sharedIN5arrow2io20LatencyGeneratorImplEJRdiEESt10shared_ptrIT_EDpOT0_: argument 0"}
!86 = distinct !{!86, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!87 = distinct !{!87, !86, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!88 = !{i64 -662072331781615360}
!89 = !{!87, !85}
!90 = !{!85}
!91 = distinct !{!91, i1 true, !"_ZSt11make_sharedIN5arrow2io20LatencyGeneratorImplEJRdRiEESt10shared_ptrIT_EDpOT0_"}
!92 = distinct !{!92, !91, !"_ZSt11make_sharedIN5arrow2io20LatencyGeneratorImplEJRdRiEESt10shared_ptrIT_EDpOT0_: argument 0"}
!93 = distinct !{!93, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!94 = distinct !{!94, !93, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!95 = !{i64 1768986119165453931}
!96 = !{!94, !92}
!97 = !{!92}
!98 = distinct !{null, null, null, null}
!99 = distinct !{null, null, null, null}
!100 = !{i64 8573630905059994949}
!101 = !{i64 1080103601501470593}
!102 = !{i64 7922144528989623511}
!103 = !{i64 8749741646196277313}
!104 = !{i64 1908756167340584798}
!105 = !{i64 3995570257525799925}
!106 = !{ptr @_ZN5arrow2io15SlowInputStreamD0Ev, ptr @_ZN5arrow2io15SlowInputStreamD1Ev}
!107 = !{ptr @_ZN5arrow2io15SlowInputStreamD0Ev}
!108 = !{i64 -1102920957479625591}
!109 = distinct !{!109, i1 true, !"_ZN5arrow2io15SlowInputStream5CloseEv"}
!110 = distinct !{!110, !109, !"_ZN5arrow2io15SlowInputStream5CloseEv: argument 0"}
!111 = !{i64 7722030304799474502}
!112 = !{!110}
!113 = !{ptr @_ZN5arrow2io15SlowInputStream5CloseEv}
!114 = !{i64 -5220498465870385931}
!115 = distinct !{!115, i1 true, !"_ZN5arrow2io15SlowInputStream5AbortEv"}
!116 = distinct !{!116, !115, !"_ZN5arrow2io15SlowInputStream5AbortEv: argument 0"}
!117 = !{i64 7166040792392727325}
!118 = !{!116}
!119 = !{ptr @_ZN5arrow2io15SlowInputStream5AbortEv}
!120 = !{i64 2893920034664073677}
!121 = !{i64 -7561051024563975524}
!122 = !{ptr @_ZNK5arrow2io15SlowInputStream6closedEv}
!123 = !{i64 -1221141814987787154}
!124 = distinct !{!124, i1 true, !"_ZNK5arrow2io15SlowInputStream4TellEv"}
!125 = distinct !{!125, !124, !"_ZNK5arrow2io15SlowInputStream4TellEv: argument 0"}
!126 = !{i64 7638099621516310119}
!127 = !{!125}
!128 = !{ptr @_ZNK5arrow2io15SlowInputStream4TellEv}
!129 = !{i64 5687506132752270582}
!130 = distinct !{!130, i1 true, !"_ZN5arrow2io15SlowInputStream4ReadElPv"}
!131 = distinct !{!131, !130, !"_ZN5arrow2io15SlowInputStream4ReadElPv: argument 0"}
!132 = !{i64 -5133516413538062933}
!133 = !{!131}
!134 = !{ptr @_ZN5arrow2io15SlowInputStream4ReadElPv, ptr @_ZN5arrow2io16LatencyGenerator5SleepEv}
!135 = !{ptr @_ZN5arrow2io15SlowInputStream4ReadElPv}
!136 = !{i64 3148973368817899500}
!137 = distinct !{!137, i1 true, !"_ZN5arrow2io15SlowInputStream4ReadEl"}
!138 = distinct !{!138, !137, !"_ZN5arrow2io15SlowInputStream4ReadEl: argument 0"}
!139 = !{i64 -6769024051935578325}
!140 = !{!138}
!141 = !{ptr @_ZN5arrow2io15SlowInputStream4ReadEl, ptr @_ZN5arrow2io16LatencyGenerator5SleepEv}
!142 = !{ptr @_ZN5arrow2io15SlowInputStream4ReadEl}
!143 = !{i64 -2483393975326314081}
!144 = !{i64 -5549846779343513783}
!145 = distinct !{null, null, null}
!146 = distinct !{null, null, null}
!147 = !{i64 6326583069878639261}
!148 = !{i64 -4939121229191785206}
!149 = !{ptr @_ZN5arrow2io20SlowRandomAccessFileD2Ev}
!150 = !{i64 8673624068160015287}
!151 = !{i64 8161027318891640190}
!152 = !{i64 -7249637394064940628}
!153 = !{i64 -7396996140540859346}
!154 = !{i64 -3656992970072149976}
!155 = !{i64 -4670013547488797900}
!156 = distinct !{!156, i1 true, !"_ZN5arrow2io20SlowRandomAccessFile5CloseEv"}
!157 = distinct !{!157, !156, !"_ZN5arrow2io20SlowRandomAccessFile5CloseEv: argument 0"}
!158 = !{i64 -6183313754736524608}
!159 = !{!157}
!160 = !{ptr @_ZN5arrow2io20SlowRandomAccessFile5CloseEv}
!161 = !{i64 1352392007322111137}
!162 = distinct !{!162, i1 true, !"_ZN5arrow2io20SlowRandomAccessFile5AbortEv"}
!163 = distinct !{!163, !162, !"_ZN5arrow2io20SlowRandomAccessFile5AbortEv: argument 0"}
!164 = !{i64 4122494577723688729}
!165 = !{!163}
!166 = !{ptr @_ZN5arrow2io20SlowRandomAccessFile5AbortEv}
!167 = !{i64 -3930763319885906800}
!168 = !{i64 -8465495846513550411}
!169 = !{ptr @_ZNK5arrow2io20SlowRandomAccessFile6closedEv}
!170 = !{i64 2438406967733039415}
!171 = !{i64 1329171024803630059}
!172 = distinct !{!172, i1 true, !"_ZN5arrow2io20SlowRandomAccessFile4SeekEl"}
!173 = distinct !{!173, !172, !"_ZN5arrow2io20SlowRandomAccessFile4SeekEl: argument 0"}
!174 = !{i64 -2093853267155141465}
!175 = !{!173}
!176 = !{ptr @_ZN5arrow2io20SlowRandomAccessFile4SeekEl}
!177 = !{i64 571748969559077398}
!178 = distinct !{!178, i1 true, !"_ZNK5arrow2io20SlowRandomAccessFile4TellEv"}
!179 = distinct !{!179, !178, !"_ZNK5arrow2io20SlowRandomAccessFile4TellEv: argument 0"}
!180 = !{i64 7479853308438994790}
!181 = !{!179}
!182 = !{ptr @_ZNK5arrow2io20SlowRandomAccessFile4TellEv}
!183 = !{i64 22480186092584166}
!184 = distinct !{!184, i1 true, !"_ZN5arrow2io20SlowRandomAccessFile4ReadElPv"}
!185 = distinct !{!185, !184, !"_ZN5arrow2io20SlowRandomAccessFile4ReadElPv: argument 0"}
!186 = !{i64 -2225669643393113148}
!187 = !{!185}
!188 = !{ptr @_ZN5arrow2io20SlowRandomAccessFile4ReadElPv, ptr @_ZN5arrow2io16LatencyGenerator5SleepEv}
!189 = !{ptr @_ZN5arrow2io20SlowRandomAccessFile4ReadElPv}
!190 = !{i64 6475141370211819561}
!191 = distinct !{!191, i1 true, !"_ZN5arrow2io20SlowRandomAccessFile4ReadEl"}
!192 = distinct !{!192, !191, !"_ZN5arrow2io20SlowRandomAccessFile4ReadEl: argument 0"}
!193 = !{i64 7638023237101526610}
!194 = !{!192}
!195 = !{ptr @_ZN5arrow2io20SlowRandomAccessFile4ReadEl, ptr @_ZN5arrow2io16LatencyGenerator5SleepEv}
!196 = !{ptr @_ZN5arrow2io20SlowRandomAccessFile4ReadEl}
!197 = !{i64 271658470725160604}
!198 = !{i64 -3095792593229266226}
!199 = !{i64 2037606573955786674}
!200 = !{i64 -5013472899470483270}
!201 = !{i64 1282521817332605490}
!202 = !{i64 -1251720909342638196}
!203 = !{i64 -2132188490380554377}
!204 = !{i64 -1148603130777664097}
!205 = !{i64 7095117707301069377}
!206 = !{i64 -5924289537153892480}
!207 = !{i64 -5740240058970629167}
!208 = !{i64 -8666377472140892900}
!209 = !{i64 5980557873461651798}
!210 = !{i64 2304085014838069528}
!211 = !{i64 -7698054284601048791}
!212 = distinct !{null}
!213 = !{i64 -227505617863360783}
!214 = !{i64 -4309056306127352621}
!215 = !{i64 -2278485761930211379}
!216 = !{i64 2811368392164332907}
!217 = !{i64 6264971294668813317}
!218 = distinct !{null, null}
!219 = !{i64 4213934626011023887}
!220 = !{i64 -1482431320341535441}
!221 = !{i64 506418461306461166}
!222 = !{!"p1 omnipotent char", !60, i64 0}
!223 = !{!"_ZTSSt9type_info", !222, i64 8}
!224 = !{!223, !222, i64 8}
!225 = !{i64 -3283784810434129173}
!226 = !{i64 7563835619963438012}
!227 = !{i64 -1366934246806776045}
!228 = distinct !{!228, !47}
!229 = !{i64 4363924241473502216}
!230 = !{i8 0, i8 2}
!231 = !{}
!232 = !{!58, !53, i64 16}
!233 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!234 = !{!54, !53, i64 8}
end_hunk_0
