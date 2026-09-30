Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/main?download=true
inline.NumInlined: 4107
inline.NumDeleted: 1182
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7doctest12_GLOBAL__N_115ConsoleReporter19test_case_exceptionERKNS_17TestCaseExceptionE:bb.a
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %.lr.ph.preheader, %bb.r, %bb.s, %_ZN7doctestlsERSoRKNS_6StringE.exit50.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !365, !nonnull !39, !align !304 ; 3 uses
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.325, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %.loopexit
  %i.ec = load i8, ptr @_ZN7doctest6detail11g_no_colorsE, align 1, !tbaa !29, !range !38, !noundef !39
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %_ZN7doctest5ColorlsERSoNS0_4EnumE.exit58, label %bb.x

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.ee = tail call i32 @isatty(i32 noundef 1) #49
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eg = load ptr, ptr @_ZN7doctest6detail4g_csE, align 8, !tbaa !76
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !81, !range !38, !noundef !39
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %_ZN7doctest5ColorlsERSoNS0_4EnumE.exit58, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.221, i64 noundef 1)
          to label %.noexc56 unwind label %bb.aa  ; 0 uses

.noexc56:                                         ; preds = %bb.z
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.220, i64 noundef 3)
          to label %_ZN7doctest5ColorlsERSoNS0_4EnumE.exit58 unwind label %bb.aa ; 0 uses

_ZN7doctest5ColorlsERSoNS0_4EnumE.exit58:         ; preds = %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %.noexc56, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.em = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #49 ; 0 uses
  ret void

bb.aa:                                            ; preds = %.noexc56, %bb.z, %.loopexit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit63, %.loopexit.split-lp, %bb.aa, %bb.u, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.t ], [ %i.en, %bb.aa ], [ %i.dg, %bb.u ], [ %lpad.loopexit, %.loopexit63 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eo = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #49 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7doctest12_GLOBAL__N_115ConsoleReporter13subcase_startERKNS_16SubcaseSignatureE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.f = load i8, ptr %i.e, align 1, !tbaa !53
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(36) %1, i64 24, i1 false)
  br label %_ZN7doctest16SubcaseSignatureC2ERKS0_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 6 uses
  %i.j = icmp ult i32 %i.i, 24
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !53
  %i.m = trunc nuw nsw i32 %i.i to i8
  %i.n = sub nuw nsw i8 23, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 %i.n, ptr %i.o, align 1, !tbaa !53
  br label %_ZN7doctest6String8allocateEj.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 -128, ptr %i.p, align 1, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.i, ptr %i.q, align 8, !tbaa !53
  %i.r = add i32 %i.i, 1                          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.r, ptr %i.s, align 4, !tbaa !53
  %i.t = zext i32 %i.r to i64
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #51 ; 3 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !53
  %i.v = zext i32 %i.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  store i8 0, ptr %i.w, align 1, !tbaa !53
  br label %_ZN7doctest6String8allocateEj.exit.i.i.i.i

_ZN7doctest6String8allocateEj.exit.i.i.i.i:       ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.b, %bb.e ], [ %i.u, %bb.f ]
  %i.x = load ptr, ptr %1, align 8, !tbaa !53
  %i.y = load i32, ptr %i.h, align 8, !tbaa !53
  %i.z = zext i32 %i.y to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i.i.i, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %_ZN7doctest16SubcaseSignatureC2ERKS0_.exit.i

_ZN7doctest16SubcaseSignatureC2ERKS0_.exit.i:     ; preds = %_ZN7doctest6String8allocateEj.exit.i.i.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i64 12, i1 false)
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !95
  br label %_ZNSt6vectorIN7doctest16SubcaseSignatureESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt6vectorIN7doctest16SubcaseSignatureESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %_ZNSt6vectorIN7doctest16SubcaseSignatureESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7doctest16SubcaseSignatureESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZN7doctest16SubcaseSignatureC2ERKS0_.exit.i, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !368
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !368
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ai, align 8, !tbaa !366
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN7doctest12_GLOBAL__N_115ConsoleReporter11subcase_endEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) initializes((16, 17)) %0) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !368
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !368
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.d, align 8, !tbaa !366
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7doctest12_GLOBAL__N_115ConsoleReporter10log_assertERKNS_10AssertDataE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !219, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !364, !nonnull !39, !align !304
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.g = load i8, ptr %i.f, align 4, !tbaa !228, !range !38, !noundef !39
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !367
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 58
  %i.l = load i8, ptr %i.k, align 2, !tbaa !369, !range !38, !noundef !39
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #49 ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #50
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.d
  invoke fastcc void @_ZN7doctest12_GLOBAL__N_115ConsoleReporter12logTestStartEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !217
  %i.t = load ptr, ptr %0, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.q, i32 noundef %i.s, ptr noundef nonnull @.str.457)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.a, align 8, !tbaa !219, !range !38, !noundef !39
  %i.x = trunc nuw i8 %i.w to i1                  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !215  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !365 ; 3 uses
  %.not.i.i8 = trunc i32 %i.z to i1               ; 2 uses
  %2 = select i1 %.not.i.i8, i32 6, i32 2
  %i.ab = select i1 %i.x, i32 %2, i32 19
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctest5ColorlsERSoNS0_4EnumE(ptr noundef nonnull align 8 dereferenceable(8) %.val, i32 noundef %i.ab)
          to label %.noexc.a unwind label %bb.m   ; 0 uses

.noexc.a:                                         ; preds = %bb.g
  %3 = xor i1 %i.x, true
  %brmerge.i = or i1 %3, %.not.i.i8
  %.str.480.mux.i = select i1 %i.x, ptr @.str.50, ptr @.str.480
  br i1 %brmerge.i, label %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc.a
  %i.ad = and i32 %i.z, 2
  %.not3.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not3.i.i.i, label %bb.i, label %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ae = and i32 %i.z, 4
  %.not4.i.i.i = icmp eq i32 %i.ae, 0
  %.str..str.52.i.i.i = select i1 %.not4.i.i.i, ptr @.str, ptr @.str.52
  br label %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit.i

_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit.i: ; preds = %bb.i, %bb.h, %.noexc.a
  %.0.i.i = phi ptr [ %.str.480.mux.i, %.noexc.a ], [ @.str.51, %bb.h ], [ %.str..str.52.i.i.i, %bb.i ] ; 2 uses
  %i.af = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i) #49
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef nonnull %.0.i.i, i64 noundef %i.af)
          to label %.noexc9 unwind label %bb.m    ; 0 uses

.noexc9:                                          ; preds = %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef nonnull @.str.483, i64 noundef 2)
          to label %_ZN7doctest12_GLOBAL__N_115ConsoleReporter34successOrFailColoredStringToStreamEbNS_10assertType4EnumEPKc.exit unwind label %bb.m ; 0 uses

_ZN7doctest12_GLOBAL__N_115ConsoleReporter34successOrFailColoredStringToStreamEbNS_10assertType4EnumEPKc.exit: ; preds = %.noexc9
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !365, !nonnull !39, !align !304
  invoke fastcc void @_ZN7doctest12_GLOBAL__N_129fulltext_log_assert_to_streamERSoRKNS_10AssertDataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(144) %1)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZN7doctest12_GLOBAL__N_115ConsoleReporter34successOrFailColoredStringToStreamEbNS_10assertType4EnumEPKc.exit
  invoke fastcc void @_ZN7doctest12_GLOBAL__N_115ConsoleReporter12log_contextsEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #49 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.k
  ret void

bb.m:                                             ; preds = %.noexc9, %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit.i, %bb.g, %bb.j, %_ZN7doctest12_GLOBAL__N_115ConsoleReporter34successOrFailColoredStringToStreamEbNS_10assertType4EnumEPKc.exit, %bb.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #49 ; 0 uses
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7doctest12_GLOBAL__N_115ConsoleReporter11log_messageERKNS_11MessageDataE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !367
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !369, !range !38, !noundef !39
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #49 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #50
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  invoke fastcc void @_ZN7doctest12_GLOBAL__N_115ConsoleReporter12logTestStartEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !233
  %i.l = load ptr, ptr %0, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull @.str.457)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !365, !nonnull !39, !align !304 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !234
  %2 = and i32 %i.r, 1
  %.not.i = icmp eq i32 %2, 0
  %3 = select i1 %.not.i, i32 2, i32 6
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctest5ColorlsERSoNS0_4EnumE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %3)
          to label %bb.f unwind label %bb.p       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.q, align 4, !tbaa !234  ; 3 uses
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i32 %i.t, 2
  %.not3.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i, label %bb.h, label %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.w = and i32 %i.t, 4
  %.not4.i.i = icmp eq i32 %i.w, 0
  %.str..str.52.i.i = select i1 %.not4.i.i, ptr @.str, ptr @.str.52
  br label %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit

_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ @.str.484, %bb.f ], [ @.str.51, %bb.g ], [ %.str..str.52.i.i, %bb.h ] ; 2 uses
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #49
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %.0.i, i64 noundef %i.x)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.483, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !365, !nonnull !39, !align !304 ; 6 uses
  %i.ab = load i8, ptr @_ZN7doctest6detail11g_no_colorsE, align 1, !tbaa !29, !range !38, !noundef !39
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN7doctest5ColorlsERSoNS0_4EnumE.exit, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.ad = tail call i32 @isatty(i32 noundef 1) #49
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr @_ZN7doctest6detail4g_csE, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !81, !range !38, !noundef !39
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %_ZN7doctest5ColorlsERSoNS0_4EnumE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.221, i64 noundef 1)
          to label %.noexc unwind label %bb.p     ; 0 uses

.noexc:                                           ; preds = %bb.k
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.220, i64 noundef 3)
          to label %_ZN7doctest5ColorlsERSoNS0_4EnumE.exit unwind label %bb.p ; 0 uses

_ZN7doctest5ColorlsERSoNS0_4EnumE.exit:           ; preds = %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.am = load i8, ptr %i.al, align 1, !tbaa !53
  %i.an = load ptr, ptr %1, align 8
  %i.ao = icmp slt i8 %i.am, 0
  %spec.select.i.i.i = select i1 %i.ao, ptr %i.an, ptr %1 ; 3 uses
  %.not.i.i12 = icmp eq ptr %spec.select.i.i.i, null
  br i1 %.not.i.i12, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN7doctest5ColorlsERSoNS0_4EnumE.exit
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.aa, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !74
  %i.av = or i32 %i.au, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.as, i32 noundef %i.av)
          to label %_ZN7doctestlsERSoRKNS_6StringE.exit unwind label %bb.p

bb.m:                                             ; preds = %_ZN7doctest5ColorlsERSoNS0_4EnumE.exit
  %i.aw = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i.i.i) #49
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %spec.select.i.i.i, i64 noundef %i.aw)
          to label %_ZN7doctestlsERSoRKNS_6StringE.exit unwind label %bb.p ; 0 uses

_ZN7doctestlsERSoRKNS_6StringE.exit:              ; preds = %bb.l, %bb.m
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.325, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZN7doctestlsERSoRKNS_6StringE.exit
  invoke fastcc void @_ZN7doctest12_GLOBAL__N_115ConsoleReporter12log_contextsEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.az = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #49 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  ret void

bb.p:                                             ; preds = %_ZN7doctestlsERSoRKNS_6StringE.exit, %bb.m, %bb.l, %.noexc, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN7doctest12_GLOBAL__N_115ConsoleReporter22getSuccessOrFailStringEbNS_10assertType4EnumEPKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %bb.e, %bb.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #49 ; 0 uses
  resume { ptr, i32 } %i.ba
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN7doctest12_GLOBAL__N_115ConsoleReporter17test_case_skippedERKNS_12TestCaseDataE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #24 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7doctest12_GLOBAL__N_115ConsoleReporterD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(112) dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7doctest12_GLOBAL__N_115ConsoleReporterE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 23
  %i.f = load i8, ptr %i.e, align 1, !tbaa !53
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = load ptr, ptr %.05.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #48
  br label %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7doctest16SubcaseSignatureESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !135
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #48
  br label %_ZNSt6vectorIN7doctest16SubcaseSignatureESaIS1_EED2Ev.exit

_ZNSt6vectorIN7doctest16SubcaseSignatureESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7doctest12_GLOBAL__N_115ConsoleReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7doctest12_GLOBAL__N_115ConsoleReporterE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 23
  %i.f = load i8, ptr %i.e, align 1, !tbaa !53
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #48, !inline_history !714
  br label %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7doctest16SubcaseSignatureEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7doctest16SubcaseSignatureES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
end_hunk_0
