Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_noop?download=true
inline.NumInlined: 314
inline.NumDeleted: 155
begin_hunk_0_@_Z29test_deeply_nested_namespacesv:bb.a
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit12

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit12: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit12, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit10, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit8
  %.pn = phi { ptr, i32 } [ %i.at, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit12 ], [ %i.am, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit10 ], [ %i.af, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit8 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i5 = icmp eq ptr %1, null
  br i1 %.not.i5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !22
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !51
  %i.k = or i32 %i.j, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.h, i32 noundef %i.k)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %1, i64 noundef %i.l) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2) ; 12 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.20, i64 noundef 9) ; 0 uses
  %.not.i6 = icmp eq ptr %0, null
  br i1 %.not.i6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !51
  %i.w = or i32 %i.v, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.t, i32 noundef %i.w)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %0, i64 noundef %i.x) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.h, %bb.i
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.21, i64 noundef 22) ; 0 uses
  %.not.i8 = icmp eq ptr %3, null
  br i1 %.not.i8, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.o, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !51
  %i.ag = or i32 %i.af, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %3, i64 noundef %i.ah) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.j, %bb.k
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.o, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !44
  %.not.i1.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 67
  %i.at = load i8, ptr %i.as, align 1, !tbaa !45
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ap)
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef signext i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(570) %i.ap, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi i8 [ %i.at, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef signext %.0.i.i.i)
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 0 uses
  %i.ba = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %_ZN5boost6detail12test_resultsEv.exit11, !prof !16

bb.o:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  %.not.i10 = icmp eq i32 %i.bc, 0
  br i1 %.not.i10, label %_ZN5boost6detail12test_resultsEv.exit11, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !20
  %i.bd = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  br label %_ZN5boost6detail12test_resultsEv.exit11

_ZN5boost6detail12test_resultsEv.exit11:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.o, %bb.p
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !46
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !46
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.d, %bb.c, %bb.b, %_ZN5boost6detail12test_resultsEv.exit11
  ret i1 %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_Z29return_from_nested_namespacesv(ptr dead_on_unwind writable sret(%"class.boost::stacktrace::basic_stacktrace") align 8) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z11test_nestedv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.std::pair", align 8        ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @_Z21function_from_libraryiPFSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_EiE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %0, i32 noundef 15, ptr noundef nonnull @_Z35function_from_main_translation_uniti)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %.not.i.i.not = icmp eq ptr %i.b, %i.c
  %i.d = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_nestedv, i1 noundef zeroext %.not.i.i.not)
          to label %bb.b unwind label %bb.w       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.e, %i.f
  %i.g = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 25, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_nestedv, i1 noundef zeroext %.not.i)
          to label %bb.c unwind label %bb.w       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = icmp eq ptr %i.h, %i.i
  %i.k = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_nestedv, i1 noundef zeroext %i.j)
          to label %bb.d unwind label %bb.w       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !14   ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp ult i64 %i.r, %i.y
  br i1 %i.z, label %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %i.r, %i.y
  br i1 %i.aa, label %bb.f, label %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

bb.f:                                             ; preds = %bb.e
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f, %bb.g
  %.01924.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %i.ab = load ptr, ptr %.02023.i.i.i.i.i.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.ac = load ptr, ptr %.01924.i.i.i.i.i.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %or.cond.not = icmp eq ptr %i.ab, %i.ac
  br i1 %or.cond.not, label %bb.g, label %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !52

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.019.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i, %i.t
  br label %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.not.i1.not = icmp uge ptr %i.ab, %i.ac
  br label %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit: ; preds = %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit, %bb.d, %bb.e, %.critedge.i.i.i.i.i.i.i.i.i
  %i.ag = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ %i.af, %.critedge.i.i.i.i.i.i.i.i.i ], [ %.not.i1.not, %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit ]
  %i.ah = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 28, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_nestedv, i1 noundef zeroext %i.ag)
          to label %bb.h unwind label %bb.w       ; 0 uses

bb.h:                                             ; preds = %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !13  ; 3 uses
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !14  ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = icmp ult i64 %i.an, %i.at
  br i1 %i.au, label %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.an, %i.at
  br i1 %i.av, label %bb.j, label %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

bb.j:                                             ; preds = %bb.i
  %.not22.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not22.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.j, %bb.k
  %.01924.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ %i.ap, %bb.j ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.k ], [ %i.aj, %bb.j ] ; 2 uses
  %i.aw = load ptr, ptr %.02023.i.i.i.i.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.ax = load ptr, ptr %.01924.i.i.i.i.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %or.cond68.not = icmp eq ptr %i.aw, %i.ax
  br i1 %or.cond68.not, label %bb.k, label %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !52

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.k, %bb.j
  %.019.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.j ], [ %i.az, %bb.k ]
  %i.ba = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i, %i.ao
  br label %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not.i2.not = icmp uge ptr %i.aw, %i.ax
  br label %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit: ; preds = %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit, %bb.h, %bb.i, %.critedge.i.i.i.i.i.i.i.i
  %i.bb = phi i1 [ false, %bb.h ], [ true, %bb.i ], [ %i.ba, %.critedge.i.i.i.i.i.i.i.i ], [ %.not.i2.not, %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit ]
  %i.bc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 29, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_nestedv, i1 noundef zeroext %i.bb)
          to label %bb.l unwind label %bb.w       ; 0 uses

bb.l:                                             ; preds = %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !13  ; 3 uses
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !14  ; 3 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bj = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp eq i64 %i.bh, %i.bm
  br i1 %i.bn, label %bb.m, label %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.be, %i.bd
  br i1 %.not9.i.i.i.i.i.i, label %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %bb.m ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %bb.m ] ; 2 uses
  %i.bo = load ptr, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !48
  %i.bp = load ptr, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !48
  %i.bq = icmp eq ptr %i.bo, %i.bp                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp ne ptr %i.br, %i.bd
  %or.cond71.not = select i1 %i.bq, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond71.not, label %.lr.ph.i.i.i.i.i.i, label %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, !llvm.loop !53

_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.l, %bb.m
  %i.bt = phi i1 [ false, %bb.l ], [ true, %bb.m ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ]
  %i.bu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 30, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_nestedv, i1 noundef zeroext %i.bt)
          to label %bb.n unwind label %bb.w       ; 0 uses

bb.n:                                             ; preds = %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !13  ; 3 uses
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !14  ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cb = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp eq i64 %i.bz, %i.ce
  br i1 %i.cf, label %bb.o, label %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit8

bb.o:                                             ; preds = %bb.n
  %.not9.i.i.i.i.i.i3 = icmp eq ptr %i.bw, %i.bv
  br i1 %.not9.i.i.i.i.i.i3, label %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit8, label %.lr.ph.i.i.i.i.i.i4

.lr.ph.i.i.i.i.i.i4:                              ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i4
  %.011.i.i.i.i.i.i5 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i4 ], [ %i.cb, %bb.o ] ; 2 uses
  %.0810.i.i.i.i.i.i6 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i4 ], [ %i.bw, %bb.o ] ; 2 uses
  %i.cg = load ptr, ptr %.0810.i.i.i.i.i.i6, align 8, !tbaa !48
  %i.ch = load ptr, ptr %.011.i.i.i.i.i.i5, align 8, !tbaa !48
  %i.ci = icmp eq ptr %i.cg, %i.ch                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i6, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i5, i64 8
  %.not.i.i.i.i.i.i7 = icmp ne ptr %i.cj, %i.bv
  %or.cond74.not = select i1 %i.ci, i1 %.not.i.i.i.i.i.i7, i1 false
  br i1 %or.cond74.not, label %.lr.ph.i.i.i.i.i.i4, label %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit8, !llvm.loop !53

_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit8: ; preds = %.lr.ph.i.i.i.i.i.i4, %bb.n, %bb.o
  %i.cl = phi i1 [ false, %bb.n ], [ true, %bb.o ], [ %i.ci, %.lr.ph.i.i.i.i.i.i4 ]
  %i.cm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_nestedv, i1 noundef zeroext %i.cl)
          to label %bb.p unwind label %bb.w       ; 0 uses

bb.p:                                             ; preds = %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit8
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3                 ; 2 uses
  %i.ct = load ptr, ptr %i.s, align 8, !tbaa !13  ; 2 uses
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !14  ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = icmp ult i64 %i.cs, %i.cy
  br i1 %i.cz, label %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = icmp eq i64 %i.cs, %i.cy
  br i1 %i.da, label %bb.r, label %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

bb.r:                                             ; preds = %bb.q
  %.not22.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.co, %i.cn
  br i1 %.not22.i.i.i.i.i.i.i.i9, label %.critedge.i.i.i.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i.i.i.i10

.lr.ph.i.i.i.i.i.i.i.i10:                         ; preds = %bb.r, %bb.s
  %.01924.i.i.i.i.i.i.i.i11 = phi ptr [ %i.de, %bb.s ], [ %i.cu, %bb.r ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i12 = phi ptr [ %i.dd, %bb.s ], [ %i.co, %bb.r ] ; 2 uses
  %i.db = load ptr, ptr %.02023.i.i.i.i.i.i.i.i12, align 8, !tbaa !48 ; 2 uses
  %i.dc = load ptr, ptr %.01924.i.i.i.i.i.i.i.i11, align 8, !tbaa !48 ; 2 uses
  %or.cond75.not = icmp eq ptr %i.db, %i.dc
  br i1 %or.cond75.not, label %bb.s, label %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i10
  %i.dd = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i12, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i11, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.dd, %i.cn
  br i1 %.not.i.i.i.i.i.i.i.i13, label %.critedge.i.i.i.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i.i.i.i10, !llvm.loop !52

.critedge.i.i.i.i.i.i.i.i14:                      ; preds = %bb.s, %bb.r
  %.019.lcssa.i.i.i.i.i.i.i.i15 = phi ptr [ %i.cu, %bb.r ], [ %i.de, %bb.s ]
  %i.df = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i15, %i.ct
  br label %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i10
  %.not = icmp uge ptr %i.db, %i.dc
  br label %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit

_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit: ; preds = %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit, %bb.p, %bb.q, %.critedge.i.i.i.i.i.i.i.i14
  %i.dg = phi i1 [ false, %bb.p ], [ true, %bb.q ], [ %i.df, %.critedge.i.i.i.i.i.i.i.i14 ], [ %.not, %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit.loopexit ]
  %i.dh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 32, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_nestedv, i1 noundef zeroext %i.dg)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !14  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !15
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i: ; preds = %bb.u, %bb.t
  %i.do = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !15
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #24
  br label %_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev.exit

_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev.exit: ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  ret void

bb.w:                                             ; preds = %_ZN5boost10stacktracegtISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit8, %_ZN5boost10stacktraceeqISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, %_ZN5boost10stacktracegeISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, %_ZN5boost10stacktraceleISaINS0_5frameEES3_EEbRKNS0_16basic_stacktraceIT_EERKNS4_IT0_EE.exit, %bb.c, %bb.b, %bb.a
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  resume { ptr, i32 } %i.du
}

declare void @_Z21function_from_libraryiPFSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_EiE(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z35function_from_main_translation_uniti(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, i32 noundef %1) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 7 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  tail call void @_Z21function_from_libraryiPFSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_EiE(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8 %0, i32 noundef %i.a, ptr noundef nonnull @_Z35function_from_main_translation_uniti)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_EC2IS5_S5_TnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES9_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.24)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #25
          to label %bb.n unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11logic_error
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.e ] ; 3 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt11logic_error) #23
  %i.f = icmp eq i32 %.0, %i.e
  br i1 %i.f, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.06 = extractvalue { ptr, i32 } %.pn, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.06) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, i64 noundef -1)
          to label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #26
  unreachable

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit: ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2) #23 ; 0 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit: ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.merged = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn, %bb.g ]
  call void @_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  resume { ptr, i32 } %.merged

bb.m:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, %bb.b
  ret void

bb.n:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i1, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit2

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit2: ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z16test_empty_framev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit:
  %0 = alloca %"class.boost::stacktrace::frame", align 8 ; 7 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.boost::stacktrace::frame", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  store ptr null, ptr %0, align 8, !tbaa !48
  %i.a = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 37, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_empty_framev, i1 noundef zeroext true) ; 0 uses
end_hunk_0
