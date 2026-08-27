Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/timer?download=true
inline.NumInlined: 389
inline.NumDeleted: 180
begin_hunk_0_@_ZN5boost3log11v2_mt_posix10attributes5timer4impl9get_valueEv:bb.a
_ZN5boost3log11v2_mt_posix10attributes15utc_time_traits9get_clockEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = add i64 %i.b, -9223372036854775806
  %spec.select.i.i.i.i = icmp ult i64 %i.d, 3
  %.sroa.0.0.copyload.i716.i.i = load i64, ptr %i.c, align 8, !tbaa !18 ; 8 uses
  br i1 %spec.select.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost3log11v2_mt_posix10attributes15utc_time_traits9get_clockEv.exit
  %i.e = add i64 %.sroa.0.0.copyload.i716.i.i, -9223372036854775806
  %spec.select.i.i6.i.i = icmp ult i64 %i.e, 3
  br i1 %spec.select.i.i6.i.i, label %.thread.i.i.i, label %bb.h

bb.c:                                             ; preds = %_ZN5boost3log11v2_mt_posix10attributes15utc_time_traits9get_clockEv.exit
  %i.f = icmp eq i64 %i.b, 9223372036854775806
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i716.i.i, 9223372036854775806
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.thread.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.b
  %.old.i = icmp eq i64 %.sroa.0.0.copyload.i716.i.i, 9223372036854775806
  br i1 %.old.i, label %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.thread.i.i.i, %bb.c
  switch i64 %i.b, label %bb.g [
    i64 9223372036854775807, label %bb.e
    i64 -9223372036854775808, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i716.i.i, 9223372036854775807
  br i1 %i.h, label %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.thread.i.i, label %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i716.i.i, -9223372036854775808
  br i1 %i.i, label %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.thread.i.i, label %_ZN5boost13intrusive_ptrINS_3log11v2_mt_posix15attribute_value4implEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  switch i64 %.sroa.0.0.copyload.i716.i.i, label %_ZNK5boost9date_time11int_adapterIlEmiIlEES2_RKNS1_IT_EE.exit.i.i [
    i64 9223372036854775807, label %_ZN5boost13intrusive_ptrINS_3log11v2_mt_posix15attribute_value4implEED2Ev.exit
    i64 -9223372036854775808, label %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.i.i
  ]

_ZNK5boost9date_time11int_adapterIlEmiIlEES2_RKNS1_IT_EE.exit.i.i: ; preds = %bb.g
  %i.j = sub nsw i64 %i.b, %.sroa.0.0.copyload.i716.i.i ; 2 uses
  %switch.selectcmp.i.i = icmp eq i64 %i.j, -9223372036854775808
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i64 -9223372036854775808, i64 9223372036854775806
  %switch.selectcmp32.i.i = icmp eq i64 %i.j, 9223372036854775807
  %switch.select33.i.i = select i1 %switch.selectcmp32.i.i, i64 9223372036854775807, i64 %switch.select.i.i
  br label %_ZN5boost13intrusive_ptrINS_3log11v2_mt_posix15attribute_value4implEED2Ev.exit

_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.thread.i.i: ; preds = %bb.f, %bb.e, %.thread.i.i.i, %bb.c
  br label %_ZN5boost13intrusive_ptrINS_3log11v2_mt_posix15attribute_value4implEED2Ev.exit

_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.i.i: ; preds = %bb.g, %bb.e
  br label %_ZN5boost13intrusive_ptrINS_3log11v2_mt_posix15attribute_value4implEED2Ev.exit

bb.h:                                             ; preds = %bb.b
  %i.k = sub nsw i64 %i.b, %.sroa.0.0.copyload.i716.i.i
  br label %_ZN5boost13intrusive_ptrINS_3log11v2_mt_posix15attribute_value4implEED2Ev.exit

_ZN5boost13intrusive_ptrINS_3log11v2_mt_posix15attribute_value4implEED2Ev.exit: ; preds = %bb.f, %bb.g, %_ZNK5boost9date_time11int_adapterIlEmiIlEES2_RKNS1_IT_EE.exit.i.i, %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.thread.i.i, %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.i.i, %bb.h
  %.sroa.015.0.i.i = phi i64 [ 9223372036854775807, %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.i.i ], [ 9223372036854775806, %_ZN5boost9date_time11int_adapterIlE10to_specialEl.exit.thread.i.i ], [ -9223372036854775808, %bb.f ], [ %i.k, %bb.h ], [ %switch.select33.i.i, %_ZNK5boost9date_time11int_adapterIlEmiIlEES2_RKNS1_IT_EE.exit.i.i ], [ -9223372036854775808, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5boost3log11v2_mt_posix10attributes20attribute_value_implINS_10posix_time13time_durationEEE, i64 16), ptr %i.a, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.015.0.i.i, ptr %i.m, align 8
  %i.n = atomicrmw add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost3log11v2_mt_posix9attribute4impldlEPvm(ptr noundef %i.a, i64 noundef 24) #22
  resume { ptr, i32 } %i.o
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN5boost9date_time14microsec_clockINS_10posix_time5ptimeEE11create_timeEPFP2tmPKlS6_E(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.tm, align 8                 ; 3 uses
  %3 = alloca %"class.boost::gregorian::date", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = load i64, ptr %1, align 8, !tbaa !23
  store i64 %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = call noundef ptr %0(ptr noundef nonnull %i.a, ptr noundef nonnull %2) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !26
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
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !30
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
  %i.y = load i32, ptr %i.x, align 8, !tbaa !31
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !33
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i64 %storemerge.i.i.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9date_time6c_time6gmtimeEPKlP2tm(ptr noundef %0, ptr noundef %1) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::runtime_error", align 8 ; 5 uses
  %i.a = tail call ptr @gmtime_r(ptr noundef %0, ptr noundef %1) #22 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.5)
  invoke void @_ZN5boost15throw_exceptionISt13runtime_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9gregorian4dateC2ENS0_9greg_yearENS0_10greg_monthENS0_8greg_dayE(ptr noundef nonnull align 4 dereferenceable(4) %0, i16 %1, i16 %2, i16 %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::gregorian::bad_day_of_month", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.fr5.i = freeze i16 %1                         ; 4 uses
  %i.a = zext i16 %2 to i32
  %i.b = sub nsw i32 14, %i.a
  %i.c = sdiv i32 %i.b, 12                        ; 2 uses
  %i.d = zext i16 %.fr5.i to i32
  %i.e = add nuw nsw i32 %i.d, 4800
  %i.f = sub nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = trunc nsw i32 %i.c to i16
  %i.h = mul i16 %i.g, 12
  %i.i = add i16 %2, -3
  %i.j = add i16 %i.i, %i.h
  %i.k = zext i16 %3 to i32
  %i.l = zext i16 %i.j to i32
  %i.m = mul nuw nsw i32 %i.l, 153
  %i.n = add nuw nsw i32 %i.m, 2
  %i.o = udiv i32 %i.n, 5
  %i.p = and i32 %i.f, 65535                      ; 2 uses
  %i.q = mul nuw nsw i32 %i.p, 365
  %i.r = lshr i32 %i.p, 2
  %.lhs.trunc.i.i = trunc i32 %i.f to i16         ; 2 uses
  %i.s = udiv i16 %.lhs.trunc.i.i, 100
  %.zext.i.i = zext nneg i16 %i.s to i32
  %i.t = udiv i16 %.lhs.trunc.i.i, 400
  %.zext12.i.i = zext nneg i16 %i.t to i32
  %i.u = add nsw i32 %i.k, -32045
  %i.v = add nsw i32 %i.u, %i.q
  %i.w = add nsw i32 %i.v, %i.r
  %i.x = sub nsw i32 %i.w, %.zext.i.i
  %i.y = add nsw i32 %i.x, %.zext12.i.i
  %i.z = add nsw i32 %i.y, %i.o
  store i32 %i.z, ptr %0, align 4, !tbaa !34
  switch i16 %2, label %bb.d [
    i16 2, label %bb.b
    i16 4, label %_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit
    i16 6, label %_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit
    i16 9, label %_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit
    i16 11, label %_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.aa = and i16 %.fr5.i, 3
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit

bb.c:                                             ; preds = %bb.b
  %i.ab = urem i16 %.fr5.i, 100
  %.not1.i.i = icmp ne i16 %i.ab, 0
  %i.ac = urem i16 %.fr5.i, 400
  %.not2.i.i = icmp eq i16 %i.ac, 0
  %or.cond.i = or i1 %.not1.i.i, %.not2.i.i
  %spec.select.i = select i1 %or.cond.i, i16 29, i16 28
  br label %_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit

bb.d:                                             ; preds = %bb.a
  br label %_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit

_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i16 [ 31, %bb.d ], [ 30, %bb.a ], [ 30, %bb.a ], [ 30, %bb.a ], [ 30, %bb.a ], [ 28, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.ad = icmp ult i16 %.0.i, %3
  br i1 %i.ad, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZNSt12out_of_rangeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9gregorian16bad_day_of_monthE, i64 16), ptr %4, align 8, !tbaa !10
  invoke void @_ZN5boost15throw_exceptionINS_9gregorian16bad_day_of_monthEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.ae, %bb.h ]
  %i.ag = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE16end_of_month_dayES4_S5_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost2CV23simple_exception_policyItLt1400ELt9999ENS_9gregorian8bad_yearEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.boost::gregorian::bad_year", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 38, ptr %i.a, align 8, !tbaa !18
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
end_hunk_0
