Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/clock_cache?download=true
inline.NumInlined: 2447
inline.NumDeleted: 988
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb11clock_cache14BaseClockTable27ChargeUsageMaybeEvictStrictINS0_19AutoHyperClockTableEEENS_6StatusEmbRNT_11InsertStateE:bb.a
  store ptr @.str.14, ptr %16, align 8, !tbaa !45
  %i.hn = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.hn, align 8, !tbaa !46
  call void @_ZN7rocksdb6StatusC1ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 10, i8 noundef zeroext 7, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %.critedge

bb.ax:                                            ; preds = %bb.ar, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ap
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ho, align 8, !tbaa !104, !alias.scope !444
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !444
  br label %bb.az

.critedge:                                        ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPKN7rocksdb11clock_cache15ClockCacheShardINS1_20FixedHyperClockTableEEEEZNKS1_19BaseHyperClockCacheIS3_E14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEEUlS6_E_E9_M_invokeERKSt9_Any_dataOS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZNK7rocksdb11clock_cache19BaseHyperClockCacheINS1_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEEUlPKNS1_15ClockCacheShardIS3_EEE_JSD_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPKN7rocksdb11clock_cache15ClockCacheShardINS1_20FixedHyperClockTableEEEEZNKS1_19BaseHyperClockCacheIS3_E14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEEUlS6_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !125
  br label %_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !239
  br label %_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !240
  br label %_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvRZNK7rocksdb11clock_cache19BaseHyperClockCacheINS1_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEEUlPKNS1_15ClockCacheShardIS3_EEE_JSD_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !175    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load i32, ptr %i.b, align 32, !tbaa !121
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !447, !nonnull !115, !align !116 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !206
  br label %bb.b

bb.b:                                             ; preds = %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit.i, %bb.a
  %i.s = phi i64 [ %.pre.i, %bb.a ], [ %i.aq, %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit.i ] ; 2 uses
  %.07.i = phi i64 [ 0, %bb.a ], [ %i.br, %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %.07.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = and i64 %i.v, 2305843009213693952
  %.not.i.i.not.i = icmp eq i64 %i.w, 0
  %i.x = urem i64 %i.s, 500                       ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = and i64 %i.x, 63
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  br i1 %.not.i.i.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !41
  %i.ad = or i64 %i.ac, %i.ab
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !205
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.j, align 8, !tbaa !205
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !41
  %i.ai = and i64 %i.ah, %i.ag
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i64 [ %i.ai, %bb.d ], [ %i.ad, %bb.c ]
  %.sink22.i.i = phi i64 [ 56, %bb.d ], [ 40, %bb.c ]
  %.sink19.i.i = phi i64 [ 48, %bb.d ], [ 32, %bb.c ]
  %.sink15.i.i = phi i64 [ 40, %bb.d ], [ 56, %bb.c ]
  store i64 %.sink.i, ptr %i.z, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink22.i.i ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !41
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink19.i.i ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !41
  %i.ao = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.al)
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink15.i.i
  store i64 0, ptr %i.ap, align 8, !tbaa !41
  %i.aq = add i64 %i.s, 1                         ; 3 uses
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !206
  %i.ar = icmp ugt i64 %i.aq, 499
  br i1 %i.ar, label %bb.f, label %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit.i

bb.f:                                             ; preds = %bb.e
  %i.as = load i64, ptr %i.h, align 8, !tbaa !41
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.as)
  %i.au = load i64, ptr %i.k, align 8, !tbaa !41
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.au)
  %i.aw = add nuw nsw i64 %i.av, %i.at
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !41
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.az = add nuw nsw i64 %i.aw, %i.ay
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !41
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ba)
  %i.bc = add nuw nsw i64 %i.az, %i.bb
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !41
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bd)
  %i.bf = add nuw nsw i64 %i.bc, %i.be
  %i.bg = load i64, ptr %i.o, align 8, !tbaa !41
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bg)
  %i.bi = add nuw nsw i64 %i.bf, %i.bh
  %i.bj = load i64, ptr %i.p, align 8, !tbaa !41
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bj)
  %i.bl = add nuw nsw i64 %i.bi, %i.bk
  %i.bm = load i64, ptr %i.q, align 8, !tbaa !41
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bm)
  %i.bo = add nuw nsw i64 %i.bl, %i.bn            ; 2 uses
  %i.bp = load i64, ptr %i.e, align 8, !tbaa !41
  %.sroa.speculated8.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.bo)
  store i64 %.sroa.speculated8.i.i, ptr %i.e, align 8, !tbaa !190
  %i.bq = load i64, ptr %i.r, align 8, !tbaa !41
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bq)
  store i64 %.sroa.speculated.i.i, ptr %i.r, align 8, !tbaa !191
  br label %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit.i

_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit.i: ; preds = %bb.f, %bb.e
  %i.br = add nuw i64 %.07.i, 1                   ; 2 uses
  %.0.highbits.i = lshr i64 %i.br, %i.d
  %i.bs = icmp eq i64 %.0.highbits.i, 0
  br i1 %i.bs, label %bb.b, label %_ZZNK7rocksdb11clock_cache19BaseHyperClockCacheINS0_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS_6LoggerEEENKUlPKNS0_15ClockCacheShardIS2_EEE_clESC_.exit, !llvm.loop !445

_ZZNK7rocksdb11clock_cache19BaseHyperClockCacheINS0_20FixedHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS_6LoggerEEENKUlPKNS0_15ClockCacheShardIS2_EEE_clESC_.exit: ; preds = %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bu = load atomic i64, ptr %i.bt monotonic, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !448, !nonnull !115, !align !116 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !41
  %i.by = add i64 %i.bx, %i.bu
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !41
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #22

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKN7rocksdb11clock_cache15ClockCacheShardINS1_20FixedHyperClockTableEEEEZNKS1_20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEE3$_0E9_M_invokeERKSt9_Any_dataOS6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !175    ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !450, !nonnull !115, !align !116 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !451, !nonnull !115, !align !116 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = sub i64 %i.f, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.m = load atomic i64, ptr %i.l monotonic, align 8 ; 3 uses
  %i.n = icmp eq i64 %i.f, %i.h
  %i.o = icmp eq i64 %i.m, 0
  %or.cond.i.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i.i, label %"_ZSt10__invoke_rIvRZNK7rocksdb11clock_cache20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEE3$_0JPKNS1_15ClockCacheShardINS1_20FixedHyperClockTableEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit", label %2

2:                                                ; preds = %bb.a
  %3 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %4 = insertelement <2 x i64> %3, i64 %i.m, i64 1
  %5 = uitofp <2 x i64> %4 to <2 x double>
  %6 = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %8 = load i64, ptr %7, align 16, !tbaa !81
  %9 = insertelement <2 x i64> %6, i64 %8, i64 1
  %10 = uitofp <2 x i64> %9 to <2 x double>
  %11 = fdiv <2 x double> %5, %10                 ; 2 uses
  %12 = extractelement <2 x double> %11, i64 0    ; 2 uses
  %13 = fcmp olt double %12, 8.000000e-01
  %14 = extractelement <2 x double> %11, i64 1    ; 2 uses
  %15 = fcmp olt double %14, f0x3FEE666666666666
  %or.cond3.i.i.i.i = and i1 %13, %15
  br i1 %or.cond3.i.i.i.i, label %"_ZSt10__invoke_rIvRZNK7rocksdb11clock_cache20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEE3$_0JPKNS1_15ClockCacheShardINS1_20FixedHyperClockTableEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit", label %bb.b

bb.b:                                             ; preds = %2
  %16 = fdiv double %14, %12
  %i.p = fmul double %16, 8.400000e-01            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !452  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %i.p, ptr %i.r, align 8, !tbaa !178
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.q, align 8, !tbaa !452
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !180  ; 4 uses
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #33
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #34 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store double %i.p, ptr %i.ah, align 8, !tbaa !178
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !181
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.am) #32
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !180
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !452
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.an, ptr %i.s, align 8, !tbaa !181
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i.i.i.i

_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i.i.i.i:  ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i.i.i, %bb.c
  %i.ao = udiv i64 %i.i, %i.m
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !41
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ap)
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.d, align 8, !tbaa !41
  br label %"_ZSt10__invoke_rIvRZNK7rocksdb11clock_cache20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEE3$_0JPKNS1_15ClockCacheShardINS1_20FixedHyperClockTableEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

"_ZSt10__invoke_rIvRZNK7rocksdb11clock_cache20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEE3$_0JPKNS1_15ClockCacheShardINS1_20FixedHyperClockTableEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %bb.a, %2, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKN7rocksdb11clock_cache15ClockCacheShardINS1_20FixedHyperClockTableEEEEZNKS1_20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #25 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !125
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !239
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !453
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache20FixedHyperClockCache14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #26

; Function Attrs: nounwind
declare void @_ZN7rocksdb10MemMappingC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPKN7rocksdb11clock_cache15ClockCacheShardINS1_19AutoHyperClockTableEEEEZNKS1_19BaseHyperClockCacheIS3_E14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEEUlS6_E_E9_M_invokeERKSt9_Any_dataOS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !204
  tail call void @_ZZNK7rocksdb11clock_cache19BaseHyperClockCacheINS0_19AutoHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS_6LoggerEEENKUlPKNS0_15ClockCacheShardIS2_EEE_clESC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPKN7rocksdb11clock_cache15ClockCacheShardINS1_19AutoHyperClockTableEEEEZNKS1_19BaseHyperClockCacheIS3_E14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEEUlS6_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_19AutoHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !125
  br label %_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_19AutoHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !239
  br label %_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_19AutoHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !240
  br label %_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_19AutoHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK7rocksdb11clock_cache19BaseHyperClockCacheINS2_19AutoHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS1_6LoggerEEEUlPKNS2_15ClockCacheShardIS4_EEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNK7rocksdb11clock_cache19BaseHyperClockCacheINS0_19AutoHyperClockTableEE14ReportProblemsERKSt10shared_ptrINS_6LoggerEEENKUlPKNS0_15ClockCacheShardIS2_EEE_clESC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.b, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = add nuw i64 %i.e, %i.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !456, !nonnull !115, !align !116 ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.pre = load i64, ptr %i.k, align 8, !tbaa !206
  br label %bb.c

bb.b:                                             ; preds = %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !457, !nonnull !115, !align !116 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !41
  %i.z = add i64 %i.y, %i.v
  store i64 %i.z, ptr %i.x, align 8, !tbaa !41
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit
  %i.aa = phi i64 [ %.pre, %bb.a ], [ %i.ay, %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit ] ; 2 uses
  %.07 = phi i64 [ 0, %bb.a ], [ %i.bz, %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.07
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8
  %i.ae = and i64 %i.ad, 2305843009213693952
  %.not.i.i.not = icmp eq i64 %i.ae, 0
  %i.af = urem i64 %i.aa, 500                     ; 2 uses
  %i.ag = lshr i64 %i.af, 6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag ; 3 uses
  %i.ai = and i64 %i.af, 63
  %i.aj = shl nuw i64 1, %i.ai                    ; 2 uses
  br i1 %.not.i.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.al = or i64 %i.ak, %i.aj
  %i.am = load i64, ptr %i.l, align 8, !tbaa !205
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.l, align 8, !tbaa !205
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ao = xor i64 %i.aj, -1
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.aq = and i64 %i.ap, %i.ao
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.aq, %bb.e ], [ %i.al, %bb.d ]
  %.sink22.i = phi i64 [ 56, %bb.e ], [ 40, %bb.d ]
  %.sink19.i = phi i64 [ 48, %bb.e ], [ 32, %bb.d ]
  %.sink15.i = phi i64 [ 40, %bb.e ], [ 56, %bb.d ]
  store i64 %.sink, ptr %i.ah, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink22.i ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !41
  %i.at = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink19.i ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !41
  %i.aw = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.at)
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink15.i
  store i64 0, ptr %i.ax, align 8, !tbaa !41
  %i.ay = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.ay, ptr %i.k, align 8, !tbaa !206
  %i.az = icmp ugt i64 %i.ay, 499
  br i1 %i.az, label %bb.g, label %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit

bb.g:                                             ; preds = %bb.f
  %i.ba = load i64, ptr %i.j, align 8, !tbaa !41
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ba)
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !41
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bc)
  %i.be = add nuw nsw i64 %i.bd, %i.bb
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !41
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bf)
  %i.bh = add nuw nsw i64 %i.be, %i.bg
  %i.bi = load i64, ptr %i.o, align 8, !tbaa !41
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bi)
  %i.bk = add nuw nsw i64 %i.bh, %i.bj
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !41
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bl)
  %i.bn = add nuw nsw i64 %i.bk, %i.bm
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !41
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bo)
  %i.bq = add nuw nsw i64 %i.bn, %i.bp
  %i.br = load i64, ptr %i.r, align 8, !tbaa !41
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.br)
  %i.bt = add nuw nsw i64 %i.bq, %i.bs
  %i.bu = load i64, ptr %i.s, align 8, !tbaa !41
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bu)
  %i.bw = add nuw nsw i64 %i.bt, %i.bv            ; 2 uses
  %i.bx = load i64, ptr %i.g, align 8, !tbaa !41
  %.sroa.speculated8.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.bw)
  store i64 %.sroa.speculated8.i, ptr %i.g, align 8, !tbaa !190
  %i.by = load i64, ptr %i.t, align 8, !tbaa !41
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.by)
  store i64 %.sroa.speculated.i, ptr %i.t, align 8, !tbaa !191
  br label %_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit

_ZN7rocksdb11clock_cache17LoadVarianceStatsILm500EE3AddEb.exit: ; preds = %bb.f, %bb.g
  %i.bz = add nuw i64 %.07, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.f
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !454
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKN7rocksdb11clock_cache15ClockCacheShardINS1_19AutoHyperClockTableEEEEZNKS1_19AutoHyperClockCache14ReportProblemsERKSt10shared_ptrINS0_6LoggerEEE3$_0E9_M_invokeERKSt9_Any_dataOS6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #5 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !125   ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !204    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = lshr i64 %i.c, 8
  %i.e = and i64 %i.c, 255
end_hunk_0
