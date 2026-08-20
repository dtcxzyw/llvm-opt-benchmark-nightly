inline.NumInlined: 489
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8facebook5velox4util11isValidDateEiii:bb.a
  br i1 %.not.i, label %_ZN8facebook5velox4util10isLeapYearEi.exit, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread

_ZN8facebook5velox4util10isLeapYearEi.exit.thread: ; preds = %bb.c
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZN8facebook5velox4utilL9kLeapDaysE, i64 %i.i
  br label %bb.d

_ZN8facebook5velox4util10isLeapYearEi.exit:       ; preds = %bb.c
  %i.k = srem i32 %0, 400
  %i.l = icmp eq i32 %i.k, 0
  %i.m = zext nneg i32 %1 to i64
  %spec.select.v = select i1 %i.l, ptr @_ZN8facebook5velox4utilL9kLeapDaysE, ptr @_ZN8facebook5velox4utilL11kNormalDaysE
  %spec.select = getelementptr inbounds nuw [4 x i8], ptr %spec.select.v, i64 %i.m
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox4util10isLeapYearEi.exit, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread18
  %i.n = phi ptr [ %i.g, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread18 ], [ %spec.select, %_ZN8facebook5velox4util10isLeapYearEi.exit ], [ %i.j, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread ]
  %.pn = load i32, ptr %i.n, align 4, !tbaa !8
  %i.o = icmp sle i32 %2, %.pn
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ %i.o, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN8facebook5velox4util16isValidDayOfYearEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -292278995
  %or.cond = icmp ult i32 %i.a, -584554050
  %i.b = icmp slt i32 %1, 1
  %or.cond8 = or i1 %or.cond, %i.b
  br i1 %or.cond8, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, 3
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread9

bb.c:                                             ; preds = %bb.b
  %i.e = srem i32 %0, 100
  %.not.i = icmp ne i32 %i.e, 0
  %i.f = srem i32 %0, 400
  %i.g = icmp eq i32 %i.f, 0
  %or.cond11 = or i1 %.not.i, %i.g
  %spec.select12 = select i1 %or.cond11, i32 366, i32 365
  br label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread9

_ZN8facebook5velox4util10isLeapYearEi.exit.thread9: ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ 365, %bb.b ], [ %spec.select12, %bb.c ]
  %i.i = icmp samesign ule i32 %1, %i.h
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox4util10isLeapYearEi.exit.thread9, %bb.a
  %.0 = phi i1 [ %i.i, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread9 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4util32lastDayOfMonthSinceEpochFromDateERK2tm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Expected") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.c = add nsw i32 %i.b, 1900                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %i.f = add nsw i32 %i.e, 1                      ; 4 uses
  %i.g = and i32 %i.b, 3
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread3.i

_ZN8facebook5velox4util10isLeapYearEi.exit.thread3.i: ; preds = %bb.a
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [4 x i8], ptr @_ZN8facebook5velox4utilL11kNormalDaysE, i64 %i.i
  br label %_ZN8facebook5velox4util16getMaxDayOfMonthEii.exit

bb.b:                                             ; preds = %bb.a
  %i.k = srem i32 %i.c, 100
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN8facebook5velox4util10isLeapYearEi.exit.i, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread.i

_ZN8facebook5velox4util10isLeapYearEi.exit.thread.i: ; preds = %bb.b
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr @_ZN8facebook5velox4utilL9kLeapDaysE, i64 %i.l
  br label %_ZN8facebook5velox4util16getMaxDayOfMonthEii.exit

_ZN8facebook5velox4util10isLeapYearEi.exit.i:     ; preds = %bb.b
  %i.n = srem i32 %i.c, 400
  %i.o = icmp eq i32 %i.n, 0
  %i.p = sext i32 %i.f to i64
  %spec.select.v.i = select i1 %i.o, ptr @_ZN8facebook5velox4utilL9kLeapDaysE, ptr @_ZN8facebook5velox4utilL11kNormalDaysE
  %spec.select.i = getelementptr inbounds [4 x i8], ptr %spec.select.v.i, i64 %i.p
  br label %_ZN8facebook5velox4util16getMaxDayOfMonthEii.exit

_ZN8facebook5velox4util16getMaxDayOfMonthEii.exit: ; preds = %_ZN8facebook5velox4util10isLeapYearEi.exit.thread3.i, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread.i, %_ZN8facebook5velox4util10isLeapYearEi.exit.i
  %i.q = phi ptr [ %i.j, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread3.i ], [ %spec.select.i, %_ZN8facebook5velox4util10isLeapYearEi.exit.i ], [ %i.m, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread.i ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  tail call void @_ZN8facebook5velox4util22daysSinceEpochFromDateEiii(ptr dead_on_unwind writable sret(%"class.folly::Expected") align 8 %0, i32 noundef %i.c, i32 noundef %i.f, i32 noundef %i.r)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN8facebook5velox4util16getMaxDayOfMonthEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread3

_ZN8facebook5velox4util10isLeapYearEi.exit.thread3: ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr @_ZN8facebook5velox4utilL11kNormalDaysE, i64 %i.c
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = srem i32 %0, 100
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN8facebook5velox4util10isLeapYearEi.exit, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread

_ZN8facebook5velox4util10isLeapYearEi.exit.thread: ; preds = %bb.b
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr @_ZN8facebook5velox4utilL9kLeapDaysE, i64 %i.f
  br label %bb.c

_ZN8facebook5velox4util10isLeapYearEi.exit:       ; preds = %bb.b
  %i.h = srem i32 %0, 400
  %i.i = icmp eq i32 %i.h, 0
  %i.j = sext i32 %1 to i64
  %spec.select.v = select i1 %i.i, ptr @_ZN8facebook5velox4utilL9kLeapDaysE, ptr @_ZN8facebook5velox4utilL11kNormalDaysE
  %spec.select = getelementptr inbounds [4 x i8], ptr %spec.select.v, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox4util10isLeapYearEi.exit, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread3
  %i.k = phi ptr [ %i.d, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread3 ], [ %spec.select, %_ZN8facebook5velox4util10isLeapYearEi.exit ], [ %i.g, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8
  ret i32 %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4util22daysSinceEpochFromDateEiii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Expected") align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.55", align 16 ; 7 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %i.a = add i32 %2, -13
  %or.cond.i = icmp ult i32 %i.a, -12
  %i.b = add i32 %1, -292278995
  %or.cond3.i = icmp ult i32 %i.b, -584554050
  %or.cond16.i = or i1 %or.cond3.i, %or.cond.i
  %i.c = icmp slt i32 %3, 1
  %or.cond17.i = or i1 %i.c, %or.cond16.i
  br i1 %or.cond17.i, label %_ZN8facebook5velox4util11isValidDateEiii.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 3
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread18.i

_ZN8facebook5velox4util10isLeapYearEi.exit.thread18.i: ; preds = %bb.b
  %i.f = zext nneg i32 %2 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN8facebook5velox4utilL11kNormalDaysE, i64 %i.f
  br label %_ZN8facebook5velox4util11isValidDateEiii.exit

bb.c:                                             ; preds = %bb.b
  %i.h = srem i32 %1, 100
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN8facebook5velox4util10isLeapYearEi.exit.i, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread.i

_ZN8facebook5velox4util10isLeapYearEi.exit.thread.i: ; preds = %bb.c
  %i.i = zext nneg i32 %2 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZN8facebook5velox4utilL9kLeapDaysE, i64 %i.i
  br label %_ZN8facebook5velox4util11isValidDateEiii.exit

_ZN8facebook5velox4util10isLeapYearEi.exit.i:     ; preds = %bb.c
  %i.k = srem i32 %1, 400
  %i.l = icmp eq i32 %i.k, 0
  %i.m = zext nneg i32 %2 to i64
  %spec.select.v.i = select i1 %i.l, ptr @_ZN8facebook5velox4utilL9kLeapDaysE, ptr @_ZN8facebook5velox4utilL11kNormalDaysE
  %spec.select.i = getelementptr inbounds nuw [4 x i8], ptr %spec.select.v.i, i64 %i.m
  br label %_ZN8facebook5velox4util11isValidDateEiii.exit

_ZN8facebook5velox4util11isValidDateEiii.exit:    ; preds = %_ZN8facebook5velox4util10isLeapYearEi.exit.thread18.i, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread.i, %_ZN8facebook5velox4util10isLeapYearEi.exit.i
  %i.n = phi ptr [ %i.g, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread18.i ], [ %spec.select.i, %_ZN8facebook5velox4util10isLeapYearEi.exit.i ], [ %i.j, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread.i ]
  %.pn.i = load i32, ptr %i.n, align 4, !tbaa !8
  %.not = icmp sgt i32 %3, %.pn.i
  br i1 %.not, label %_ZN8facebook5velox4util11isValidDateEiii.exit.thread, label %.preheader47

.preheader47:                                     ; preds = %_ZN8facebook5velox4util11isValidDateEiii.exit
  %i.o = icmp slt i32 %1, 1970
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader47
  %i.p = tail call i32 @llvm.smax.i32(i32 %1, i32 1570)
  %i.q = icmp slt i32 %1, 1570
  %umin = zext i1 %i.q to i32                     ; 2 uses
  %i.r = add nsw i32 %1, %umin
  %i.s = sub nsw i32 %i.p, %i.r                   ; 2 uses
  %i.t = udiv i32 %i.s, 400
  %i.u = add nuw nsw i32 %i.t, %umin
  %i.v = mul i32 %i.u, 400
  %i.w = add i32 %1, %i.v
  %i.x = add i32 %i.w, 400
  %8 = icmp slt i32 %1, 1570
  %umin59 = zext i1 %8 to i64
  %9 = udiv i32 %i.s, 400
  %i.y = zext nneg i32 %9 to i64
  %10 = add nuw nsw i64 %umin59, %i.y
  %.neg = mul nsw i64 %10, -146097
  %i.z = add nsw i64 %.neg, -146097
  br label %.preheader

_ZN8facebook5velox4util11isValidDateEiii.exit.thread: ; preds = %bb.a, %_ZN8facebook5velox4util11isValidDateEiii.exit
  %i.aa = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox22threadSkipErrorDetailsEv()
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15, !range !17, !noundef !18
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit, label %bb.d

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit: ; preds = %_ZN8facebook5velox4util11isValidDateEiii.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 1)
  %i.ad = load ptr, ptr %6, align 8, !tbaa !19, !noalias !22
  store ptr %i.ad, ptr %0, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ae, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.i

bb.d:                                             ; preds = %_ZN8facebook5velox4util11isValidDateEiii.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !31
  store i32 %1, ptr %5, align 16, !tbaa !34, !alias.scope !35, !noalias !31
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %2, ptr %i.af, align 16, !tbaa !34, !alias.scope !35, !noalias !31
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %3, ptr %i.ag, align 16, !tbaa !34, !alias.scope !35, !noalias !31
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str, i64 27, i64 273, ptr nonnull %5), !noalias !31
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 1, ptr noundef nonnull align 8 %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %4, align 8, !tbaa !38, !noalias !31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN8facebook5velox6StatusD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !34, !noalias !31
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #20
  br label %_ZN8facebook5velox6StatusD2Ev.exit20

bb.f:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %4, align 8, !tbaa !38, !noalias !31 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.f
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !34, !noalias !31
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !31
  resume { ptr, i32 } %i.am

_ZN8facebook5velox6StatusD2Ev.exit20:             ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !28
  %i.as = load ptr, ptr %7, align 8, !tbaa !19, !noalias !41
  store ptr %i.as, ptr %0, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.at, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader47
  %.039.lcssa = phi i32 [ %1, %.preheader47 ], [ %i.x, %.lr.ph.preheader ] ; 4 uses
  %.0.lcssa = phi i64 [ 0, %.preheader47 ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %i.au = icmp samesign ugt i32 %.039.lcssa, 2369
  br i1 %i.au, label %.lr.ph53.preheader, label %._crit_edge

.lr.ph53.preheader:                               ; preds = %.preheader
  %i.av = add i32 %.039.lcssa, -400
  %i.aw = add i32 %.039.lcssa, -2370              ; 3 uses
  %i.ax = urem i32 %i.aw, 400
  %.neg65 = sub i32 %i.ax, %i.aw
  %i.ay = add i32 %.neg65, %i.av
  %i.az = udiv i32 %i.aw, 400
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = mul nuw nsw i64 %i.ba, 146097
  %i.bc = add nsw i64 %.0.lcssa, %i.bb
  %i.bd = add nsw i64 %i.bc, 146097
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph53.preheader, %.preheader
  %.140.lcssa = phi i32 [ %.039.lcssa, %.preheader ], [ %i.ay, %.lr.ph53.preheader ] ; 3 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %i.bd, %.lr.ph53.preheader ]
  %i.be = zext nneg i32 %.140.lcssa to i64
  %i.bf = getelementptr [4 x i8], ptr @_ZN8facebook5velox4utilL19kCumulativeYearDaysE, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -7880
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8
  %i.bi = sext i32 %i.bh to i64
  %i.bj = and i32 %.140.lcssa, 3
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread43

_ZN8facebook5velox4util10isLeapYearEi.exit.thread43: ; preds = %._crit_edge
  %i.bl = zext nneg i32 %2 to i64
  %i.bm = getelementptr [4 x i8], ptr @_ZN8facebook5velox4utilL15kCumulativeDaysE, i64 %i.bl
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %.lhs.trunc = trunc nuw i32 %.140.lcssa to i16  ; 2 uses
  %i.bn = urem i16 %.lhs.trunc, 100
  %.not.i25 = icmp eq i16 %i.bn, 0
  br i1 %.not.i25, label %_ZN8facebook5velox4util10isLeapYearEi.exit, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread

_ZN8facebook5velox4util10isLeapYearEi.exit.thread: ; preds = %bb.g
  %i.bo = zext nneg i32 %2 to i64
  %i.bp = getelementptr [4 x i8], ptr @_ZN8facebook5velox4utilL19kCumulativeLeapDaysE, i64 %i.bo
  br label %bb.h

_ZN8facebook5velox4util10isLeapYearEi.exit:       ; preds = %bb.g
  %i.bq = urem i16 %.lhs.trunc, 400
  %i.br = icmp eq i16 %i.bq, 0
  %i.bs = zext nneg i32 %2 to i64
  %spec.select.v = select i1 %i.br, ptr @_ZN8facebook5velox4utilL19kCumulativeLeapDaysE, ptr @_ZN8facebook5velox4utilL15kCumulativeDaysE
  %spec.select = getelementptr [4 x i8], ptr %spec.select.v, i64 %i.bs
  br label %bb.h

bb.h:                                             ; preds = %_ZN8facebook5velox4util10isLeapYearEi.exit, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread43
  %i.bt = phi ptr [ %i.bm, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread43 ], [ %spec.select, %_ZN8facebook5velox4util10isLeapYearEi.exit ], [ %i.bp, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread ]
  %.in = getelementptr i8, ptr %i.bt, i64 -4
  %i.bu = load i32, ptr %.in, align 4, !tbaa !8
  %i.bv = sext i32 %i.bu to i64
  %i.bw = add nsw i32 %3, -1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = add nsw i64 %.1.lcssa, %i.bx
  %i.bz = add nsw i64 %i.by, %i.bi
  %i.ca = add nsw i64 %i.bz, %i.bv
  store i64 %i.ca, ptr %0, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cb, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN8facebook5velox6StatusD2Ev.exit20, %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox22threadSkipErrorDetailsEv() local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4util26daysSinceEpochFromWeekDateEiii(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::Expected", align 8   ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.55", align 16 ; 7 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %8 = alloca %"class.facebook::velox::Status", align 8 ; 4 uses
  %9 = alloca %"class.folly::Expected", align 8   ; 11 uses
  %i.a = add i32 %3, -1
  %or.cond.i = icmp ult i32 %i.a, 7
  %i.b = add i32 %2, -1
  %or.cond3.i = icmp ult i32 %i.b, 52
  %or.cond11.not.i = and i1 %or.cond3.i, %or.cond.i
  %i.c = add i32 %1, 292275055
  %or.cond5.i = icmp ult i32 %i.c, 584554050
  %.0.i = and i1 %or.cond5.i, %or.cond11.not.i
  br i1 %.0.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox22threadSkipErrorDetailsEv()
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15, !range !17, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit, label %bb.c

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 1)
  %i.g = load ptr, ptr %7, align 8, !tbaa !19, !noalias !44
  store ptr %i.g, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.h, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !50
  store i32 %1, ptr %6, align 16, !tbaa !34, !alias.scope !53, !noalias !50
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %2, ptr %i.i, align 16, !tbaa !34, !alias.scope !53, !noalias !50
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %3, ptr %i.j, align 16, !tbaa !34, !alias.scope !53, !noalias !50
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str, i64 27, i64 273, ptr nonnull %6), !noalias !50
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1, ptr noundef nonnull align 8 %5)
          to label %bb.d unwind label %bb.e
end_hunk_0
