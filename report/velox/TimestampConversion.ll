Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/TimestampConversion?download=true
inline.NumInlined: 489
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8facebook5velox4util32lastDayOfMonthSinceEpochFromDateERK2tm:bb.a
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9
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
  %.pn.i = load i32, ptr %i.n, align 4, !tbaa !9
  %.not = icmp sgt i32 %3, %.pn.i
  br i1 %.not, label %_ZN8facebook5velox4util11isValidDateEiii.exit.thread, label %.preheader47

.preheader47:                                     ; preds = %_ZN8facebook5velox4util11isValidDateEiii.exit
  %i.o = icmp slt i32 %1, 1970
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader47
  %i.p = sub nsw i32 1969, %1                     ; 3 uses
  %i.q = urem i32 %i.p, 400
  %i.r = sub nuw nsw i32 %i.p, %i.q
  %i.s = add nsw i32 %1, %i.r
  %i.t = add nsw i32 %i.s, 400
  %i.u = udiv i32 %i.p, 400
  %i.v = zext nneg i32 %i.u to i64
  %.neg = mul nsw i64 %i.v, -146097
  %i.w = add nsw i64 %.neg, -146097
  br label %.preheader

_ZN8facebook5velox4util11isValidDateEiii.exit.thread: ; preds = %bb.a, %_ZN8facebook5velox4util11isValidDateEiii.exit
  %i.x = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox22threadSkipErrorDetailsEv()
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14, !range !15, !noundef !16
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit, label %bb.d

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit: ; preds = %_ZN8facebook5velox4util11isValidDateEiii.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 1)
  %i.aa = load ptr, ptr %6, align 8, !tbaa !19, !noalias !57
  store ptr %i.aa, ptr %0, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ab, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.i

bb.d:                                             ; preds = %_ZN8facebook5velox4util11isValidDateEiii.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !59
  store i32 %1, ptr %5, align 16, !tbaa !23, !alias.scope !60, !noalias !59
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %2, ptr %i.ac, align 16, !tbaa !23, !alias.scope !60, !noalias !59
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %3, ptr %i.ad, align 16, !tbaa !23, !alias.scope !60, !noalias !59
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str, i64 27, i64 273, ptr nonnull %5), !noalias !59
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 1, ptr noundef nonnull align 8 %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %4, align 8, !tbaa !26, !noalias !59 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN8facebook5velox6StatusD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !23, !noalias !59
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #20
  br label %_ZN8facebook5velox6StatusD2Ev.exit20

bb.f:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %4, align 8, !tbaa !26, !noalias !59 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.al, align 8, !tbaa !23, !noalias !59
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !59
  resume { ptr, i32 } %i.aj

_ZN8facebook5velox6StatusD2Ev.exit20:             ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !58
  %i.ap = load ptr, ptr %7, align 8, !tbaa !19, !noalias !61
  store ptr %i.ap, ptr %0, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.aq, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader47
  %.039.lcssa = phi i32 [ %1, %.preheader47 ], [ %i.t, %.lr.ph.preheader ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %.preheader47 ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %i.ar = icmp samesign ugt i32 %.039.lcssa, 2369
  br i1 %i.ar, label %.lr.ph53.preheader, label %._crit_edge

.lr.ph53.preheader:                               ; preds = %.preheader
  %i.as = add nsw i32 %.039.lcssa, -400
  %i.at = add nsw i32 %.039.lcssa, 399
  %smin = tail call i32 @llvm.smin.i32(i32 %.039.lcssa, i32 2769)
  %8 = sub nsw i32 %i.at, %smin
  %.fr = freeze i32 %8                            ; 3 uses
  %i.au = urem i32 %.fr, 400
  %.neg65 = sub i32 %i.au, %.fr
  %i.av = add i32 %.neg65, %i.as
  %i.aw = udiv i32 %.fr, 400
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 146097
  %i.az = add nsw i64 %.0.lcssa, %i.ay
  %i.ba = add nsw i64 %i.az, 146097
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph53.preheader, %.preheader
  %.140.lcssa = phi i32 [ %.039.lcssa, %.preheader ], [ %i.av, %.lr.ph53.preheader ] ; 3 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %i.ba, %.lr.ph53.preheader ]
  %i.bb = zext nneg i32 %.140.lcssa to i64
  %i.bc = getelementptr [4 x i8], ptr @_ZN8facebook5velox4utilL19kCumulativeYearDaysE, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -7880
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.bf = sext i32 %i.be to i64
  %i.bg = and i32 %.140.lcssa, 3
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread43

_ZN8facebook5velox4util10isLeapYearEi.exit.thread43: ; preds = %._crit_edge
  %i.bi = zext nneg i32 %2 to i64
  %i.bj = getelementptr [4 x i8], ptr @_ZN8facebook5velox4utilL15kCumulativeDaysE, i64 %i.bi
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %.lhs.trunc = trunc nuw i32 %.140.lcssa to i16  ; 2 uses
  %i.bk = urem i16 %.lhs.trunc, 100
  %.not.i25 = icmp eq i16 %i.bk, 0
  br i1 %.not.i25, label %_ZN8facebook5velox4util10isLeapYearEi.exit, label %_ZN8facebook5velox4util10isLeapYearEi.exit.thread

_ZN8facebook5velox4util10isLeapYearEi.exit.thread: ; preds = %bb.g
  %i.bl = zext nneg i32 %2 to i64
  %i.bm = getelementptr [4 x i8], ptr @_ZN8facebook5velox4utilL19kCumulativeLeapDaysE, i64 %i.bl
  br label %bb.h

_ZN8facebook5velox4util10isLeapYearEi.exit:       ; preds = %bb.g
  %i.bn = urem i16 %.lhs.trunc, 400
  %i.bo = icmp eq i16 %i.bn, 0
  %i.bp = zext nneg i32 %2 to i64
  %spec.select.v = select i1 %i.bo, ptr @_ZN8facebook5velox4utilL19kCumulativeLeapDaysE, ptr @_ZN8facebook5velox4utilL15kCumulativeDaysE
  %spec.select = getelementptr [4 x i8], ptr %spec.select.v, i64 %i.bp
  br label %bb.h

bb.h:                                             ; preds = %_ZN8facebook5velox4util10isLeapYearEi.exit, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread43
  %i.bq = phi ptr [ %i.bj, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread43 ], [ %spec.select, %_ZN8facebook5velox4util10isLeapYearEi.exit ], [ %i.bm, %_ZN8facebook5velox4util10isLeapYearEi.exit.thread ]
  %.in = getelementptr i8, ptr %i.bq, i64 -4
  %i.br = load i32, ptr %.in, align 4, !tbaa !9
  %i.bs = sext i32 %i.br to i64
  %i.bt = add nsw i32 %3, -1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = add nsw i64 %.1.lcssa, %i.bu
  %i.bw = add nsw i64 %i.bv, %i.bf
  %i.bx = add nsw i64 %i.bw, %i.bs
  store i64 %i.bx, ptr %0, align 8, !tbaa !23
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.by, align 8, !tbaa !22
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
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14, !range !15, !noundef !16
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit, label %bb.c

_ZN5folly10UnexpectedIN8facebook5velox6StatusEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 1)
  %i.g = load ptr, ptr %7, align 8, !tbaa !19, !noalias !84
  store ptr %i.g, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.h, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !86
  store i32 %1, ptr %6, align 16, !tbaa !23, !alias.scope !87, !noalias !86
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %2, ptr %i.i, align 16, !tbaa !23, !alias.scope !87, !noalias !86
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %3, ptr %i.j, align 16, !tbaa !23, !alias.scope !87, !noalias !86
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str, i64 27, i64 273, ptr nonnull %6), !noalias !86
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 1, ptr noundef nonnull align 8 %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %5, align 8, !tbaa !26, !noalias !86 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN8facebook5velox6StatusD2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !86
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZN8facebook5velox6StatusD2Ev.exit17

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8, !tbaa !26, !noalias !86 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !23, !noalias !86
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

common.resume:                                    ; preds = %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ], [ %i.ay, %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !86
  br label %common.resume

_ZN8facebook5velox6StatusD2Ev.exit17:             ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !85
  %i.v = load ptr, ptr %8, align 8, !tbaa !19, !noalias !88
  store ptr %i.v, ptr %0, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.w, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZN8facebook5velox4util22daysSinceEpochFromDateEiii(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %9, i32 noundef %1, i32 noundef 1, i32 noundef 4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !22, !noalias !89 ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.aa = icmp eq i8 %i.y, 1
  br i1 %i.aa, label %bb.i, label %"_ZNO5folly8ExpectedIlN8facebook5velox6StatusEE4thenIJZNS2_4util26daysSinceEpochFromWeekDateEiiiE3$_0ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS3_LNSC_11StorageTypeE2EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSJ_.exit.thread", !prof !27

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !91
  %i.ab = load i64, ptr %9, align 8, !tbaa !28, !noalias !91 ; 4 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = sub i64 3, %i.ab
  %i.ae = urem i64 %i.ad, 7
  %i.af = sub nuw nsw i64 6, %i.ae
  br label %"_ZZN8facebook5velox4util26daysSinceEpochFromWeekDateEiiiENK3$_0clEl.exit.i.i"

bb.k:                                             ; preds = %bb.i
  %narrow.i.i.i.i = add nuw i64 %i.ab, 3
  %i.ag = urem i64 %narrow.i.i.i.i, 7
  br label %"_ZZN8facebook5velox4util26daysSinceEpochFromWeekDateEiiiENK3$_0clEl.exit.i.i"

"_ZZN8facebook5velox4util26daysSinceEpochFromWeekDateEiiiENK3$_0clEl.exit.i.i": ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i64 [ %i.af, %bb.j ], [ %i.ag, %bb.k ]
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4util12_GLOBAL__N_116parseDoubleDigitEPKcmRmRi:bb.a
  %i.p = add nuw i64 %i.a, 2
  store i64 %i.p, ptr %2, align 8, !tbaa !28
  %i.q = load i8, ptr %i.l, align 1, !tbaa !23
  %i.r = sext i8 %i.q to i32
  %i.s = mul nsw i32 %i.j, 10
  %i.t = add nsw i32 %i.s, -48
  %i.u = add nsw i32 %i.t, %i.r
  store i32 %i.u, ptr %3, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0 = phi i1 [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #9

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #4

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #9

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Status9UserErrorIJRA85_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(85) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.54", align 16 ; 6 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !235
  %i.b = load ptr, ptr %2, align 8, !tbaa !26, !noalias !235
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !235
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %4, align 16, !noalias !235
  %.sroa_idx8.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %.sroa_idx8.i, align 8, !noalias !235
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull %1, i64 %i.a, i64 13, ptr nonnull %4), !noalias !235
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !26, !noalias !235 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN8facebook5velox6Status8fromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !23, !noalias !235
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZN8facebook5velox6Status8fromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8, !tbaa !26, !noalias !235 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !235
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !235
  resume { ptr, i32 } %i.k

_ZN8facebook5velox6Status8fromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef align 8) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

declare void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE6assignIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE11assignValueIJlEEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !22    ; 4 uses
  switch i8 %i.c, label %bb.j [
    i8 1, label %bb.c
    i8 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %1, align 8, !tbaa !28
  store i64 %i.g, ptr %0, align 8, !tbaa !28
  br label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE11assignValueIJlEEEvDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %cond.i.i = icmp ne i8 %i.e, 2
  %i.h = load ptr, ptr %0, align 8
  %.not.i.i.i = icmp eq ptr %i.h, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i, !prof !29
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit.i, label %bb.f, !prof !29

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %0)
  br label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit.i

_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit.i: ; preds = %bb.f, %bb.e
  %i.i = load i64, ptr %1, align 8, !tbaa !28
  store i64 %i.i, ptr %0, align 8, !tbaa !28
  store i8 1, ptr %i.d, align 8, !tbaa !22
  br label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE11assignValueIJlEEEvDpOT_.exit

bb.g:                                             ; preds = %bb.b
  %i.j = icmp eq i8 %i.e, 2
  br i1 %i.j, label %bb.h, label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit.i5

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5folly15expected_detail15doEmplaceAssignIN8facebook5velox6StatusES4_EEDTcvvaSfp0_scT0_fp1_EiRT_OS5_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN8facebook5velox6Status5StateD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZN8facebook5velox6Status5StateD2Ev.exit.i.i.i.i

_ZN8facebook5velox6Status5StateD2Ev.exit.i.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #20
  br label %_ZN5folly15expected_detail15doEmplaceAssignIN8facebook5velox6StatusES4_EEDTcvvaSfp0_scT0_fp1_EiRT_OS5_.exit.i

_ZN5folly15expected_detail15doEmplaceAssignIN8facebook5velox6StatusES4_EEDTcvvaSfp0_scT0_fp1_EiRT_OS5_.exit.i: ; preds = %_ZN8facebook5velox6Status5StateD2Ev.exit.i.i.i.i, %bb.h
  %i.s = load ptr, ptr %1, align 8, !tbaa !19
  store ptr %i.s, ptr %0, align 8, !tbaa !19
  store ptr null, ptr %1, align 8, !tbaa !19
  br label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE11assignValueIJlEEEvDpOT_.exit

_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit.i5: ; preds = %bb.g
  %i.t = load ptr, ptr %1, align 8, !tbaa !19
  store ptr %i.t, ptr %0, align 8, !tbaa !19
  store ptr null, ptr %1, align 8, !tbaa !19
  store i8 2, ptr %i.d, align 8, !tbaa !22
  br label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE11assignValueIJlEEEvDpOT_.exit

bb.j:                                             ; preds = %bb.b
  %cond.i = icmp ne i8 %i.e, 2
  %i.u = load ptr, ptr %0, align 8
  %.not.i.i = icmp eq ptr %i.u, null
  %or.cond.i = select i1 %cond.i, i1 true, i1 %.not.i.i, !prof !29
  br i1 %or.cond.i, label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit, label %bb.k, !prof !29

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %0)
  br label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit

_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit: ; preds = %bb.j, %bb.k
  store i8 0, ptr %i.d, align 8, !tbaa !22
  br label %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE11assignValueIJlEEEvDpOT_.exit

_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE11assignValueIJlEEEvDpOT_.exit: ; preds = %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit.i5, %_ZN5folly15expected_detail15doEmplaceAssignIN8facebook5velox6StatusES4_EEDTcvvaSfp0_scT0_fp1_EiRT_OS5_.exit.i, %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit.i, %bb.d, %bb.a, %_ZN5folly15expected_detail15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EE5clearEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !34}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!"p1 _ZTSN8facebook5velox6Status5StateE", !11, i64 0}
!18 = !{!"_ZTSN8facebook5velox6StatusE", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"_ZTSN5folly15expected_detail5WhichE", !5, i64 0}
!21 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionIlN8facebook5velox6StatusEEE", !5, i64 0, !20, i64 8}
!22 = !{!21, !20, i64 8}
!23 = !{!5, !5, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !10, i64 8, !5, i64 16}
!26 = !{!25, !12, i64 0}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!10, !10, i64 0}
!29 = !{!"branch_weights", i32 4001, i32 1}
!30 = !{!"branch_weights", i32 2146946777, i32 536871}
!31 = !{!24, !12, i64 0}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!25, !10, i64 8}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
!36 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !10, i64 0, !12, i64 8}
!37 = !{!36, !10, i64 0}
!38 = !{!36, !12, i64 8}
!39 = !{!"_ZTSN8facebook5velox9TimestampE", !10, i64 0, !10, i64 8}
!40 = !{!39, !10, i64 0}
!41 = !{!"vtable pointer", !4, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{ptr @_ZN5folly17BadExpectedAccessIN8facebook5velox6StatusEED2Ev}
!44 = !{!"_ZTS2tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !12, i64 48}
!45 = !{!44, !6, i64 20}
!46 = !{!44, !6, i64 16}
!47 = distinct !{!47, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!48 = distinct !{!48, !47, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!49 = distinct !{!49, !"_ZN8facebook5velox6Status9UserErrorIJRA28_KcRiS6_S6_EEES1_DpOT_"}
!50 = distinct !{!50, !49, !"_ZN8facebook5velox6Status9UserErrorIJRA28_KcRiS6_S6_EEES1_DpOT_: argument 0"}
!51 = distinct !{!51, !"_ZN8facebook5velox6Status8fromArgsIJRiS3_S3_EEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
!52 = distinct !{!52, !51, !"_ZN8facebook5velox6Status8fromArgsIJRiS3_S3_EEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!53 = distinct !{!53, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJiiiELi3ELi0ELy273EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!54 = distinct !{!54, !53, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJiiiELi3ELi0ELy273EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!55 = distinct !{!55, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!56 = distinct !{!56, !55, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!57 = !{!48}
!58 = !{!50}
!59 = !{!52, !50}
!60 = !{!54}
!61 = !{!56}
!62 = distinct !{!62, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!63 = distinct !{!63, !62, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!64 = distinct !{!64, !"_ZN8facebook5velox6Status9UserErrorIJRA28_KcRiS6_S6_EEES1_DpOT_"}
!65 = distinct !{!65, !64, !"_ZN8facebook5velox6Status9UserErrorIJRA28_KcRiS6_S6_EEES1_DpOT_: argument 0"}
!66 = distinct !{!66, !"_ZN8facebook5velox6Status8fromArgsIJRiS3_S3_EEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
!67 = distinct !{!67, !66, !"_ZN8facebook5velox6Status8fromArgsIJRiS3_S3_EEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!68 = distinct !{!68, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJiiiELi3ELi0ELy273EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!69 = distinct !{!69, !68, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJiiiELi3ELi0ELy273EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!70 = distinct !{!70, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!71 = distinct !{!71, !70, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!72 = distinct !{!72, !"_ZNO5folly8ExpectedIlN8facebook5velox6StatusEE4thenIJZNS2_4util26daysSinceEpochFromWeekDateEiiiE3$_0ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS3_LNSC_11StorageTypeE2EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSJ_"}
!73 = distinct !{!73, !72, !"_ZNO5folly8ExpectedIlN8facebook5velox6StatusEE4thenIJZNS2_4util26daysSinceEpochFromWeekDateEiiiE3$_0ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS3_LNSC_11StorageTypeE2EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSJ_: argument 0"}
!74 = distinct !{!74, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EEEZNS6_4util26daysSinceEpochFromWeekDateEiiiE3$_0JES7_S2_EEDTclsrT3_5then_clsrSC_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalIT_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSF_OSE_DpOSG_"}
!75 = distinct !{!75, !74, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EEEZNS6_4util26daysSinceEpochFromWeekDateEiiiE3$_0JES7_S2_EEDTclsrT3_5then_clsrSC_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalIT_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSF_OSE_DpOSG_: argument 0"}
!76 = distinct !{!76, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper7return_IN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS9_"}
!77 = distinct !{!77, !76, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper7return_IN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS9_: argument 0"}
!78 = distinct !{!78, !"_ZN5folly12makeExpectedIN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS6_"}
!79 = distinct !{!79, !78, !"_ZN5folly12makeExpectedIN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS6_: argument 0"}
!80 = distinct !{!80, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedIlN8facebook5velox6StatusEEEEENSt5decayIT_E4typeEOSA_"}
!81 = distinct !{!81, !80, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedIlN8facebook5velox6StatusEEEEENSt5decayIT_E4typeEOSA_: argument 0"}
!82 = distinct !{!82, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!83 = distinct !{!83, !82, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!84 = !{!63}
!85 = !{!65}
!86 = !{!67, !65}
!87 = !{!69}
!88 = !{!71}
!89 = !{!73}
!90 = !{!75}
!91 = !{!75, !73}
!92 = !{!79, !77}
!93 = !{!81, !75, !73}
!94 = !{!83, !75, !73}
!95 = distinct !{!95, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!96 = distinct !{!96, !95, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!97 = distinct !{!97, !"_ZN8facebook5velox6Status9UserErrorIJRA31_KcRiS6_S6_S6_EEES1_DpOT_"}
!98 = distinct !{!98, !97, !"_ZN8facebook5velox6Status9UserErrorIJRA31_KcRiS6_S6_S6_EEES1_DpOT_: argument 0"}
!99 = distinct !{!99, !"_ZN8facebook5velox6Status8fromArgsIJRiS3_S3_S3_EEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
!100 = distinct !{!100, !99, !"_ZN8facebook5velox6Status8fromArgsIJRiS3_S3_S3_EEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!101 = distinct !{!101, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJiiiiELi4ELi0ELy4369EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!102 = distinct !{!102, !101, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJiiiiELi4ELi0ELy4369EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!103 = distinct !{!103, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!104 = distinct !{!104, !103, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!105 = distinct !{!105, !"_ZNO5folly8ExpectedIlN8facebook5velox6StatusEE4thenIJZNS2_4util33daysSinceEpochFromWeekOfMonthDateEiiiibE3$_0ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS3_LNSC_11StorageTypeE2EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSJ_"}
!106 = distinct !{!106, !105, !"_ZNO5folly8ExpectedIlN8facebook5velox6StatusEE4thenIJZNS2_4util33daysSinceEpochFromWeekOfMonthDateEiiiibE3$_0ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS3_LNSC_11StorageTypeE2EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSJ_: argument 0"}
!107 = distinct !{!107, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EEEZNS6_4util33daysSinceEpochFromWeekOfMonthDateEiiiibE3$_0JES7_S2_EEDTclsrT3_5then_clsrSC_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalIT_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSF_OSE_DpOSG_"}
!108 = distinct !{!108, !107, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EEEZNS6_4util33daysSinceEpochFromWeekOfMonthDateEiiiibE3$_0JES7_S2_EEDTclsrT3_5then_clsrSC_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalIT_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSF_OSE_DpOSG_: argument 0"}
!109 = distinct !{!109, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper7return_IN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS9_"}
!110 = distinct !{!110, !109, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper7return_IN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS9_: argument 0"}
!111 = distinct !{!111, !"_ZN5folly12makeExpectedIN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS6_"}
!112 = distinct !{!112, !111, !"_ZN5folly12makeExpectedIN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS6_: argument 0"}
!113 = distinct !{!113, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedIlN8facebook5velox6StatusEEEEENSt5decayIT_E4typeEOSA_"}
!114 = distinct !{!114, !113, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedIlN8facebook5velox6StatusEEEEENSt5decayIT_E4typeEOSA_: argument 0"}
!115 = distinct !{!115, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!116 = distinct !{!116, !115, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!117 = !{!"branch_weights", i32 1, i32 4002001, i32 4002000}
!118 = !{!"branch_weights", i32 2146410443, i32 1073205}
!119 = !{!96}
!120 = !{!98}
!121 = !{!100, !98}
!122 = !{!102}
!123 = !{!104}
!124 = !{!106}
!125 = !{!108}
!126 = !{!108, !106}
!127 = !{!112, !110}
!128 = !{!114, !108, !106}
!129 = !{!116, !108, !106}
!130 = distinct !{!130, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!131 = distinct !{!131, !130, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!132 = distinct !{!132, !"_ZN8facebook5velox6Status9UserErrorIJRA29_KcRiEEES1_DpOT_"}
!133 = distinct !{!133, !132, !"_ZN8facebook5velox6Status9UserErrorIJRA29_KcRiEEES1_DpOT_: argument 0"}
!134 = distinct !{!134, !"_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_"}
!135 = distinct !{!135, !134, !"_ZN8facebook5velox6Status8fromArgsIJRiEEES1_NS0_10StatusCodeEN3fmt3v1117basic_string_viewIcEEDpOT_: argument 0"}
!136 = distinct !{!136, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!137 = distinct !{!137, !136, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!138 = distinct !{!138, !"_ZNO5folly8ExpectedIlN8facebook5velox6StatusEE4thenIJZNS2_4util27daysSinceEpochFromDayOfYearEiiE3$_0ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS3_LNSC_11StorageTypeE2EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSJ_"}
!139 = distinct !{!139, !138, !"_ZNO5folly8ExpectedIlN8facebook5velox6StatusEE4thenIJZNS2_4util27daysSinceEpochFromDayOfYearEiiE3$_0ELb0ETnNSt9enable_ifIXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIlS3_LNSC_11StorageTypeE2EEEEDTcl9__declvalIT_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSJ_: argument 0"}
!140 = distinct !{!140, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EEEZNS6_4util27daysSinceEpochFromDayOfYearEiiE3$_0JES7_S2_EEDTclsrT3_5then_clsrSC_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalIT_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSF_OSE_DpOSG_"}
!141 = distinct !{!141, !140, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIlN8facebook5velox6StatusELNS0_11StorageTypeE2EEEZNS6_4util27daysSinceEpochFromDayOfYearEiiE3$_0JES7_S2_EEDTclsrT3_5then_clsrSC_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalIT_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSF_OSE_DpOSG_: argument 0"}
!142 = distinct !{!142, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper7return_IN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS9_"}
!143 = distinct !{!143, !142, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper7return_IN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS9_: argument 0"}
!144 = distinct !{!144, !"_ZN5folly12makeExpectedIN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS6_"}
!145 = distinct !{!145, !144, !"_ZN5folly12makeExpectedIN8facebook5velox6StatusElEENS_8ExpectedINSt5decayIT0_E4typeET_EEOS6_: argument 0"}
!146 = distinct !{!146, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedIlN8facebook5velox6StatusEEEEENSt5decayIT_E4typeEOSA_"}
!147 = distinct !{!147, !146, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS_8ExpectedIlN8facebook5velox6StatusEEEEENSt5decayIT_E4typeEOSA_: argument 0"}
!148 = distinct !{!148, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!149 = distinct !{!149, !148, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!150 = !{!131}
!151 = !{!133}
!152 = !{!135, !133}
!153 = !{!137}
!154 = !{!139}
!155 = !{!141}
!156 = !{!141, !139}
!157 = !{!145, !143}
!158 = !{!147, !141, !139}
!159 = !{!149, !141, !139}
!160 = distinct !{!160, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!161 = distinct !{!161, !160, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!162 = distinct !{!162, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!163 = distinct !{!163, !162, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!164 = distinct !{!164, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!165 = distinct !{!165, !164, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!166 = distinct !{!166, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_"}
!167 = distinct !{!167, !166, !"_ZN5folly14makeUnexpectedIN8facebook5velox6StatusEEENS_10UnexpectedINSt5decayIT_E4typeEEEOS6_: argument 0"}
!168 = !{!161}
!169 = !{!"_ZTSN5folly15expected_detail13ExpectedUnionIiN8facebook5velox6StatusEEE", !5, i64 0, !20, i64 8}
!170 = !{!169, !20, i64 8}
end_hunk_1
