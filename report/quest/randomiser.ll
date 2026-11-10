Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/randomiser?download=true
inline.NumInlined: 342
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt8seed_seqC2IjvEESt16initializer_listIT_E:bb.a
bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.c, %.noexc8
  %.not.i8.i = icmp eq ptr %i.g, null
  br i1 %.not.i8.i, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #19
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  store ptr %i.f, ptr %i.d, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %2 ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.b
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.s = phi ptr [ %i.f, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 5 uses
  %i.t = phi ptr [ %i.p, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %.015 = phi ptr [ %1, %.lr.ph ], [ %i.as, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.v = load i32, ptr %.015, align 4, !tbaa !17  ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.v, ptr %i.u, align 4, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.r, align 8, !tbaa !16
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.g:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775804
  br i1 %i.aa, label %.invoke, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ab = ashr exact i64 %i.z, 2                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 2305843009213693951)
  %i.af = select i1 %i.ad, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #23
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i32 %i.v, ptr %i.ai, align 4, !tbaa !17
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %i.s, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %.noexc10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.an) #19
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ah, ptr %0, align 8, !tbaa !14
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !15
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.f
  %i.ap = phi ptr [ %i.ah, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.s, %bb.f ]
  %i.aq = phi ptr [ %i.ao, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.t, %bb.f ]
  %i.ar = phi ptr [ %i.ak, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.w, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %.015, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.q
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !54

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i, %.invoke, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  resume { ptr, i32 } %lpad.loopexit.split-lp28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z39rand_getThreadPrivateAmpAbsDistributionv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::normal_distribution") align 8 captures(none) initializes((0, 25)) %0) local_unnamed_addr #12 {
bb.a:
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.b, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef { double, double } @_Z41rand_getThreadPrivateAmpPhaseDistributionv() local_unnamed_addr #13 {
bb.a:
  ret { double, double } { double 0.000000e+00, double f0x401921FB54442D18 }
}

; Function Attrs: mustprogress uwtable
define { double, double } @_Z30rand_getThreadPrivateRandomAmpRSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt19normal_distributionIdERSt25uniform_real_distributionIdE(ptr noundef nonnull align 8 dereferenceable(2504) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(2504) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) ; 2 uses
  %i.b = tail call noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(2504) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) ; 2 uses
  %i.c = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x403F8000000000000000)
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.e = fdiv x86_fp80 %i.c, %i.d
  %i.f = fptoui x86_fp80 %i.e to i64              ; 2 uses
  %i.g = add i64 %i.f, 52
  %i.h = udiv i64 %i.g, %i.f
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  br label %select.unfold.i.i.i.i

bb.b:                                             ; preds = %select.unfold.i.i.i.i
  %i.i = fdiv double %i.m, %i.p                   ; 2 uses
  %i.j = fcmp ult double %i.i, 1.000000e+00
  br i1 %i.j, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit, label %bb.c, !prof !24

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %bb.a
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.a ], [ %i.q, %select.unfold.i.i.i.i ]
  %.01422.i.i.i.i = phi double [ 1.000000e+00, %bb.a ], [ %i.p, %select.unfold.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi double [ 0.000000e+00, %bb.a ], [ %i.m, %select.unfold.i.i.i.i ]
  %i.k = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %0)
  %i.l = uitofp i64 %i.k to double
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %.01422.i.i.i.i, double %.01521.i.i.i.i) ; 2 uses
  %i.n = fpext double %.01422.i.i.i.i to x86_fp80
  %i.o = fmul x86_fp80 %i.n, f0x403F8000000000000000
  %i.p = fptrunc x86_fp80 %i.o to double          ; 2 uses
  %i.q = add i64 %.023.i.i.i.i, -1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %select.unfold.i.i.i.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit: ; preds = %bb.b, %bb.c
  %.016.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.c ], [ %i.i, %bb.b ]
  %i.r = fmul double %i.b, %i.b
  %i.s = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !56
  %i.v = load double, ptr %2, align 8, !tbaa !57  ; 2 uses
  %i.w = fsub double %i.u, %i.v
  %i.x = tail call noundef double @llvm.fmuladd.f64(double %.016.i.i.i.i, double %i.w, double %i.v) ; 2 uses
  %sqrt = tail call double @llvm.sqrt.f64(double %i.s) ; 2 uses
  %i.y = fmul double %i.x, 0.000000e+00
  %i.z = tail call noundef { double, double } @cexp(double noundef %i.y, double noundef %i.x) #20 ; 2 uses
  %i.aa = extractvalue { double, double } %i.z, 0
  %i.ab = extractvalue { double, double } %i.z, 1
  %i.ac = fmul double %sqrt, %i.aa
  %i.ad = fmul double %sqrt, %i.ab
  %.fca.0.insert.i14 = insertvalue { double, double } poison, double %i.ac, 0
  %.fca.1.insert.i15 = insertvalue { double, double } %.fca.0.insert.i14, double %i.ad, 1
  ret { double, double } %.fca.1.insert.i15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(2504) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !34, !range !62, !noundef !63
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x403F8000000000000000)
  %i.e = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.f = fdiv x86_fp80 %i.d, %i.e
  %i.g = fptoui x86_fp80 %i.f to i64              ; 2 uses
  %i.h = add i64 %i.g, 52
  %i.i = udiv i64 %i.h, %i.g
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2496 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2488 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  %.pre.pre = load i64, ptr %i.j, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2480
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1232
  br label %select.unfold.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !33
  br label %bb.h

bb.c:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit
  %i.u = fdiv double %i.cn, %i.cq                 ; 2 uses
  %i.v = fcmp ult double %i.u, 1.000000e+00
  br i1 %i.v, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit, label %bb.d, !prof !24

select.unfold.i.i:                                ; preds = %select.unfold.i.i.backedge, %.preheader
  %i.w = phi i64 [ %.pre.pre, %.preheader ], [ %.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.023.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ %.023.i.i.be, %select.unfold.i.i.backedge ]
  %.01422.i.i = phi double [ 1.000000e+00, %.preheader ], [ %.01422.i.i.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.01521.i.i = phi double [ 0.000000e+00, %.preheader ], [ %.01521.i.i.be, %select.unfold.i.i.backedge ]
  %i.x = icmp ugt i64 %i.w, 311
  br i1 %i.x, label %vector.ph103, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit

vector.ph103:                                     ; preds = %select.unfold.i.i
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !20
  %vector.recur.init106 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph103
  %index105 = phi i64 [ 0, %vector.ph103 ], [ %index.next110, %vector.body104 ] ; 3 uses
  %vector.recur107 = phi <2 x i64> [ %vector.recur.init106, %vector.ph103 ], [ %wide.load108, %vector.body104 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index105 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load108 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !20 ; 4 uses
  %i.ab = shufflevector <2 x i64> %vector.recur107, <2 x i64> %wide.load108, <2 x i32> <i32 1, i32 2>
  %i.ac = and <2 x i64> %i.ab, splat (i64 -2147483648)
  %i.ad = and <2 x i64> %wide.load108, splat (i64 2147483646)
  %i.ae = or disjoint <2 x i64> %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 1248
  %wide.load109 = load <2 x i64>, ptr %i.af, align 8, !tbaa !20
  %i.ag = lshr exact <2 x i64> %i.ae, splat (i64 1)
  %i.ah = xor <2 x i64> %i.ag, %wide.load109
  %i.ai = and <2 x i64> %wide.load108, splat (i64 1)
  %i.aj = icmp eq <2 x i64> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.al = xor <2 x i64> %i.ah, %i.ak
  store <2 x i64> %i.al, ptr %i.y, align 8, !tbaa !20
  %index.next110 = add nuw i64 %index105, 2       ; 2 uses
  %i.am = icmp eq i64 %index.next110, 156
  br i1 %i.am, label %vector.ph92, label %vector.body104, !llvm.loop !58

vector.ph92:                                      ; preds = %vector.body104
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !20
  %vector.recur.init95 = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph92
  %index94 = phi i64 [ 0, %vector.ph92 ], [ %index.next99, %vector.body93 ] ; 3 uses
  %vector.recur96 = phi <2 x i64> [ %vector.recur.init95, %vector.ph92 ], [ %wide.load97, %vector.body93 ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index94 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1248
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index94
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1256
  %wide.load97 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !20 ; 5 uses
  %i.ar = shufflevector <2 x i64> %vector.recur96, <2 x i64> %wide.load97, <2 x i32> <i32 1, i32 2>
  %i.as = and <2 x i64> %i.ar, splat (i64 -2147483648)
  %i.at = and <2 x i64> %wide.load97, splat (i64 2147483646)
  %i.au = or disjoint <2 x i64> %i.at, %i.as
  %wide.load98 = load <2 x i64>, ptr %i.an, align 8, !tbaa !20
  %i.av = lshr exact <2 x i64> %i.au, splat (i64 1)
  %i.aw = xor <2 x i64> %i.av, %wide.load98
  %i.ax = and <2 x i64> %wide.load97, splat (i64 1)
  %i.ay = icmp eq <2 x i64> %i.ax, zeroinitializer
  %i.az = select <2 x i1> %i.ay, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.ba = xor <2 x i64> %i.aw, %i.az
  store <2 x i64> %i.ba, ptr %i.ao, align 8, !tbaa !20
  %index.next99 = add nuw i64 %index94, 2         ; 2 uses
  %i.bb = icmp eq i64 %index.next99, 154
  br i1 %i.bb, label %.preheader.i.i, label %vector.body93, !llvm.loop !59

.preheader.i.i:                                   ; preds = %vector.body93
  %vector.recur.extract101 = extractelement <2 x i64> %wide.load97, i64 1
  %i.bc = and i64 %vector.recur.extract101, -2147483648
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !20  ; 2 uses
  %i.be = and i64 %i.bd, 2147483646
  %i.bf = or disjoint i64 %i.be, %i.bc
  %i.bg = load i64, ptr %i.o, align 8, !tbaa !20
  %i.bh = lshr exact i64 %i.bf, 1
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = and i64 %i.bd, 1
  %.not19.i.i = icmp eq i64 %i.bj, 0
  %i.bk = select i1 %.not19.i.i, i64 0, i64 -5403634167711393303
  %i.bl = xor i64 %i.bi, %i.bk
  store i64 %i.bl, ptr %i.m, align 8, !tbaa !20
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !20
  %i.bn = and i64 %i.bm, -2147483648
  %i.bo = load i64, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.bp = and i64 %i.bo, 2147483646
  %i.bq = or disjoint i64 %i.bp, %i.bn
  %i.br = load i64, ptr %i.l, align 8, !tbaa !20
  %i.bs = lshr exact i64 %i.bq, 1
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = and i64 %i.bo, 1
  %.not.i.i27 = icmp eq i64 %i.bu, 0
  %i.bv = select i1 %.not.i.i27, i64 0, i64 -5403634167711393303
  %i.bw = xor i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %i.k, align 8, !tbaa !20
  br label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit: ; preds = %select.unfold.i.i, %.preheader.i.i
  %i.bx = phi i64 [ 0, %.preheader.i.i ], [ %i.w, %select.unfold.i.i ] ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 1                ; 3 uses
  store i64 %i.by, ptr %i.j, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20 ; 2 uses
  %i.cb = lshr i64 %i.ca, 29
  %i.cc = and i64 %i.cb, 22906492245
  %i.cd = xor i64 %i.cc, %i.ca                    ; 2 uses
  %i.ce = shl i64 %i.cd, 17
  %i.cf = and i64 %i.ce, 8202884508482404352
  %i.cg = xor i64 %i.cf, %i.cd                    ; 2 uses
  %i.ch = shl i64 %i.cg, 37
  %i.ci = and i64 %i.ch, -2270628950310912
  %i.cj = xor i64 %i.ci, %i.cg                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 43
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = uitofp i64 %i.cl to double
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %.01422.i.i, double %.01521.i.i) ; 2 uses
  %i.co = fpext double %.01422.i.i to x86_fp80
  %i.cp = fmul x86_fp80 %i.co, f0x403F8000000000000000
  %i.cq = fptrunc x86_fp80 %i.cp to double        ; 2 uses
  %i.cr = add i64 %.023.i.i, -1                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i, label %bb.c, label %select.unfold.i.i.backedge

select.unfold.i.i.backedge:                       ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit26
  %.be = phi i64 [ %i.by, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit ], [ %i.ex, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit26 ]
  %.023.i.i.be = phi i64 [ %i.cr, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit ], [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit26 ]
  %.01422.i.i.be = phi double [ %i.cq, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit ], [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit26 ]
  %.01521.i.i.be = phi double [ %i.cn, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit ], [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit26 ]
  br label %select.unfold.i.i

bb.d:                                             ; preds = %bb.c
  br label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.u, %bb.c ]
  br label %select.unfold.i.i20

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit41
  %i.cs = tail call double @llvm.fmuladd.f64(double %.016.i.i, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.ct = fdiv double %i.fm, %i.fp                ; 2 uses
  %i.cu = fcmp ult double %i.ct, 1.000000e+00
  br i1 %i.cu, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit26, label %bb.f, !prof !24

select.unfold.i.i20:                              ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit41, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit
  %i.cv = phi i64 [ %i.by, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit ], [ %i.ex, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit41 ] ; 2 uses
  %.023.i.i21 = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit ], [ %i.fq, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit41 ]
  %.01422.i.i22 = phi double [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit ], [ %i.fp, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit41 ] ; 2 uses
  %.01521.i.i23 = phi double [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit ], [ %i.fm, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit41 ]
  %i.cw = icmp ugt i64 %i.cv, 311
  br i1 %i.cw, label %vector.ph82, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit41

vector.ph82:                                      ; preds = %select.unfold.i.i20
  %.pre.i.i28 = load i64, ptr %1, align 8, !tbaa !20
  %vector.recur.init85 = insertelement <2 x i64> poison, i64 %.pre.i.i28, i64 1
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph82
  %index84 = phi i64 [ 0, %vector.ph82 ], [ %index.next89, %vector.body83 ] ; 3 uses
  %vector.recur86 = phi <2 x i64> [ %vector.recur.init85, %vector.ph82 ], [ %wide.load87, %vector.body83 ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index84 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index84
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %wide.load87 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !20 ; 4 uses
  %i.da = shufflevector <2 x i64> %vector.recur86, <2 x i64> %wide.load87, <2 x i32> <i32 1, i32 2>
  %i.db = and <2 x i64> %i.da, splat (i64 -2147483648)
  %i.dc = and <2 x i64> %wide.load87, splat (i64 2147483646)
  %i.dd = or disjoint <2 x i64> %i.dc, %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 1248
  %wide.load88 = load <2 x i64>, ptr %i.de, align 8, !tbaa !20
  %i.df = lshr exact <2 x i64> %i.dd, splat (i64 1)
  %i.dg = xor <2 x i64> %i.df, %wide.load88
  %i.dh = and <2 x i64> %wide.load87, splat (i64 1)
  %i.di = icmp eq <2 x i64> %i.dh, zeroinitializer
  %i.dj = select <2 x i1> %i.di, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.dk = xor <2 x i64> %i.dg, %i.dj
  store <2 x i64> %i.dk, ptr %i.cx, align 8, !tbaa !20
  %index.next89 = add nuw i64 %index84, 2         ; 2 uses
  %i.dl = icmp eq i64 %index.next89, 156
  br i1 %i.dl, label %vector.ph, label %vector.body83, !llvm.loop !60

vector.ph:                                        ; preds = %vector.body83
  %.pre24.i.i34 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !20
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i34, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1248
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1256
  %wide.load = load <2 x i64>, ptr %i.dp, align 8, !tbaa !20 ; 5 uses
  %i.dq = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.dr = and <2 x i64> %i.dq, splat (i64 -2147483648)
  %i.ds = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.dt = or disjoint <2 x i64> %i.ds, %i.dr
  %wide.load80 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !20
  %i.du = lshr exact <2 x i64> %i.dt, splat (i64 1)
  %i.dv = xor <2 x i64> %i.du, %wide.load80
  %i.dw = and <2 x i64> %wide.load, splat (i64 1)
  %i.dx = icmp eq <2 x i64> %i.dw, zeroinitializer
  %i.dy = select <2 x i1> %i.dx, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.dz = xor <2 x i64> %i.dv, %i.dy
  store <2 x i64> %i.dz, ptr %i.dn, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ea = icmp eq i64 %index.next, 154
  br i1 %i.ea, label %.preheader.i.i35, label %vector.body, !llvm.loop !61

.preheader.i.i35:                                 ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.eb = and i64 %vector.recur.extract, -2147483648
  %i.ec = load i64, ptr %i.q, align 8, !tbaa !20  ; 2 uses
  %i.ed = and i64 %i.ec, 2147483646
  %i.ee = or disjoint i64 %i.ed, %i.eb
  %i.ef = load i64, ptr %i.r, align 8, !tbaa !20
  %i.eg = lshr exact i64 %i.ee, 1
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = and i64 %i.ec, 1
  %.not19.i.i37 = icmp eq i64 %i.ei, 0
  %i.ej = select i1 %.not19.i.i37, i64 0, i64 -5403634167711393303
  %i.ek = xor i64 %i.eh, %i.ej
  store i64 %i.ek, ptr %i.p, align 8, !tbaa !20
  %i.el = load i64, ptr %i.k, align 8, !tbaa !20
  %i.em = and i64 %i.el, -2147483648
  %i.en = load i64, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.eo = and i64 %i.en, 2147483646
  %i.ep = or disjoint i64 %i.eo, %i.em
  %i.eq = load i64, ptr %i.l, align 8, !tbaa !20
  %i.er = lshr exact i64 %i.ep, 1
  %i.es = xor i64 %i.er, %i.eq
  %i.et = and i64 %i.en, 1
  %.not.i.i40 = icmp eq i64 %i.et, 0
  %i.eu = select i1 %.not.i.i40, i64 0, i64 -5403634167711393303
  %i.ev = xor i64 %i.es, %i.eu
  store i64 %i.ev, ptr %i.k, align 8, !tbaa !20
  br label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit41

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit41: ; preds = %select.unfold.i.i20, %.preheader.i.i35
  %i.ew = phi i64 [ 0, %.preheader.i.i35 ], [ %i.cv, %select.unfold.i.i20 ] ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 3 uses
  store i64 %i.ex, ptr %i.j, align 8, !tbaa !22
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ew
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !20 ; 2 uses
  %i.fa = lshr i64 %i.ez, 29
  %i.fb = and i64 %i.fa, 22906492245
  %i.fc = xor i64 %i.fb, %i.ez                    ; 2 uses
  %i.fd = shl i64 %i.fc, 17
  %i.fe = and i64 %i.fd, 8202884508482404352
  %i.ff = xor i64 %i.fe, %i.fc                    ; 2 uses
  %i.fg = shl i64 %i.ff, 37
  %i.fh = and i64 %i.fg, -2270628950310912
  %i.fi = xor i64 %i.fh, %i.ff                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 43
  %i.fk = xor i64 %i.fj, %i.fi
  %i.fl = uitofp i64 %i.fk to double
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double %.01422.i.i22, double %.01521.i.i23) ; 2 uses
  %i.fn = fpext double %.01422.i.i22 to x86_fp80
  %i.fo = fmul x86_fp80 %i.fn, f0x403F8000000000000000
  %i.fp = fptrunc x86_fp80 %i.fo to double        ; 2 uses
  %i.fq = add i64 %.023.i.i21, -1                 ; 2 uses
  %.not.i.i24 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i24, label %bb.e, label %select.unfold.i.i20, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  br label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit26

_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit26: ; preds = %bb.e, %bb.f
  %.016.i.i25 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.f ], [ %i.ct, %bb.e ]
  %i.fr = tail call double @llvm.fmuladd.f64(double %.016.i.i25, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.fs = fmul double %i.fr, %i.fr
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double %i.fs) ; 4 uses
  %i.fu = fcmp ogt double %i.ft, 1.000000e+00
  %i.fv = fcmp oeq double %i.ft, 0.000000e+00
  %i.fw = or i1 %i.fu, %i.fv
  br i1 %i.fw, label %select.unfold.i.i.backedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEdEclEv.exit26
  %i.fx = tail call ninf double @llvm.log.f64(double %i.ft)
  %i.fy = fmul double %i.fx, -2.000000e+00
  %i.fz = fdiv double %i.fy, %i.ft
  %i.ga = tail call double @sqrt(double noundef %i.fz) #20 ; 2 uses
  %i.gb = fmul double %i.cs, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.gb, ptr %i.gc, align 8, !tbaa !33
  store i8 1, ptr %i.a, align 8, !tbaa !34
  %i.gd = fmul double %i.fr, %i.ga
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi double [ %i.t, %bb.b ], [ %i.gd, %bb.g ]
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !64
  %i.gg = load double, ptr %2, align 8, !tbaa !65
  %i.gh = tail call double @llvm.fmuladd.f64(double %.0, double %i.gf, double %i.gg)
  ret double %i.gh
}

; Function Attrs: nounwind
declare { double, double } @cexp(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_randomiser.cpp() #16 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12currentSeeds, i8 0, i64 24, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIjSaIjEED2Ev, ptr nonnull @_ZL12currentSeeds, ptr nonnull @__dso_handle) #20 ; 0 uses
  store i64 5489, ptr @_ZL13mainGenerator, align 8, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ 5489, %bb.a ], [ %i.l, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.m, %bb.c ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @_ZL13mainGenerator, i64 %.011.i.i.i.i
  %i.c = lshr i64 %store_forwarded, 62
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul i64 %i.d, 6364136223846793005
  %i.f = add i64 %i.e, %.011.i.i.i.i              ; 3 uses
  store i64 %i.f, ptr %i.b, align 8, !tbaa !20
  %i.g = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.g, 312
  br i1 %exitcond.not.i.i.i.i, label %__cxx_global_var_init.1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [8 x i8], ptr @_ZL13mainGenerator, i64 %i.g
  %i.i = lshr i64 %i.f, 62
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 6364136223846793005
  %i.l = add i64 %i.k, %i.g                       ; 2 uses
  store i64 %i.l, ptr %i.h, align 8, !tbaa !20
  %i.m = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

__cxx_global_var_init.1.exit:                     ; preds = %bb.b
  store i64 312, ptr getelementptr inbounds nuw (i8, ptr @_ZL13mainGenerator, i64 2496), align 8, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !25}
!1 = !{i32 1, !"long-double-type", !"x86_fp80"}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 16}
!16 = !{!13, !12, i64 8}
!17 = !{!8, !8, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE", !7, i64 0, !19, i64 2496}
!22 = !{!21, !19, i64 2496}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"double", !7, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSNSt19normal_distributionIdE10param_typeE", !28, i64 0, !28, i64 8}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"_ZTSSt19normal_distributionIdE", !30, i64 0, !28, i64 16, !31, i64 24}
!33 = !{!32, !28, i64 16}
!34 = !{!32, !31, i64 24}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !25}
!39 = !{!"p1 omnipotent char", !11, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !39, i64 0}
!41 = !{!40, !39, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0, !19, i64 8, !7, i64 16}
!43 = !{!42, !19, i64 8}
!44 = !{!7, !7, i64 0}
!45 = !{!42, !39, i64 0}
!46 = distinct !{!46, !25, !26, !27}
!47 = distinct !{!47, !25, !26, !27}
!48 = distinct !{!48, !25}
!49 = !{!"p1 double", !11, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!50, !49, i64 8}
!52 = !{!50, !49, i64 0}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = !{!"_ZTSNSt25uniform_real_distributionIdE10param_typeE", !28, i64 0, !28, i64 8}
!56 = !{!55, !28, i64 8}
!57 = !{!55, !28, i64 0}
!58 = distinct !{!58, !25, !26, !27}
!59 = distinct !{!59, !25, !26, !27}
!60 = distinct !{!60, !25, !26, !27}
!61 = distinct !{!61, !25, !26, !27}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!30, !28, i64 8}
!65 = !{!30, !28, i64 0}
end_hunk_0
