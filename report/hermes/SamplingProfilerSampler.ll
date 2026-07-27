inline.NumInlined: 568
inline.NumDeleted: 379
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes2vm17sampling_profiler7Sampler17unregisterRuntimeEPNS0_16SamplingProfilerE:bb.a
}

declare void @_ZN6hermes2vm17sampling_profiler7Sampler25platformUnregisterRuntimeEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler12sampleStacksEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.014.023 = load ptr, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %.not24 = icmp eq ptr %.sroa.014.023, null
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.014.025 = phi ptr [ %.sroa.014.0, %bb.c ], [ %.sroa.014.023, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.014.025, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #15
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %.lr.ph
  %i.f = tail call noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler11sampleStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %i.c)
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  tail call void @_ZN6hermes2vm17sampling_profiler7Sampler23platformPostSampleStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %i.c) #14
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #14 ; 0 uses
  %.sroa.014.0 = load ptr, ptr %.sroa.014.025, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %.sroa.014.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph

.critedge:                                        ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #14 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %.critedge
  %.not19 = phi i1 [ false, %.critedge ], [ true, %bb.a ], [ true, %bb.c ]
  ret i1 %.not19
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler11sampleStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 4 uses
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load volatile i32, ptr %i.a, align 8, !tbaa !33
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.d = load volatile i32, ptr %i.c, align 4, !tbaa !63
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h) ; 0 uses
  %i.j = load volatile i32, ptr %i.c, align 4, !tbaa !63 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.j, ptr %i.k, align 4, !tbaa !64
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.l, align 4, !tbaa !64
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !73   ; 4 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.t, 500                    ; 4 uses
  %i.v = icmp ugt i64 %i.u, 1152921504606846975
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.r                       ; 2 uses
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = icmp ult i64 %i.aa, %i.u
  br i1 %i.ab, label %_ZNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ac = shl nuw nsw i64 %i.u, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #17 ; 4 uses
  %i.ae = icmp sgt i64 %i.s, 0
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.h, %_ZNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.z) #16
  br label %_ZNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.s
  store ptr %i.af, ptr %i.n, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.u
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !74
  br label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !75
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 4 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = add nsw i64 %i.ao, 500                  ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, 1152921504606846975
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE7reserveEm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

bb.k:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !77
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.am                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = icmp ult i64 %i.av, %i.ap
  br i1 %i.aw, label %_ZNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ax = shl nuw nsw i64 %i.ap, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #17 ; 4 uses
  %i.az = icmp sgt i64 %i.an, 0
  br i1 %i.az, label %bb.l, label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i16 = icmp eq ptr %i.ak, null
  br i1 %.not.i8.i16, label %_ZNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.au) #16
  br label %_ZNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.an
  store ptr %i.ba, ptr %i.ai, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ap
  store ptr %i.bb, ptr %i.ar, align 8, !tbaa !77
  br label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.bc = tail call noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler29platformSuspendVMAndWalkStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %1) #14
  br i1 %i.bc, label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit._crit_edge, label %bb.r

_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit._crit_edge: ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit._crit_edge, %bb.c, %bb.d
  %i.bd = phi i32 [ %.pre, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit._crit_edge ], [ %i.j, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !78 ; 4 uses
  store ptr %i.bg, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.bh = zext i32 %i.bd to i64
  %.idx17 = mul nuw nsw i64 %i.bh, 24             ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx17
  store ptr %i.bi, ptr %3, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !79 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !80
  %.not.i = icmp eq ptr %i.bk, %i.bm
  br i1 %.not.i, label %bb.q, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i: ; preds = %bb.n
  %i.bn = load <2 x i64>, ptr %i.be, align 8, !tbaa !9
  store <2 x i64> %i.bn, ptr %i.bk, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit.i, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i.i

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx17) #17 ; 4 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx17 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !15
  %.not18 = icmp eq i32 %i.bd, 1
  br i1 %.not18, label %bb.p, label %bb.o, !prof !81

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr align 8 %i.bg, i64 %.idx17, i1 false)
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit.i

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !tbaa.struct !82
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit.i

_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit.i: ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i, %bb.p, %bb.o
  %i.bs = phi ptr [ %i.bq, %bb.o ], [ %i.bq, %bb.p ], [ null, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !86
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %i.bv, ptr %i.bj, align 8, !tbaa !79
  br label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit

bb.q:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE17_M_realloc_insertIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEEvNSJ_IPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit: ; preds = %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit
  %.1 = phi i1 [ true, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12emplace_backIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEERS3_DpOT_.exit ], [ false, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE7reserveEm.exit ]
  ret i1 %.1
}

declare void @_ZN6hermes2vm17sampling_profiler7Sampler23platformPostSampleStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler29platformSuspendVMAndWalkStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17sampling_profiler7Sampler16walkRuntimeStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = tail call noundef i32 @_ZN6hermes2vm16SamplingProfiler16walkRuntimeStackERNS1_10StackTraceENS1_6InLoomEj(ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 0, i32 noundef 0) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.b, ptr %i.c, align 4, !tbaa !64
  ret void
}

declare noundef i32 @_ZN6hermes2vm16SamplingProfiler16walkRuntimeStackERNS1_10StackTraceENS1_6InLoomEj(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17sampling_profiler7Sampler9timerLoopEd(ptr noundef nonnull align 8 dereferenceable(208) %0, double noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::random_device", align 8 ; 5 uses
  %5 = alloca %"class.std::mersenne_twister_engine", align 8 ; 7 uses
  %6 = alloca %"class.std::normal_distribution", align 8 ; 8 uses
  tail call void @_ZN6hermes8oscompat15set_thread_nameEPKc(ptr noundef nonnull @.str) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !83
  call void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  %i.d = load ptr, ptr %3, align 8, !tbaa !92     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !83
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #16
  br label %_ZNSt13random_deviceC2Ev.exit

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.h = call noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %4) #14
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  store i64 %i.i, ptr %5, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_ZNSt13random_deviceC2Ev.exit
  %store_forwarded = phi i64 [ %i.i, %_ZNSt13random_deviceC2Ev.exit ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceC2Ev.exit ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %5, i64 %.011.i.i
  %i.k = lshr i64 %store_forwarded, 30
  %i.l = xor i64 %i.k, %store_forwarded
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i              ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !9
  %i.p = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %5, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !9
  %i.w = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4992
  store i64 624, ptr %i.x, align 8, !tbaa !93
  %i.y = fdiv double 1.000000e+00, %1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.z = fmul double %i.y, 5.000000e-01
  store double %i.y, ptr %6, align 8, !tbaa !95
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.ac, align 8, !tbaa !101
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ad) #14 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, label %bb.d

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !102, !range !103, !noundef !104
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ae) #15
  unreachable

bb.e:                                             ; preds = %.lr.ph, %"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit"
  %.sroa.014.023.i = load ptr, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %.not24.i = icmp eq ptr %.sroa.014.023.i, null
  br i1 %.not24.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.014.025.i = phi ptr [ %.sroa.014.0.i, %bb.g ], [ %.sroa.014.023.i, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #14 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i4, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #15
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %.lr.ph.i
  %i.ap = call noundef zeroext i1 @_ZN6hermes2vm17sampling_profiler7Sampler11sampleStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %i.am)
  br i1 %i.ap, label %bb.g, label %_ZN6hermes2vm17sampling_profiler7Sampler12sampleStacksEv.exit

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  call void @_ZN6hermes2vm17sampling_profiler7Sampler23platformPostSampleStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %i.am) #14
  %i.aq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #14 ; 0 uses
  %.sroa.014.0.i = load ptr, ptr %.sroa.014.025.i, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.014.0.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

_ZN6hermes2vm17sampling_profiler7Sampler12sampleStacksEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ar = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #14 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.loopexit:                                        ; preds = %bb.g, %bb.e
  %i.as = call noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(5000) %5, ptr noundef nonnull align 8 dereferenceable(25) %6)
  %i.at = call double @llvm.fabs.f64(double %i.as)
  %i.au = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %i.av = fmul double %i.at, 1.000000e+09         ; 2 uses
  %i.aw = fptosi double %i.av to i64              ; 2 uses
  %i.ax = sitofp i64 %i.aw to double
  %i.ay = fcmp ogt double %i.av, %i.ax
  %i.az = zext i1 %i.ay to i64
  %.sroa.0.0.i.i = add i64 %i.au, %i.aw
  %i.ba = add i64 %.sroa.0.0.i.i, %i.az           ; 3 uses
  %i.bb = sdiv i64 %i.ba, 1000000000              ; 2 uses
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.bb, -1000000000
  %i.bc = add i64 %.neg.i.i.i.i.i.i, %i.ba
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.loopexit
  %.val4.val.i.i = load i8, ptr %i.af, align 8, !tbaa !102, !range !103, !noundef !104
  %i.bd = trunc nuw i8 %.val4.val.i.i to i1
  br i1 %i.bd, label %bb.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 %i.bb, ptr %2, align 8, !tbaa !105
  store i64 %i.bc, ptr %i.ak, align 8, !tbaa !107
  %i.be = call i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %2) #14 ; 0 uses
  %i.bf = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #14
  %.not.i.i = icmp slt i64 %i.bf, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.not.i.i, label %bb.h, label %"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit", !llvm.loop !108

"_ZNSt18condition_variable8wait_forIdSt5ratioILl1ELl1EEZN6hermes2vm17sampling_profiler7Sampler9timerLoopEdE3$_0EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit": ; preds = %bb.i
end_hunk_0
