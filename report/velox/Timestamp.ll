Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Timestamp?download=true
inline.NumInlined: 216
inline.NumDeleted: 128
begin_hunk_0_@_ZNK8facebook5velox9Timestamp13toTimePointMsEb:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !44
  store i64 %i.a, ptr %2, align 16, !tbaa !15, !noalias !44
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.j, ptr %i.o, align 16, !tbaa !15, !noalias !44
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.16, i64 51, i64 67, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !44
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9Timestamp8toMillisEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.16) #21
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !15
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.p

_ZNK8facebook5velox9Timestamp8toMillisEv.exit:    ; preds = %bb.c
  %i.v = trunc nsw i128 %i.m to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox9Timestamp8toMillisEv.exit, %bb.b
  %i.w = phi i64 [ %i.f, %bb.b ], [ %i.v, %_ZNK8facebook5velox9Timestamp8toMillisEv.exit ] ; 2 uses
  tail call void @_ZN8facebook5velox2tz13validateRangeENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000EEEEEE(i64 %i.w)
  ret i64 %i.w
}

declare void @_ZN8facebook5velox2tz13validateRangeENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000EEEEEE(i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9Timestamp10toTimezoneERKNS0_2tz8TimeZoneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(50) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !9
  %i.b = invoke i64 @_ZNK8facebook5velox2tz8TimeZone8to_localENSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(50) %1, i64 %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %0, align 8, !tbaa !11
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument     ; 3 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #20
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { ptr, i32 } %i.c, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #20 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9Timestamp10toTimezoneERKNS0_2tz8TimeZoneEE18veloxCheckFailArgs, ptr noundef %i.l) #21
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %.merged

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #22
  unreachable
}

declare i64 @_ZNK8facebook5velox2tz8TimeZone8to_localENSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(50), i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(50) ptr @_ZN8facebook5velox9Timestamp15defaultTimezoneEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox9Timestamp15defaultTimezoneEvE8kDefault acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.j, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox9Timestamp15defaultTimezoneEvE8kDefault) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN8facebook5velox2tz10locateZoneESt17basic_string_viewIcSt11char_traitsIcEEb(i64 19, ptr nonnull @.str.4, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.e, label %bb.i, !prof !21

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9Timestamp15defaultTimezoneEvE18veloxCheckFailArgs) #21
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN8facebook5velox9Timestamp15defaultTimezoneEvE8kDefault, align 8, !tbaa !46
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox9Timestamp15defaultTimezoneEvE8kDefault) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %bb.a
  %i.g = load ptr, ptr @_ZZN8facebook5velox9Timestamp15defaultTimezoneEvE8kDefault, align 8, !tbaa !46
  ret ptr %i.g

bb.k:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.f, %bb.h ], [ %i.e, %bb.g ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox9Timestamp15defaultTimezoneEvE8kDefault) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

declare noundef ptr @_ZN8facebook5velox2tz10locateZoneESt17basic_string_viewIcSt11char_traitsIcEEb(i64, ptr, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN8facebook5velox9Timestamp18epochToCalendarUtcElR2tm(i64 noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 12), (24, 28)) %1) local_unnamed_addr #11 align 2 {
._crit_edge:
  %i.a = sdiv i64 %0, 86400
  %i.b = srem i64 %0, 86400                       ; 4 uses
  %i.c = icmp slt i64 %i.b, 0
  %i.d = add nsw i64 %i.b, 86400
  %.lobit = ashr i64 %i.b, 63
  %.0.lcssa = add nsw i64 %i.a, %.lobit           ; 3 uses
  %.036.lcssa = select i1 %i.c, i64 %i.d, i64 %i.b ; 2 uses
  %.lhs.trunc67 = trunc nsw i64 %.036.lcssa to i32
  %i.e = udiv i32 %.lhs.trunc67, 3600
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !24
  %.lhs.trunc68 = trunc nsw i64 %.036.lcssa to i32
  %i.g = urem i32 %.lhs.trunc68, 3600
  %.lhs.trunc = trunc nuw nsw i32 %i.g to i16     ; 2 uses
  %i.h = udiv i16 %.lhs.trunc, 60
  %i.i = zext nneg i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !25
  %i.k = urem i16 %.lhs.trunc, 60
  %i.l = zext nneg i16 %i.k to i32
  store i32 %i.l, ptr %1, align 8, !tbaa !26
  %i.m = add nsw i64 %.0.lcssa, 4
  %i.n = srem i64 %i.m, 7                         ; 2 uses
  %i.o = trunc nsw i64 %i.n to i32                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = icmp slt i64 %i.n, 0
  %i.r = add nsw i32 %i.o, 7
  %spec.select = select i1 %i.q, i32 %i.r, i32 %i.o
  store i32 %spec.select, ptr %i.p, align 8, !tbaa !49
  %i.s = icmp slt i64 %.0.lcssa, -1460000715399
  br i1 %i.s, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.critedge
  %.148 = phi i64 [ %i.ah, %.critedge ], [ %.0.lcssa, %._crit_edge ] ; 8 uses
  %.035 = phi i64 [ %i.ae, %.critedge ], [ 1970, %._crit_edge ]
  %.035.fr = freeze i64 %.035                     ; 7 uses
  %i.t = icmp slt i64 %.148, 0
  br i1 %i.t, label %.critedge, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.u = and i64 %.035.fr, 3
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit.thread50

bb.b:                                             ; preds = %bb.a
  %i.w = srem i64 %.035.fr, 100
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit, label %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit.thread50

_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit:   ; preds = %bb.b
  %i.x = srem i64 %.035.fr, 400
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  %spec.select54 = select i1 %i.y, i64 366, i64 365
  %i.z = zext i1 %i.y to i64
  br label %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit.thread50

_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit.thread50: ; preds = %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit, %bb.b, %bb.a
  %i.aa = phi i64 [ 1, %bb.b ], [ %i.z, %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit ], [ 0, %bb.a ]
  %i.ab = phi i64 [ 366, %bb.b ], [ %spec.select54, %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit ], [ 365, %bb.a ]
  %.not = icmp samesign ult i64 %.148, %i.ab
  br i1 %.not, label %bb.c, label %.critedge

.critedge:                                        ; preds = %.preheader, %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit.thread50
  %i.ac = sdiv i64 %.148, 365
  %.lobit.neg = ashr i64 %.148, 63
  %i.ad = add nsw i64 %.lobit.neg, %i.ac          ; 2 uses
  %i.ae = add i64 %i.ad, %.035.fr                 ; 2 uses
  %.neg59 = mul i64 %i.ad, -365
  %i.af = add nsw i64 %i.ae, 3999999999           ; 3 uses
  %.neg56 = sdiv i64 %i.af, -4
  %.neg.i.i.neg = sdiv i64 %i.af, 100
  %.neg58 = sdiv i64 %i.af, -400
  %i.ag = add nsw i64 %.035.fr, 3999999999        ; 3 uses
  %.neg.i.neg = sdiv i64 %i.ag, 4
  %.neg.i4.neg.i.neg = sdiv i64 %i.ag, -100
  %.neg6.i.neg = sdiv i64 %i.ag, 400
  %.neg = add i64 %.neg.i.neg, %.148
  %.neg55 = add i64 %.neg, %.neg.i4.neg.i.neg
  %.neg57 = add i64 %.neg55, %.neg6.i.neg
  %.neg5.i.neg = add i64 %.neg57, %.neg56
  %.neg7.i.neg = add i64 %.neg5.i.neg, %.neg.i.i.neg
  %.neg60 = add i64 %.neg7.i.neg, %.neg58
  %i.ah = add i64 %.neg60, %.neg59
  br label %.preheader, !llvm.loop !47

bb.c:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit.thread50
  %i.ai = add i64 %.035.fr, -2147485548
  %or.cond = icmp ult i64 %i.ai, -4294967296
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = trunc i64 %.035.fr to i32
  %i.ak = add i32 %i.aj, -1900
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !28
  %i.am = trunc nuw nsw i64 %.148 to i32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.am, ptr %i.an, align 4, !tbaa !50
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr @_ZN8facebook5velox12_GLOBAL__N_125daysBeforeFirstDayOfMonthE, i64 %i.aa ; 3 uses
  br label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.d
  %.017.i.i = phi i64 [ 12, %bb.d ], [ %.1.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.01116.i.i = phi ptr [ %i.ao, %bb.d ], [ %.112.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.ap = lshr i64 %.017.i.i, 1                   ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.01116.i.i, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !30
  %i.as = sext i16 %i.ar to i64
  %i.at = icmp slt i64 %.148, %i.as               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.av = xor i64 %i.ap, -1
  %i.aw = add nsw i64 %.017.i.i, %i.av
  %.112.i.i = select i1 %i.at, ptr %.01116.i.i, ptr %i.au ; 2 uses
  %.1.i.i = select i1 %i.at, i64 %i.ap, i64 %i.aw ; 2 uses
  %i.ax = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ax, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIPKslET_S2_S2_RKT0_.exit, !llvm.loop !48

_ZSt11upper_boundIPKslET_S2_S2_RKT0_.exit:        ; preds = %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.ay = ptrtoint ptr %.112.i.i to i64
  %i.az = ptrtoint ptr %i.ao to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = lshr exact i64 %i.ba, 1
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !31
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !30
  %2 = sext i16 %i.bh to i64
  %3 = sub nsw i64 %.148, %2
  %4 = trunc nsw i64 %3 to i32
  %5 = add nsw i32 %4, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %5, ptr %i.bi, align 4, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.bj, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %_ZSt11upper_boundIPKslET_S2_S2_RKT0_.exit, %bb.c, %._crit_edge
  %.1 = phi i1 [ false, %._crit_edge ], [ true, %_ZSt11upper_boundIPKslET_S2_S2_RKT0_.exit ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -73612804599033728, 73612800117721268) i64 @_ZN8facebook5velox9Timestamp18calendarUtcToEpochERK2tm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, 1900                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31   ; 6 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i32 %i.f, 11
  br i1 %i.h, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.i = udiv i32 %i.f, 12
  %.zext = zext nneg i32 %i.i to i64
  %i.j = add nsw i64 %i.d, %.zext
  %i.k = urem i32 %i.f, 12
  %.zext23 = zext nneg i32 %i.k to i64
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %i.f, 0
  br i1 %i.l, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc25 = sub i32 11, %i.f
  %i.m = udiv i32 %.lhs.trunc25, 12
  %.zext26 = zext nneg i32 %i.m to i64            ; 2 uses
  %i.n = sub nsw i64 %i.d, %.zext26
  %i.o = mul nuw nsw i64 %.zext26, 12
  %i.p = add nsw i64 %i.o, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.020 = phi i64 [ %.zext23, %bb.b ], [ %i.p, %bb.d ], [ %i.g, %bb.c ]
  %.0 = phi i64 [ %i.j, %bb.b ], [ %i.n, %bb.d ], [ %i.d, %bb.c ] ; 5 uses
  %i.q = and i64 %.0, 3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit

bb.f:                                             ; preds = %bb.e
  %i.s = srem i64 %.0, 100
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.g, label %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit

bb.g:                                             ; preds = %bb.f
  %i.t = srem i64 %.0, 400
  %i.u = icmp eq i64 %i.t, 0
  %i.v = zext i1 %i.u to i64
  br label %_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit

_ZN8facebook5velox12_GLOBAL__N_16isLeapEl.exit:   ; preds = %bb.e, %bb.f, %bb.g
  %i.w = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ %i.v, %bb.g ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr @_ZN8facebook5velox12_GLOBAL__N_125daysBeforeFirstDayOfMonthE, i64 %i.w
  %i.y = getelementptr inbounds [2 x i8], ptr %i.x, i64 %.020
  %i.z = load i16, ptr %i.y, align 2, !tbaa !30
  %i.aa = sext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %.0, 365
  %i.af = add nsw i64 %.0, 3999999999             ; 3 uses
  %i.ag = lshr i64 %i.af, 2
  %.neg.i.i24 = udiv i64 %i.af, 100
  %i.ah = udiv i64 %i.af, 400
  %i.ai = add nsw i64 %i.ae, -970719528
  %.neg5.i = add nsw i64 %i.ai, %i.ag
  %.neg7.i = sub nsw i64 %.neg5.i, %.neg.i.i24
  %i.aj = add nsw i64 %.neg7.i, %i.ah
  %i.ak = add nsw i64 %i.aj, %i.aa
  %i.al = add nsw i64 %i.ak, %i.ad
  %i.am = mul nsw i64 %i.al, 86400
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !24
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.ap, 3600
  %i.ar = add nsw i64 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !25
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.au, 60
  %i.aw = add nsw i64 %i.ar, %i.av
  %i.ax = load i32, ptr %0, align 8, !tbaa !26
  %i.ay = sext i32 %i.ax to i64
  %i.az = add nsw i64 %i.aw, %i.ay
  ret i64 %i.az
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN8facebook5velox9Timestamp14tmToStringViewERK2tmmRKNS0_24TimestampToStringOptionsEPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.13", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.13", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.13", align 16 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.15", align 16 ; 5 uses
  %11 = alloca %"struct.facebook::velox::StringView", align 8 ; 20 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = icmp ugt i64 %1, 999999999
  br i1 %i.a, label %bb.b, label %bb.e, !prof !21

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !68
  store i64 %1, ptr %10, align 16, !tbaa !15, !alias.scope !69, !noalias !68
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 1000000000, ptr %i.b, align 16, !tbaa !15, !alias.scope !69, !noalias !68
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.9, i64 11, i64 20, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !68
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9Timestamp14tmToStringViewERK2tmmRKNS0_24TimestampToStringOptionsEPcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.9) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %12, align 8, !tbaa !20    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.qw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212 ], [ %i.ui, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i216 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !37
  %.not = icmp eq i8 %i.j, 2
  br i1 %.not, label %bb.bu, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28   ; 4 uses
  %i.m = add nsw i32 %i.l, 1900                   ; 2 uses
  %i.n = icmp slt i32 %i.l, -1900
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 45, ptr %3, align 1, !tbaa !15
  %i.p = sub nuw nsw i32 -1900, %i.l
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !70, !range !71, !noundef !72
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = icmp sgt i32 %i.l, 8099
  %i.u = and i1 %i.t, %i.s
  br i1 %i.u, label %.thread496, label %bb.i

.thread496:                                       ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 43, ptr %3, align 1, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !73, !range !71, !noundef !72
  br label %.lr.ph.preheader.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.067 = phi i32 [ %i.p, %bb.g ], [ %i.m, %bb.h ] ; 3 uses
  %.0 = phi ptr [ %i.o, %bb.g ], [ %3, %bb.h ]    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !73, !range !71, !noundef !72 ; 2 uses
  %i.aa = icmp samesign ult i32 %.067, 10
  br i1 %i.aa, label %_ZN8facebook5velox11countDigitsEo.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread496, %bb.i
  %i.ab = phi i8 [ %i.x, %.thread496 ], [ %i.z, %bb.i ] ; 3 uses
  %.0501 = phi ptr [ %i.v, %.thread496 ], [ %.0, %bb.i ] ; 4 uses
  %.067499 = phi i32 [ %i.m, %.thread496 ], [ %.067, %bb.i ] ; 5 uses
  %i.ac = zext nneg i32 %.067499 to i128
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %.0.i14.i = phi i32 [ %i.ak, %bb.o ], [ 1, %.lr.ph.preheader.i ] ; 4 uses
end_hunk_0
