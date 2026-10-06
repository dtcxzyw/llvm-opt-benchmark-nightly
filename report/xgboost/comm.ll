Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/comm?download=true
inline.NumInlined: 2764
inline.NumDeleted: 1016
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10collective4CommC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNSt6chrono8durationIlSt5ratioILl1ELl1EEEEiS7_(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 44)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i64 %3, i32 noundef %4, ptr noundef align 8 %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN7xgboost10collective4CommE, i64 16), ptr %0, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.c, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.d, align 4, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.e, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %4, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !59
  %i.h = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !61   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.j, ptr %i.a, align 8, !tbaa !57
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %6, align 8, !tbaa !60
  %i.m = load i64, ptr %i.a, align 8, !tbaa !57
  store i64 %i.m, ptr %i.g, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !62
  store i8 %i.o, ptr %i.n, align 1, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !61
  %i.r = load ptr, ptr %6, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !59
  %i.v = load ptr, ptr %6, align 8, !tbaa !60     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.q, align 8, !tbaa !61   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.v, ptr %i.t, align 8, !tbaa !60
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !62
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !62
  %.pre = load i64, ptr %i.q, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = phi i64 [ %i.x, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %2, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1, ptr %i.ae, align 4, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 2, ptr %i.af, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.ag, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !59
  %i.aj = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !60
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !62
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.as, ptr %i.at, align 8, !tbaa !61
  store ptr %i.ak, ptr %5, align 8, !tbaa !60
  store i64 0, ptr %i.ar, align 8, !tbaa !61
  store i8 0, ptr %i.ak, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, i8 0, i64 40, i1 false)
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt23enable_shared_from_thisIN7xgboost10collective4CommEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #12
  resume { ptr, i32 } %i.av
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23enable_shared_from_thisIN7xgboost10collective4CommEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !68   ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12, !inline_history !217
  br label %_ZNSt10__weak_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10collective18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.xgboost::collective::Result") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1, i64 %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"struct.xgboost::collective::proto::Connect", align 1 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"struct.xgboost::collective::proto::Magic", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"struct.xgboost::collective::Result", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %17 = alloca %"struct.xgboost::collective::Result", align 8 ; 9 uses
  %18 = alloca %"struct.xgboost::collective::Result", align 8 ; 8 uses
  %19 = alloca %"struct.xgboost::collective::Result", align 8 ; 8 uses
  %20 = alloca %"struct.xgboost::collective::Result", align 8 ; 8 uses
  %21 = alloca %"struct.xgboost::collective::Result", align 8 ; 5 uses
  %22 = alloca %"struct.xgboost::collective::Result", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e, !prof !69

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.g = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str, i32 noundef 35)
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %.pre = load i64, ptr %i.d, align 8, !tbaa !61, !noalias !242
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.d unwind label %bb.ai

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  br label %bb.ah

bb.e:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.l = phi i64 [ %i.e, %bb.a ], [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #12
  store ptr null, ptr %22, align 8, !tbaa !72, !alias.scope !243
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12, !noalias !242
  %i.m = load ptr, ptr %1, align 8, !tbaa !60, !noalias !242
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !63, !noalias !242
  invoke void @_ZN7xgboost10collective7ConnectENS_10StringViewEiiNSt6chrono8durationIlSt5ratioILl1ELl1EEEEPNS0_9TCPSocketE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %14, ptr %i.m, i64 %i.l, i32 noundef %i.o, i32 noundef %3, i64 %2, ptr noundef %5)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.e
  %i.p = load ptr, ptr %14, align 8, !noalias !242
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.j, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.q, ptr %15, align 8, !tbaa !59, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !242
  store i64 33, ptr %i.c, align 8, !tbaa !57, !noalias !242
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.h, !noalias !242 ; 3 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.r, ptr %15, align 8, !tbaa !60, !noalias !242
  %i.s = load i64, ptr %i.c, align 8, !tbaa !57, !noalias !242 ; 3 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !62, !noalias !242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.r, ptr noundef nonnull align 1 dereferenceable(33) @.str.73, i64 33, i1 false), !noalias !242
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !61, !noalias !242
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.u, align 1, !tbaa !62, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !242
  invoke void @_ZN7xgboost10collective6detail7MakeMsgEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str, i32 noundef 42)
          to label %.noexc5.i.i unwind label %bb.i, !noalias !242

.noexc5.i.i:                                      ; preds = %.noexc.i.i
  %i.v = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30
          to label %.noexc.i4.i.i unwind label %bb.f, !noalias !246 ; 7 uses

.noexc.i4.i.i:                                    ; preds = %.noexc5.i.i
  %i.w = load ptr, ptr %13, align 8, !tbaa !60, !noalias !247 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load i64, ptr %14, align 8, !tbaa !73, !noalias !247
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread.i.i: ; preds = %.noexc.i4.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !61, !noalias !247 ; 3 uses
  %i.ad = add nuw nsw i64 %i.ac, 1
  %i.ae = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ad, i1 false), !noalias !242
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %.noexc.i4.i.i
  %i.af = load i64, ptr %i.x, align 8, !tbaa !62, !noalias !247
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !61, !noalias !247
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !62, !noalias !247
  br label %bb.g

bb.f:                                             ; preds = %.noexc5.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %13, align 8, !tbaa !60, !noalias !246 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.f
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !62, !noalias !246
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #31, !noalias !246
  br label %.body.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread.i.i
  %.sink.i.i = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i ]
  %i.am = phi i64 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread.i.i ], [ %.pre.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i ]
  store ptr null, ptr %14, align 8, !tbaa !73, !noalias !247
  store ptr %.sink.i.i, ptr %i.v, align 8, !tbaa !59, !noalias !247
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !61, !noalias !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i32 0, ptr %i.ao, align 8, !tbaa !76, !noalias !247
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #32
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !77, !noalias !247
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 %i.z, ptr %i.ar, align 8, !tbaa !73, !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !242
  %i.as = load ptr, ptr %15, align 8, !tbaa !60, !noalias !242 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.q
  br i1 %i.at, label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread", label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

bb.i:                                             ; preds = %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.aw = load ptr, ptr %15, align 8, !tbaa !60, !noalias !242 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.q
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %.body.i.i
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !62, !noalias !242
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #31, !noalias !242
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %.body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i, %bb.h
  %.pn.i.i = phi { ptr, i32 } [ %i.au, %bb.h ], [ %eh.lpad-body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #12, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12, !noalias !242
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.g
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !62, !noalias !242
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.bb) #31, !noalias !242
  %.pr.pre.i.i = load ptr, ptr %14, align 8, !tbaa !73, !noalias !242 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i.i.i, label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread", label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.pr.pre.i.i) #12, !noalias !242, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull %.pr.pre.i.i, i64 noundef 56) #31, !noalias !242, !inline_history !0
  br label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"

"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread": ; preds = %bb.g, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !244
  br label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"

bb.j:                                             ; preds = %.noexc
  store i64 0, ptr %21, align 8, !tbaa !73, !alias.scope !242
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !244
  invoke void @_ZN7xgboost10collective9TCPSocket11NonBlockingEb(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %20, ptr noundef nonnull align 4 dereferenceable(5) %5, i1 noundef zeroext false)
          to label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit" unwind label %bb.z

"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit": ; preds = %bb.j
  %.pr74 = load ptr, ptr %20, align 8, !noalias !248 ; 2 uses
  %.not.i.i26 = icmp eq ptr %.pr74, null
  br i1 %.not.i.i26, label %bb.k, label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"

"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread": ; preds = %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit", %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"
  %i.bc = phi ptr [ %i.v, %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread" ], [ %.pr74, %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit" ]
  store ptr null, ptr %20, align 8, !tbaa !73, !noalias !248
  br label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"

bb.k:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit"
  invoke void @_ZN7xgboost10collective9TCPSocket11RecvTimeoutENSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %19, ptr noundef nonnull align 4 dereferenceable(5) %5, i64 %2)
          to label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit" unwind label %bb.aa

"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit": ; preds = %bb.k
  %.pr75 = load ptr, ptr %19, align 8, !noalias !249 ; 2 uses
  %.not.i.i28 = icmp eq ptr %.pr75, null
  br i1 %.not.i.i28, label %bb.l, label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"

"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread": ; preds = %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit", %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"
  %i.bd = phi ptr [ %i.bc, %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread" ], [ %.pr75, %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit" ]
  store ptr null, ptr %19, align 8, !tbaa !73, !noalias !249
  br label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"

bb.l:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12, !noalias !250
  invoke void @_ZN7xgboost10collective5proto5Magic6VerifyEPNS0_9TCPSocketE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %18, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull %5)
          to label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit" unwind label %bb.ab

"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit": ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12, !noalias !250
  %.pr76 = load ptr, ptr %18, align 8, !noalias !251 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %.not.i.i30 = icmp eq ptr %.pr76, null
  br i1 %.not.i.i30, label %bb.m, label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"

"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread": ; preds = %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit", %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread"
  %i.be = phi ptr [ %i.bd, %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread" ], [ %.pr76, %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit" ] ; 2 uses
  %23 = ptrtoint ptr %i.be to i64
  store i64 %23, ptr %17, align 8, !tbaa !73, !alias.scope !251
  store ptr null, ptr %18, align 8, !tbaa !73, !noalias !251
  br label %bb.r

bb.m:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_3EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12, !noalias !252
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !59, !noalias !252
  %i.bg = load ptr, ptr %4, align 8, !tbaa !60, !noalias !252 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !61, !noalias !252 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !252
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !57, !noalias !252
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %.noexc.i.i.i31, label %._crit_edge.i.i.i.i

.noexc.i.i.i31:                                   ; preds = %bb.m
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc32 unwind label %bb.ac  ; 2 uses

.noexc32:                                         ; preds = %.noexc.i.i.i31
  store ptr %i.bk, ptr %11, align 8, !tbaa !60, !noalias !252
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !57, !noalias !252
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !62, !noalias !252
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc32, %bb.m
  %i.bm = phi ptr [ %i.bk, %.noexc32 ], [ %i.bf, %bb.m ] ; 2 uses
  switch i64 %i.bi, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = load i8, ptr %i.bg, align 1, !tbaa !62, !noalias !252
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !62, !noalias !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bg, i64 %i.bi, i1 false), !noalias !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !57, !noalias !252 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !61, !noalias !252
  %i.bq = load ptr, ptr %11, align 8, !tbaa !60, !noalias !252
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !62, !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !252
  invoke void @_ZNK7xgboost10collective5proto7Connect10WorkerSendEPNS0_9TCPSocketEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %17, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %5, i32 noundef %7, i32 noundef %6, ptr noundef nonnull align 8 %11)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.bs = load ptr, ptr %11, align 8, !tbaa !60, !noalias !252 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bf
  br i1 %i.bt, label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bu = load i64, ptr %i.bf, align 8, !tbaa !62, !noalias !252
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #31
  br label %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit"

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %11, align 8, !tbaa !60, !noalias !252 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bf
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i: ; preds = %bb.q
  %i.bz = load i64, ptr %i.bf, align 8, !tbaa !62, !noalias !252
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12, !noalias !252
  br label %.body33

"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit": ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12, !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !251
  %.pr77 = load ptr, ptr %17, align 8, !noalias !253 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %.not.i.i35 = icmp eq ptr %.pr77, null
  br i1 %.not.i.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread", %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit"
  %i.cb = phi ptr [ %i.be, %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit.thread" ], [ %.pr77, %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit" ]
  %i.cc = ptrtoint ptr %i.cb to i64
  store i64 %i.cc, ptr %0, align 8, !tbaa !73, !alias.scope !253
  br label %bb.x

bb.s:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEiiE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOSM_OSL_.exit"
  %i.cd = invoke noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 2)
          to label %.noexc41 unwind label %bb.ad

.noexc41:                                         ; preds = %bb.s
  br i1 %i.cd, label %.noexc.i.i.i36, label %bb.x

.noexc.i.i.i36:                                   ; preds = %.noexc41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12, !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12, !noalias !254
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ce, ptr %9, align 8, !tbaa !59, !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !254
  store i64 54, ptr %i.a, align 8, !tbaa !57, !noalias !254
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc42 unwind label %bb.ad  ; 3 uses

.noexc42:                                         ; preds = %.noexc.i.i.i36
  store ptr %i.cf, ptr %9, align 8, !tbaa !60, !noalias !254
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !57, !noalias !254 ; 3 uses
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !62, !noalias !254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.cf, ptr noundef nonnull align 1 dereferenceable(54) @.str, i64 54, i1 false), !noalias !254
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !61, !noalias !254
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  store i8 0, ptr %i.ci, align 1, !tbaa !62, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !254
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 53, i32 noundef 2)
          to label %bb.t unwind label %bb.u, !noalias !254

bb.t:                                             ; preds = %.noexc42
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.49, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.v, !noalias !254 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.t
  %i.ck = load ptr, ptr %4, align 8, !tbaa !60, !noalias !254
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !61, !noalias !254
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.ck, i64 noundef %i.cm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.v, !noalias !254

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.83, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i unwind label %bb.v, !noalias !254 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #12, !noalias !254
  %i.cp = load ptr, ptr %9, align 8, !tbaa !60, !noalias !254 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ce
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i
  %i.cr = load i64, ptr %i.ce, align 8, !tbaa !62, !noalias !254
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #31, !noalias !254
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12, !noalias !254
  br label %bb.x

bb.u:                                             ; preds = %.noexc42
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #12, !noalias !254
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.i.i37 = phi { ptr, i32 } [ %i.cu, %bb.v ], [ %i.ct, %bb.u ]
  %i.cv = load ptr, ptr %9, align 8, !tbaa !60, !noalias !254 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ce
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i: ; preds = %bb.w
  %i.cx = load i64, ptr %i.ce, align 8, !tbaa !62, !noalias !254
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #31, !noalias !254
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12, !noalias !254
  br label %.body43

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39, %.noexc41, %bb.r
  %.sink.i = phi ptr [ %17, %bb.r ], [ %0, %.noexc41 ], [ %0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39 ]
  store ptr null, ptr %.sink.i, align 8, !tbaa !73
  %i.cz = load ptr, ptr %17, align 8, !tbaa !73   ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i45, label %_ZN7xgboost10collective6ResultD2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %bb.x
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cz) #12, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 56) #31, !inline_history !0
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %bb.x, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  %i.da = load ptr, ptr %18, align 8, !tbaa !73   ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.da, null
end_hunk_0
begin_hunk_1_@_ZN7xgboost10collective9RabitCommD2Ev:bb.a

.noexc25:                                         ; preds = %.noexc.i24
  store ptr %i.aa, ptr %5, align 8, !tbaa !60
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.aa, ptr noundef nonnull align 1 dereferenceable(54) @.str, i64 54, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 439, i32 noundef 1)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  invoke void @_ZNK7xgboost10collective6detail10ResultImpl6ReportB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.x)
          to label %_ZNK7xgboost10collective6Result6ReportB5cxx11Ev.exit unwind label %bb.s

_ZNK7xgboost10collective6Result6ReportB5cxx11Ev.exit: ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre50 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !61
  %.pre = load ptr, ptr %6, align 8, !tbaa !60
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.pre, i64 noundef %.pre50)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK7xgboost10collective6Result6ReportB5cxx11Ev.exit
  %i.af = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %4) #12
  %i.ak = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.z
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.am = load i64, ptr %i.z, align 8, !tbaa !62
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i

bb.o:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.p:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.q:                                             ; preds = %.noexc.i24
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.r:                                             ; preds = %.noexc25
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.t:                                             ; preds = %_ZNK7xgboost10collective6Result6ReportB5cxx11Ev.exit
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.t
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !62
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.s
  %.pn12 = phi { ptr, i32 } [ %i.as, %bb.s ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.at, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %4) #12
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.r
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.ar, %bb.r ] ; 2 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.z
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.u
  %i.bb = load i64, ptr %i.z, align 8, !tbaa !62
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.q
  %.pn12.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %.pn12.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn12.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.w

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.m
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.x) #12, !inline_history !0
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 56) #31, !inline_history !0
  br label %_ZN7xgboost10collective6ResultD2Ev.exit

_ZN7xgboost10collective6ResultD2Ev.exit:          ; preds = %bb.k, %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZN7xgboost10collective6ResultD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !60 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.v
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !62
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @_ZN7xgboost10collective4CommD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0)
  ret void

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.p
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.ap, %bb.p ]
  call void @_ZN7xgboost10collective6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.o
  %.pn12.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn.pn, %bb.w ], [ %i.ao, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.e
  %.pn12.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn.pn.pn, %bb.x ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.p, %bb.e ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.y
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !62
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @_ZN7xgboost10collective4CommD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0)
  resume { ptr, i32 } %.pn12.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef) local_unnamed_addr #8

declare void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost10collective9RabitComm8ShutdownEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.xgboost::collective::Result") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(220) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.xgboost::collective::proto::Error", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.xgboost::collective::SockAddress", align 4 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.xgboost::collective::SockAddrV4", align 8 ; 5 uses
  %8 = alloca %"class.xgboost::collective::SockAddrV6", align 4 ; 4 uses
  %9 = alloca %"struct.xgboost::collective::Result", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"struct.xgboost::collective::proto::ShutdownCMD", align 1 ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"struct.xgboost::collective::proto::PeerInfo", align 8 ; 12 uses
  %13 = alloca %"class.xgboost::collective::TCPSocket", align 4 ; 9 uses
  %14 = alloca %"class.xgboost::collective::TCPSocket", align 4 ; 9 uses
  %15 = alloca %"struct.xgboost::collective::Result", align 8 ; 10 uses
  %16 = alloca %"struct.xgboost::collective::Result", align 8 ; 7 uses
  %17 = alloca %"struct.xgboost::collective::Result", align 8 ; 9 uses
  %18 = alloca %"struct.xgboost::collective::Result", align 8 ; 9 uses
  %19 = alloca %"struct.xgboost::collective::Result", align 8 ; 8 uses
  %20 = alloca %"struct.xgboost::collective::Result", align 8 ; 8 uses
  %21 = alloca %"struct.xgboost::collective::Result", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !72, !alias.scope !587
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  store i32 -1, ptr %13, align 4, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i8 0, ptr %i.f, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  store i32 -1, ptr %14, align 4, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i8 0, ptr %i.g, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  store ptr null, ptr %21, align 8, !tbaa !72, !alias.scope !588
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !589
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.i, ptr %12, align 8, !tbaa !59, !noalias !590
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !60, !noalias !590 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !61, !noalias !590 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !590
  store i64 %i.l, ptr %i.c, align 8, !tbaa !57, !noalias !590
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.ah    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.n, ptr %12, align 8, !tbaa !60, !noalias !590
  %i.o = load i64, ptr %i.c, align 8, !tbaa !57, !noalias !590
  store i64 %i.o, ptr %i.i, align 8, !tbaa !62, !noalias !590
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.c
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN7xgboost10collective5proto8PeerInfoC2ERKS2_.exit.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !62, !noalias !590
  store i8 %i.q, ptr %i.p, align 1, !tbaa !62, !noalias !590
  br label %_ZN7xgboost10collective5proto8PeerInfoC2ERKS2_.exit.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false), !noalias !590
  br label %_ZN7xgboost10collective5proto8PeerInfoC2ERKS2_.exit.i.i

_ZN7xgboost10collective5proto8PeerInfoC2ERKS2_.exit.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i
  %i.r = load i64, ptr %i.c, align 8, !tbaa !57, !noalias !590 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !61, !noalias !590
  %i.t = load ptr, ptr %12, align 8, !tbaa !60, !noalias !590
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !62, !noalias !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !590
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noalias !590
  store i64 %i.x, ptr %i.v, align 8, !noalias !590
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.y, align 8, !tbaa !57, !noalias !590
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !58, !noalias !590
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !56, !noalias !590
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !55, !noalias !590 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ae, -1
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 1, i32 %i.ae
  invoke void @_ZN7xgboost10collective18ConnectTrackerImplENS0_5proto8PeerInfoENSt6chrono8durationIlSt5ratioILl1ELl1EEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_9TCPSocketEii(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %20, ptr noundef nonnull align 8 %12, i64 %.sroa.0.0.copyload.i.i, i32 noundef %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ab, ptr noundef nonnull %13, i32 noundef %i.ad, i32 noundef %spec.select.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2ERKS2_.exit.i.i
  %i.af = load ptr, ptr %12, align 8, !tbaa !60, !noalias !590 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.i
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !62, !noalias !590
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #31, !noalias !590
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.g:                                             ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2ERKS2_.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %12, align 8, !tbaa !60, !noalias !590 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.i
  br i1 %i.al, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i.i: ; preds = %bb.g
  %i.am = load i64, ptr %i.i, align 8, !tbaa !62, !noalias !590
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #31, !noalias !590
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !589
  %i.ao = load ptr, ptr %20, align 8, !noalias !591 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i26, label %bb.h, label %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread"

"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  store ptr null, ptr %20, align 8, !tbaa !73, !noalias !591
  br label %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread"

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ap = load ptr, ptr %1, align 8, !tbaa !28, !noalias !592
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !592
  invoke void %i.ar(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %19, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit" unwind label %bb.ai, !inline_history !561

"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit": ; preds = %bb.h
  %.pr = load ptr, ptr %19, align 8, !noalias !593 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %.not.i.i28 = icmp eq ptr %.pr, null
  br i1 %.not.i.i28, label %bb.i, label %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread"

"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread": ; preds = %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit", %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread"
  %i.as = phi ptr [ %i.ao, %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread" ], [ %.pr, %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit" ] ; 2 uses
  %23 = ptrtoint ptr %i.as to i64
  store i64 %23, ptr %18, align 8, !tbaa !73, !alias.scope !593
  store ptr null, ptr %19, align 8, !tbaa !73, !noalias !593
  br label %bb.j

bb.i:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_1EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12, !noalias !594
  invoke void @_ZNK7xgboost10collective5proto11ShutdownCMD4SendEPNS0_9TCPSocketE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %18, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull %13)
          to label %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit" unwind label %bb.aj

"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12, !noalias !594
  %.pr78 = load ptr, ptr %18, align 8, !noalias !595 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %.not.i.i30 = icmp eq ptr %.pr78, null
  br i1 %.not.i.i30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread", %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit"
  %i.at = phi ptr [ %i.as, %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread" ], [ %.pr78, %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit" ]
  %i.au = ptrtoint ptr %i.at to i64
  store i64 %i.au, ptr %17, align 8, !tbaa !73, !alias.scope !595
  br label %bb.r

bb.k:                                             ; preds = %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_2EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit"
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !142, !noalias !596 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !136, !noalias !596 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.aw
  br i1 %.not.i.i.i.i, label %bb.r, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %_ZSt8_DestroyISt10shared_ptrIN7xgboost10collective7ChannelEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bq, %_ZSt8_DestroyISt10shared_ptrIN7xgboost10collective7ChannelEEEvPT_.exit.i.i.i.i.i.i ], [ %i.aw, %bb.k ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !81, !noalias !596 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7xgboost10collective7ChannelEEEvPT_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8, !noalias !596 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bb, align 8, !tbaa !79, !noalias !596
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !80, !noalias !596
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !28, !noalias !596
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !596
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #12, !noalias !596, !inline_history !570
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !28, !noalias !596
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !596
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #12, !noalias !596, !inline_history !570
  br label %_ZSt8_DestroyISt10shared_ptrIN7xgboost10collective7ChannelEEEvPT_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !596
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !68, !noalias !596
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4, !noalias !596
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.be, %bb.o ], [ %i.bo, %bb.p ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.q, label %_ZSt8_DestroyISt10shared_ptrIN7xgboost10collective7ChannelEEEvPT_.exit.i.i.i.i.i.i, !prof !69

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #12, !noalias !596
  br label %_ZSt8_DestroyISt10shared_ptrIN7xgboost10collective7ChannelEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN7xgboost10collective7ChannelEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.ay
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost10collective7ChannelEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPSt10shared_ptrIN7xgboost10collective7ChannelEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7xgboost10collective7ChannelEEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !136, !noalias !596
  br label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost10collective7ChannelEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %bb.k, %bb.j
  %.sink.i = phi ptr [ %18, %bb.j ], [ %17, %bb.k ], [ %17, %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost10collective7ChannelEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i ]
  store ptr null, ptr %.sink.i, align 8, !tbaa !73
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.br = load ptr, ptr %17, align 8, !noalias !597 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.br, null
  br i1 %.not.i.i31, label %bb.s, label %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread"

"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_4EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread": ; preds = %bb.r
  store ptr null, ptr %17, align 8, !tbaa !73, !noalias !597
  br label %"_ZN7xgboost10collectivelsIZNS0_9RabitComm8ShutdownEvE3$_5EENSt9enable_ifIXsr3stdE14is_invocable_vIT_EENS0_6ResultEE4typeEOS6_OS5_.exit.thread"

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12, !noalias !599
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !60, !noalias !599
  %i.bt = load i64, ptr %i.k, align 8, !tbaa !61, !noalias !599
  %i.bu = load i32, ptr %i.w, align 8, !tbaa !600, !noalias !599
  %i.bv = trunc i32 %i.bu to i16
  invoke void @_ZN7xgboost10collective15MakeSockAddressENS_10StringViewEt(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::collective::SockAddress") align 4 %5, ptr %i.bs, i64 %i.bt, i16 noundef zeroext %i.bv)
          to label %.noexc34 unwind label %bb.ak

.noexc34:                                         ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12, !noalias !599
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !97, !noalias !599
  %i.by = icmp eq i32 %i.bx, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12, !noalias !599
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12, !noalias !599
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc34
  %i.bz = invoke { i64, i64 } @_ZN7xgboost10collective10SockAddrV48LoopbackEv()
          to label %.noexc35 unwind label %bb.ak  ; 2 uses

.noexc35:                                         ; preds = %bb.t
  %i.ca = extractvalue { i64, i64 } %i.bz, 0
  store i64 %i.ca, ptr %7, align 8, !noalias !599
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = extractvalue { i64, i64 } %i.bz, 1
  store i64 %i.cc, ptr %i.cb, align 8, !noalias !599
  invoke void @_ZNK7xgboost10collective10SockAddrV44AddrB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %.cont.i.i unwind label %bb.ak

bb.u:                                             ; preds = %.noexc34
  invoke void @_ZN7xgboost10collective10SockAddrV68LoopbackEv(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::collective::SockAddrV6") align 4 %8)
          to label %.noexc37 unwind label %bb.ak

.noexc37:                                         ; preds = %bb.u
  invoke void @_ZNK7xgboost10collective10SockAddrV64AddrB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(28) %8)
          to label %.cont.i.i unwind label %bb.ak

.cont.i.i:                                        ; preds = %.noexc37, %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12, !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12, !noalias !599
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12, !noalias !599
  %i.cd = load ptr, ptr %6, align 8, !tbaa !60, !noalias !599
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !61, !noalias !599
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !135, !noalias !599
  %i.ci = load i64, ptr %i.y, align 8, !tbaa !57, !noalias !599
  %spec.select.i.i = call i64 @llvm.smin.i64(i64 %i.ci, i64 10)
  invoke void @_ZN7xgboost10collective7ConnectENS_10StringViewEiiNSt6chrono8durationIlSt5ratioILl1ELl1EEEEPNS0_9TCPSocketE(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %9, ptr %i.cd, i64 %i.cf, i32 noundef %i.ch, i32 noundef 1, i64 %spec.select.i.i, ptr noundef nonnull %14)
          to label %bb.v unwind label %bb.z, !noalias !599

bb.v:                                             ; preds = %.cont.i.i
  invoke void @_ZN7xgboost10collective4Comm10ResetStateEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.w unwind label %bb.aa, !noalias !599

bb.w:                                             ; preds = %bb.v
  %i.cj = load ptr, ptr %9, align 8, !noalias !599
  %.not.i.i.i32 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i32, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ck, ptr %10, align 8, !tbaa !59, !noalias !599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !599
  store i64 38, ptr %i.b, align 8, !tbaa !57, !noalias !599
  %i.cl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.ab, !noalias !599 ; 3 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.cl, ptr %10, align 8, !tbaa !60, !noalias !599
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !57, !noalias !599 ; 3 uses
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !62, !noalias !599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.cl, ptr noundef nonnull align 1 dereferenceable(38) @.str.107, i64 38, i1 false), !noalias !599
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !61, !noalias !599
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !62, !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !599
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !599
  invoke void @_ZN7xgboost10collective6detail7MakeMsgEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str, i32 noundef 475)
          to label %.noexc10.i.i unwind label %bb.ac, !noalias !599

.noexc10.i.i:                                     ; preds = %.noexc.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.cp = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30
          to label %.noexc.i9.i.i unwind label %bb.x, !noalias !603 ; 10 uses

.noexc.i9.i.i:                                    ; preds = %.noexc10.i.i
  %i.cq = load ptr, ptr %4, align 8, !tbaa !60, !noalias !604 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  %i.ct = load i64, ptr %9, align 8, !tbaa !73, !noalias !604
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
end_hunk_1
