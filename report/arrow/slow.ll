inline.NumInlined: 212
inline.NumDeleted: 107
begin_hunk_0_@_ZN5arrow2io16RandomAccessFileD0Ev
declare void @_ZN5arrow2io16RandomAccessFileD0Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_N5arrow2io16RandomAccessFileD1Ev(ptr noundef) unnamed_addr #9 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_N5arrow2io16RandomAccessFileD0Ev(ptr noundef) unnamed_addr #9 align 2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !118
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !118
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn8_N5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED1Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn8_N5arrow2io19SlowInputStreamBaseINS0_16RandomAccessFileEED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
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
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow2io20LatencyGeneratorImplEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #24, !inline_history !119
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow2io20LatencyGeneratorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !47
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
define void @_ZN5arrow2io16LatencyGeneratorD2Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #17 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io20LatencyGeneratorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN5arrow2io20LatencyGeneratorImpl11NextLatencyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !30, !range !123, !noundef !124
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000), !tbaa !3
  %i.e = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !3
  %i.f = fdiv x86_fp80 %i.d, %i.e
  %i.g = fptoui x86_fp80 %i.f to i64              ; 2 uses
  %i.h = add i64 %i.g, 52
  %i.i = udiv i64 %i.h, %i.g                      ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 5 uses
  %.promoted = load i64, ptr %1, align 8, !tbaa !24
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = add nsw i64 %spec.select.i.i, -1
  %i.k = icmp ult i64 %i.i, 2
  br label %select.unfold.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !125
  br label %bb.g

bb.c:                                             ; preds = %select.unfold.i.i
  %i.n = fdiv double %i.u, %i.x                   ; 2 uses
  %i.o = fcmp ult double %i.n, 1.000000e+00
  br i1 %i.o, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit, label %bb.d, !prof !126

select.unfold.i.i:                                ; preds = %select.unfold.i.i.backedge, %.preheader
  %.023.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ %.023.i.i.be, %select.unfold.i.i.backedge ]
  %.01422.i.i = phi double [ 1.000000e+00, %.preheader ], [ %.01422.i.i.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.01521.i.i = phi double [ 0.000000e+00, %.preheader ], [ %.01521.i.i.be, %select.unfold.i.i.backedge ]
  %i.p = phi i64 [ %.promoted, %.preheader ], [ %.be, %select.unfold.i.i.backedge ]
  %i.q = mul i64 %i.p, 16807
  %i.r = urem i64 %i.q, 2147483647                ; 4 uses
  %i.s = add nsw i64 %i.r, -1
  %i.t = uitofp i64 %i.s to double
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %.01422.i.i, double %.01521.i.i) ; 2 uses
  %i.v = fpext double %.01422.i.i to x86_fp80
  %i.w = fmul x86_fp80 %i.v, f0x401DFFFFFFFC00000000
  %i.x = fptrunc x86_fp80 %i.w to double          ; 2 uses
  %i.y = add i64 %.023.i.i, -1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %bb.c, label %select.unfold.i.i.backedge

select.unfold.i.i.backedge:                       ; preds = %select.unfold.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit28
  %.023.i.i.be = phi i64 [ %i.y, %select.unfold.i.i ], [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit28 ]
  %.01422.i.i.be = phi double [ %i.x, %select.unfold.i.i ], [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit28 ]
  %.01521.i.i.be = phi double [ %i.u, %select.unfold.i.i ], [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit28 ]
  %.be = phi i64 [ %i.r, %select.unfold.i.i ], [ %.lcssa67, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit28 ]
  br label %select.unfold.i.i, !llvm.loop !127

bb.d:                                             ; preds = %bb.c
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.n, %bb.c ]
  br i1 %lcmp.mod.not, label %select.unfold.i.i22.prol.loopexit, label %select.unfold.i.i22.prol

select.unfold.i.i22.prol:                         ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
  %i.z = mul nuw nsw i64 %i.r, 16807
  %i.aa = urem i64 %i.z, 2147483647               ; 3 uses
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  br label %select.unfold.i.i22.prol.loopexit

select.unfold.i.i22.prol.loopexit:                ; preds = %select.unfold.i.i22.prol, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
  %.lcssa67.unr = phi i64 [ poison, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.aa, %select.unfold.i.i22.prol ]
  %.lcssa66.unr = phi double [ poison, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.ac, %select.unfold.i.i22.prol ]
  %.023.i.i23.unr = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.j, %select.unfold.i.i22.prol ]
  %.01422.i.i24.unr = phi double [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ f0x41DFFFFFFF800000, %select.unfold.i.i22.prol ]
  %.01521.i.i25.unr = phi double [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.ac, %select.unfold.i.i22.prol ]
  %.unr = phi i64 [ %i.r, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.aa, %select.unfold.i.i22.prol ]
  br i1 %i.k, label %.unr-lcssa, label %select.unfold.i.i22

.unr-lcssa:                                       ; preds = %select.unfold.i.i22, %select.unfold.i.i22.prol.loopexit
  %.lcssa67 = phi i64 [ %.lcssa67.unr, %select.unfold.i.i22.prol.loopexit ], [ %i.aq, %select.unfold.i.i22 ] ; 2 uses
  %.lcssa66 = phi double [ %.lcssa66.unr, %select.unfold.i.i22.prol.loopexit ], [ %i.at, %select.unfold.i.i22 ]
  %.lcssa = phi double [ f0x41DFFFFFFF800000, %select.unfold.i.i22.prol.loopexit ], [ %i.aw, %select.unfold.i.i22 ]
  %i.ad = tail call double @llvm.fmuladd.f64(double %.016.i.i, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.ae = fdiv double %.lcssa66, %.lcssa          ; 2 uses
  %i.af = fcmp ult double %i.ae, 1.000000e+00
  br i1 %i.af, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit28, label %bb.e, !prof !126

select.unfold.i.i22:                              ; preds = %select.unfold.i.i22.prol.loopexit, %select.unfold.i.i22
  %.023.i.i23 = phi i64 [ %i.ax, %select.unfold.i.i22 ], [ %.023.i.i23.unr, %select.unfold.i.i22.prol.loopexit ]
  %.01422.i.i24 = phi double [ %i.aw, %select.unfold.i.i22 ], [ %.01422.i.i24.unr, %select.unfold.i.i22.prol.loopexit ] ; 2 uses
  %.01521.i.i25 = phi double [ %i.at, %select.unfold.i.i22 ], [ %.01521.i.i25.unr, %select.unfold.i.i22.prol.loopexit ]
  %i.ag = phi i64 [ %i.aq, %select.unfold.i.i22 ], [ %.unr, %select.unfold.i.i22.prol.loopexit ]
  %i.ah = mul nuw nsw i64 %i.ag, 16807
  %i.ai = urem i64 %i.ah, 2147483647              ; 2 uses
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = uitofp i64 %i.aj to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %.01422.i.i24, double %.01521.i.i25)
  %i.am = fpext double %.01422.i.i24 to x86_fp80
  %i.an = fmul x86_fp80 %i.am, f0x401DFFFFFFFC00000000
  %i.ao = fptrunc x86_fp80 %i.an to double        ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ai, 16807
  %i.aq = urem i64 %i.ap, 2147483647              ; 3 uses
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = uitofp i64 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ao, double %i.al) ; 2 uses
  %i.au = fpext double %i.ao to x86_fp80
  %i.av = fmul x86_fp80 %i.au, f0x401DFFFFFFFC00000000
  %i.aw = fptrunc x86_fp80 %i.av to double        ; 2 uses
  %i.ax = add i64 %.023.i.i23, -2                 ; 2 uses
  %.not.i.i26.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i26.1, label %.unr-lcssa, label %select.unfold.i.i22, !llvm.loop !128

bb.e:                                             ; preds = %.unr-lcssa
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit28

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit28: ; preds = %.unr-lcssa, %bb.e
  %.016.i.i27 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.e ], [ %i.ae, %.unr-lcssa ]
  %i.ay = tail call double @llvm.fmuladd.f64(double %.016.i.i27, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ad, double %i.az) ; 4 uses
  %i.bb = fcmp ogt double %i.ba, 1.000000e+00
  %i.bc = fcmp oeq double %i.ba, 0.000000e+00
  %i.bd = or i1 %i.bb, %i.bc
  br i1 %i.bd, label %select.unfold.i.i.backedge, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit28
  store i64 %.lcssa67, ptr %1, align 8, !tbaa !24
  %i.be = tail call ninf double @llvm.log.f64(double %i.ba)
  %i.bf = fmul double %i.be, -2.000000e+00
  %i.bg = fdiv double %i.bf, %i.ba
  %i.bh = tail call double @sqrt(double noundef %i.bg) #24, !tbaa !3 ; 2 uses
  %i.bi = fmul double %i.ad, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bi, ptr %i.bj, align 8, !tbaa !125
  store i8 1, ptr %i.a, align 8, !tbaa !30
  %i.bk = fmul double %i.ay, %i.bh
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.0 = phi double [ %i.m, %bb.b ], [ %i.bk, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !129
  %i.bn = load double, ptr %2, align 8, !tbaa !26
  %i.bo = tail call double @llvm.fmuladd.f64(double %.0, double %i.bm, double %i.bn)
  ret double %i.bo
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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTS8timespec", !11, i64 0, !11, i64 8}
!11 = !{!"long", !5, i64 0}
!12 = !{!10, !11, i64 8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !18}
end_hunk_0
