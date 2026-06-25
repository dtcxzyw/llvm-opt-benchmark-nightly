inline.NumInlined: 1320
inline.NumDeleted: 643
begin_hunk_0_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #34 ; 0 uses
  tail call void @_ZSt9terminatev() #35
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly17FunctionSchedulerD2Ev(ptr noundef nonnull align 8 dead_on_return(178) dereferenceable(178) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #36
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !42, !range !43, !noundef !44
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  br label %_ZN5folly17FunctionScheduler8shutdownEv.exit

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  store i8 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #34
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(178) %0)
          to label %_ZN5folly17FunctionScheduler8shutdownEv.exit unwind label %bb.h

_ZN5folly17FunctionScheduler8shutdownEv.exit:     ; preds = %bb.c, %bb.d
  tail call void @_ZN5folly17FunctionScheduler9clearHeapEv(ptr noundef nonnull align 8 dereferenceable(178) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5folly17FunctionScheduler8shutdownEv.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !25
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5folly17FunctionScheduler8shutdownEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.o) #34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  %i.s = load i8, ptr %i.r, align 1, !tbaa !46
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !49   ; 2 uses
  %i.w = and i64 %i.v, 255                        ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.x, align 1
  %i.y = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.w
  %i.z = xor i64 %notmask.i.i.i.i.i, -1
  %i.aa = lshr i64 %i.z, 12
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = icmp ult i64 %i.v, 256
  br i1 %i.ac, label %_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.w, ptr %i.u, align 8, !tbaa !49
  %.0.copyload.i.pre.i.i.i.i = load i16, ptr %i.x, align 1
  %.pre20.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.pre-phi21.i.i.i.i = phi i64 [ %i.y, %bb.e ], [ %.pre20.i.i.i.i, %bb.f ]
  %i.ad = icmp eq i64 %i.w, 0
  %i.ae = shl nuw nsw i64 %.pre-phi21.i.i.i.i, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.ae
  %.neg18.i.i.i.i = shl i64 -64, %i.w
  %.0.i.neg.i.i.i.i = select i1 %i.ad, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.p, align 8, !tbaa !11
  store i64 0, ptr %i.u, align 8, !tbaa !49
  %i.af = and i64 %.0.i.neg.i.i.i.i, -8
  %i.ag = mul nuw nsw i64 %i.y, 24
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = sub i64 %i.ah, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ai) #34
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEED2Ev.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i.i.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !50
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEED2Ev.exit
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEED2Ev.exit
  ret void

bb.h:                                             ; preds = %bb.d, %bb.b
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly17FunctionScheduler8shutdownEv(ptr noundef nonnull align 8 dereferenceable(178) %0) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #36
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !42, !range !43, !noundef !44
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store i8 0, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #34
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly17FunctionScheduler9clearHeapEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(178) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.d = phi ptr [ %i.al, %bb.h ], [ %i.b, %bb.a ] ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  %i.i = icmp eq ptr %i.f, null                   ; 2 uses
  %i.j = icmp eq ptr %i.h, null
  %or.cond.i.i = or i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %bb.b, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !tbaa !50
  br label %.preheader.i

bb.b:                                             ; preds = %.lr.ph
  %i.k = select i1 %i.i, ptr %i.h, ptr %i.f       ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !55
  %.not38.i.i = icmp eq ptr %i.k, null
  br i1 %.not38.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.k, align 8, !tbaa !56
  br label %bb.e

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.sroa.0.0.copyload.i.i.i.i = phi i64 [ %1, %.preheader.i ], [ %.sroa.0.0.copyload.i.i.i.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.030.i.i.a = phi ptr [ %i.o, %.preheader.i ], [ %i.h, %.preheader.preheader.i ] ; 3 uses
  %.029.i.i.a = phi ptr [ %.032..0.i.i, %.preheader.i ], [ null, %.preheader.preheader.i ]
  %.0.i.i.a = phi ptr [ %i.p, %.preheader.i ], [ %i.a, %.preheader.preheader.i ]
  %.0.i.i = phi ptr [ %.0..032.i.i, %.preheader.i ], [ %i.f, %.preheader.preheader.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.030.i.i.a, i64 160
  %.sroa.0.0.copyload.i3.i.i.i = load i64, ptr %i.l, align 16, !tbaa !50 ; 2 uses
  %i.m = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i3.i.i.i ; 2 uses
  %.032..0.i.i = select i1 %i.m, ptr %.030.i.i.a, ptr %.0.i.i, !unpredictable !44 ; 6 uses
  %.0..032.i.i = select i1 %i.m, ptr %.0.i.i, ptr %.030.i.i.a, !unpredictable !44 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 2 uses
  store ptr %.032..0.i.i, ptr %.0.i.i.a, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  store ptr %i.q, ptr %i.n, align 8, !tbaa !54
  store ptr %.029.i.i.a, ptr %.032..0.i.i, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.o, null
  %1 = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i3.i.i.i)
  br i1 %.not.i.i, label %bb.d, label %.preheader.i, !llvm.loop !57

bb.d:                                             ; preds = %.preheader.i
  store ptr %.0..032.i.i, ptr %i.p, align 8, !tbaa !55
  store ptr %.032..0.i.i, ptr %.0..032.i.i, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 224 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ag = tail call noundef i64 %i.ae(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.af, ptr noundef null) #34, !inline_history !61 ; 0 uses
  br label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i

_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i4.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ak = tail call noundef i64 %i.ai(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.aj, ptr noundef null) #34, !inline_history !64 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 256) #37
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler11addFunctionEONS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEENS_5RangeIPKcEES9_(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 %2, ptr %3, ptr %4, i64 %5) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.folly::Function.15", align 16 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %bb.b, label %_ZN5folly12_GLOBAL__N_120ConstIntervalFunctorC2ENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #36
  unreachable

common.resume:                                    ; preds = %_ZN5folly8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEED2Ev.exit23, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn.pn, %_ZN5folly8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEED2Ev.exit23 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #34
  br label %common.resume

_ZN5folly12_GLOBAL__N_120ConstIntervalFunctorC2ENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i64 %2, ptr %6, align 16, !tbaa !50
  store ptr @_ZN5folly6detail8function5call_INS_12_GLOBAL__N_120ConstIntervalFunctorELb1ELb0ENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEJEEET2_DpT3_RNS1_4DataE, ptr %i.f, align 16, !tbaa !65
  store ptr @_ZN5folly6detail8function13DispatchSmall4execINS_12_GLOBAL__N_120ConstIntervalFunctorEEEmNS1_2OpEPNS1_4DataES8_, ptr %i.g, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.h = ptrtoint ptr %4 to i64
  %i.i = ptrtoint ptr %3 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !20, !alias.scope !68
  %i.l = icmp eq ptr %3, null
  %i.m = icmp ne ptr %4, null
  %or.cond.i.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i.i, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %_ZN5folly12_GLOBAL__N_120ConstIntervalFunctorC2ENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #36
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.e:                                             ; preds = %_ZN5folly12_GLOBAL__N_120ConstIntervalFunctorC2ENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE.exit
  %i.n = icmp ugt i64 %i.j, 15
  br i1 %i.n, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = icmp slt i64 %i.j, 0
  br i1 %i.o, label %.noexc.i.i.i, label %bb.g

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #36
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw i64 %i.j, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !73

.noexc9.i.i.i:                                    ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.g
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #38
          to label %.noexc11 unwind label %bb.n   ; 2 uses

.noexc11:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.r, ptr %7, align 8, !tbaa !45, !alias.scope !68
  store i64 %i.j, ptr %i.k, align 8, !tbaa !25, !alias.scope !68
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc11, %bb.e
  %i.s = phi ptr [ %i.r, %.noexc11 ], [ %i.k, %bb.e ] ; 3 uses
  switch i64 %i.j, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %3, align 1, !tbaa !25
  store i8 %i.t, ptr %i.s, align 1, !tbaa !25
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %3, i64 %i.j, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.j, ptr %i.u, align 8, !tbaa !23, !alias.scope !68
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  store i8 0, ptr %i.v, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 %2, ptr %i.b, align 8, !tbaa !50
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !20, !alias.scope !74
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !23, !alias.scope !74
  store i8 0, ptr %i.w, align 8, !tbaa !25, !alias.scope !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !74
  store ptr %8, ptr %i.a, align 8, !tbaa !77, !noalias !74
  invoke void @_ZN5folly11toAppendFitIJlA3_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !74
  %i.z = load ptr, ptr %8, align 8, !tbaa !45, !alias.scope !74 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %.body, label %.body.sink.split

end_hunk_0
begin_hunk_1_@_ZN5folly17FunctionScheduler24addFunctionToHeapCheckedINS_8FunctionIFNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEESB_SB_EEEEEvONS2_IFvvEEEOT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESQ_NS7_IlS8_ILl1ELl1000000EEEEb:bb.a
  call void @__cxa_free_exception(ptr %i.cz) #34
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread106: ; preds = %bb.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.noexc.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.dh = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #38
          to label %.noexc53 unwind label %bb.ah  ; 3 uses

.noexc53:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread106
  invoke void @_ZN5folly17FunctionScheduler10RepeatFuncC2EONS_8FunctionIFvvEEEONS2_IFNSt6chrono10time_pointINS6_3_V212steady_clockENS6_8durationIlSt5ratioILl1ELl1000000000EEEEEESE_SE_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESP_NSA_IlSB_ILl1ELl1000000EEEEb(ptr noundef nonnull align 16 dereferenceable(241) %i.dh, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %5, i1 noundef zeroext %6)
          to label %bb.ac unwind label %bb.ab, !noalias !156

bb.ab:                                            ; preds = %.noexc53
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 256) #37, !noalias !156
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit56

bb.ac:                                            ; preds = %.noexc53
  store ptr %i.dh, ptr %9, align 8, !tbaa !159, !alias.scope !156
  invoke void @_ZN5folly17FunctionScheduler17addFunctionToHeapERKSt11unique_lockISt5mutexESt10unique_ptrINS0_10RepeatFuncESt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nonnull align 8 poison, ptr noundef nonnull %9)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load ptr, ptr %9, align 8, !tbaa !159   ; 10 uses
  %.not.i54 = icmp eq ptr %i.dj, null
  br i1 %.not.i54, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 208
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !45 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 224 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !25
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 168
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !45 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 184 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !25
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 152
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 96
  %i.dz = call noundef i64 %i.dx(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.dy, ptr noundef null) #34, !inline_history !160 ; 0 uses
  br label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i

_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i: ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 88
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !62 ; 2 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i4.i.i.i, label %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.ed = call noundef i64 %i.eb(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.ec, ptr noundef null) #34, !inline_history !161 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i: ; preds = %bb.ag, %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 256) #37
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i, %bb.ad
  %i.ee = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #34 ; 0 uses
  ret void

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread106
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit56

bb.ai:                                            ; preds = %bb.ac
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly17FunctionScheduler10RepeatFuncESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #34
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit56

_ZNSt11unique_lockISt5mutexED2Ev.exit56:          ; preds = %bb.s, %bb.ai, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.ab, %bb.ah
  %.pn25.pn = phi { ptr, i32 } [ %.pn25105, %bb.u ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn109, %bb.aa ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.eg, %bb.ai ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.di, %bb.ab ], [ %i.cg, %bb.s ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ef, %bb.ah ]
  %i.eh = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #34 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit56, %bb.l, %bb.h, %bb.d
  %.pn28 = phi { ptr, i32 } [ %i.m, %bb.l ], [ %.pn25.pn, %_ZNSt11unique_lockISt5mutexED2Ev.exit56 ], [ %i.j, %bb.h ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %.pn28

bb.ak:                                            ; preds = %bb.y, %bb.r
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA38_cS6_A17_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(17) %3) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !23
  store i8 0, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %0, ptr %i.a, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %i.f = add i64 %i.e, 55
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA38_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA17_cPSC_EEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly11toAppendFitIJA38_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA17_cPS7_ETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit unwind label %bb.b

_ZN5folly11toAppendFitIJA38_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA17_cPS7_ETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.g
}

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler17addFunctionToHeapERKSt11unique_lockISt5mutexESt10unique_ptrINS0_10RepeatFuncESt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEESt4pairINS1_23VectorContainerIteratorIPSO_IKS7_SA_EEEbEDpOT_.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.folly::detail::TemporaryEmplaceKey", align 8 ; 5 uses
  %4 = alloca %"struct.std::pair.53", align 8     ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !159    ; 2 uses
  %i.e = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.g = load i64, ptr %i.f, align 8, !tbaa !104
  %i.h = mul nsw i64 %i.g, 1000
  %i.i = add nsw i64 %i.h, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i64 %i.i, ptr %i.j, align 16, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !159    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store ptr %i.l, ptr %i.c, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !165
  store ptr %i.k, ptr %3, align 8, !tbaa !170, !noalias !165
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !45, !noalias !165 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !172, !noalias !165
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.r = load i64, ptr %i.q, align 8, !tbaa !23, !noalias !165 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  store ptr %i.s, ptr %i.p, align 8, !tbaa !174, !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !175
  store i64 0, ptr %i.a, align 8, !tbaa !50, !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !175
  store i64 0, ptr %i.b, align 8, !tbaa !50, !noalias !175
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %i.o, i64 noundef %i.r, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !noalias !165
  %i.t = load i64, ptr %i.b, align 8, !tbaa !50, !noalias !175 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !175
  %i.u = lshr i64 %i.t, 56
  %i.v = or i64 %i.u, 128
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_SA_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.53") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 %i.t, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !159    ; 5 uses
  store ptr null, ptr %2, align 8, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !51   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.a, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEESt4pairINS1_23VectorContainerIteratorIPSO_IKS7_SA_EEEbEDpOT_.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !tbaa !50
  br label %.preheader.i

bb.a:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEESt4pairINS1_23VectorContainerIteratorIPSO_IKS7_SA_EEEbEDpOT_.exit
  store ptr %i.x, ptr %i.w, align 8, !tbaa !55
  store ptr null, ptr %i.x, align 8, !tbaa !56
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.sroa.0.0.copyload.i.i.i.i = phi i64 [ %5, %.preheader.i ], [ %.sroa.0.0.copyload.i.i.i.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.030.i.i.a = phi ptr [ %i.ad, %.preheader.i ], [ %i.y, %.preheader.preheader.i ] ; 3 uses
  %.029.i.i.a = phi ptr [ %.032..0.i.i, %.preheader.i ], [ null, %.preheader.preheader.i ]
  %.0.i.i.a = phi ptr [ %i.ae, %.preheader.i ], [ %i.w, %.preheader.preheader.i ]
  %.0.i.i = phi ptr [ %.0..032.i.i, %.preheader.i ], [ %i.x, %.preheader.preheader.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.030.i.i.a, i64 160
  %.sroa.0.0.copyload.i3.i.i.i = load i64, ptr %i.aa, align 16, !tbaa !50 ; 2 uses
  %i.ab = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i3.i.i.i ; 2 uses
  %.032..0.i.i = select i1 %i.ab, ptr %.030.i.i.a, ptr %.0.i.i, !unpredictable !44 ; 6 uses
  %.0..032.i.i = select i1 %i.ab, ptr %.0.i.i, ptr %.030.i.i.a, !unpredictable !44 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54 ; 2 uses
  store ptr %.032..0.i.i, ptr %.0.i.i.a, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !54
  store ptr %.029.i.i.a, ptr %.032..0.i.i, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.ad, null
  %5 = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i3.i.i.i)
  br i1 %.not.i.i, label %bb.b, label %.preheader.i, !llvm.loop !57

bb.b:                                             ; preds = %.preheader.i
  store ptr %.0..032.i.i, ptr %i.ae, align 8, !tbaa !55
  store ptr %.032..0.i.i, ptr %.0..032.i.i, align 8, !tbaa !56
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit

_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit: ; preds = %bb.a, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !42, !range !43, !noundef !44
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aj) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly17FunctionScheduler10RepeatFuncESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !159    ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !25
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !25
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.q = tail call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.p, ptr noundef null) #34, !inline_history !182 ; 0 uses
  br label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i

_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62   ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i4.i.i, label %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = tail call noundef i64 %i.s(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef null) #34, !inline_history !183 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit

_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit: ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 256) #37
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #1

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA38_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA17_cPSC_EEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !77     ; 11 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(38) %0) #34 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.j = icmp eq ptr %i.h, %i.i                   ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.i, align 8
  %i.m = select i1 %i.j, i64 15, i64 %i.l
  %.not.i.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %0, align 1, !tbaa !25
  store i8 %i.o, ptr %i.n, align 1, !tbaa !25
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 dereferenceable(38) %0, i64 %i.b, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(38) %0, i64 noundef %i.b)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.g, ptr %i.c, align 8, !tbaa !23
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !25
  %i.r = load ptr, ptr %1, align 8, !tbaa !45     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23   ; 6 uses
  %i.u = load i64, ptr %i.c, align 8, !tbaa !23   ; 5 uses
  %i.v = sub i64 9223372036854775807, %i.u
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.i:                                             ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  %i.x = add i64 %i.u, %i.t                       ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i                   ; 2 uses
  br i1 %i.z, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aa = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ab = load i64, ptr %i.i, align 8
  %i.ac = select i1 %i.z, i64 15, i64 %i.ab
  %.not.i.i.i.i = icmp ugt i64 %i.x, %i.ac
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not8.i.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeERKS8_PS9_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %cond.i.i.i.i, label %bb.m, label %bb.n

end_hunk_1
begin_hunk_2_@_ZN5folly17FunctionScheduler14cancelFunctionENS_5RangeIPKcEE:bb.a
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 0, ptr %i.b, align 8, !tbaa !50
  invoke void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc18 unwind label %bb.h

.noexc18:                                         ; preds = %bb.f
  %i.o = load i64, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = lshr i64 %i.o, 56
  %i.q = or i64 %i.p, 128                         ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.t = trunc nuw i64 %i.q to i8
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.w = load i64, ptr %i.i, align 8, !tbaa !49
  %i.x = and i64 %i.w, 255                        ; 3 uses
  %i.y = shl nuw i64 1, %i.x                      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  %i.ab = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ac = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.ac
  br i1 %.fr, label %.noexc20.us, label %.noexc20, !llvm.loop !150

.noexc20.us:                                      ; preds = %.noexc18, %.noexc23.us
  %.0.i84.us = phi i64 [ %i.am, %.noexc23.us ], [ %i.o, %.noexc18 ] ; 2 uses
  %.022.i83.us = phi i64 [ %i.al, %.noexc23.us ], [ %i.y, %.noexc18 ]
  %i.ad = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i84.us, i64 range(i64 0, 256) %i.x)
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.ad ; 3 uses
  %i.af = load <16 x i8>, ptr %i.ae, align 16     ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.af, %i.v
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = and i16 %i.ah, 4095                     ; 2 uses
  %.not77.us = icmp eq i16 %i.ai, 0
  %i.aj = extractelement <16 x i8> %i.af, i64 15
  br i1 %.not77.us, label %.critedge.i._crit_edge.split.us.us, label %.noexc21.lr.ph.us

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.noexc20.us
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc23.us, !prof !118

.noexc23.us:                                      ; preds = %.critedge.i._crit_edge.split.us.us
  %i.al = add i64 %.022.i83.us, -1                ; 2 uses
  %i.am = add i64 %i.s, %.0.i84.us
  %.not.i.us = icmp eq i64 %i.al, 0
  br i1 %.not.i.us, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc20.us, !llvm.loop !151

.noexc21.lr.ph.us:                                ; preds = %.noexc20.us
  %i.an = zext nneg i16 %i.ai to i32
  %i.ao = icmp ne ptr %i.ae, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %.noexc21.us.us

.noexc21.us.us:                                   ; preds = %.critedge.i.backedge.us.us, %.noexc21.lr.ph.us
  %.sroa.038.078.us.us = phi i32 [ %i.an, %.noexc21.lr.ph.us ], [ %i.ba, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.aq = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.038.078.us.us, i1 true)
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i.i.us.us = load ptr, ptr %i.av, align 8, !tbaa !152
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.4.0.copyload.i.i.us.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !152
  %i.aw = ptrtoint ptr %.sroa.4.0.copyload.i.i.us.us to i64
  %i.ax = ptrtoint ptr %.sroa.0.0.copyload.i.i.us.us to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.not.i.i.i26.us.us = icmp eq i64 %i.n, %i.ay
  br i1 %.not.i.i.i26.us.us, label %.noexc22.thread, label %.critedge.i.backedge.us.us, !prof !153

.critedge.i.backedge.us.us:                       ; preds = %.noexc21.us.us
  %i.az = add nsw i32 %.sroa.038.078.us.us, -1
  %i.ba = and i32 %i.az, %.sroa.038.078.us.us     ; 2 uses
  %.not.us.us = icmp eq i32 %i.ba, 0
  br i1 %.not.us.us, label %.critedge.i._crit_edge.split.us.us, label %.noexc21.us.us, !llvm.loop !150

.noexc20:                                         ; preds = %.noexc18, %.noexc23
  %.0.i84 = phi i64 [ %i.bz, %.noexc23 ], [ %i.o, %.noexc18 ] ; 2 uses
  %.022.i83 = phi i64 [ %i.by, %.noexc23 ], [ %i.y, %.noexc18 ]
  %i.bb = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i84, i64 range(i64 0, 256) %i.x)
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.bb ; 3 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16     ; 2 uses
  %i.be = icmp eq <16 x i8> %i.bd, %i.v
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 4095                     ; 2 uses
  %.not77 = icmp eq i16 %i.bg, 0
  %i.bh = extractelement <16 x i8> %i.bd, i64 15
  br i1 %.not77, label %.critedge.i._crit_edge.split, label %.noexc21.lr.ph

.noexc21.lr.ph:                                   ; preds = %.noexc20
  %i.bi = zext nneg i16 %i.bg to i32
  %i.bj = icmp ne ptr %i.bc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc21.lr.ph, %.critedge.i.backedge
  %.sroa.038.078 = phi i32 [ %i.bi, %.noexc21.lr.ph ], [ %i.bn, %.critedge.i.backedge ] ; 3 uses
  %i.bl = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.038.078, i1 true)
  %i.bm = add nsw i32 %.sroa.038.078, -1
  %i.bn = and i32 %i.bm, %.sroa.038.078           ; 2 uses
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.br ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bs, align 8, !tbaa !152 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !152
  %i.bt = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.bu = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %.not.i.i.i26 = icmp eq i64 %i.n, %i.bv
  br i1 %.not.i.i.i26, label %bb.g, label %.critedge.i.backedge, !prof !153

bb.g:                                             ; preds = %.noexc21
  %bcmp.i.i.i = call i32 @bcmp(ptr %1, ptr %.sroa.0.0.copyload.i.i, i64 %i.n)
  %i.bw = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bw, label %.noexc22.thread, label %.critedge.i.backedge, !prof !154

.critedge.i.backedge:                             ; preds = %bb.g, %.noexc21
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %.critedge.i._crit_edge.split, label %.noexc21, !llvm.loop !150

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.noexc20
  %i.bx = icmp eq i8 %i.bh, 0
  br i1 %i.bx, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc23, !prof !118

.noexc23:                                         ; preds = %.critedge.i._crit_edge.split
  %i.by = add i64 %.022.i83, -1                   ; 2 uses
  %i.bz = add i64 %i.s, %.0.i84
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc20, !llvm.loop !151

.noexc22.thread:                                  ; preds = %bb.g, %.noexc21.us.us
  %.pre-phi = phi i64 [ %i.au, %.noexc21.us.us ], [ %i.br, %bb.g ]
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.pre-phi
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !223
  invoke void @_ZN5folly17FunctionScheduler14cancelFunctionERKSt11unique_lockISt5mutexEPNS0_10RepeatFuncE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nonnull align 8 poison, ptr noundef %i.cc)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.f, %.noexc22.thread
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.critedge.i._crit_edge.split, %.noexc23, %.noexc23.us, %.critedge.i._crit_edge.split.us.us, %bb.e, %bb.c, %.noexc22.thread
  %.16 = phi i1 [ true, %bb.c ], [ true, %.noexc22.thread ], [ false, %bb.e ], [ false, %.noexc23.us ], [ false, %.critedge.i._crit_edge.split.us.us ], [ false, %.noexc23 ], [ false, %.critedge.i._crit_edge.split ]
  %i.ce = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i1 %.16

_ZNSt11unique_lockISt5mutexED2Ev.exit30:          ; preds = %bb.d, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.cd, %bb.h ]
  %i.cf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler14cancelFunctionERKSt11unique_lockISt5mutexEPNS0_10RepeatFuncE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Range", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  store ptr %i.g, ptr %i.d, align 8, !tbaa !174
  %i.h = call noundef i64 @_ZN5folly3f146detail16F14VectorMapImplINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S9_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyIS6_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %2, align 8, !tbaa !56     ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = icmp eq ptr %i.m, %2
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %spec.select.i = select i1 %i.n, ptr %i.l, ptr %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %spec.select.i, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54   ; 3 uses
  %i.t = icmp eq ptr %i.q, null                   ; 2 uses
  %i.u = icmp eq ptr %i.s, null
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %bb.d, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !tbaa !50
  br label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.v = select i1 %i.t, ptr %i.s, ptr %i.q       ; 3 uses
  store ptr %i.v, ptr %.0.i, align 8, !tbaa !55
  %.not38.i.i = icmp eq ptr %i.v, null
  br i1 %.not38.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr %i.v, align 8, !tbaa !56
  br label %bb.g

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.sroa.0.0.copyload.i.i.i.i = phi i64 [ %4, %.preheader.i ], [ %.sroa.0.0.copyload.i.i.i.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.030.i.i.a = phi ptr [ %i.z, %.preheader.i ], [ %i.s, %.preheader.preheader.i ] ; 3 uses
  %.029.i.i.a = phi ptr [ %.032..0.i.i, %.preheader.i ], [ %i.j, %.preheader.preheader.i ]
  %.0.i.i.a = phi ptr [ %i.aa, %.preheader.i ], [ %.0.i, %.preheader.preheader.i ]
  %.0.i.i = phi ptr [ %.0..032.i.i, %.preheader.i ], [ %i.q, %.preheader.preheader.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.030.i.i.a, i64 160
  %.sroa.0.0.copyload.i3.i.i.i = load i64, ptr %i.w, align 16, !tbaa !50 ; 2 uses
  %i.x = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i3.i.i.i ; 2 uses
  %.032..0.i.i = select i1 %i.x, ptr %.030.i.i.a, ptr %.0.i.i, !unpredictable !44 ; 6 uses
  %.0..032.i.i = select i1 %i.x, ptr %.0.i.i, ptr %.030.i.i.a, !unpredictable !44 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54   ; 2 uses
  store ptr %.032..0.i.i, ptr %.0.i.i.a, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !54
  store ptr %.029.i.i.a, ptr %.032..0.i.i, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.z, null
  %4 = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i3.i.i.i)
  br i1 %.not.i.i, label %bb.f, label %.preheader.i, !llvm.loop !57

bb.f:                                             ; preds = %.preheader.i
  store ptr %.0..032.i.i, ptr %i.aa, align 8, !tbaa !55
  store ptr %.032..0.i.i, ptr %.0..032.i.i, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !25
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aq = call noundef i64 %i.ao(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.ap, ptr noundef null) #34, !inline_history !61 ; 0 uses
  br label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i

_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i4.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = call noundef i64 %i.as(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.at, ptr noundef null) #34, !inline_history !64 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 256) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly17FunctionScheduler21cancelFunctionAndWaitENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr %1, ptr %2) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #36
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.d, align 8, !tbaa !203
  %i.f = invoke noundef zeroext i1 @_ZN5folly17FunctionScheduler22cancelFunctionWithLockERSt11unique_lockISt5mutexENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr %1, ptr %2)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %.val.val2.i = load i8, ptr %i.h, align 1, !tbaa !41, !range !43, !noundef !44
  %i.i = trunc nuw i8 %.val.val2.i to i1
  br i1 %i.i, label %.lr.ph.i, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread"

.lr.ph.i:                                         ; preds = %bb.d, %.noexc27
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %.noexc27 unwind label %bb.j

.noexc27:                                         ; preds = %.lr.ph.i
  %.val.val.i = load i8, ptr %i.h, align 1, !tbaa !41, !range !43, !noundef !44
  %i.j = trunc nuw i8 %.val.val.i to i1
  br i1 %i.j, label %.lr.ph.i, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit", !llvm.loop !225

.loopexit.split-lp:                               ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !49
  %i.n = icmp ult i64 %i.m, 256
  br i1 %i.n, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %2 to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 0, ptr %i.b, align 8, !tbaa !50
  invoke void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc20 unwind label %bb.h

.noexc20:                                         ; preds = %bb.f
  %i.r = load i64, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = lshr i64 %i.r, 56
  %i.t = or i64 %i.s, 128                         ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.w = trunc nuw i64 %i.t to i8
  %i.x = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.z = load i64, ptr %i.l, align 8, !tbaa !49
  %i.aa = and i64 %i.z, 255                       ; 3 uses
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.af = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.af
  br i1 %.fr, label %.noexc22.us, label %.noexc22, !llvm.loop !150

.noexc22.us:                                      ; preds = %.noexc20, %.noexc25.us
  %.0.i88.us = phi i64 [ %i.ap, %.noexc25.us ], [ %i.r, %.noexc20 ] ; 2 uses
  %.022.i87.us = phi i64 [ %i.ao, %.noexc25.us ], [ %i.ab, %.noexc20 ]
  %i.ag = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i88.us, i64 range(i64 0, 256) %i.aa)
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %i.ag ; 3 uses
  %i.ai = load <16 x i8>, ptr %i.ah, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.y
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 4095                     ; 2 uses
  %.not81.us = icmp eq i16 %i.al, 0
  %i.am = extractelement <16 x i8> %i.ai, i64 15
  br i1 %.not81.us, label %.critedge.i._crit_edge.split.us.us, label %.noexc23.lr.ph.us

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.noexc22.us
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %.noexc25.us, !prof !118

.noexc25.us:                                      ; preds = %.critedge.i._crit_edge.split.us.us
  %i.ao = add i64 %.022.i87.us, -1                ; 2 uses
  %i.ap = add i64 %i.v, %.0.i88.us
  %.not.i.us = icmp eq i64 %i.ao, 0
  br i1 %.not.i.us, label %"_ZNSt18condition_variable4waitIZN5folly17FunctionScheduler21cancelFunctionAndWaitENS1_5RangeIPKcEEE3$_0EEvRSt11unique_lockISt5mutexET_.exit.thread", label %.noexc22.us, !llvm.loop !151

.noexc23.lr.ph.us:                                ; preds = %.noexc22.us
  %i.aq = zext nneg i16 %i.al to i32
  %i.ar = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  br label %.noexc23.us.us

.noexc23.us.us:                                   ; preds = %.critedge.i.backedge.us.us, %.noexc23.lr.ph.us
  %.sroa.041.082.us.us = phi i32 [ %i.aq, %.noexc23.lr.ph.us ], [ %i.bd, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.at = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.041.082.us.us, i1 true)
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i.i.us.us = load ptr, ptr %i.ay, align 8, !tbaa !152
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4.0.copyload.i.i.us.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !152
  %i.az = ptrtoint ptr %.sroa.4.0.copyload.i.i.us.us to i64
  %i.ba = ptrtoint ptr %.sroa.0.0.copyload.i.i.us.us to i64
  %i.bb = sub i64 %i.az, %i.ba
  %.not.i.i.i29.us.us = icmp eq i64 %i.q, %i.bb
  br i1 %.not.i.i.i29.us.us, label %.noexc24.thread, label %.critedge.i.backedge.us.us, !prof !153

.critedge.i.backedge.us.us:                       ; preds = %.noexc23.us.us
  %i.bc = add nsw i32 %.sroa.041.082.us.us, -1
  %i.bd = and i32 %i.bc, %.sroa.041.082.us.us     ; 2 uses
  %.not.us.us = icmp eq i32 %i.bd, 0
  br i1 %.not.us.us, label %.critedge.i._crit_edge.split.us.us, label %.noexc23.us.us, !llvm.loop !150

.noexc22:                                         ; preds = %.noexc20, %.noexc25
end_hunk_2
begin_hunk_3_@_ZN5folly17FunctionScheduler18resetFunctionTimerENS_5RangeIPKcEE:bb.a
  %i.n = icmp samesign eq i64 %i.j, 0
  br i1 %i.n, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit

_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit: ; preds = %bb.d
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.h, ptr %1, i64 %i.j)
  %i.o = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.o, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread, label %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56

_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread: ; preds = %bb.d, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.q = load i8, ptr %i.p, align 1, !tbaa !41, !range !43, !noundef !44
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.t = load i8, ptr %i.s, align 16, !tbaa !187, !range !43, !noundef !44
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.x = load i64, ptr %i.w, align 8, !tbaa !104
  %i.y = mul nsw i64 %i.x, 1000
  %i.z = add nsw i64 %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i64 %i.z, ptr %i.aa, align 16, !tbaa !50
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56: ; preds = %bb.c, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.ae = icmp ult i64 %i.ad, 256
  br i1 %i.ae, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 0, ptr %i.b, align 8, !tbaa !50
  invoke void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.ah, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %.noexc23 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit39

.noexc23:                                         ; preds = %bb.g
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !50  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = lshr i64 %i.ai, 56
  %i.ak = or i64 %i.aj, 128                       ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = trunc nuw i64 %i.ak to i8
  %i.ao = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aq = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.ar = and i64 %i.aq, 255                      ; 3 uses
  %i.as = shl nuw i64 1, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !11 ; 2 uses
  %i.av = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.aw = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.aw
  br i1 %.fr, label %.noexc25.us, label %.noexc25, !llvm.loop !150

.noexc25.us:                                      ; preds = %.noexc23, %.noexc28.us
  %.0.i105.us = phi i64 [ %i.bg, %.noexc28.us ], [ %i.ai, %.noexc23 ] ; 2 uses
  %.022.i104.us = phi i64 [ %i.bf, %.noexc28.us ], [ %i.as, %.noexc23 ]
  %i.ax = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i105.us, i64 range(i64 0, 256) %i.ar)
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.ax ; 3 uses
  %i.az = load <16 x i8>, ptr %i.ay, align 16     ; 2 uses
  %i.ba = icmp eq <16 x i8> %i.az, %i.ap
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = and i16 %i.bb, 4095                     ; 2 uses
  %.not9297.us = icmp eq i16 %i.bc, 0
  %i.bd = extractelement <16 x i8> %i.az, i64 15
  br i1 %.not9297.us, label %.critedge.i._crit_edge.split.us.us, label %.noexc26.lr.ph.us

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.noexc25.us
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc28.us, !prof !118

.noexc28.us:                                      ; preds = %.critedge.i._crit_edge.split.us.us
  %i.bf = add i64 %.022.i104.us, -1               ; 2 uses
  %i.bg = add i64 %i.am, %.0.i105.us
  %.not.i.us = icmp eq i64 %i.bf, 0
  br i1 %.not.i.us, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc25.us, !llvm.loop !151

.noexc26.lr.ph.us:                                ; preds = %.noexc25.us
  %i.bh = zext nneg i16 %i.bc to i32
  %i.bi = icmp ne ptr %i.ay, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %.noexc26.us.us

.noexc26.us.us:                                   ; preds = %.critedge.i.backedge.us.us, %.noexc26.lr.ph.us
  %.sroa.051.098.us.us = phi i32 [ %i.bh, %.noexc26.lr.ph.us ], [ %i.bu, %.critedge.i.backedge.us.us ] ; 3 uses
  %i.bk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.051.098.us.us, i1 true)
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7  ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.bo ; 2 uses
  %.sroa.0.0.copyload.i.i.us.us = load ptr, ptr %i.bp, align 8, !tbaa !152
  %.sroa.4.0..sroa_idx.i.i.us.us = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.4.0.copyload.i.i.us.us = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.us.us, align 8, !tbaa !152
  %i.bq = ptrtoint ptr %.sroa.4.0.copyload.i.i.us.us to i64
  %i.br = ptrtoint ptr %.sroa.0.0.copyload.i.i.us.us to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.not.i.i.i31.us.us = icmp eq i64 %i.ah, %i.bs
  br i1 %.not.i.i.i31.us.us, label %.noexc27.thread, label %.critedge.i.backedge.us.us, !prof !153

.critedge.i.backedge.us.us:                       ; preds = %.noexc26.us.us
  %i.bt = add nsw i32 %.sroa.051.098.us.us, -1
  %i.bu = and i32 %i.bt, %.sroa.051.098.us.us     ; 2 uses
  %.not92.us.us = icmp eq i32 %i.bu, 0
  br i1 %.not92.us.us, label %.critedge.i._crit_edge.split.us.us, label %.noexc26.us.us, !llvm.loop !150

.noexc25:                                         ; preds = %.noexc23, %.noexc28
  %.0.i105 = phi i64 [ %i.ct, %.noexc28 ], [ %i.ai, %.noexc23 ] ; 2 uses
  %.022.i104 = phi i64 [ %i.cs, %.noexc28 ], [ %i.as, %.noexc23 ]
  %i.bv = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i105, i64 range(i64 0, 256) %i.ar)
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.bv ; 3 uses
  %i.bx = load <16 x i8>, ptr %i.bw, align 16     ; 2 uses
  %i.by = icmp eq <16 x i8> %i.bx, %i.ap
  %i.bz = bitcast <16 x i1> %i.by to i16
  %i.ca = and i16 %i.bz, 4095                     ; 2 uses
  %.not9297 = icmp eq i16 %i.ca, 0
  %i.cb = extractelement <16 x i8> %i.bx, i64 15
  br i1 %.not9297, label %.critedge.i._crit_edge.split, label %.noexc26.lr.ph

.noexc26.lr.ph:                                   ; preds = %.noexc25
  %i.cc = zext nneg i16 %i.ca to i32
  %i.cd = icmp ne ptr %i.bw, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %.noexc26

.noexc26:                                         ; preds = %.noexc26.lr.ph, %.critedge.i.backedge
  %.sroa.051.098 = phi i32 [ %i.cc, %.noexc26.lr.ph ], [ %i.ch, %.critedge.i.backedge ] ; 3 uses
  %i.cf = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.051.098, i1 true)
  %i.cg = add nsw i32 %.sroa.051.098, -1
  %i.ch = and i32 %i.cg, %.sroa.051.098           ; 2 uses
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !7  ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.cl ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cm, align 8, !tbaa !152 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !152
  %i.cn = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.co = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.cp = sub i64 %i.cn, %i.co
  %.not.i.i.i31 = icmp eq i64 %i.ah, %i.cp
  br i1 %.not.i.i.i31, label %bb.h, label %.critedge.i.backedge, !prof !153

bb.h:                                             ; preds = %.noexc26
  %bcmp.i.i.i = call i32 @bcmp(ptr %1, ptr %.sroa.0.0.copyload.i.i, i64 %i.ah)
  %i.cq = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cq, label %.noexc27.thread, label %.critedge.i.backedge, !prof !154

.critedge.i.backedge:                             ; preds = %bb.h, %.noexc26
  %.not92 = icmp eq i32 %i.ch, 0
  br i1 %.not92, label %.critedge.i._crit_edge.split, label %.noexc26, !llvm.loop !150

.critedge.i._crit_edge.split:                     ; preds = %.critedge.i.backedge, %.noexc25
  %i.cr = icmp eq i8 %i.cb, 0
  br i1 %i.cr, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc28, !prof !118

.noexc28:                                         ; preds = %.critedge.i._crit_edge.split
  %i.cs = add i64 %.022.i104, -1                  ; 2 uses
  %i.ct = add i64 %i.am, %.0.i105
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.noexc25, !llvm.loop !151

.noexc27.thread:                                  ; preds = %bb.h, %.noexc26.us.us
  %i.cu = phi i32 [ %i.bn, %.noexc26.us.us ], [ %i.ck, %bb.h ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cw = load i8, ptr %i.cv, align 8, !range !43
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.i:                                             ; preds = %.noexc27.thread
  %i.cy = zext i32 %i.cu to i64
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !223 ; 2 uses
  %i.dc = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 200
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !104
  %i.df = mul nsw i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dc
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 160
  store i64 %i.dg, ptr %i.dh, align 16, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !223 ; 9 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !56 ; 5 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !52
  %i.do = icmp eq ptr %i.dn, %i.dj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %spec.select.i.i = select i1 %i.do, ptr %i.dm, ptr %i.dp
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i34 = phi ptr [ %spec.select.i.i, %bb.j ], [ %i.di, %bb.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !52 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !54 ; 3 uses
  %i.du = icmp eq ptr %i.dr, null                 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, null
  %or.cond.i.i.i = or i1 %i.du, %i.dv
  br i1 %or.cond.i.i.i, label %bb.l, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.k
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 16, !tbaa !50
  br label %.preheader.i.i

bb.l:                                             ; preds = %bb.k
  %i.dw = select i1 %i.du, ptr %i.dt, ptr %i.dr   ; 3 uses
  store ptr %i.dw, ptr %.0.i.i34, align 8, !tbaa !55
  %.not38.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not38.i.i.i, label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.dk, ptr %i.dw, align 8, !tbaa !56
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %.sroa.0.0.copyload.i.i.i.i.i = phi i64 [ %3, %.preheader.i.i ], [ %.sroa.0.0.copyload.i.i.i.pre.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %.030.i.i.i.a = phi ptr [ %i.ea, %.preheader.i.i ], [ %i.dt, %.preheader.preheader.i.i ] ; 3 uses
  %.029.i.i.i.a = phi ptr [ %.032..0.i.i.i, %.preheader.i.i ], [ %i.dk, %.preheader.preheader.i.i ]
  %.0.i.i.i35.a = phi ptr [ %i.eb, %.preheader.i.i ], [ %.0.i.i34, %.preheader.preheader.i.i ]
  %.0.i.i.i35 = phi ptr [ %.0..032.i.i.i, %.preheader.i.i ], [ %i.dr, %.preheader.preheader.i.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.030.i.i.i.a, i64 160
  %.sroa.0.0.copyload.i3.i.i.i.i = load i64, ptr %i.dx, align 16, !tbaa !50 ; 2 uses
  %i.dy = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i3.i.i.i.i ; 2 uses
  %.032..0.i.i.i = select i1 %i.dy, ptr %.030.i.i.i.a, ptr %.0.i.i.i35, !unpredictable !44 ; 6 uses
  %.0..032.i.i.i = select i1 %i.dy, ptr %.0.i.i.i35, ptr %.030.i.i.i.a, !unpredictable !44 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !54 ; 2 uses
  store ptr %.032..0.i.i.i, ptr %.0.i.i.i35.a, align 8, !tbaa !55
  %i.eb = getelementptr inbounds nuw i8, ptr %.032..0.i.i.i, i64 8 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !52
  store ptr %i.ec, ptr %i.dz, align 8, !tbaa !54
  store ptr %.029.i.i.i.a, ptr %.032..0.i.i.i, align 8, !tbaa !56
  %.not.i.i.i36 = icmp eq ptr %i.ea, null
  %3 = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i3.i.i.i.i)
  br i1 %.not.i.i.i36, label %bb.n, label %.preheader.i.i, !llvm.loop !57

bb.n:                                             ; preds = %.preheader.i.i
  store ptr %.0..032.i.i.i, ptr %i.eb, align 8, !tbaa !55
  store ptr %.032..0.i.i.i, ptr %.0..032.i.i.i, align 8, !tbaa !56
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i

_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  %i.ed = load ptr, ptr %i.di, align 8, !tbaa !51 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.o, label %.preheader.preheader.i3.i

.preheader.preheader.i3.i:                        ; preds = %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i
  %.phi.trans.insert.i4.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i5.i = load i64, ptr %.phi.trans.insert.i4.i, align 16, !tbaa !50
  br label %.preheader.i3.i

bb.o:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit.i
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !55
  store ptr null, ptr %i.dj, align 8, !tbaa !56
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit

.preheader.i3.i:                                  ; preds = %.preheader.i3.i, %.preheader.preheader.i3.i
  %.sroa.0.0.copyload.i.i.i.i7.i = phi i64 [ %4, %.preheader.i3.i ], [ %.sroa.0.0.copyload.i.i.i.pre.i5.i, %.preheader.preheader.i3.i ] ; 2 uses
  %.030.i.i5.i = phi ptr [ %i.ei, %.preheader.i3.i ], [ %i.ed, %.preheader.preheader.i3.i ] ; 3 uses
  %.029.i.i6.i = phi ptr [ %.032..0.i.i10.i, %.preheader.i3.i ], [ null, %.preheader.preheader.i3.i ]
  %.0.i.i7.i = phi ptr [ %i.ej, %.preheader.i3.i ], [ %i.di, %.preheader.preheader.i3.i ]
  %.0.i.i11.i = phi ptr [ %.0..032.i.i11.i, %.preheader.i3.i ], [ %i.dj, %.preheader.preheader.i3.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.030.i.i5.i, i64 160
  %.sroa.0.0.copyload.i3.i.i.i9.i = load i64, ptr %i.ef, align 16, !tbaa !50 ; 2 uses
  %i.eg = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i7.i, %.sroa.0.0.copyload.i3.i.i.i9.i ; 2 uses
  %.032..0.i.i10.i = select i1 %i.eg, ptr %.030.i.i5.i, ptr %.0.i.i11.i, !unpredictable !44 ; 6 uses
  %.0..032.i.i11.i = select i1 %i.eg, ptr %.0.i.i11.i, ptr %.030.i.i5.i, !unpredictable !44 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.032..0.i.i10.i, i64 16 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !54 ; 2 uses
  store ptr %.032..0.i.i10.i, ptr %.0.i.i7.i, align 8, !tbaa !55
  %i.ej = getelementptr inbounds nuw i8, ptr %.032..0.i.i10.i, i64 8 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !52
  store ptr %i.ek, ptr %i.eh, align 8, !tbaa !54
  store ptr %.029.i.i6.i, ptr %.032..0.i.i10.i, align 8, !tbaa !56
  %.not.i.i12.i = icmp eq ptr %i.ei, null
  %4 = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i7.i, i64 %.sroa.0.0.copyload.i3.i.i.i9.i)
  br i1 %.not.i.i12.i, label %bb.p, label %.preheader.i3.i, !llvm.loop !57

bb.p:                                             ; preds = %.preheader.i3.i
  store ptr %.0..032.i.i11.i, ptr %i.ej, align 8, !tbaa !55
  store ptr %.032..0.i.i10.i, ptr %.0..032.i.i11.i, align 8, !tbaa !56
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit

_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit: ; preds = %bb.p, %bb.o
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.el) #34
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit39:          ; preds = %bb.g
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 0 uses
  resume { ptr, i32 } %i.em

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.critedge.i._crit_edge.split, %.noexc28, %.noexc28.us, %.critedge.i._crit_edge.split.us.us, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56, %bb.e, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread, %bb.f, %.noexc27.thread, %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit
  %.1 = phi i1 [ true, %bb.f ], [ false, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread ], [ false, %bb.e ], [ true, %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE6updateEPS2_.exit ], [ true, %.noexc27.thread ], [ false, %_ZN5follyeqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEEEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKSC_RKSD_.exit.thread56 ], [ false, %.noexc28.us ], [ false, %.critedge.i._crit_edge.split.us.us ], [ false, %.noexc28 ], [ false, %.critedge.i._crit_edge.split ]
  %i.eo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #34 ; 0 uses
  ret i1 %.1
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly17FunctionScheduler5startEv(ptr noundef nonnull align 8 dereferenceable(178) %0) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.35", align 8 ; 6 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %4 = alloca %class.anon.33, align 8             ; 5 uses
  %5 = alloca %"class.std::thread", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #36
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !42, !range !43, !noundef !44
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.f = load ptr, ptr @_ZZN5folly17FunctionScheduler5startEvE8vlocal__, align 8, !tbaa !228 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly17FunctionScheduler5startEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.19, i32 noundef 1)
          to label %bb.f unwind label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.f, align 4, !tbaa !7
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %.critedge20

bb.f:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.g, label %.critedge20

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.19, i32 noundef 403)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.i unwind label %bb.p       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.35, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49
  %i.o = lshr i64 %i.n, 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.o)
          to label %_ZNSolsEm.exit unwind label %bb.p

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.36, i64 noundef 11)
          to label %.critedge unwind label %bb.p  ; 0 uses

.critedge:                                        ; preds = %_ZNSolsEm.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %.critedge20

.critedge20:                                      ; preds = %bb.e, %bb.f, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.r = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  store i64 %i.r, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %3, ptr %4, align 8, !tbaa !232
  %.val = load ptr, ptr %i.s, align 8, !tbaa !51
  invoke fastcc void @"_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5visitIZNS1_5startEvE3$_0EEvRKT_PNS_17IntrusiveHeapNodeIvEE"(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %.val)
          to label %"_ZNK5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5visitIZNS1_5startEvE3$_0EEvRKT_.exit" unwind label %bb.r

"_ZNK5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5visitIZNS1_5startEvE3$_0EEvRKT_.exit": ; preds = %.critedge20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 0, ptr %5, align 8, !tbaa !234
  %i.t = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %.noexc unwind label %bb.s     ; 3 uses

.noexc:                                           ; preds = %"_ZNK5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5visitIZNS1_5startEvE3$_0EEvRKT_.exit"
  %i.u = ptrtoint ptr %0 to i64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly17FunctionScheduler5startEvE3$_1EEEEEE", i64 16), ptr %i.t, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !235
  store ptr %i.t, ptr %1, align 8, !tbaa !237
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %1, align 8, !tbaa !237    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.l, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.j
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #34, !call_target !239, !inline_history !670
  br label %bb.l

bb.k:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !237   ; 3 uses
  %.not.i5.i = icmp eq ptr %i.ab, null
  br i1 %.not.i5.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i: ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #34, !call_target !239, !inline_history !670
  br label %.body

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !50
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZSt9terminatev() #35
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.l
  %i.af = load i64, ptr %5, align 8, !tbaa !50
  store i64 %i.af, ptr %0, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  store i8 1, ptr %i.c, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.n:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit27

bb.o:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #34
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.ah, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit27

bb.r:                                             ; preds = %.critedge20
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.t

bb.s:                                             ; preds = %"_ZNK5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5visitIZNS1_5startEvE3$_0EEvRKT_.exit"
  %i.ak = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@"_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5visitIZNS1_5startEvE3$_0EEvRKT_PNS_17IntrusiveHeapNodeIvEE":bb.a
  resume { ptr, i32 } %i.al

"_ZZN5folly17FunctionScheduler5startEvENK3$_0clEPNS0_10RepeatFuncE.exit": ; preds = %bb.b, %bb.c, %.critedge.i
  %i.am = getelementptr inbounds nuw i8, ptr %.07, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52
  call fastcc void @"_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5visitIZNS1_5startEvE3$_0EEvRKT_PNS_17IntrusiveHeapNodeIvEE"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !54 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !682

._crit_edge:                                      ; preds = %"_ZZN5folly17FunctionScheduler5startEvENK3$_0clEPNS0_10RepeatFuncE.exit", %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly17FunctionScheduler5startEvE3$_1EEEEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #27 align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly17FunctionScheduler5startEvE3$_1EEEEE6_M_runEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !683
  tail call void @_ZN5folly17FunctionScheduler3runEv(ptr noundef nonnull align 8 dereferenceable(178) %.val)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler3runEv(ptr noundef nonnull align 8 dereferenceable(178) %0) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"class.std::unique_lock", align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #36
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !203
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = invoke noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr %i.e, ptr %i.h)
          to label %.preheader unwind label %.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !42, !range !43, !noundef !44
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %.backedge unwind label %.loopexit

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.r = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34 ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 16, !tbaa !50 ; 2 uses
  %.not = icmp sgt i64 %.sroa.0.0.copyload.i, %i.r
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5folly17FunctionScheduler14runOneFunctionERSt11unique_lockISt5mutexENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 8 dereferenceable(9) %2, i64 %i.r)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.n) #34
  br label %.backedge

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.v = sub nsw i64 %.sroa.0.0.copyload.i, %i.r
  %i.w = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.x = add nsw i64 %i.w, %i.v                   ; 2 uses
  %i.y = sdiv i64 %i.x, 1000000000                ; 2 uses
  %.neg.i.i.i.i.i = mul nsw i64 %i.y, -1000000000
  %i.z = add i64 %.neg.i.i.i.i.i, %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store i64 %i.y, ptr %1, align 8, !tbaa !685
  store i64 %i.z, ptr %i.o, align 8, !tbaa !687
  %i.aa = load ptr, ptr %2, align 8, !tbaa !222
  %i.ab = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEEESt9cv_statusRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EE.exit unwind label %bb.h ; 0 uses

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEEESt9cv_statusRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.i
  %i.ac = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEEESt9cv_statusRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EE.exit, %bb.d
  %i.ad = load i8, ptr %i.j, align 8, !tbaa !42, !range !43, !noundef !44
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.c, label %._crit_edge, !llvm.loop !688

._crit_edge:                                      ; preds = %.backedge
  %.pre = load i8, ptr %i.b, align 8, !tbaa !203, !range !43
  %i.af = trunc nuw i8 %.pre to i1
  br i1 %i.af, label %._crit_edge.thread, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.ag = load ptr, ptr %2, align 8, !tbaa !222   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #34 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %._crit_edge, %._crit_edge.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %.pn7 = phi { ptr, i32 } [ %i.u, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ai = load i8, ptr %i.b, align 8, !tbaa !203, !range !43, !noundef !44
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit10

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %2, align 8, !tbaa !222   ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i9, label %_ZNSt11unique_lockISt5mutexED2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #34 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit10

_ZNSt11unique_lockISt5mutexED2Ev.exit10:          ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn7
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler14runOneFunctionERSt11unique_lockISt5mutexENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %1, i64 %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %5 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %6 = alloca %"class.folly::basic_fbstring", align 8 ; 9 uses
  %7 = alloca %"class.folly::Range", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 29 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 3 uses
  %i.h = icmp eq ptr %i.e, null                   ; 2 uses
  %i.i = icmp eq ptr %i.g, null
  %or.cond.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %bb.c, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !tbaa !50
  br label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.j = select i1 %i.h, ptr %i.g, ptr %i.e       ; 3 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !55
  %.not38.i.i = icmp eq ptr %i.j, null
  br i1 %.not38.i.i, label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEES9_S9_PS9_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.j, align 8, !tbaa !56
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEES9_S9_PS9_.exit.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.sroa.0.0.copyload.i.i.i.i = phi i64 [ %8, %.preheader.i ], [ %.sroa.0.0.copyload.i.i.i.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.030.i.i.a = phi ptr [ %i.n, %.preheader.i ], [ %i.g, %.preheader.preheader.i ] ; 3 uses
  %.029.i.i.a = phi ptr [ %.032..0.i.i, %.preheader.i ], [ null, %.preheader.preheader.i ]
  %.0.i.i.a = phi ptr [ %i.o, %.preheader.i ], [ %i.a, %.preheader.preheader.i ]
  %.0.i.i = phi ptr [ %.0..032.i.i, %.preheader.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.030.i.i.a, i64 160
  %.sroa.0.0.copyload.i3.i.i.i = load i64, ptr %i.k, align 16, !tbaa !50 ; 2 uses
  %i.l = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i3.i.i.i ; 2 uses
  %.032..0.i.i = select i1 %i.l, ptr %.030.i.i.a, ptr %.0.i.i, !unpredictable !44 ; 6 uses
  %.0..032.i.i = select i1 %i.l, ptr %.0.i.i, ptr %.030.i.i.a, !unpredictable !44 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 2 uses
  store ptr %.032..0.i.i, ptr %.0.i.i.a, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  store ptr %i.p, ptr %i.m, align 8, !tbaa !54
  store ptr %.029.i.i.a, ptr %.032..0.i.i, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.n, null
  %8 = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i3.i.i.i)
  br i1 %.not.i.i, label %bb.e, label %.preheader.i, !llvm.loop !57

bb.e:                                             ; preds = %.preheader.i
  store ptr %.0..032.i.i, ptr %i.o, align 8, !tbaa !55
  store ptr %.032..0.i.i, ptr %.0..032.i.i, align 8, !tbaa !56
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEES9_S9_PS9_.exit.i

_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEES9_S9_PS9_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !tbaa !56
  br label %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit

_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit: ; preds = %bb.a, %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEES9_S9_PS9_.exit.i
  store ptr %i.b, ptr %3, align 8, !tbaa !159
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store ptr %i.b, ptr %i.q, align 8, !tbaa !155
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load i8, ptr %i.r, align 8, !tbaa !26, !range !43, !noundef !44
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.v, align 16, !tbaa !50 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !140
  %i.y = select i1 %i.t, i64 %.sroa.01.0.copyload.i, i64 %2
  %i.z = invoke i64 %i.x(i64 %.sroa.01.0.copyload.i, i64 %i.y, ptr noundef nonnull align 16 dereferenceable(48) %i.u)
          to label %_ZN5folly17FunctionScheduler10RepeatFunc20setNextRunTimeSteadyEv.exit unwind label %bb.f, !inline_history !689

bb.f:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit, %.invoke
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZN5folly17FunctionScheduler10RepeatFunc20setNextRunTimeSteadyEv.exit: ; preds = %_ZN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit
  store i64 %i.z, ptr %i.v, align 16, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !203, !range !43, !noundef !44
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %.invoke

bb.g:                                             ; preds = %_ZN5folly17FunctionScheduler10RepeatFunc20setNextRunTimeSteadyEv.exit
  %i.ae = load ptr, ptr %1, align 8, !tbaa !222   ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #34 ; 0 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !203
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit

_ZNSt11unique_lockISt5mutexE6unlockEv.exit:       ; preds = %bb.h, %bb.g
  %i.ag = load ptr, ptr @_ZZN5folly17FunctionScheduler14runOneFunctionERSt11unique_lockISt5mutexENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEE8vlocal__, align 8, !tbaa !228 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  %i.ai = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly17FunctionScheduler14runOneFunctionERSt11unique_lockISt5mutexENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.19, i32 noundef 5)
          to label %bb.k unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ak = icmp sgt i32 %i.aj, 4
  br i1 %i.ak, label %bb.l, label %.critedge34

bb.k:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.l, label %.critedge34

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.19, i32 noundef 488)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.n unwind label %bb.q       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.43, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.aq = load i64, ptr %i.ap, align 16, !tbaa !23
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %.critedge unwind label %bb.q  ; 0 uses

.critedge:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %.critedge34

.critedge34:                                      ; preds = %bb.j, %bb.k, %.critedge
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !184
  invoke void %i.au(ptr noundef nonnull align 16 dereferenceable(48) %i.as)
          to label %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit unwind label %bb.s, !inline_history !690

bb.o:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.t

bb.p:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.r

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.n, %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.q ], [ %i.aw, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.t

bb.s:                                             ; preds = %.critedge34
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.o
  %.pn26 = phi { ptr, i32 } [ %i.ay, %bb.s ], [ %.pn, %bb.r ], [ %i.av, %bb.o ] ; 3 uses
  %.118 = extractvalue { ptr, i32 } %.pn26, 1
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.ba = icmp eq i32 %.118, %i.az
  br i1 %i.ba, label %bb.u, label %bb.av

bb.u:                                             ; preds = %bb.t
  %.1 = extractvalue { ptr, i32 } %.pn26, 0
  %i.bb = call ptr @__cxa_begin_catch(ptr %.1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.19, i32 noundef 491, i32 noundef 2)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.w unwind label %bb.ae      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.44, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.bh = load i64, ptr %i.bg, align 16, !tbaa !23
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.bf, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.45, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  invoke void @_ZN5folly12exceptionStrERKSt9exception(ptr dead_on_unwind nonnull writable sret(%"class.folly::basic_fbstring") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.y unwind label %bb.ag      ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !25
  %i.bn = icmp ult i8 %i.bm, 64
  br i1 %i.bn, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #34
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  invoke void @__cxa_end_catch()
          to label %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit unwind label %bb.ak

_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit: ; preds = %.critedge34, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit
  %i.bo = load ptr, ptr %1, align 8, !tbaa !222   ; 2 uses
  %.not.i45 = icmp eq ptr %i.bo, null
  br i1 %.not.i45, label %.invoke, label %bb.aa

bb.aa:                                            ; preds = %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit
  %i.bp = load i8, ptr %i.ab, align 8, !tbaa !203, !range !43, !noundef !44
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #34 ; 2 uses
  %.not.i.i46 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i46, label %bb.ac, label %.invoke

.invoke:                                          ; preds = %bb.ab, %bb.aa, %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit, %_ZN5folly17FunctionScheduler10RepeatFunc20setNextRunTimeSteadyEv.exit
  %i.bs = phi i32 [ 35, %bb.aa ], [ 1, %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit ], [ 1, %_ZN5folly17FunctionScheduler10RepeatFunc20setNextRunTimeSteadyEv.exit ], [ %i.br, %bb.ab ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bs) #36
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.ab, align 8, !tbaa !203
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !155 ; 4 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.thread, label %bb.al

.thread:                                          ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 0, ptr %i.bu, align 1, !tbaa !41
  br label %bb.as

bb.ad:                                            ; preds = %bb.u
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ae:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40, %bb.w, %bb.v
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit50

bb.ag:                                            ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !25
  %i.cb = icmp ult i8 %i.ca, 64
  br i1 %i.cb, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit50, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #34
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit50

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit50: ; preds = %bb.ah, %bb.ag, %bb.af
  %.pn28 = phi { ptr, i32 } [ %i.bx, %bb.af ], [ %i.by, %bb.ag ], [ %i.by, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit50, %bb.ae
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit50 ], [ %i.bw, %bb.ae ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.ai ], [ %i.bv, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.aw

bb.ak:                                            ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.al:                                            ; preds = %bb.ac
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 240
  %i.ce = load i8, ptr %i.cd, align 16, !tbaa !187, !range !43, !noundef !44
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 168
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !45 ; 2 uses
  store ptr %i.ci, ptr %7, align 8, !tbaa !172
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 176
  %i.cl = load i64, ptr %i.ck, align 16, !tbaa !23
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cl
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !174
  %i.cn = invoke noundef i64 @_ZN5folly3f146detail16F14VectorMapImplINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S9_EESt17integral_constantIbLb1EEE18eraseUnderlyingKeyIS6_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %bb.ar unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.av

bb.ao:                                            ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ap, label %.preheader.preheader.i52

.preheader.preheader.i52:                         ; preds = %bb.ao
  %.phi.trans.insert.i53 = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %.sroa.0.0.copyload.i.i.i.pre.i54 = load i64, ptr %.phi.trans.insert.i53, align 16, !tbaa !50
  br label %.preheader.i52

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.b, ptr %i.a, align 8, !tbaa !55
  store ptr null, ptr %i.b, align 16, !tbaa !56
  br label %.thread83

.preheader.i52:                                   ; preds = %.preheader.i52, %.preheader.preheader.i52
  %.sroa.0.0.copyload.i.i.i.i56 = phi i64 [ %9, %.preheader.i52 ], [ %.sroa.0.0.copyload.i.i.i.pre.i54, %.preheader.preheader.i52 ] ; 2 uses
  %.030.i.i54 = phi ptr [ %i.cu, %.preheader.i52 ], [ %i.cp, %.preheader.preheader.i52 ] ; 3 uses
  %.029.i.i55 = phi ptr [ %.032..0.i.i59, %.preheader.i52 ], [ null, %.preheader.preheader.i52 ]
  %.0.i.i56 = phi ptr [ %i.cv, %.preheader.i52 ], [ %i.a, %.preheader.preheader.i52 ]
  %.0.i.i60 = phi ptr [ %.0..032.i.i60, %.preheader.i52 ], [ %i.b, %.preheader.preheader.i52 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.030.i.i54, i64 160
  %.sroa.0.0.copyload.i3.i.i.i58 = load i64, ptr %i.cr, align 16, !tbaa !50 ; 2 uses
  %i.cs = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i56, %.sroa.0.0.copyload.i3.i.i.i58 ; 2 uses
  %.032..0.i.i59 = select i1 %i.cs, ptr %.030.i.i54, ptr %.0.i.i60, !unpredictable !44 ; 6 uses
  %.0..032.i.i60 = select i1 %i.cs, ptr %.0.i.i60, ptr %.030.i.i54, !unpredictable !44 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.032..0.i.i59, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !54 ; 2 uses
  store ptr %.032..0.i.i59, ptr %.0.i.i56, align 8, !tbaa !55
  %i.cv = getelementptr inbounds nuw i8, ptr %.032..0.i.i59, i64 8 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !52
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !54
  store ptr %.029.i.i55, ptr %.032..0.i.i59, align 8, !tbaa !56
  %.not.i.i61 = icmp eq ptr %i.cu, null
  %9 = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i56, i64 %.sroa.0.0.copyload.i3.i.i.i58)
  br i1 %.not.i.i61, label %bb.aq, label %.preheader.i52, !llvm.loop !57

bb.aq:                                            ; preds = %.preheader.i52
  store ptr %.0..032.i.i60, ptr %i.cv, align 8, !tbaa !55
  store ptr %.032..0.i.i59, ptr %.0..032.i.i60, align 8, !tbaa !56
  br label %.thread83

.thread83:                                        ; preds = %bb.aq, %bb.ap
  store ptr null, ptr %i.q, align 8, !tbaa !155
  br label %_ZNSt10unique_ptrIN5folly17FunctionScheduler10RepeatFuncESt14default_deleteIS2_EED2Ev.exit

bb.ar:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  store ptr null, ptr %i.q, align 8, !tbaa !155
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !45 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.as
  %i.db = load i64, ptr %i.cz, align 16, !tbaa !25
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !45 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !25
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.dm = call noundef i64 %i.dk(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.dl, ptr noundef null) #34, !inline_history !160 ; 0 uses
  br label %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i

_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i: ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !62 ; 2 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i4.i.i.i, label %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dq = call noundef i64 %i.do(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.dp, ptr noundef null) #34, !inline_history !161 ; 0 uses
  br label %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i: ; preds = %bb.au, %_ZN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 256) #37
  br label %_ZNSt10unique_ptrIN5folly17FunctionScheduler10RepeatFuncESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5folly17FunctionScheduler10RepeatFuncESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread83, %_ZNKSt14default_deleteIN5folly17FunctionScheduler10RepeatFuncEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.av:                                            ; preds = %bb.ak, %bb.aj, %bb.an, %bb.t, %bb.f
  %.merged = phi { ptr, i32 } [ %i.co, %bb.an ], [ %i.aa, %bb.f ], [ %.pn26, %bb.t ], [ %i.cc, %bb.ak ], [ %.pn28.pn.pn, %bb.aj ]
  call void @_ZNSt10unique_ptrIN5folly17FunctionScheduler10RepeatFuncESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.merged

bb.aw:                                            ; preds = %bb.aj
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare i32 @pthread_cond_clockwait(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #28

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #29 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.c = load i8, ptr %i.b, align 1, !tbaa !25    ; 3 uses
  %i.d = icmp ult i8 %i.c, 64
  %i.e = select i1 %i.d, ptr %1, ptr %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = zext i8 %i.c to i64
  %i.i = sub nsw i64 23, %i.h
  %i.j = icmp ult i8 %i.c, 24
  %i.k = select i1 %i.j, i64 %i.i, i64 %i.g
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.e, i64 noundef %i.k) ; 0 uses
  ret ptr %0
}

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #13

declare void @_ZN5folly12exceptionStrERKSt9exception(ptr dead_on_unwind writable sret(%"class.folly::basic_fbstring") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #34
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_SA_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11
  %.pre105 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 7 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11   ; 7 uses
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %4, align 8 ; 3 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.n = ptrtoint ptr %.sroa.43.0.copyload.i.i to i64
  %i.o = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq ptr %.sroa.43.0.copyload.i.i, %.sroa.02.0.copyload.i.i
  %.fr = freeze i1 %i.q
  br i1 %.fr, label %.split.us, label %.split, !llvm.loop !150

.split.us:                                        ; preds = %bb.b, %bb.c
  %.0.i86.us = phi i64 [ %i.aa, %bb.c ], [ %2, %bb.b ] ; 2 uses
  %.022.i85.us = phi i64 [ %i.z, %bb.c ], [ %i.j, %bb.b ]
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i86.us, i64 range(i64 0, 256) %i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.h
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = and i16 %i.v, 4095                       ; 2 uses
  %.not6977.us = icmp eq i16 %i.w, 0
  %i.x = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not6977.us, label %.critedge.i._crit_edge.split.us.us, label %.lr.ph.us

.critedge.i._crit_edge.split.us.us:               ; preds = %.critedge.i.backedge.us.us, %.split.us
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.thread67, label %bb.c, !prof !118

bb.c:                                             ; preds = %.critedge.i._crit_edge.split.us.us
  %i.z = add i64 %.022.i85.us, -1                 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS6_S9_Em:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler13setThreadNameENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr %1, ptr %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #36
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !20, !alias.scope !739
  %i.g = icmp eq ptr %1, null
  %i.h = icmp ne ptr %2, null
  %or.cond.i.i.i = and i1 %i.g, %i.h
  br i1 %or.cond.i.i.i, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #36
          to label %.noexc unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = icmp ugt i64 %i.e, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %i.e, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #36
          to label %.noexc2 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6

.noexc2:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i64 %i.e, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !73

.noexc9.i.i.i:                                    ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc3 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6

.noexc3:                                          ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
          to label %.noexc4 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6 ; 2 uses

.noexc4:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.m, ptr %3, align 8, !tbaa !45, !alias.scope !739
  store i64 %i.e, ptr %i.f, align 8, !tbaa !25, !alias.scope !739
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc4, %bb.c
  %i.n = phi ptr [ %i.m, %.noexc4 ], [ %i.f, %bb.c ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.o, ptr %i.n, align 1, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %1, i64 %i.e, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.e, ptr %i.p, align 8, !tbaa !23, !alias.scope !739
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  store i8 0, ptr %i.q, align 1, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %i.v = load ptr, ptr %3, align 8, !tbaa !45     ; 5 uses
  %i.w = icmp eq ptr %i.v, %i.f                   ; 2 uses
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = load i64, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  switch i64 %i.x, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.z = load i8, ptr %i.v, align 1, !tbaa !25
  store i8 %i.z, ptr %i.s, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.aa = load i64, ptr %i.p, align 8, !tbaa !23  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !23
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.v, ptr %i.r, align 8, !tbaa !45
  %i.af = load <2 x i64>, ptr %i.p, align 8, !tbaa !25
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !25
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !25
  store ptr %i.v, ptr %i.r, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = load <2 x i64>, ptr %i.p, align 8, !tbaa !25
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.s, ptr %3, align 8, !tbaa !45
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %3, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.aj = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.s, %bb.l ], [ %i.f, %bb.m ]
  store i64 0, ptr %i.p, align 8, !tbaa !23
  store i8 0, ptr %i.aj, align 1, !tbaa !25
  %i.ak = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.am = load i64, ptr %i.f, align 8, !tbaa !25
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #37
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit6:           ; preds = %.noexc.i.i, %.noexc.i.i.i, %.noexc9.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.aq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #24 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { nounwind memory(none) }
attributes #29 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin nounwind }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { cold noreturn nounwind }
attributes #40 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !16, i64 8}
!12 = !{!"_ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEEE", !13, i64 0, !16, i64 8, !17, i64 16}
!13 = !{!"_ZTSN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEE", !14, i64 0}
!14 = !{!"p1 _ZTSSt4pairIKN5folly5RangeIPKcEEPNS0_17FunctionScheduler10RepeatFuncEE", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIjEE", !15, i64 0}
!17 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEELb0EEE", !18, i64 0}
!18 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !19, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!22 = !{!"p1 omnipotent char", !15, i64 0}
!23 = !{!24, !19, i64 8}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !19, i64 8, !9, i64 16}
!25 = !{!9, !9, i64 0}
!26 = !{!27, !32, i64 176}
!27 = !{!"_ZTSN5folly17FunctionSchedulerE", !28, i64 0, !30, i64 8, !32, i64 48, !33, i64 56, !35, i64 64, !38, i64 88, !39, i64 96, !24, i64 144, !32, i64 176, !32, i64 177}
!28 = !{!"_ZTSSt6thread", !29, i64 0}
!29 = !{!"_ZTSNSt6thread2idE", !19, i64 0}
!30 = !{!"_ZTSSt5mutex", !31, i64 0}
!31 = !{!"_ZTSSt12__mutex_base", !9, i64 0}
!32 = !{!"bool", !9, i64 0}
!33 = !{!"_ZTSN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEEE", !34, i64 0}
!34 = !{!"p1 _ZTSN5folly17IntrusiveHeapNodeIvEE", !15, i64 0}
!35 = !{!"_ZTSN5folly10F14FastMapINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S7_EEEE", !36, i64 0}
!36 = !{!"_ZTSN5folly3f146detail16F14VectorMapImplINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S9_EESt17integral_constantIbLb1EEEE", !37, i64 0}
!37 = !{!"_ZTSN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEEE", !12, i64 0}
!38 = !{!"p1 _ZTSN5folly17FunctionScheduler10RepeatFuncE", !15, i64 0}
!39 = !{!"_ZTSSt18condition_variable", !40, i64 0}
!40 = !{!"_ZTSSt9__condvar", !9, i64 0}
!41 = !{!27, !32, i64 177}
!42 = !{!27, !32, i64 48}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!24, !22, i64 0}
!46 = !{!47, !9, i64 15}
!47 = !{!"_ZTSN5folly3f146detail17F14EmptyTagVectorE", !48, i64 0, !9, i64 15}
!48 = !{!"_ZTSSt5arrayIhLm15EE", !9, i64 0}
!49 = !{!18, !19, i64 0}
!50 = !{!19, !19, i64 0}
!51 = !{!33, !34, i64 0}
!52 = !{!53, !34, i64 8}
!53 = !{!"_ZTSN5folly17IntrusiveHeapNodeIvEE", !34, i64 0, !34, i64 8, !34, i64 16}
!54 = !{!53, !34, i64 16}
!55 = !{!34, !34, i64 0}
!56 = !{!53, !34, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!60, !15, i64 56}
!60 = !{!"_ZTSN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EEE", !9, i64 0, !15, i64 48, !15, i64 56}
!61 = distinct !{null, null, null}
!62 = !{!63, !15, i64 56}
!63 = !{!"_ZTSN5folly8FunctionIFvvEEE", !9, i64 0, !15, i64 48, !15, i64 56}
!64 = distinct !{null, null, null}
!65 = !{!66, !15, i64 48}
!66 = !{!"_ZTSN5folly8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEEE", !9, i64 0, !15, i64 48, !15, i64 56}
!67 = !{!66, !15, i64 56}
!68 = !{!69, !71}
!69 = distinct !{!69, !70, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!70 = distinct !{!70, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!71 = distinct !{!71, !72, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!72 = distinct !{!72, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlA3_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_: argument 0"}
!76 = distinct !{!76, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlA3_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_"}
!77 = !{!78, !78, i64 0}
!78 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!79 = distinct !{null, null}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !10, i64 0}
!82 = !{!"branch_weights", i32 4001, i32 4000000}
!83 = !{!84, !84, i64 0}
!84 = !{!"short", !9, i64 0}
!85 = distinct !{!85, !58}
!86 = !{!87, !32, i64 0}
!87 = !{!"_ZTSN5folly17FunctionScheduler19LatencyDistributionE", !32, i64 0, !88, i64 8}
!88 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !19, i64 0}
!89 = !{!90, !19, i64 0}
!90 = !{!"_ZTSSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE", !19, i64 0}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSNSt20poisson_distributionIlE10param_typeE", !93, i64 0, !93, i64 8, !93, i64 16, !93, i64 24, !93, i64 32, !93, i64 40, !93, i64 48, !93, i64 56, !93, i64 64}
!93 = !{!"double", !9, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!96, !93, i64 16}
!96 = !{!"_ZTSSt19normal_distributionIdE", !97, i64 0, !93, i64 16, !32, i64 24}
!97 = !{!"_ZTSNSt19normal_distributionIdE10param_typeE", !93, i64 0, !93, i64 8}
!98 = !{!96, !32, i64 24}
!99 = !{!100, !102}
!100 = distinct !{!100, !101, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!101 = distinct !{!101, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!102 = distinct !{!102, !103, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!103 = distinct !{!103, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
!104 = !{!88, !19, i64 0}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlA18_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_: argument 0"}
!107 = distinct !{!107, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlA18_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_"}
!108 = !{!92, !93, i64 8}
!109 = !{!92, !93, i64 16}
!110 = !{!92, !93, i64 24}
!111 = !{!92, !93, i64 32}
!112 = !{!92, !93, i64 40}
!113 = !{!92, !93, i64 48}
!114 = !{!92, !93, i64 56}
!115 = !{!92, !93, i64 64}
!116 = !{i64 0, i64 8, !117, i64 8, i64 8, !50, i64 16, i64 8, !50}
!117 = !{!15, !15, i64 0}
!118 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!119 = distinct !{!119, !58}
!120 = distinct !{!120, !58}
!121 = distinct !{!121, !58}
!122 = distinct !{!122, !58}
!123 = !{!97, !93, i64 8}
!124 = !{!97, !93, i64 0}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!127 = distinct !{!127, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!128 = distinct !{!128, !129, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!129 = distinct !{!129, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
!130 = !{!131, !133}
!131 = distinct !{!131, !132, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!132 = distinct !{!132, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!133 = distinct !{!133, !134, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!134 = distinct !{!134, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
!135 = !{!136, !19, i64 8}
!136 = !{!"_ZTSNSt24uniform_int_distributionIlE10param_typeE", !19, i64 0, !19, i64 8}
!137 = !{!136, !19, i64 0}
!138 = distinct !{!138, !58}
!139 = distinct !{!139, !58}
!140 = !{!60, !15, i64 48}
!141 = !{!142, !144}
end_hunk_5
