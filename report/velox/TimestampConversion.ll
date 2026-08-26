Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/TimestampConversion?download=true
inline.NumInlined: 489
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8facebook5velox4util11isValidDateEiii:bb.a
bb.c:                                             ; preds = %bb.b
  %i.h = srem i32 %0, 100
  %.not.i = icmp eq i32 %i.h, 0
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
  %8 = icmp slt i32 %1, 1570
  %umin = zext i1 %8 to i32                       ; 2 uses
  %9 = add nsw i32 %1, %umin
  %i.q = sub nsw i32 %i.p, %9
  %10 = udiv i32 %i.q, 400
  %i.r = add nuw nsw i32 %10, %umin               ; 2 uses
  %11 = mul i32 %i.r, 400
  %i.s = add i32 %1, %11
  %12 = add i32 %i.s, 400
  %i.t = zext nneg i32 %i.r to i64
  %.neg = mul nsw i64 %i.t, -146097
  %i.u = add nsw i64 %.neg, -146097
  br label %.preheader

_ZN8facebook5velox4util11isValidDateEiii.exit.thread: ; preds = %bb.a, %_ZN8facebook5velox4util11isValidDateEiii.exit
  %i.v = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox22threadSkipErrorDetailsEv()
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15, !range !17, !noundef !18
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit, label %bb.d

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit: ; preds = %_ZN8facebook5velox4util11isValidDateEiii.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 1)
  %i.y = load ptr, ptr %6, align 8, !tbaa !19, !noalias !22
  store ptr %i.y, ptr %0, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.z, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.i

bb.d:                                             ; preds = %_ZN8facebook5velox4util11isValidDateEiii.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !31
  store i32 %1, ptr %5, align 16, !tbaa !34, !alias.scope !35, !noalias !31
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %2, ptr %i.aa, align 16, !tbaa !34, !alias.scope !35, !noalias !31
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %3, ptr %i.ab, align 16, !tbaa !34, !alias.scope !35, !noalias !31
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str, i64 27, i64 273, ptr nonnull %5), !noalias !31
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 1, ptr noundef nonnull align 8 %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %4, align 8, !tbaa !38, !noalias !31 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN8facebook5velox6StatusD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !34, !noalias !31
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZN8facebook5velox6StatusD2Ev.exit20

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %4, align 8, !tbaa !38, !noalias !31 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.f
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !34, !noalias !31
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !31
  resume { ptr, i32 } %i.ah

_ZN8facebook5velox6StatusD2Ev.exit20:             ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !28
  %i.an = load ptr, ptr %7, align 8, !tbaa !19, !noalias !41
  store ptr %i.an, ptr %0, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ao, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader47
  %.039.lcssa = phi i32 [ %1, %.preheader47 ], [ %12, %.lr.ph.preheader ] ; 4 uses
  %.0.lcssa = phi i64 [ 0, %.preheader47 ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %i.ap = icmp samesign ugt i32 %.039.lcssa, 2369
  br i1 %i.ap, label %.lr.ph53.preheader, label %._crit_edge

.lr.ph53.preheader:                               ; preds = %.preheader
  %i.aq = add i32 %.039.lcssa, -400
  %i.ar = add i32 %.039.lcssa, -2370              ; 3 uses
  %i.as = urem i32 %i.ar, 400
  %.neg65 = sub i32 %i.as, %i.ar
  %i.at = add i32 %.neg65, %i.aq
  %i.au = udiv i32 %i.ar, 400
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.av, 146097
  %i.ax = add nsw i64 %.0.lcssa, %i.aw
  %i.ay = add nsw i64 %i.ax, 146097
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph53.preheader, %.preheader
  %.140.lcssa = phi i32 [ %.039.lcssa, %.preheader ], [ %i.at, %.lr.ph53.preheader ] ; 3 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %i.ay, %.lr.ph53.preheader ]
  %i.az = zext nneg i32 %.140.lcssa to i64
  %i.ba = getelementptr [4 x i8], ptr @_ZN8facebook5velox4utilL19kCumulativeYearDaysE, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -7880
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = sext i32 %i.bc to i64
  %i.be = and i32 %.140.lcssa, 3
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread43

_ZN8facebook5velox4util10isLeapYearEi.exit.thread43: ; preds = %._crit_edge
  %i.bg = zext nneg i32 %2 to i64
  %i.bh = getelementptr [4 x i8], ptr @_ZN8facebook5velox4utilL15kCumulativeDaysE, i64 %i.bg
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %.lhs.trunc = trunc nuw i32 %.140.lcssa to i16  ; 2 uses
  %i.bi = urem i16 %.lhs.trunc, 100
  %.not.i25 = icmp eq i16 %i.bi, 0
  br i1 %.not.i25, label %_ZN8facebook5velox4util10isLeapYearEi.exit, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread

_ZN8facebook5velox4util10isLeapYearEi.exit.thread: ; preds = %bb.g
  %i.bj = zext nneg i32 %2 to i64
  %i.bk = getelementptr [4 x i8], ptr @_ZN8facebook5velox4utilL19kCumulativeLeapDaysE, i64 %i.bj
  br label %bb.h

_ZN8facebook5velox4util10isLeapYearEi.exit:       ; preds = %bb.g
  %i.bl = urem i16 %.lhs.trunc, 400
  %i.bm = icmp eq i16 %i.bl, 0
  %i.bn = zext nneg i32 %2 to i64
  %spec.select.v = select i1 %i.bm, ptr @_ZN8facebook5velox4utilL19kCumulativeLeapDaysE, ptr @_ZN8facebook5velox4utilL15kCumulativeDaysE
  %spec.select = getelementptr [4 x i8], ptr %spec.select.v, i64 %i.bn
  br label %bb.h

bb.h:                                             ; preds = %_ZN8facebook5velox4util10isLeapYearEi.exit, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread43
  %i.bo = phi ptr [ %i.bh, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread43 ], [ %spec.select, %_ZN8facebook5velox4util10isLeapYearEi.exit ], [ %i.bk, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread ]
  %.in = getelementptr i8, ptr %i.bo, i64 -4
  %i.bp = load i32, ptr %.in, align 4, !tbaa !8
  %i.bq = sext i32 %i.bp to i64
  %i.br = add nsw i32 %3, -1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = add nsw i64 %.1.lcssa, %i.bs
  %i.bu = add nsw i64 %i.bt, %i.bd
  %i.bv = add nsw i64 %i.bu, %i.bq
  store i64 %i.bv, ptr %0, align 8, !tbaa !34
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bw, align 8, !tbaa !25
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

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %5, align 8, !tbaa !38, !noalias !50 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN8facebook5velox6StatusD2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !34, !noalias !50
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZN8facebook5velox6StatusD2Ev.exit17

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8, !tbaa !38, !noalias !50 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !34, !noalias !50
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

common.resume:                                    ; preds = %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ], [ %i.ay, %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !50
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit17:             ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !47
  %i.v = load ptr, ptr %8, align 8, !tbaa !19, !noalias !56
  store ptr %i.v, ptr %0, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.w, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZN8facebook5velox4util22daysSinceEpochFromDateEiii(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %9, i32 noundef %1, i32 noundef 1, i32 noundef 4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !25, !noalias !59 ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.aa = icmp eq i8 %i.y, 1
  br i1 %i.aa, label %bb.i, label %"_ZNO5folly8ExpectedIlN8facebook5velox6StatusEE4thenIJZNS2_4util26daysSinceEpochFromWeekDateEiiiE3$_0ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS3_LNSC_11StorageTypeE2EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSJ_.exit.thread", !prof !65

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !66
  %i.ab = load i64, ptr %9, align 8, !tbaa !67, !noalias !66 ; 4 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = sub i64 3, %i.ab
end_hunk_0
