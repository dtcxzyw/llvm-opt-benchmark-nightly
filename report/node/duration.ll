inline.NumInlined: 653
inline.NumDeleted: 191
begin_hunk_0_@_ZN4absl14FormatDurationB5cxx11ENS_8DurationE:bb.a
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %thread-pre-split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.c
  store i8 45, ptr %i.a, align 8
  store i64 1, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.g, align 1
  switch i32 %2, label %bb.f [
    i32 0, label %bb.d
    i32 -1, label %_ZN4abslngENS_8DurationE.exit
  ]

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  br i1 %i.c, label %_ZN4abslngENS_8DurationE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = sub nsw i64 0, %1
  %.fca.0.insert.i.i = insertvalue { i64, i32 } poison, i64 %i.h, 0
  %.fca.1.insert.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.i, i32 0, 1
  br label %_ZN4abslngENS_8DurationE.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.i = xor i64 %1, -1
  %i.j = sub i32 -294967296, %2
  %.fca.0.insert.i.i.i = insertvalue { i64, i32 } poison, i64 %i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i32 } %.fca.0.insert.i.i.i, i32 %i.j, 1
  br label %_ZN4abslngENS_8DurationE.exit

_ZN4abslngENS_8DurationE.exit:                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.d, %bb.e, %bb.f
  %.pn.i = phi { i64, i32 } [ %.fca.1.insert.i.i.i, %bb.f ], [ %.fca.1.insert.i.i, %bb.e ], [ { i64 9223372036854775807, i32 -1 }, %bb.d ], [ { i64 9223372036854775807, i32 -1 }, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ] ; 2 uses
  %.fca.0.extract117 = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract118 = extractvalue { i64, i32 } %.pn.i, 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c, %_ZN4abslngENS_8DurationE.exit
  %i.k = phi i64 [ 1, %_ZN4abslngENS_8DurationE.exit ], [ 0, %bb.c ] ; 2 uses
  %.sroa.2116.0.copyload = phi i32 [ %.fca.1.extract118, %_ZN4abslngENS_8DurationE.exit ], [ %2, %bb.c ] ; 6 uses
  %.sroa.0115.0.copyload = phi i64 [ %.fca.0.extract117, %_ZN4abslngENS_8DurationE.exit ], [ %1, %bb.c ] ; 3 uses
  %i.l = icmp eq i64 %.sroa.0115.0.copyload, 9223372036854775807
  %i.m = icmp eq i32 %.sroa.2116.0.copyload, -1   ; 2 uses
  %spec.select.i152 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %spec.select.i152, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit158, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit158: ; preds = %thread-pre-split
  %i.n = add nuw nsw i64 %i.k, 3                  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.o, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  store i64 %i.n, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 0, ptr %i.p, align 1
  br label %bb.i

bb.g:                                             ; preds = %thread-pre-split
  %i.q = icmp slt i64 %.sroa.0115.0.copyload, 1
  br i1 %i.q, label %_ZN4abslltENS_8DurationES0_.exit162, label %_ZN4abslltENS_8DurationES0_.exit160.thread

_ZN4abslltENS_8DurationES0_.exit162:              ; preds = %bb.g
  %i.r = icmp ult i32 %.sroa.2116.0.copyload, 4000
  br i1 %i.r, label %_ZN4absl12FDivDurationENS_8DurationES0_.exit, label %_ZN4abslltENS_8DurationES0_.exit165

_ZN4absl12FDivDurationENS_8DurationES0_.exit:     ; preds = %_ZN4abslltENS_8DurationES0_.exit162
  %i.s = uitofp nneg i32 %.sroa.2116.0.copyload to double
  %i.t = fmul nnan double %i.s, 2.500000e-01
  tail call fastcc void @_ZN4absl12_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS0_11DisplayUnitE(ptr noundef nonnull %0, double noundef %i.t, ptr noundef nonnull byval(%"struct.absl::(anonymous namespace)::DisplayUnit") align 8 @_ZN4absl12_GLOBAL__N_112kDisplayNanoE)
  br label %thread-pre-split181

_ZN4abslltENS_8DurationES0_.exit165:              ; preds = %_ZN4abslltENS_8DurationES0_.exit162
  %i.u = icmp ult i32 %.sroa.2116.0.copyload, 4000000
  %i.v = uitofp i32 %.sroa.2116.0.copyload to double ; 2 uses
  br i1 %i.u, label %_ZN4absl12FDivDurationENS_8DurationES0_.exit169, label %_ZN4absl12FDivDurationENS_8DurationES0_.exit173

_ZN4absl12FDivDurationENS_8DurationES0_.exit169:  ; preds = %_ZN4abslltENS_8DurationES0_.exit165
  %i.w = fdiv double %i.v, 4.000000e+03
  tail call fastcc void @_ZN4absl12_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS0_11DisplayUnitE(ptr noundef nonnull %0, double noundef %i.w, ptr noundef nonnull byval(%"struct.absl::(anonymous namespace)::DisplayUnit") align 8 @_ZN4absl12_GLOBAL__N_113kDisplayMicroE)
  br label %thread-pre-split181

_ZN4absl12FDivDurationENS_8DurationES0_.exit173:  ; preds = %_ZN4abslltENS_8DurationES0_.exit165
  %i.x = fdiv double %i.v, 4.000000e+06
  %.0.i171 = select i1 %i.m, double +inf, double %i.x
  tail call fastcc void @_ZN4absl12_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS0_11DisplayUnitE(ptr noundef nonnull %0, double noundef %.0.i171, ptr noundef nonnull byval(%"struct.absl::(anonymous namespace)::DisplayUnit") align 8 @_ZN4absl12_GLOBAL__N_113kDisplayMilliE)
  br label %thread-pre-split181

_ZN4abslltENS_8DurationES0_.exit160.thread:       ; preds = %bb.g
  %i.y = call noundef i64 @_ZN4absl12IDivDurationENS_8DurationES0_PS0_(i64 %.sroa.0115.0.copyload, i32 %.sroa.2116.0.copyload, i64 3600, i32 0, ptr noundef nonnull %3)
  tail call fastcc void @_ZN4absl12_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElNS0_11DisplayUnitE(ptr noundef nonnull %0, i64 noundef %i.y, i64 1, ptr nonnull @.str.11)
  %.sroa.019.0.copyload = load i64, ptr %3, align 8
  %.sroa.220.0.copyload = load i32, ptr %.sroa.2149.0..sroa_idx, align 8
  %i.z = call noundef i64 @_ZN4absl12IDivDurationENS_8DurationES0_PS0_(i64 %.sroa.019.0.copyload, i32 %.sroa.220.0.copyload, i64 60, i32 0, ptr noundef nonnull %3)
  tail call fastcc void @_ZN4absl12_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElNS0_11DisplayUnitE(ptr noundef nonnull %0, i64 noundef %i.z, i64 1, ptr nonnull @.str.12)
  %.sroa.07.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.28.0.copyload = load i32, ptr %.sroa.2149.0..sroa_idx, align 8 ; 2 uses
  %i.aa = icmp eq i32 %.sroa.28.0.copyload, -1
  br i1 %i.aa, label %_ZN4abslltENS_8DurationES0_.exit.i176, label %bb.h

_ZN4abslltENS_8DurationES0_.exit.i176:            ; preds = %_ZN4abslltENS_8DurationES0_.exit160.thread
  %i.ab = icmp slt i64 %.sroa.07.0.copyload, 0
  %i.ac = select i1 %i.ab, double -inf, double +inf
  br label %_ZN4absl12FDivDurationENS_8DurationES0_.exit177

bb.h:                                             ; preds = %_ZN4abslltENS_8DurationES0_.exit160.thread
  %i.ad = sitofp i64 %.sroa.07.0.copyload to double
  %i.ae = uitofp i32 %.sroa.28.0.copyload to double
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ad, double 4.000000e+09, double %i.ae)
  %i.ag = fdiv double %i.af, 4.000000e+09
  br label %_ZN4absl12FDivDurationENS_8DurationES0_.exit177

_ZN4absl12FDivDurationENS_8DurationES0_.exit177:  ; preds = %_ZN4abslltENS_8DurationES0_.exit.i176, %bb.h
  %.0.i175 = phi double [ %i.ac, %_ZN4abslltENS_8DurationES0_.exit.i176 ], [ %i.ag, %bb.h ]
  tail call fastcc void @_ZN4absl12_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS0_11DisplayUnitE(ptr noundef nonnull %0, double noundef %.0.i175, ptr noundef nonnull byval(%"struct.absl::(anonymous namespace)::DisplayUnit") align 8 @_ZN4absl12_GLOBAL__N_111kDisplaySecE)
  br label %thread-pre-split181

thread-pre-split181:                              ; preds = %_ZN4absl12FDivDurationENS_8DurationES0_.exit, %_ZN4absl12FDivDurationENS_8DurationES0_.exit173, %_ZN4absl12FDivDurationENS_8DurationES0_.exit169, %_ZN4absl12FDivDurationENS_8DurationES0_.exit177
  %.pr = load i64, ptr %i.b, align 8
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit158
  %i.ah = phi i64 [ %.pr, %thread-pre-split181 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit158 ] ; 2 uses
  switch i64 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 0, label %bb.j
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.i
  %i.ai = load ptr, ptr %0, align 8
  %lhsc = load i8, ptr %i.ai, align 1
  %i.aj = icmp eq i8 %lhsc, 45
  br i1 %i.aj, label %bb.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ak = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.ah, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.i, %bb.b, %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS0_11DisplayUnitE(ptr noundef %0, double noundef %1, ptr nofree noundef readonly byval(%"struct.absl::(anonymous namespace)::DisplayUnit") align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca [15 x i8], align 1                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.c, i32 15) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 5 uses
  %i.e = tail call { double, double } @llvm.modf.f64(double %1) ; 2 uses
  %i.f = extractvalue { double, double } %i.e, 0
  %i.g = extractvalue { double, double } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load double, ptr %i.h, align 8
  %i.j = fmul double %i.f, %i.i
  %i.k = tail call double @llvm.round.f64(double %i.j)
  %i.l = fptosi double %i.k to i64                ; 2 uses
  %i.m = fptosi double %i.g to i64                ; 2 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = icmp ne i64 %i.l, 0                      ; 2 uses
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %scevgep15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv17.i = phi i32 [ %indvars.iv.next.i, %bb.c ], [ -2, %bb.b ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep16.i, %bb.c ], [ %scevgep15.i, %bb.b ] ; 2 uses
  %.07.i = phi ptr [ %i.t, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.06.i = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]  ; 3 uses
  %.0.i = phi i64 [ %i.u, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.p = add i32 %.06.i, -1                       ; 2 uses
  %i.q = srem i64 %.0.i, 10
  %i.r = trunc nsw i64 %i.q to i8
  %i.s = add nsw i8 %i.r, 48
  %i.t = getelementptr inbounds i8, ptr %.07.i, i64 -1 ; 3 uses
  store i8 %i.s, ptr %i.t, align 1
  %i.u = sdiv i64 %.0.i, 10
  %.0.off.i = add i64 %.0.i, 9
  %.not.i = icmp ult i64 %.0.off.i, 19
  %scevgep16.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  %indvars.iv.next.i = add i32 %indvars.iv17.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.c, !llvm.loop !5

.preheader.i:                                     ; preds = %bb.c
  %i.v = icmp sgt i32 %.06.i, 1
  br i1 %i.v, label %.lr.ph.preheader.i, label %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.w = getelementptr i8, ptr %.07.i, i64 -2
  %i.x = add nsw i32 %.06.i, -2
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %scevgep.i = getelementptr i8, ptr %i.w, i64 %i.z
  %i.aa = zext nneg i32 %i.p to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 48, i64 %i.aa, i1 false)
  %i.ab = zext i32 %indvars.iv17.i to i64
  %i.ac = sub nsw i64 0, %i.ab
  %scevgep18.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.ac
  br label %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit

_ZN4absl12_GLOBAL__N_18Format64EPcil.exit:        ; preds = %.preheader.i, %.lr.ph.preheader.i
  %.18.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %scevgep18.i, %.lr.ph.preheader.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.18.lcssa.i) ]
  %i.ad = ptrtoint ptr %i.d to i64
  %i.ae = ptrtoint ptr %.18.lcssa.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 5 uses
  %i.ai = sub i64 9223372036854775807, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.af
  br i1 %i.aj, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit
  %i.ak = add i64 %i.ah, %i.af                    ; 3 uses
  %i.al = load ptr, ptr %0, align 8               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.an = icmp eq ptr %i.al, %i.am                ; 2 uses
  br i1 %i.an, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ao = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ap = load i64, ptr %i.am, align 8
  %i.aq = select i1 %i.an, i64 15, i64 %i.ap
  %.not.i.i = icmp ugt i64 %i.ak, %i.aq
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq ptr %i.d, %.18.lcssa.i
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ah ; 2 uses
  %cond.i.i = icmp eq i64 %i.af, 1
  br i1 %cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load i8, ptr %.18.lcssa.i, align 1
  store i8 %i.as, ptr %i.ar, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %.18.lcssa.i, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ah, i64 noundef 0, ptr noundef nonnull %.18.lcssa.i, i64 noundef %i.af)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.ak, ptr %i.ag, align 8
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ak
  store i8 0, ptr %i.au, align 1
  br i1 %i.o, label %bb.k, label %bb.x

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.av = load i64, ptr %i.ag, align 8            ; 4 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load ptr, ptr %0, align 8               ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.am                ; 2 uses
  br i1 %i.ay, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.az = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.l, %bb.k
  %i.ba = load i64, ptr %i.am, align 8
  %i.bb = select i1 %i.ay, i64 15, i64 %i.ba
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.av, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.m
  %i.bd = phi ptr [ %.pre.i, %bb.m ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  store i8 46, ptr %i.be, align 1
  store i64 %i.aw, ptr %i.ag, align 8
  %i.bf = load ptr, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw
  store i8 0, ptr %i.bg, align 1
  %i.bh = add i32 %.sroa.speculated, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %indvars.iv17.i24 = phi i32 [ %indvars.iv.next.i32, %bb.n ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  %indvars.iv.i25 = phi ptr [ %scevgep16.i31, %bb.n ], [ %scevgep15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  %.07.i26 = phi ptr [ %i.bm, %bb.n ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  %.06.i27 = phi i32 [ %i.bi, %bb.n ], [ %.sroa.speculated, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 3 uses
  %.0.i28 = phi i64 [ %i.bn, %bb.n ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 3 uses
  %i.bi = add i32 %.06.i27, -1                    ; 2 uses
  %i.bj = srem i64 %.0.i28, 10
  %i.bk = trunc nsw i64 %i.bj to i8
  %i.bl = add nsw i8 %i.bk, 48
  %i.bm = getelementptr inbounds i8, ptr %.07.i26, i64 -1 ; 3 uses
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = sdiv i64 %.0.i28, 10
  %.0.off.i29 = add i64 %.0.i28, 9
  %.not.i30 = icmp ult i64 %.0.off.i29, 19
  %scevgep16.i31 = getelementptr i8, ptr %indvars.iv.i25, i64 -1
  %indvars.iv.next.i32 = add i32 %indvars.iv17.i24, -1
  br i1 %.not.i30, label %.preheader.i33, label %bb.n, !llvm.loop !5

.preheader.i33:                                   ; preds = %bb.n
  %i.bo = icmp sgt i32 %.06.i27, 1
  br i1 %i.bo, label %.lr.ph.preheader.i35, label %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit38

.lr.ph.preheader.i35:                             ; preds = %.preheader.i33
  %i.bp = getelementptr i8, ptr %.07.i26, i64 -2
  %i.bq = add nsw i32 %.06.i27, -2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = sub nsw i64 0, %i.br
  %scevgep.i36 = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.bt = zext nneg i32 %i.bi to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i36, i8 48, i64 %i.bt, i1 false)
  %i.bu = zext i32 %indvars.iv17.i24 to i64
  %i.bv = sub nsw i64 0, %i.bu
  %scevgep18.i37 = getelementptr i8, ptr %indvars.iv.i25, i64 %i.bv
  br label %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit38

_ZN4absl12_GLOBAL__N_18Format64EPcil.exit38:      ; preds = %.preheader.i33, %.lr.ph.preheader.i35
  %.18.lcssa.i34 = phi ptr [ %i.bm, %.preheader.i33 ], [ %scevgep18.i37, %.lr.ph.preheader.i35 ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.18.lcssa.i34) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit38
  %.0 = phi ptr [ %i.d, %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit38 ], [ %i.bw, %bb.o ] ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %.0, i64 -1 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = icmp eq i8 %i.bx, 48
  br i1 %i.by, label %bb.o, label %bb.p, !llvm.loop !7

bb.p:                                             ; preds = %bb.o
  %i.bz = ptrtoint ptr %.0 to i64
  %i.ca = ptrtoint ptr %.18.lcssa.i34 to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %i.cc = load i64, ptr %i.ag, align 8            ; 5 uses
  %i.cd = sub i64 9223372036854775807, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.cb
  br i1 %i.ce, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i39

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i39: ; preds = %bb.p
  %i.cf = add i64 %i.cc, %i.cb                    ; 3 uses
  %i.cg = load ptr, ptr %0, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.am                ; 2 uses
  br i1 %i.ch, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i39
  %i.ci = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i39
  %i.cj = load i64, ptr %i.am, align 8
  %i.ck = select i1 %i.ch, i64 15, i64 %i.cj
  %.not.i.i41 = icmp ugt i64 %i.cf, %i.ck
  br i1 %.not.i.i41, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40
  %.not8.i.i42 = icmp eq ptr %.0, %.18.lcssa.i34
  br i1 %.not8.i.i42, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit44, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cc ; 2 uses
  %cond.i.i43 = icmp eq i64 %i.cb, 1
  br i1 %cond.i.i43, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = load i8, ptr %.18.lcssa.i34, align 1
  store i8 %i.cm, ptr %i.cl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit44

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr nonnull align 1 %.18.lcssa.i34, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit44

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc, i64 noundef 0, ptr noundef nonnull %.18.lcssa.i34, i64 noundef %i.cb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit44: ; preds = %bb.s, %bb.u, %bb.v, %bb.w
  store i64 %i.cf, ptr %i.ag, align 8
  %i.cn = load ptr, ptr %0, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  store i8 0, ptr %i.co, align 1
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %i.cr = load i64, ptr %2, align 8               ; 6 uses
  %i.cs = load i64, ptr %i.ag, align 8            ; 5 uses
  %i.ct = sub i64 9223372036854775807, %i.cs
  %i.cu = icmp ult i64 %i.ct, %i.cr
  br i1 %i.cu, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i45

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i45: ; preds = %bb.x
  %i.cv = add i64 %i.cs, %i.cr                    ; 3 uses
  %i.cw = load ptr, ptr %0, align 8               ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.am                ; 2 uses
  br i1 %i.cx, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i45
  %i.cy = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.cy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i45
  %i.cz = load i64, ptr %i.am, align 8
  %i.da = select i1 %i.cx, i64 15, i64 %i.cz
  %.not.i.i47 = icmp ugt i64 %i.cv, %i.da
  br i1 %.not.i.i47, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46
  %.not8.i.i48 = icmp eq i64 %i.cr, 0
  br i1 %.not8.i.i48, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit50, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cs ; 2 uses
  %cond.i.i49 = icmp eq i64 %i.cr, 1
  br i1 %cond.i.i49, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i8, ptr %i.cq, align 1
  store i8 %i.dc, ptr %i.db, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit50

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.cq, i64 %i.cr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit50

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cs, i64 noundef 0, ptr noundef %i.cq, i64 noundef %i.cr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit50: ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ae
  store i64 %i.cv, ptr %i.ag, align 8
  %i.dd = load ptr, ptr %0, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  store i8 0, ptr %i.de, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElNS0_11DisplayUnitE(ptr noundef %0, i64 noundef %1, i64 %.0.val, ptr %.8.val) unnamed_addr #6 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 4 uses
  %scevgep15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv17.i = phi i32 [ %indvars.iv.next.i, %bb.b ], [ -2, %bb.a ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep16.i, %bb.b ], [ %scevgep15.i, %bb.a ] ; 2 uses
  %.07.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.06.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.c = add i32 %.06.i, -1                       ; 2 uses
  %i.d = srem i64 %.0.i, 10
  %i.e = trunc nsw i64 %i.d to i8
  %i.f = add nsw i8 %i.e, 48                      ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.07.i, i64 -1 ; 3 uses
  store i8 %i.f, ptr %i.g, align 1
  %i.h = sdiv i64 %.0.i, 10
  %.0.off.i = add i64 %.0.i, 9
  %.not.i = icmp ult i64 %.0.off.i, 19
  %scevgep16.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  %indvars.iv.next.i = add i32 %indvars.iv17.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.b, !llvm.loop !5

.preheader.i:                                     ; preds = %bb.b
  %i.i = icmp sgt i32 %.06.i, 1
  br i1 %i.i, label %.lr.ph.preheader.i, label %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.j = getelementptr i8, ptr %.07.i, i64 -2
  %i.k = add nsw i32 %.06.i, -2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %scevgep.i = getelementptr i8, ptr %i.j, i64 %i.m
  %i.n = zext nneg i32 %i.c to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 48, i64 %i.n, i1 false)
  %i.o = zext i32 %indvars.iv17.i to i64
  %i.p = sub nsw i64 0, %i.o
  %scevgep18.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.p ; 2 uses
  %.pre = load i8, ptr %scevgep18.i, align 1
  br label %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit

_ZN4absl12_GLOBAL__N_18Format64EPcil.exit:        ; preds = %.preheader.i, %.lr.ph.preheader.i
  %i.q = phi i8 [ %i.f, %.preheader.i ], [ %.pre, %.lr.ph.preheader.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %i.g, %.preheader.i ], [ %scevgep18.i, %.lr.ph.preheader.i ] ; 5 uses
  %.not = icmp eq i8 %i.q, 48
  %i.r = getelementptr inbounds nuw i8, ptr %.18.lcssa.i, i64 1
  %.not9 = icmp eq ptr %i.r, %i.b
  %or.cond = select i1 %.not, i1 %.not9, i1 false
  br i1 %or.cond, label %bb.r, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12_GLOBAL__N_18Format64EPcil.exit
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %.18.lcssa.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8              ; 5 uses
  %i.x = sub i64 9223372036854775807, %i.w
  %i.y = icmp ult i64 %i.x, %i.u
  br i1 %i.y, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable
end_hunk_0
