Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/text_file_backend?download=true
inline.NumInlined: 3516
inline.NumDeleted: 1232
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZThn24_N5boost10wrapexceptINS_9gregorian15bad_day_of_yearEED1Ev:bb.a
          to label %_ZN5boost10wrapexceptINS_9gregorian15bad_day_of_yearEED2Ev.exit unwind label %bb.c, !inline_history !669 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #30
  unreachable

_ZN5boost10wrapexceptINS_9gregorian15bad_day_of_yearEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.i) #28
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn24_N5boost10wrapexceptINS_9gregorian15bad_day_of_yearEED0Ev(ptr noundef %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !668  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost10wrapexceptINS_9gregorian15bad_day_of_yearEED0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost10wrapexceptINS_9gregorian15bad_day_of_yearEED0Ev.exit unwind label %bb.c, !inline_history !669 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #30
  unreachable

_ZN5boost10wrapexceptINS_9gregorian15bad_day_of_yearEED0Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 -24
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #28
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 noundef 64) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9gregorian15bad_day_of_yearD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptINS_9gregorian15bad_day_of_yearEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9gregorian15bad_day_of_yearE, i64 16), ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.c, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !668  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !668
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %bb.d, !inline_history !673

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptINS_9gregorian15bad_day_of_yearEEE, i64 16), ptr %0, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptINS_9gregorian15bad_day_of_yearEEE, i64 64), ptr %i.a, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptINS_9gregorian15bad_day_of_yearEEE, i64 104), ptr %i.c, align 8, !tbaa !52
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #28
  resume { ptr, i32 } %i.l
}

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN5boost9date_time14microsec_clockINS_10posix_time5ptimeEE11create_timeEPFP2tmPKlS6_E(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.tm, align 8                 ; 3 uses
  %3 = alloca %"class.boost::gregorian::date", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = load i64, ptr %1, align 8, !tbaa !1063
  store i64 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.f = call noundef ptr %0(ptr noundef nonnull %i.a, ptr noundef nonnull %2) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1054
  %i.i = trunc i32 %i.h to i16
  %i.j = add i16 %i.i, 1900                       ; 4 uses
  %i.k = icmp ult i16 %i.j, 1400
  br i1 %i.k, label %_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i16 %i.j, 9999
  br i1 %i.l, label %_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split, label %_ZN5boost9gregorian9greg_yearC2Et.exit

_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]
  call void @_ZN5boost2CV23simple_exception_policyItLt1400ELt9999ENS_9gregorian8bad_yearEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1400, i16 noundef zeroext %i.j, i32 noundef %.sink)
  br label %_ZN5boost9gregorian9greg_yearC2Et.exit

_ZN5boost9gregorian9greg_yearC2Et.exit:           ; preds = %_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split, %bb.b
  %.sroa.011.0 = phi i16 [ %i.j, %bb.b ], [ 1400, %_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !344
  %i.o = trunc i32 %i.n to i16
  %i.p = add i16 %i.o, 1                          ; 4 uses
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9gregorian9greg_yearC2Et.exit
  call void @_ZN5boost2CV23simple_exception_policyItLt1ELt12ENS_9gregorian9bad_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0)
  br label %_ZN5boost9gregorian10greg_monthC2Et.exit

bb.d:                                             ; preds = %_ZN5boost9gregorian9greg_yearC2Et.exit
  %i.r = icmp ugt i16 %i.p, 12
  br i1 %i.r, label %bb.e, label %_ZN5boost9gregorian10greg_monthC2Et.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN5boost2CV23simple_exception_policyItLt1ELt12ENS_9gregorian9bad_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext %i.p, i32 noundef 1)
  br label %_ZN5boost9gregorian10greg_monthC2Et.exit

_ZN5boost9gregorian10greg_monthC2Et.exit:         ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.010.0 = phi i16 [ 1, %bb.c ], [ 1, %bb.e ], [ %i.p, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1055
  %i.u = trunc i32 %i.t to i16                    ; 4 uses
  %i.v = icmp eq i16 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5boost9gregorian10greg_monthC2Et.exit
  call void @_ZN5boost2CV23simple_exception_policyItLt1ELt31ENS_9gregorian16bad_day_of_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0)
  br label %_ZN5boost9gregorian8greg_dayC2Et.exit

bb.g:                                             ; preds = %_ZN5boost9gregorian10greg_monthC2Et.exit
  %i.w = icmp ugt i16 %i.u, 31
  br i1 %i.w, label %bb.h, label %_ZN5boost9gregorian8greg_dayC2Et.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN5boost2CV23simple_exception_policyItLt1ELt31ENS_9gregorian16bad_day_of_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext %i.u, i32 noundef 1)
  br label %_ZN5boost9gregorian8greg_dayC2Et.exit

_ZN5boost9gregorian8greg_dayC2Et.exit:            ; preds = %bb.g, %bb.f, %bb.h
  %.sroa.09.0 = phi i16 [ 1, %bb.f ], [ 1, %bb.h ], [ %i.u, %bb.g ]
  call void @_ZN5boost9gregorian4dateC2ENS0_9greg_yearENS0_10greg_monthENS0_8greg_dayE(ptr noundef nonnull align 4 dereferenceable(4) %3, i16 %.sroa.011.0, i16 %.sroa.010.0, i16 %.sroa.09.0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !774
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !775
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !776
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = and i64 %i.e, 4294967295                ; 2 uses
  %i.ag = or i64 %i.ac, %i.z
  %i.ah = or i64 %i.ag, %i.ae
  %or.cond5.not.i.i.i = icmp sgt i64 %i.ah, -1
  br i1 %or.cond5.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9gregorian8greg_dayC2Et.exit
  %i.ai = call noundef i64 @llvm.abs.i64(i64 %i.z, i1 true)
  %i.aj = call noundef i64 @llvm.abs.i64(i64 %i.ac, i1 true)
  %i.ak = call noundef i64 @llvm.abs.i64(i64 %i.ae, i1 true)
  %.neg.i.i.i = mul nsw i64 %i.ai, -3600
  %.neg26.i.i.i = mul nsw i64 %i.aj, -60
  %.neg27.i.i.i = add nsw i64 %.neg26.i.i.i, %.neg.i.i.i
  %.neg28.i.i.i = sub nsw i64 %.neg27.i.i.i, %i.ak
  %.neg29.i.i.i = mul nsw i64 %.neg28.i.i.i, 1000000
  %.neg30.i.i.i = sub nsw i64 %.neg29.i.i.i, %i.af
  br label %_ZN5boost10posix_time13time_durationC2Ellll.exit

bb.j:                                             ; preds = %_ZN5boost9gregorian8greg_dayC2Et.exit
  %i.al = mul nsw i64 %i.z, 3600
  %i.am = mul nsw i64 %i.ac, 60
  %i.an = add nuw nsw i64 %i.am, %i.al
  %i.ao = add nuw nsw i64 %i.an, %i.ae
  %i.ap = mul nsw i64 %i.ao, 1000000
  %i.aq = add nsw i64 %i.ap, %i.af
  br label %_ZN5boost10posix_time13time_durationC2Ellll.exit

_ZN5boost10posix_time13time_durationC2Ellll.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i64 [ %.neg30.i.i.i, %bb.i ], [ %i.aq, %bb.j ]
  %.sroa.01.0.copyload = load i32, ptr %3, align 4 ; 3 uses
  %.off.i.i.i.i = add i32 %.sroa.01.0.copyload, -1
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, -3
  br i1 %switch.i.i.i.i, label %bb.k, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN5boost10posix_time13time_durationC2Ellll.exit
  %switch.tableidx = add nsw i32 %.sroa.01.0.copyload, 2
  %switch.idx.cast = zext i32 %switch.tableidx to i64
  %switch.offset = add nuw i64 %switch.idx.cast, 9223372036854775806
  br label %_ZN5boost10posix_time5ptimeC2ENS_9gregorian4dateENS0_13time_durationE.exit

bb.k:                                             ; preds = %_ZN5boost10posix_time13time_durationC2Ellll.exit
  %i.ar = zext i32 %.sroa.01.0.copyload to i64
  %i.as = mul nuw nsw i64 %i.ar, 86400000000
  %i.at = add nsw i64 %i.as, %.0.i.i.i
  br label %_ZN5boost10posix_time5ptimeC2ENS_9gregorian4dateENS0_13time_durationE.exit

_ZN5boost10posix_time5ptimeC2ENS_9gregorian4dateENS0_13time_durationE.exit: ; preds = %.thread.i.i.i.i.i, %bb.k
  %storemerge.i.i.i.i = phi i64 [ %i.at, %bb.k ], [ %switch.offset, %.thread.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i64 %storemerge.i.i.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9date_time6c_time9localtimeEPKlP2tm(ptr noundef %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::runtime_error", align 8 ; 5 uses
  %i.a = tail call ptr @localtime_r(ptr noundef %0, ptr noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.105)
  invoke void @_ZN5boost15throw_exceptionISt13runtime_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt13runtime_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #28 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt13runtime_errorEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt13runtime_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt13runtime_errorED2Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.b
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt13runtime_errorEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.d, align 8, !tbaa !663
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %i.e, align 4, !tbaa !667
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt13runtime_errorEE, i64 16), ptr %0, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt13runtime_errorEE, i64 64), ptr %i.a, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt13runtime_errorEE, i64 104), ptr %i.b, align 8, !tbaa !52
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt13runtime_errorED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !668  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !669 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #30
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #28
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost10wrapexceptISt13runtime_errorE5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !1066
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !668  ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !668
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.c unwind label %.body, !inline_history !1067

.body:                                            ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #28, !inline_history !1066
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #31
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt13runtime_errorEE, i64 16), ptr %i.a, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt13runtime_errorEE, i64 64), ptr %i.b, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt13runtime_errorEE, i64 104), ptr %i.d, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.n)
          to label %_ZN5boost10wrapexceptISt13runtime_errorE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptISt13runtime_errorE7deleterD2Ev.exit7

_ZN5boost10wrapexceptISt13runtime_errorE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptISt13runtime_errorE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #28, !inline_history !1068
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost10wrapexceptISt13runtime_errorE7deleterD2Ev.exit7, %.body
  %.pn = phi { ptr, i32 } [ %i.o, %_ZN5boost10wrapexceptISt13runtime_errorE7deleterD2Ev.exit7 ], [ %i.k, %.body ]
  resume { ptr, i32 } %.pn
}
end_hunk_0
begin_hunk_1_@_ZN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEED0Ev
define linkonce_odr hidden void @_ZN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEEE, i64 16), ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !202, !range !164, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.d) #28, !inline_history !1094
  br label %_ZN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEED2Ev.exit

_ZN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !202, !range !164, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5boost6detail13sp_ms_deleterINS_3log11v2_mt_posix5sinks9anonymous14file_collectorEEclEPS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.d) #28, !inline_history !1095
  store i8 0, ptr %i.a, align 8, !tbaa !202
  br label %_ZN5boost6detail13sp_ms_deleterINS_3log11v2_mt_posix5sinks9anonymous14file_collectorEEclEPS6_.exit

_ZN5boost6detail13sp_ms_deleterINS_3log11v2_mt_posix5sinks9anonymous14file_collectorEEclEPS6_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1091 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSN5boost6detail13sp_ms_deleterINS_3log11v2_mt_posix5sinks9anonymous14file_collectorEEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNKSt9type_infoeqERKS_.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.e, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread4, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(86) @_ZTSN5boost6detail13sp_ms_deleterINS_3log11v2_mt_posix5sinks9anonymous14file_collectorEEE) #28
  %.fr = freeze i32 %i.f
  %i.g = icmp eq i32 %.fr, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %spec.select = select i1 %i.g, ptr %i.h, ptr null
  br label %_ZNKSt9type_infoeqERKS_.exit.thread4

_ZNKSt9type_infoeqERKS_.exit.thread4:             ; preds = %_ZNKSt9type_infoeqERKS_.exit, %bb.b, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.i = phi ptr [ null, %bb.b ], [ %spec.select, %_ZNKSt9type_infoeqERKS_.exit ], [ %i.d, %_ZNKSt9type_infoeqERKS_.exit.thread ]
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEE17get_local_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
_ZNKSt9type_infoeqERKS_.exit.thread:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail18sp_counted_impl_pdIPNS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_13sp_ms_deleterIS6_EEE19get_untyped_deleterEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 16), ptr %0, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 64), ptr %i.a, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 104), ptr %i.b, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !21
  %i.h = shufflevector <2 x ptr> %i.g, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !21
  %i.i = load <2 x i32>, ptr %i.e, align 8, !tbaa !26
  store <2 x i32> %i.i, ptr %i.d, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN5boost9date_time12second_clockINS_10posix_time5ptimeEE11create_timeEP2tm(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"class.boost::gregorian::date", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1054
  %i.c = trunc i32 %i.b to i16
  %i.d = add i16 %i.c, 1900                       ; 4 uses
  %i.e = icmp ult i16 %i.d, 1400
  br i1 %i.e, label %_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i16 %i.d, 9999
  br i1 %i.f, label %_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split, label %_ZN5boost9gregorian9greg_yearC2Et.exit

_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]
  tail call void @_ZN5boost2CV23simple_exception_policyItLt1400ELt9999ENS_9gregorian8bad_yearEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1400, i16 noundef zeroext %i.d, i32 noundef %.sink)
  br label %_ZN5boost9gregorian9greg_yearC2Et.exit

_ZN5boost9gregorian9greg_yearC2Et.exit:           ; preds = %_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split, %bb.b
  %.sroa.09.0 = phi i16 [ %i.d, %bb.b ], [ 1400, %_ZN5boost9gregorian9greg_yearC2Et.exit.sink.split ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !344
  %i.i = trunc i32 %i.h to i16
  %i.j = add i16 %i.i, 1                          ; 4 uses
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9gregorian9greg_yearC2Et.exit
  tail call void @_ZN5boost2CV23simple_exception_policyItLt1ELt12ENS_9gregorian9bad_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0)
  br label %_ZN5boost9gregorian10greg_monthC2Et.exit

bb.d:                                             ; preds = %_ZN5boost9gregorian9greg_yearC2Et.exit
  %i.l = icmp ugt i16 %i.j, 12
  br i1 %i.l, label %bb.e, label %_ZN5boost9gregorian10greg_monthC2Et.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost2CV23simple_exception_policyItLt1ELt12ENS_9gregorian9bad_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext %i.j, i32 noundef 1)
  br label %_ZN5boost9gregorian10greg_monthC2Et.exit

_ZN5boost9gregorian10greg_monthC2Et.exit:         ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.08.0 = phi i16 [ 1, %bb.c ], [ 1, %bb.e ], [ %i.j, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1055
  %i.o = trunc i32 %i.n to i16                    ; 4 uses
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5boost9gregorian10greg_monthC2Et.exit
  tail call void @_ZN5boost2CV23simple_exception_policyItLt1ELt31ENS_9gregorian16bad_day_of_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0)
  br label %_ZN5boost9gregorian8greg_dayC2Et.exit

bb.g:                                             ; preds = %_ZN5boost9gregorian10greg_monthC2Et.exit
  %i.q = icmp ugt i16 %i.o, 31
  br i1 %i.q, label %bb.h, label %_ZN5boost9gregorian8greg_dayC2Et.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5boost2CV23simple_exception_policyItLt1ELt31ENS_9gregorian16bad_day_of_monthEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext %i.o, i32 noundef 1)
  br label %_ZN5boost9gregorian8greg_dayC2Et.exit

_ZN5boost9gregorian8greg_dayC2Et.exit:            ; preds = %bb.g, %bb.f, %bb.h
  %.sroa.07.0 = phi i16 [ 1, %bb.f ], [ 1, %bb.h ], [ %i.o, %bb.g ]
  call void @_ZN5boost9gregorian4dateC2ENS0_9greg_yearENS0_10greg_monthENS0_8greg_dayE(ptr noundef nonnull align 4 dereferenceable(4) %1, i16 %.sroa.09.0, i16 %.sroa.08.0, i16 %.sroa.07.0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !774
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !775
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !776
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  %i.z = or i64 %i.w, %i.t
  %i.aa = or i64 %i.z, %i.y
  %or.cond5.not.i.i.i = icmp sgt i64 %i.aa, -1
  br i1 %or.cond5.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9gregorian8greg_dayC2Et.exit
  %i.ab = call noundef i64 @llvm.abs.i64(i64 %i.t, i1 true)
  %i.ac = call noundef i64 @llvm.abs.i64(i64 %i.w, i1 true)
  %i.ad = call noundef i64 @llvm.abs.i64(i64 %i.y, i1 true)
  %.neg.i.i.i = mul nsw i64 %i.ab, -3600
  %.neg26.i.i.i = mul nsw i64 %i.ac, -60
  %.neg27.i.i.i = add nsw i64 %.neg26.i.i.i, %.neg.i.i.i
  %.neg28.i.i.i = sub nsw i64 %.neg27.i.i.i, %i.ad
  br label %_ZN5boost10posix_time13time_durationC2Ellll.exit

bb.j:                                             ; preds = %_ZN5boost9gregorian8greg_dayC2Et.exit
  %i.ae = mul nsw i64 %i.t, 3600
  %i.af = mul nsw i64 %i.w, 60
  %i.ag = add nuw nsw i64 %i.af, %i.ae
  %i.ah = add nuw nsw i64 %i.ag, %i.y
  br label %_ZN5boost10posix_time13time_durationC2Ellll.exit

_ZN5boost10posix_time13time_durationC2Ellll.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.in = phi i64 [ %.neg28.i.i.i, %bb.i ], [ %i.ah, %bb.j ]
  %.sroa.01.0.copyload = load i32, ptr %1, align 4 ; 3 uses
  %.off.i.i.i.i = add i32 %.sroa.01.0.copyload, -1
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, -3
  br i1 %switch.i.i.i.i, label %bb.k, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN5boost10posix_time13time_durationC2Ellll.exit
  %switch.tableidx = add nsw i32 %.sroa.01.0.copyload, 2
  %switch.idx.cast = zext i32 %switch.tableidx to i64
  %switch.offset = add nuw i64 %switch.idx.cast, 9223372036854775806
  br label %_ZN5boost10posix_time5ptimeC2ENS_9gregorian4dateENS0_13time_durationE.exit

bb.k:                                             ; preds = %_ZN5boost10posix_time13time_durationC2Ellll.exit
  %.0.i.i.i = mul nsw i64 %.0.i.i.i.in, 1000000
  %i.ai = zext i32 %.sroa.01.0.copyload to i64
  %i.aj = mul nuw nsw i64 %i.ai, 86400000000
  %i.ak = add nsw i64 %i.aj, %.0.i.i.i
  br label %_ZN5boost10posix_time5ptimeC2ENS_9gregorian4dateENS0_13time_durationE.exit

_ZN5boost10posix_time5ptimeC2ENS_9gregorian4dateENS0_13time_durationE.exit: ; preds = %.thread.i.i.i.i.i, %bb.k
  %storemerge.i.i.i.i = phi i64 [ %i.ak, %bb.k ], [ %switch.offset, %.thread.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i64 %storemerge.i.i.i.i
}

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #23

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #27

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { cold noreturn }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei: argument 0"}
!10 = distinct !{!10, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!18, !13, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !16, i64 8, !6, i64 16}
!19 = !{!6, !6, i64 0}
!20 = !{!18, !16, i64 8}
!21 = !{!13, !13, i64 0}
!22 = !{!23, !13, i64 0}
!23 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !13, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!5, !5, i64 0}
!27 = !{!28, !13, i64 0}
!28 = !{!"_ZTSN5boost15source_locationE", !13, i64 0, !13, i64 8, !5, i64 16, !5, i64 20}
!29 = !{!28, !13, i64 8}
!30 = !{!28, !5, i64 16}
!31 = !{!28, !5, i64 20}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !25}
!34 = !{!35, !35, i64 0}
!35 = !{!"bool", !6, i64 0}
!36 = distinct !{!36, !25}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK5boost10filesystem4path11parent_pathEv: argument 0"}
!39 = distinct !{!39, !"_ZNK5boost10filesystem4path11parent_pathEv"}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = !{!43, !16, i64 0}
!43 = !{!"_ZTSN5boost3log11v2_mt_posix5sinks9anonymous22file_counter_formatterE", !16, i64 0, !5, i64 8}
!44 = !{!43, !5, i64 8}
!45 = !{!46, !14, i64 0}
!46 = !{!"_ZTSN5boost3log11v2_mt_posix3aux14light_functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEE9impl_baseE", !14, i64 0, !14, i64 8, !14, i64 16}
!47 = !{!46, !14, i64 8}
!48 = !{!46, !14, i64 16}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSN5boost3log11v2_mt_posix3aux14light_functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEEE", !51, i64 0}
!51 = !{!"p1 _ZTSN5boost3log11v2_mt_posix3aux14light_functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEE9impl_baseE", !14, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !7, i64 0}
!54 = !{ptr @_ZN5boost9date_time10time_facetINS_10posix_time5ptimeEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEED2Ev}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSN5boost6detail12shared_countE", !57, i64 0}
!57 = !{!"p1 _ZTSN5boost6detail15sp_counted_baseE", !14, i64 0}
!58 = !{!14, !14, i64 0}
!59 = !{!60, !16, i64 96}
!60 = !{!"_ZTSN5boost3log11v2_mt_posix5sinks9anonymous14file_collectorE", !61, i64 0, !62, i64 8, !67, i64 24, !71, i64 40, !73, i64 56, !16, i64 96, !16, i64 104, !16, i64 112, !75, i64 120, !75, i64 152, !76, i64 184, !16, i64 208}
!61 = !{!"_ZTSN5boost3log11v2_mt_posix5sinks4file9collectorE"}
!62 = !{!"_ZTSN5boost9intrusive14list_base_hookIJNS0_9link_modeILNS0_14link_mode_typeE1EEEEEE", !63, i64 0}
!63 = !{!"_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE1ELNS0_14base_hook_typeE1EEE", !64, i64 0}
!64 = !{!"_ZTSN5boost9intrusive11node_holderINS0_9list_nodeIPvEENS0_7dft_tagELj1EEE", !65, i64 0}
!65 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !66, i64 0, !66, i64 8}
!66 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !14, i64 0}
!67 = !{!"_ZTSN5boost23enable_shared_from_thisINS_3log11v2_mt_posix5sinks9anonymous14file_collectorEEE", !68, i64 0}
!68 = !{!"_ZTSN5boost8weak_ptrINS_3log11v2_mt_posix5sinks9anonymous14file_collectorEEE", !69, i64 0, !70, i64 8}
!69 = !{!"p1 _ZTSN5boost3log11v2_mt_posix5sinks9anonymous14file_collectorE", !14, i64 0}
!70 = !{!"_ZTSN5boost6detail10weak_countE", !57, i64 0}
!71 = !{!"_ZTSN5boost10shared_ptrINS_3log11v2_mt_posix5sinks9anonymous25file_collector_repositoryEEE", !72, i64 0, !56, i64 8}
!72 = !{!"p1 _ZTSN5boost3log11v2_mt_posix5sinks9anonymous25file_collector_repositoryE", !14, i64 0}
!73 = !{!"_ZTSSt5mutex", !74, i64 0}
!74 = !{!"_ZTSSt12__mutex_base", !6, i64 0}
!75 = !{!"_ZTSN5boost10filesystem4pathE", !18, i64 0}
!76 = !{!"_ZTSNSt7__cxx114listIN5boost3log11v2_mt_posix5sinks9anonymous14file_collector9file_infoESaIS7_EEE", !77, i64 0}
!77 = !{!"_ZTSNSt7__cxx1110_List_baseIN5boost3log11v2_mt_posix5sinks9anonymous14file_collector9file_infoESaIS7_EEE", !78, i64 0}
!78 = !{!"_ZTSNSt7__cxx1110_List_baseIN5boost3log11v2_mt_posix5sinks9anonymous14file_collector9file_infoESaIS7_EE10_List_implE", !79, i64 0}
!79 = !{!"_ZTSNSt8__detail17_List_node_headerE", !80, i64 0, !16, i64 16}
!80 = !{!"_ZTSNSt8__detail15_List_node_baseE", !81, i64 0, !81, i64 8}
!81 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !14, i64 0}
!82 = !{!60, !16, i64 104}
!83 = !{!60, !16, i64 112}
!84 = !{!80, !81, i64 8}
!85 = !{!80, !81, i64 0}
!86 = !{!70, !57, i64 0}
!87 = distinct !{null, null, null, null}
!88 = distinct !{!88, !25}
!89 = distinct !{null, null}
!90 = distinct !{null, null, null}
!91 = !{!71, !72, i64 0}
!92 = !{!65, !66, i64 0}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE1ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS0_6detail13null_disposerEEENS0_13list_iteratorISD_Lb0EEENSI_ISD_Lb1EEET_: argument 0"}
!95 = distinct !{!95, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE1ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS0_6detail13null_disposerEEENS0_13list_iteratorISD_Lb0EEENSI_ISD_Lb1EEET_"}
!96 = distinct !{!96, !97, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE1ENS0_7dft_tagELj1EEEmLb1EvE5eraseENS0_13list_iteratorISD_Lb1EEE: argument 0"}
!97 = distinct !{!97, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_3log11v2_mt_posix5sinks9anonymous14file_collectorENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE1ENS0_7dft_tagELj1EEEmLb1EvE5eraseENS0_13list_iteratorISD_Lb1EEE"}
!98 = !{!65, !66, i64 8}
end_hunk_1
