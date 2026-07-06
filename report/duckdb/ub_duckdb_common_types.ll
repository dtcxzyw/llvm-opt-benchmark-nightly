inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb6vectorImLb1ESaImEEixEm:bb.a
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb9DataChunk6VerifyEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb9DataChunk5PrintEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZNK6duckdb9DataChunk8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %0)
  invoke void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.a) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.e) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #21 align 2 {
bb.a:
  store i32 1970, ptr %1, align 4, !tbaa !3
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.lcssa16 = phi i32 [ %i.a, %bb.a ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.c = icmp samesign ugt i32 %.lcssa16, 146096
  br i1 %i.c, label %.lr.ph17, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi i32 [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.e = add nsw i32 %i.d, 146097
  store i32 %i.e, ptr %0, align 4, !tbaa !3
  %i.f = load i32, ptr %1, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, -400
  store i32 %i.g, ptr %1, align 4, !tbaa !3
  %i.h = load i32, ptr %0, align 4, !tbaa !3      ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.preheader, !llvm.loop !781

.lr.ph17:                                         ; preds = %.preheader, %.lr.ph17
  %i.j = phi i32 [ %.pr, %.lr.ph17 ], [ %.lcssa16, %.preheader ]
  %i.k = add nsw i32 %i.j, -146097
  store i32 %i.k, ptr %0, align 4, !tbaa !3
  %i.l = load i32, ptr %1, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, 400
  store i32 %i.m, ptr %1, align 4, !tbaa !3
  %.pr = load i32, ptr %0, align 4, !tbaa !3      ; 3 uses
  %i.n = icmp sgt i32 %.pr, 146096
  br i1 %i.n, label %.lr.ph17, label %._crit_edge, !llvm.loop !782

._crit_edge:                                      ; preds = %.lr.ph17, %.preheader
  %.lcssa = phi i32 [ %.lcssa16, %.preheader ], [ %.pr, %.lr.ph17 ]
  %i.o = sdiv i32 %.lcssa, 365
  %i.p = sext i32 %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.p, %._crit_edge ] ; 3 uses
  %i.q = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  store i32 %i.q, ptr %2, align 4, !tbaa !3
  %i.r = load i32, ptr %0, align 4, !tbaa !3
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp slt i32 %i.r, %i.t
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.u, label %bb.b, label %bb.c, !llvm.loop !783

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %1, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, %i.q
  store i32 %i.w, ptr %1, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_(i32 %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = tail call i32 @llvm.umax.i32(i32 %0, i32 -146097)
  %i.c = icmp samesign ult i32 %0, -146097
  %umin = zext i1 %i.c to i32                     ; 2 uses
  %i.d = add nsw i32 %0, %umin
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = udiv i32 %i.e, 146097
  %i.g = add nuw nsw i32 %i.f, %umin              ; 2 uses
  %i.h = mul i32 %i.g, 146097
  %i.i = add i32 %0, %i.h
  %i.j = add i32 %i.i, 146097
  %.neg27 = mul nsw i32 %i.g, -400
  %i.k = add nsw i32 %.neg27, 1570
  br label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.a
  %i.l = icmp samesign ugt i32 %0, 146096
  br i1 %i.l, label %.lr.ph17.i.preheader, label %._crit_edge.i

.lr.ph17.i.preheader:                             ; preds = %.preheader.i
  %i.m = add nsw i32 %0, -146097
  %i.n = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.o = add nuw i32 %i.n, 146096
  %i.p = udiv i32 %i.o, 146097                    ; 2 uses
  %.neg = mul nsw i32 %i.p, -146097
  %i.q = add nsw i32 %.neg, %i.m
  %i.r = mul nuw nsw i32 %i.p, 400
  %i.s = add nuw nsw i32 %i.r, 2370
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph17.i.preheader, %.lr.ph.i.preheader, %.preheader.i
  %i.t = phi i32 [ %i.k, %.lr.ph.i.preheader ], [ 1970, %.preheader.i ], [ %i.s, %.lr.ph17.i.preheader ]
  %.1 = phi i32 [ %i.j, %.lr.ph.i.preheader ], [ %0, %.preheader.i ], [ %i.q, %.lr.ph17.i.preheader ] ; 3 uses
  %i.u = udiv i32 %.1, 365
  %i.v = zext nneg i32 %i.u to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3    ; 3 uses
  %i.y = icmp slt i32 %.1, %i.x
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.y, label %bb.b, label %_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit, !llvm.loop !783

_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit: ; preds = %bb.b
  %i.z = trunc nsw i64 %indvars.iv.i to i32
  %i.aa = add nsw i32 %i.t, %i.z
  store i32 %i.aa, ptr %1, align 4, !tbaa !3
  %i.ab = sub nsw i32 %.1, %i.x                   ; 2 uses
  store i32 %i.ab, ptr %3, align 4, !tbaa !3
  %i.ac = getelementptr i8, ptr %i.w, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = sub nsw i32 %i.ad, %i.x
  %i.af = icmp eq i32 %i.ae, 366                  ; 2 uses
  %4 = zext nneg i32 %i.ab to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE = select i1 %i.af, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE = select i1 %i.af, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.ag = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE, i64 %4
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !153 ; 2 uses
  %i.ai = sext i8 %i.ah to i32
  store i32 %i.ai, ptr %2, align 4, !tbaa !3
  %i.aj = sext i8 %i.ah to i64
  %i.ak = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = load i32, ptr %3, align 4, !tbaa !3
  %i.ao = sub nsw i32 %i.an, %i.am
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %3, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6duckdb4Date11TryFromDateEiiiRNS_6date_tE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = add i32 %1, -13
  %or.cond.i = icmp ult i32 %i.a, -12
  %i.b = icmp slt i32 %2, 1
  %or.cond29.i = or i1 %or.cond.i, %i.b
  br i1 %or.cond29.i, label %_ZN6duckdb4Date7IsValidEiii.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %0, -5877640
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ne i32 %0, -5877641
  %i.d = icmp samesign ult i32 %1, 6
  %or.cond30.i = or i1 %.not.i, %i.d
  br i1 %or.cond30.i, label %_ZN6duckdb4Date7IsValidEiii.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i32 %1, 6
  %i.f = icmp samesign ult i32 %2, 25
  %or.cond3.i = and i1 %i.e, %i.f
  br i1 %or.cond3.i, label %_ZN6duckdb4Date7IsValidEiii.exit.thread, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread37.i

bb.e:                                             ; preds = %bb.b
  %i.g = icmp sgt i32 %0, 5881579
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not28.i = icmp ne i32 %0, 5881580
  %i.h = icmp samesign ugt i32 %1, 7
  %or.cond31.i = or i1 %.not28.i, %i.h
  br i1 %or.cond31.i, label %_ZN6duckdb4Date7IsValidEiii.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = icmp eq i32 %1, 7
  %i.j = icmp samesign ugt i32 %2, 10
  %or.cond5.i = and i1 %i.i, %i.j
  br i1 %or.cond5.i, label %_ZN6duckdb4Date7IsValidEiii.exit.thread, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i

bb.h:                                             ; preds = %bb.e
  %i.k = and i32 %0, 3
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread37.i

bb.i:                                             ; preds = %bb.h
  %i.m = srem i32 %0, 100
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i

_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i:      ; preds = %bb.i, %bb.g
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb4Date9LEAP_DAYSE, i64 %i.n
  br label %_ZN6duckdb4Date7IsValidEiii.exit

_ZN6duckdb4Date10IsLeapYearEi.exit.thread37.i:    ; preds = %bb.h, %bb.d
  %i.p = zext nneg i32 %1 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb4Date11NORMAL_DAYSE, i64 %i.p
  br label %_ZN6duckdb4Date7IsValidEiii.exit

_ZN6duckdb4Date10IsLeapYearEi.exit.i:             ; preds = %bb.i
  %i.r = srem i32 %0, 400
  %i.s = icmp eq i32 %i.r, 0
  %i.t = zext nneg i32 %1 to i64
  %spec.select.v.i = select i1 %i.s, ptr @_ZN6duckdb4Date9LEAP_DAYSE, ptr @_ZN6duckdb4Date11NORMAL_DAYSE
  %spec.select.i = getelementptr inbounds nuw [4 x i8], ptr %spec.select.v.i, i64 %i.t
  br label %_ZN6duckdb4Date7IsValidEiii.exit

_ZN6duckdb4Date7IsValidEiii.exit:                 ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread37.i, %_ZN6duckdb4Date10IsLeapYearEi.exit.i
  %i.u = phi ptr [ %i.q, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread37.i ], [ %spec.select.i, %_ZN6duckdb4Date10IsLeapYearEi.exit.i ], [ %i.o, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i ]
  %.pn.i = load i32, ptr %i.u, align 4, !tbaa !3
  %.not = icmp sgt i32 %2, %.pn.i
  br i1 %.not, label %_ZN6duckdb4Date7IsValidEiii.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb4Date7IsValidEiii.exit
  %i.v = and i32 %0, 3
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread36

_ZN6duckdb4Date10IsLeapYearEi.exit.thread36:      ; preds = %bb.j
  %i.x = zext nneg i32 %1 to i64
  %i.y = getelementptr [4 x i8], ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE, i64 %i.x
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = srem i32 %0, 100
  %.not.i33 = icmp eq i32 %i.z, 0
  br i1 %.not.i33, label %_ZN6duckdb4Date10IsLeapYearEi.exit, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread

_ZN6duckdb4Date10IsLeapYearEi.exit.thread:        ; preds = %bb.k
  %i.aa = zext nneg i32 %1 to i64
  %i.ab = getelementptr [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, i64 %i.aa
  br label %bb.l

_ZN6duckdb4Date10IsLeapYearEi.exit:               ; preds = %bb.k
  %i.ac = srem i32 %0, 400
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = zext nneg i32 %1 to i64
  %spec.select.v = select i1 %i.ad, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %spec.select = getelementptr [4 x i8], ptr %spec.select.v, i64 %i.ae
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread36
  %i.af = phi ptr [ %i.y, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread36 ], [ %spec.select, %_ZN6duckdb4Date10IsLeapYearEi.exit ], [ %i.ab, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread ]
  %.in = getelementptr i8, ptr %i.af, i64 -4
  %i.ag = load i32, ptr %.in, align 4, !tbaa !3
  %i.ah = add nsw i32 %2, -1
  %i.ai = add nsw i32 %i.ah, %i.ag                ; 3 uses
  %i.aj = icmp slt i32 %0, 1970
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = sub nsw i32 1970, %0                    ; 2 uses
  %i.al = urem i32 %i.ak, 400
  %i.am = sub nuw nsw i32 400, %i.al
  %i.an = udiv i32 %i.ak, 400
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %.neg = mul nsw i32 %i.an, -146097
  %i.ar = add i32 %.neg, -146097
  %i.as = add i32 %i.ar, %i.ai
  %i.at = add i32 %i.as, %i.aq
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.au = icmp samesign ugt i32 %0, 2369
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = add nsw i32 %0, -2370                   ; 2 uses
  %i.aw = urem i32 %i.av, 400
  %i.ax = udiv i32 %i.av, 400
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = mul nuw nsw i32 %i.ax, 146097
  %i.bc = add nuw nsw i32 %i.bb, 146097
  %i.bd = add i32 %i.bc, %i.ai
  %i.be = add i32 %i.bd, %i.ba
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bf = zext nneg i32 %0 to i64
  %i.bg = getelementptr [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -7880
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = add nsw i32 %i.bi, %i.ai
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %.031 = phi i32 [ %i.at, %bb.m ], [ %i.be, %bb.o ], [ %i.bj, %bb.p ]
  store i32 %.031, ptr %3, align 4, !tbaa !3
  br label %_ZN6duckdb4Date7IsValidEiii.exit.thread

_ZN6duckdb4Date7IsValidEiii.exit.thread:          ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %bb.a, %_ZN6duckdb4Date7IsValidEiii.exit, %bb.q
  %.0.i35 = phi i1 [ true, %bb.q ], [ false, %_ZN6duckdb4Date7IsValidEiii.exit ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.0.i35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN6duckdb4Date7IsValidEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = add i32 %1, -13
  %or.cond = icmp ult i32 %i.a, -12
  %i.b = icmp slt i32 %2, 1
  %or.cond29 = or i1 %or.cond, %i.b
  br i1 %or.cond29, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %0, -5877640
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne i32 %0, -5877641
  %i.d = icmp samesign ult i32 %1, 6
  %or.cond30 = or i1 %.not, %i.d
  br i1 %or.cond30, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i32 %1, 6
  %i.f = icmp samesign ult i32 %2, 25
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %bb.k, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread37

end_hunk_0
begin_hunk_1_@_ZN6duckdb4Date11FromCStringEPKcmb:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.j) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.010, label %.sink.split71, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.010, label %.sink.split71, label %bb.m

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.thread
  %.pn23.pn38.ph = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %.sink.split71

bb.g:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb4Date10RangeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.n unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread: ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split70

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !89     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.t) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %i.w = load ptr, ptr %8, align 8, !tbaa !89     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread: ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %.sink.split70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread
  call void @_ZdlPv(ptr noundef %i.aa) #47
  br label %.sink.split70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  call void @_ZdlPv(ptr noundef %i.w) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br i1 %.0, label %.sink.split71, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br i1 %.0, label %.sink.split71, label %bb.m

.sink.split70:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.thread
  %.pn.pn50.ph = phi { ptr, i32 } [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %.sink.split71

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.ad = load i32, ptr %3, align 4
  ret i32 %i.ad

.sink.split71:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %.sink.split70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %.sink.split
  %.sink = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.d, %.sink.split ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.q, %.sink.split70 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  %.pn23.pn.pn.ph = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %.pn23.pn38.ph, %.sink.split ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %.pn.pn50.ph, %.sink.split70 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  call void @__cxa_free_exception(ptr %.sink) #46
  br label %bb.m

bb.m:                                             ; preds = %.sink.split71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.pn23.pn.pn.ph, %.sink.split71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  resume { ptr, i32 } %.pn23.pn.pn

bb.n:                                             ; preds = %bb.j, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define i32 @_ZN6duckdb4Date10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !152
  %i.d = tail call i32 @_ZN6duckdb4Date11FromCStringEPKcmb(ptr noundef %i.a, i64 noundef %i.c, i1 noundef zeroext %1)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Date8ToStringB5cxx11ENS_6date_tE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  switch i32 %1, label %bb.b [
    i32 2147483647, label %._crit_edge.i.i
    i32 -2147483647, label %._crit_edge.i.i8
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !151
  store i64 8751735898823356009, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.c, align 8, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !153
  br label %bb.g

._crit_edge.i.i8:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.e, ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.f, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.g, align 1, !tbaa !153
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.i = icmp samesign ult i32 %1, -146097        ; 2 uses
  %umin.i.neg38 = sext i1 %i.i to i32
  %umin.i = zext i1 %i.i to i32
  %.neg36 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %1)
  %i.j = add nsw i32 %.neg36, %umin.i.neg38
  %i.k = udiv i32 %i.j, 146097
  %i.l = add nuw nsw i32 %i.k, %umin.i            ; 2 uses
  %i.m = mul i32 %i.l, 146097
  %i.n = add nsw i32 %1, 146097
  %i.o = add i32 %i.n, %i.m
  %.neg27.i = mul nsw i32 %i.l, -400
  %i.p = add nsw i32 %.neg27.i, 1570
  br label %._crit_edge.i.i12

.preheader.i.i:                                   ; preds = %bb.b
  %i.q = icmp samesign ugt i32 %1, 146096
  br i1 %i.q, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i12

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.r = add nsw i32 %1, -146097
  %i.s = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 292193)
  %i.t = add nuw nsw i32 %i.s, 146096
  %i.u = udiv i32 %i.t, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.u, -146097
  %i.v = add nsw i32 %i.r, %.neg.i
  %i.w = mul nuw nsw i32 %i.u, 400
  %i.x = add nuw nsw i32 %i.w, 2370
  br label %._crit_edge.i.i12

._crit_edge.i.i12:                                ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.y = phi i32 [ %i.p, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.x, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.o, %.lr.ph.i.preheader.i ], [ %1, %.preheader.i.i ], [ %i.v, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.z = udiv i32 %.1.i, 365
  %i.aa = zext nneg i32 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge.i.i12
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ %i.aa, %._crit_edge.i.i12 ] ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3  ; 3 uses
  %i.ad = icmp slt i32 %.1.i, %i.ac
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.ad, label %bb.c, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.c
  %i.ae = trunc nsw i64 %indvars.iv.i.i to i32
  %i.af = add nsw i32 %i.y, %i.ae                 ; 3 uses
  %i.ag = sub nsw i32 %.1.i, %i.ac                ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ab, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = sub nsw i32 %i.ai, %i.ac
  %i.ak = icmp eq i32 %i.aj, 366                  ; 2 uses
  %2 = zext nneg i32 %i.ag to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.ak, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.ak, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.al = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !153 ; 2 uses
  %i.an = sext i8 %i.am to i32
  %i.ao = sext i8 %i.am to i64
  %i.ap = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = add nuw i32 %i.ag, 1
  %i.at = sub i32 %i.as, %i.ar
  %i.au = icmp slt i32 %i.af, 1                   ; 3 uses
  %i.av = sub i32 1, %i.af
  %.sroa.026.0 = select i1 %i.au, i32 %i.av, i32 %i.af ; 2 uses
  %.0.i.i = select i1 %i.au, i64 11, i64 6
  %i.aw = insertelement <4 x i32> poison, i32 %.sroa.026.0, i64 0
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ay = icmp sgt <4 x i32> %i.ax, <i32 99999, i32 999999, i32 9999999, i32 9999>
  %i.az = select <4 x i1> %i.ay, <4 x i64> <i64 1, i64 1, i64 1, i64 5>, <4 x i64> <i64 0, i64 0, i64 0, i64 4>
  %i.ba = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.az) ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, %.0.i.i          ; 4 uses
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #48, !noalias !811 ; 4 uses
  invoke void @_ZN6duckdb16DateToStringCast6FormatEPciiimb(ptr noundef nonnull %i.bc, i32 noundef %.sroa.026.0, i32 noundef %i.an, i32 noundef %i.at, i64 noundef %i.ba, i1 noundef zeroext %i.au)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !108
  %i.be = icmp samesign ugt i64 %i.bb, 15
  br i1 %i.be, label %.noexc.i15, label %._crit_edge.i.i14

.noexc.i15:                                       ; preds = %bb.d
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.f   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i15
  store ptr %i.bf, ptr %0, align 8, !tbaa !89
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.bg, ptr %i.bd, align 8, !tbaa !153
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %bb.d, %.noexc17
  %i.bh = phi ptr [ %i.bf, %.noexc17 ], [ %i.bd, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.bc, i64 %i.bb, i1 false)
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !152
  %i.bk = load ptr, ptr %0, align 8, !tbaa !89
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #47
  br label %bb.g

bb.e:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit20

bb.f:                                             ; preds = %.noexc.i15
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit20

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit20: ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.f ], [ %i.bm, %bb.e ]
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #47
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %._crit_edge.i.i14, %._crit_edge.i.i8, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Date6FormatB5cxx11Eiii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %1, i32 noundef %2, i32 noundef %3)
  tail call void @_ZN6duckdb4Date8ToStringB5cxx11ENS_6date_tE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6duckdb4Date9MonthDaysEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = and i32 %0, 3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread3

_ZN6duckdb4Date10IsLeapYearEi.exit.thread3:       ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date11NORMAL_DAYSE, i64 %i.c
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = srem i32 %0, 100
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread

_ZN6duckdb4Date10IsLeapYearEi.exit.thread:        ; preds = %bb.b
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date9LEAP_DAYSE, i64 %i.f
  br label %bb.c

_ZN6duckdb4Date10IsLeapYearEi.exit:               ; preds = %bb.b
  %i.h = srem i32 %0, 400
  %i.i = icmp eq i32 %i.h, 0
  %i.j = sext i32 %1 to i64
  %spec.select.v = select i1 %i.i, ptr @_ZN6duckdb4Date9LEAP_DAYSE, ptr @_ZN6duckdb4Date11NORMAL_DAYSE
  %spec.select = getelementptr inbounds [4 x i8], ptr %spec.select.v, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread3
  %i.k = phi ptr [ %i.d, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread3 ], [ %spec.select, %_ZN6duckdb4Date10IsLeapYearEi.exit ], [ %i.g, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6duckdb4Date15EpochDaysToDateEi(i32 noundef returned %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6duckdb4Date9EpochDaysENS_6date_tE(i32 returned %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6duckdb4Date11EpochToDateEl(i64 noundef %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sdiv i64 %0, 86400
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 -185542587187200, 185542587100801) i64 @_ZN6duckdb4Date5EpochENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = mul nsw i64 %i.a, 86400
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb4Date16EpochNanosecondsENS_6date_tE(i32 %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = sext i32 %0 to i64
  %i.c = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.b, i64 noundef 86400000000000, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZN6duckdb4Date8ToStringB5cxx11ENS_6date_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 %0)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb19ConversionExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.g) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.j = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.n = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_1
begin_hunk_2_@_ZN6duckdb4Date17EpochMillisecondsENS_6date_tE:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = sext i32 %0 to i64
  %i.c = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.b, i64 noundef 86400000, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZN6duckdb4Date8ToStringB5cxx11ENS_6date_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 %0)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb19ConversionExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.g) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.j = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.n = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.n) #47
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.j) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.g, label %bb.h

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread
  %.pn.pn16.ph = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn.pn16 = phi { ptr, i32 } [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %.pn.pn16.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #46
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn.pn15 = phi { ptr, i32 } [ %.pn.pn16, %bb.g ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  resume { ptr, i32 } %.pn.pn15

bb.i:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i64 %i.q

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6duckdb4Date11ExtractYearENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = tail call i32 @llvm.umax.i32(i32 %0, i32 -146097)
  %i.c = icmp samesign ult i32 %0, -146097
  %umin = zext i1 %i.c to i32                     ; 2 uses
  %i.d = add nsw i32 %0, %umin
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = udiv i32 %i.e, 146097
  %i.g = add nuw nsw i32 %i.f, %umin              ; 2 uses
  %i.h = mul i32 %i.g, 146097
  %i.i = add i32 %0, %i.h
  %i.j = add i32 %i.i, 146097
  %.neg19 = mul nsw i32 %i.g, -400
  %i.k = add nsw i32 %.neg19, 1570
  br label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.a
  %i.l = icmp samesign ugt i32 %0, 146096
  br i1 %i.l, label %.lr.ph17.i.preheader, label %._crit_edge.i

.lr.ph17.i.preheader:                             ; preds = %.preheader.i
  %i.m = add nsw i32 %0, -146097
  %i.n = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.o = add nuw i32 %i.n, 146096
  %i.p = udiv i32 %i.o, 146097                    ; 2 uses
  %.neg = mul nsw i32 %i.p, -146097
  %i.q = add nsw i32 %.neg, %i.m
  %i.r = mul nuw nsw i32 %i.p, 400
  %i.s = add nuw nsw i32 %i.r, 2370
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph17.i.preheader, %.lr.ph.i.preheader, %.preheader.i
  %.1 = phi i32 [ %i.k, %.lr.ph.i.preheader ], [ 1970, %.preheader.i ], [ %i.s, %.lr.ph17.i.preheader ]
  %.sroa.0.1 = phi i32 [ %i.j, %.lr.ph.i.preheader ], [ %0, %.preheader.i ], [ %i.q, %.lr.ph17.i.preheader ] ; 2 uses
  %i.t = udiv i32 %.sroa.0.1, 365
  %i.u = zext nneg i32 %i.t to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.u, %._crit_edge.i ] ; 3 uses
  %i.v = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = icmp slt i32 %.sroa.0.1, %i.w
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.x, label %bb.b, label %_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit, !llvm.loop !783

_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit: ; preds = %bb.b
  %i.y = trunc nsw i64 %indvars.iv.i to i32
  %i.z = add nsw i32 %.1, %i.y
  ret i32 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -128, 128) i32 @_ZN6duckdb4Date12ExtractMonthENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %.fr = freeze i32 %0                            ; 8 uses
  %i.a = icmp slt i32 %.fr, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %.fr, -146097      ; 2 uses
  %umin.i.neg5 = sext i1 %i.b to i32
  %umin.i = zext i1 %i.b to i32
  %.neg4 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %.fr)
  %i.c = add nsw i32 %.neg4, %umin.i.neg5
  %i.d = udiv i32 %i.c, 146097
  %i.e = add nuw nsw i32 %i.d, %umin.i
  %i.f = mul i32 %i.e, 146097
  %i.g = add nsw i32 %.fr, 146097
  %i.h = add i32 %i.g, %i.f
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %.fr, 146096
  br i1 %i.i, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.j = tail call i32 @llvm.usub.sat.i32(i32 %.fr, i32 292193) ; 2 uses
  %i.k = add nuw nsw i32 %i.j, 146096
  %i.l = urem i32 %i.k, 146097
  %i.m = sub nsw i32 %.fr, %i.j
  %i.n = add nsw i32 %i.m, -292193
  %i.o = add nsw i32 %i.n, %i.l
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %.1.i = phi i32 [ %i.h, %.lr.ph.i.preheader.i ], [ %.fr, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.p = udiv i32 %.1.i, 365
  %i.q = zext nneg i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.q, %._crit_edge.i.i ] ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 3 uses
  %i.t = icmp slt i32 %.1.i, %i.s
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.t, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.u = sub nsw i32 %.1.i, %i.s
  %i.v = getelementptr i8, ptr %i.r, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sub nsw i32 %i.w, %i.s
  %i.y = icmp eq i32 %i.x, 366
  %1 = zext nneg i32 %i.u to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.y, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %i.z = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !153
  %i.ab = sext i8 %i.aa to i32
  ret i32 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZN6duckdb4Date10ExtractDayENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %.fr = freeze i32 %0                            ; 8 uses
  %i.a = icmp slt i32 %.fr, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %.fr, -146097      ; 2 uses
  %umin.i.neg6 = sext i1 %i.b to i32
  %umin.i = zext i1 %i.b to i32
  %.neg4 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %.fr)
  %i.c = add nsw i32 %.neg4, %umin.i.neg6
  %i.d = udiv i32 %i.c, 146097
  %i.e = add nuw nsw i32 %i.d, %umin.i
  %i.f = mul i32 %i.e, 146097
  %i.g = add nsw i32 %.fr, 146097
  %i.h = add i32 %i.g, %i.f
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %.fr, 146096
  br i1 %i.i, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.j = tail call i32 @llvm.usub.sat.i32(i32 %.fr, i32 292193) ; 2 uses
  %i.k = add nuw nsw i32 %i.j, 146096
  %i.l = urem i32 %i.k, 146097
  %i.m = sub nsw i32 %.fr, %i.j
  %i.n = add nsw i32 %i.m, -292193
  %i.o = add nsw i32 %i.n, %i.l
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %.1.i = phi i32 [ %i.h, %.lr.ph.i.preheader.i ], [ %.fr, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.p = udiv i32 %.1.i, 365
  %i.q = zext nneg i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.q, %._crit_edge.i.i ] ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 3 uses
  %i.t = icmp slt i32 %.1.i, %i.s
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.t, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.u = sub nsw i32 %.1.i, %i.s                  ; 2 uses
  %i.v = getelementptr i8, ptr %i.r, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sub nsw i32 %i.w, %i.s
  %i.y = icmp eq i32 %i.x, 366                    ; 2 uses
  %1 = zext nneg i32 %i.u to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.y, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.y, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.z = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !153
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = add nuw i32 %i.u, 1
  %i.ag = sub i32 %i.af, %i.ae
  ret i32 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483646, -2147483648) i32 @_ZN6duckdb4Date19ExtractDayOfTheYearENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %.fr = freeze i32 %0                            ; 9 uses
  %i.a = icmp slt i32 %.fr, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = tail call i32 @llvm.umax.i32(i32 %.fr, i32 -146097)
  %i.c = icmp samesign ult i32 %.fr, -146097
  %umin = zext i1 %i.c to i32                     ; 2 uses
  %i.d = add nsw i32 %.fr, %umin
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = udiv i32 %i.e, 146097
  %i.g = add nuw nsw i32 %i.f, %umin
  %i.h = mul i32 %i.g, 146097
  %i.i = add i32 %.fr, %i.h
  %i.j = add i32 %i.i, 146097
  br label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.a
  %i.k = icmp samesign ugt i32 %.fr, 146096
  br i1 %i.k, label %.lr.ph17.i.preheader, label %._crit_edge.i

.lr.ph17.i.preheader:                             ; preds = %.preheader.i
  %i.l = add nsw i32 %.fr, -146097
  %i.m = tail call i32 @llvm.usub.sat.i32(i32 %.fr, i32 292193)
  %i.n = add nuw i32 %i.m, 146096                 ; 2 uses
  %i.o = urem i32 %i.n, 146097
  %.neg = sub i32 %i.o, %i.n
  %i.p = add i32 %.neg, %i.l
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph17.i.preheader, %.lr.ph.i.preheader, %.preheader.i
  %.sroa.0.1 = phi i32 [ %i.j, %.lr.ph.i.preheader ], [ %.fr, %.preheader.i ], [ %i.p, %.lr.ph17.i.preheader ] ; 3 uses
  %i.q = udiv i32 %.sroa.0.1, 365
  %i.r = zext nneg i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.r, %._crit_edge.i ] ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.u = icmp slt i32 %.sroa.0.1, %i.t
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.u, label %bb.b, label %_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit, !llvm.loop !783

_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit: ; preds = %bb.b
  %i.v = add i32 %.sroa.0.1, 1
  %i.w = sub i32 %i.v, %i.t
  ret i32 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 -2145043060, 2149924236) i64 @_ZN6duckdb4Date16ExtractJulianDayENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = add nsw i64 %i.a, 2440588
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 1, 8) i32 @_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc = sub i32 3, %0
  %i.b = urem i32 %.lhs.trunc, 7
  %i.c = xor i32 %i.b, 7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %narrow = add nuw i32 %0, 3
  %i.d = urem i32 %narrow, 7
  %narrow4 = add nuw nsw i32 %i.d, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %narrow4, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb4Date18ExtractISOYearWeekENS_6date_tERiS2_(i32 %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i.i, label %.preheader.i.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, -146097        ; 2 uses
  %umin.i.neg35.i = sext i1 %i.b to i32
  %umin.i.i = zext i1 %i.b to i32
  %.neg34.i = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %0)
  %i.c = add nsw i32 %.neg34.i, %umin.i.neg35.i
  %i.d = udiv i32 %i.c, 146097
  %i.e = add nuw nsw i32 %i.d, %umin.i.i          ; 2 uses
  %i.f = mul i32 %i.e, 146097
  %i.g = add nsw i32 %0, 146097
  %i.h = add i32 %i.g, %i.f
  %.neg27.i.i = mul nsw i32 %i.e, -400
  %i.i = add nsw i32 %.neg27.i.i, 1570
  br label %._crit_edge.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a
  %i.j = icmp samesign ugt i32 %0, 146096
  br i1 %i.j, label %.lr.ph17.i.preheader.i.i, label %._crit_edge.i.i.i

.lr.ph17.i.preheader.i.i:                         ; preds = %.preheader.i.i.i
  %i.k = add nsw i32 %0, -146097
  %i.l = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.m = add nuw nsw i32 %i.l, 146096
  %i.n = udiv i32 %i.m, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.n, -146097
  %i.o = add nsw i32 %i.k, %.neg.i.i
  %i.p = mul nuw nsw i32 %i.n, 400
  %i.q = add nuw nsw i32 %i.p, 2370
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph17.i.preheader.i.i, %.preheader.i.i.i, %.lr.ph.i.preheader.i.i
  %i.r = phi i32 [ %i.i, %.lr.ph.i.preheader.i.i ], [ 1970, %.preheader.i.i.i ], [ %i.q, %.lr.ph17.i.preheader.i.i ]
  %.1.i.i = phi i32 [ %i.h, %.lr.ph.i.preheader.i.i ], [ %0, %.preheader.i.i.i ], [ %i.o, %.lr.ph17.i.preheader.i.i ] ; 2 uses
  %i.s = udiv i32 %.1.i.i, 365
  %i.t = zext nneg i32 %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.b ], [ %i.t, %._crit_edge.i.i.i ] ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = icmp slt i32 %.1.i.i, %i.v
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  br i1 %i.w, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit.i, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit.i: ; preds = %bb.b
  %i.x = trunc nsw i64 %indvars.iv.i.i.i to i32
  %i.y = add nsw i32 %i.r, %i.x                   ; 2 uses
  store i32 %i.y, ptr %1, align 4, !tbaa !3
  %i.z = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %i.y, i32 noundef 1, i32 noundef 1) ; 4 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit.i
  %.lhs.trunc.i.i.i = sub i32 3, %i.z
  %i.ab = urem i32 %.lhs.trunc.i.i.i, 7
  %i.ac = sub nuw nsw i32 6, %i.ab
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit.i

bb.d:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit.i
  %narrow.i.i.i = add nuw i32 %i.z, 3
  %i.ad = urem i32 %narrow.i.i.i, 7
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit.i

_ZN6duckdbL13GetISOWeekOneEi.exit.i:              ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ae = sub nsw i32 %i.z, %.0.i.i.i             ; 2 uses
  %i.af = icmp samesign ugt i32 %.0.i.i.i, 3
  %i.ag = add nsw i32 %i.ae, 7
  %spec.select.i.i = select i1 %i.af, i32 %i.ag, i32 %i.ae
  %i.ah = sub nsw i32 %0, %spec.select.i.i        ; 2 uses
  %i.ai = sdiv i32 %i.ah, 7                       ; 2 uses
  %.neg.i = mul nsw i32 %i.ai, -7
  %i.aj = add i32 %.neg.i, %i.ah
  %.lobit.i.i = ashr i32 %i.aj, 31
  %.0.i.i = add nsw i32 %.lobit.i.i, %i.ai        ; 4 uses
  %i.ak = icmp slt i32 %.0.i.i, 0
  br i1 %i.ak, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit.i
  %i.al = load i32, ptr %1, align 4, !tbaa !3
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %1, align 4, !tbaa !3
  %i.an = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %i.am, i32 noundef 1, i32 noundef 1) ; 4 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc.i.i17.i = sub i32 3, %i.an
  %i.ap = urem i32 %.lhs.trunc.i.i17.i, 7
  %i.aq = sub nuw nsw i32 6, %i.ap
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit18.i

bb.g:                                             ; preds = %bb.e
  %narrow.i.i14.i = add nuw i32 %i.an, 3
  %i.ar = urem i32 %narrow.i.i14.i, 7
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit18.i

_ZN6duckdbL13GetISOWeekOneEi.exit18.i:            ; preds = %bb.g, %bb.f
  %.0.i.i15.i = phi i32 [ %i.aq, %bb.f ], [ %i.ar, %bb.g ] ; 2 uses
  %i.as = sub nsw i32 %i.an, %.0.i.i15.i          ; 2 uses
  %i.at = icmp samesign ugt i32 %.0.i.i15.i, 3
  %i.au = add nsw i32 %i.as, 7
  %spec.select.i16.i = select i1 %i.at, i32 %i.au, i32 %i.as
  %i.av = sub nsw i32 %0, %spec.select.i16.i      ; 2 uses
  %i.aw = sdiv i32 %i.av, 7                       ; 2 uses
  %.neg32.i = mul nsw i32 %i.aw, -7
  %i.ax = add i32 %.neg32.i, %i.av
  %.lobit.i20.i = ashr i32 %i.ax, 31
  %.0.i21.i = add nsw i32 %.lobit.i20.i, %i.aw
  br label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit

bb.h:                                             ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit.i
  %i.ay = icmp samesign ugt i32 %.0.i.i, 51
  br i1 %i.ay, label %bb.i, label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit

bb.i:                                             ; preds = %bb.h
  %i.az = load i32, ptr %1, align 4, !tbaa !3
  %i.ba = add nsw i32 %i.az, 1
  %i.bb = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %i.ba, i32 noundef 1, i32 noundef 1) ; 4 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.lhs.trunc.i.i25.i = sub i32 3, %i.bb
  %i.bd = urem i32 %.lhs.trunc.i.i25.i, 7
  %i.be = sub nuw nsw i32 6, %i.bd
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit26.i

bb.k:                                             ; preds = %bb.i
  %narrow.i.i22.i = add nuw i32 %i.bb, 3
  %i.bf = urem i32 %narrow.i.i22.i, 7
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit26.i

_ZN6duckdbL13GetISOWeekOneEi.exit26.i:            ; preds = %bb.k, %bb.j
  %.0.i.i23.i = phi i32 [ %i.be, %bb.j ], [ %i.bf, %bb.k ] ; 2 uses
  %i.bg = sub nsw i32 %i.bb, %.0.i.i23.i          ; 2 uses
  %i.bh = icmp samesign ugt i32 %.0.i.i23.i, 3
  %i.bi = add nsw i32 %i.bg, 7
  %spec.select.i24.i = select i1 %i.bh, i32 %i.bi, i32 %i.bg
  %.not.i = icmp slt i32 %0, %spec.select.i24.i
  br i1 %.not.i, label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit26.i
  %i.bj = load i32, ptr %1, align 4, !tbaa !3
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %1, align 4, !tbaa !3
  br label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit

_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit:   ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit18.i, %bb.h, %_ZN6duckdbL13GetISOWeekOneEi.exit26.i, %bb.l
  %.0.i = phi i32 [ %.0.i21.i, %_ZN6duckdbL13GetISOWeekOneEi.exit18.i ], [ 0, %bb.l ], [ %.0.i.i, %_ZN6duckdbL13GetISOWeekOneEi.exit26.i ], [ %.0.i.i, %bb.h ]
  %i.bl = add nsw i32 %.0.i, 1
  store i32 %i.bl, ptr %2, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6duckdb4Date20ExtractISOWeekNumberENS_6date_tE(i32 %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @_ZN6duckdb4Date18ExtractISOYearWeekENS_6date_tERiS2_(i32 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6duckdb4Date20ExtractISOYearNumberENS_6date_tE(i32 %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @_ZN6duckdb4Date18ExtractISOYearWeekENS_6date_tERiS2_(i32 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 306783380) i32 @_ZN6duckdb4Date24ExtractWeekNumberRegularENS_6date_tEb(i32 %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, -146097        ; 2 uses
  %umin.i.neg27 = sext i1 %i.b to i32
  %umin.i = zext i1 %i.b to i32
  %.neg26 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %0)
  %i.c = add nsw i32 %.neg26, %umin.i.neg27
  %i.d = udiv i32 %i.c, 146097
  %i.e = add nuw nsw i32 %i.d, %umin.i            ; 2 uses
  %i.f = mul i32 %i.e, 146097
  %i.g = add nsw i32 %0, 146097
  %i.h = add i32 %i.g, %i.f
  %.neg27.i = mul nsw i32 %i.e, -400
  %i.i = add nsw i32 %.neg27.i, 1570
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.j = icmp samesign ugt i32 %0, 146096
  br i1 %i.j, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.k = add nsw i32 %0, -146097
  %i.l = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.m = add nuw nsw i32 %i.l, 146096
  %i.n = udiv i32 %i.m, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.n, -146097
  %i.o = add nsw i32 %i.k, %.neg.i
  %i.p = mul nuw nsw i32 %i.n, 400
  %i.q = add nuw nsw i32 %i.p, 2370
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.r = phi i32 [ %i.i, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.q, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.h, %.lr.ph.i.preheader.i ], [ %0, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.s = udiv i32 %.1.i, 365
  %i.t = zext nneg i32 %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.t, %._crit_edge.i.i ] ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  %i.w = icmp slt i32 %.1.i, %i.v
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.w, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.x = trunc nsw i64 %indvars.iv.i.i to i32
  %i.y = add nsw i32 %i.r, %i.x
  %.fr25 = freeze i32 %i.y                        ; 4 uses
  %i.z = sub nsw i32 %.1.i, %i.v                  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = sub nsw i32 %i.ab, %i.v
  %i.ad = icmp eq i32 %i.ac, 366                  ; 2 uses
  %2 = zext nneg i32 %i.z to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.ad, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.ad, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.ae = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !153 ; 2 uses
  %i.ag = sext i8 %i.af to i32
  %i.ah = sext i8 %i.af to i64
  %i.ai = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = sub nsw i32 %i.z, %i.ak
  %i.am = add nsw i32 %i.ag, -1                   ; 3 uses
  %i.an = and i32 %.fr25, 3
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.c, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread22

_ZN6duckdb4Date10IsLeapYearEi.exit.thread22:      ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.ar = srem i32 %.fr25, 100
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread

_ZN6duckdb4Date10IsLeapYearEi.exit.thread:        ; preds = %bb.c
  %i.as = sext i32 %i.am to i64
  %i.at = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, i64 %i.as
  br label %bb.d

_ZN6duckdb4Date10IsLeapYearEi.exit:               ; preds = %bb.c
  %i.au = srem i32 %.fr25, 400
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = sext i32 %i.am to i64
  %spec.select24.v = select i1 %i.av, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %spec.select24 = getelementptr inbounds [4 x i8], ptr %spec.select24.v, i64 %i.aw
  br label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread22
  %i.ax = phi ptr [ %i.aq, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread22 ], [ %spec.select24, %_ZN6duckdb4Date10IsLeapYearEi.exit ], [ %i.at, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread ]
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = add nsw i32 %i.ay, %i.al                ; 2 uses
  %i.ba = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %.fr25, i32 noundef 1, i32 noundef 1) ; 3 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc.i = sub i32 3, %i.ba
  %i.bc = urem i32 %.lhs.trunc.i, 7
  %i.bd = xor i32 %i.bc, 7
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

bb.f:                                             ; preds = %bb.d
  %narrow.i = add nuw i32 %i.ba, 3
  %i.be = urem i32 %narrow.i, 7
  %narrow4.i = add nuw nsw i32 %i.be, 1
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.bd, %bb.e ], [ %narrow4.i, %bb.f ] ; 3 uses
  %i.bf = sub nuw nsw i32 7, %.0.i
  %i.bg = icmp eq i32 %.0.i, 1
  %i.bh = sub nuw nsw i32 8, %.0.i
  %spec.select = select i1 %i.bg, i32 0, i32 %i.bh
  %.0 = select i1 %1, i32 %spec.select, i32 %i.bf ; 2 uses
  %i.bi = icmp slt i32 %i.az, %.0
  br i1 %i.bi, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit
  %i.bj = sub nsw i32 %i.az, %.0
  %i.bk = udiv i32 %i.bj, 7
  %i.bl = add nuw nsw i32 %i.bk, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit, %bb.g
  %.011 = phi i32 [ %i.bl, %bb.g ], [ 0, %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @_ZN6duckdb4Date22GetMondayOfCurrentWeekENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = sub i32 3, %0
  %i.b = urem i32 %.lhs.trunc.i, 7
  %i.c = sub nuw nsw i32 6, %i.b
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

bb.c:                                             ; preds = %bb.a
  %narrow.i = add nuw i32 %0, 3
  %i.d = urem i32 %narrow.i, 7
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = sub nsw i32 %0, %.0.i
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7Decimal8ToStringB5cxx11Eshh(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef signext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6duckdb24TemplatedDecimalToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_hh(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef signext %1, i8 noundef zeroext %2, i8 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb24TemplatedDecimalToStringIsEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_hh(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 noundef signext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp eq i8 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.neg6.i.i = lshr i16 %1, 15
  %i.c = tail call i16 @llvm.abs.i16(i16 %1, i1 false)
  %i.d = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %i.e = shufflevector <4 x i16> %i.d, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.f = icmp ugt <4 x i16> %i.e, <i16 99, i16 999, i16 9999, i16 9>
  %i.g = select <4 x i1> %i.f, <4 x i32> <i32 1, i32 1, i32 1, i32 2>, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.neg.i.i = zext nneg i16 %.neg6.i.i to i32
  %i.h = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.g)
  %op.rdx = add nuw nsw i32 %i.h, %.neg.i.i
  br label %_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i8 %3 to i32
  %i.j = icmp ugt i8 %2, %3
  %i.k = select i1 %i.j, i32 2, i32 1
  %.lobit.i = lshr i16 %1, 15
  %i.l = zext nneg i16 %.lobit.i to i32           ; 2 uses
  %i.m = add nuw nsw i32 %i.i, %i.l
  %i.n = add nuw nsw i32 %i.m, %i.k
  %i.o = tail call i16 @llvm.abs.i16(i16 %1, i1 false)
  %i.p = insertelement <4 x i16> poison, i16 %i.o, i64 0
  %i.q = shufflevector <4 x i16> %i.p, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.r = icmp ugt <4 x i16> %i.q, <i16 99, i16 999, i16 9999, i16 9>
  %i.s = select <4 x i1> %i.r, <4 x i32> <i32 1, i32 1, i32 1, i32 2>, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.s)
  %op.rdx21 = add nuw nsw i32 %i.t, 1
  %op.rdx22 = add nuw nsw i32 %op.rdx21, %i.l
  %i.u = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %op.rdx22)
  br label %_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit

_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %op.rdx, %bb.b ], [ %i.u, %bb.c ] ; 4 uses
  %i.v = add nuw nsw i32 %.0.i, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #48, !noalias !814 ; 5 uses
  %i.y = zext nneg i32 %.0.i to i64               ; 3 uses
  invoke void @_ZN6duckdb15DecimalToString13FormatDecimalIsEEvT_hhPcm(i16 noundef signext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %i.x, i64 noundef %i.y)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.y, ptr %i.a, align 8, !tbaa !108
  %i.aa = icmp samesign ugt i32 %.0.i, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.h ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !89
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !153
  br label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.d
  %cond = icmp eq i32 %.0.i, 1
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !153
  store i8 %i.ad, ptr %i.z, align 8, !tbaa !153
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.ae = phi ptr [ %i.ab, %._crit_edge.i.i.thread ], [ %i.z, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.f, %bb.e
  %i.af = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !152
  %i.ah = load ptr, ptr %0, align 8, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @_ZdaPv(ptr noundef nonnull %i.x) #47
  ret void

bb.g:                                             ; preds = %_ZN6duckdb15DecimalToString13DecimalLengthIsEEiT_hh.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit15
end_hunk_2
begin_hunk_3_@_ZN6duckdb8Interval6GetAgeENS_19TimestampComponentsES1_b:bb.a
_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us:   ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us
  %.262105.us110 = phi i32 [ %.363.us114, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.262105.us110.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader ]
  %.165104.us111 = phi i32 [ %.266.us115, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.165104.us111.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader ]
  %.363.us114 = add nsw i32 %.pn.us113, %.262105.us110 ; 3 uses
  %.266.us115 = add nsw i32 %.165104.us111, -1    ; 2 uses
  %i.fh = icmp slt i32 %.363.us114, 0
  br i1 %i.fh, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us, label %.preheader, !llvm.loop !978

.lr.ph106.split.split:                            ; preds = %.lr.ph106.split
  %.pn = load i32, ptr %i.cb, align 4, !tbaa !3   ; 4 uses
  %i.fi = add nsw i32 %.161.lcssa, %.pn           ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.fi, i32 0)
  %.lobit = lshr i32 %i.fi, 31                    ; 2 uses
  %i.fj = add i32 %.lobit, %i.fi
  %i.fk = sub i32 %smax, %i.fj
  %i.fl = udiv i32 %i.fk, %.pn
  %i.fm = add i32 %.lobit, %i.fl
  %i.fn = add i32 %i.fm, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fn, 8
  br i1 %min.iters.check, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph106.split.split
  %n.vec = and i32 %i.fn, -8                      ; 3 uses
  %i.fo = mul i32 %n.vec, %.pn
  %i.fp = add i32 %.161.lcssa, %i.fo              ; 2 uses
  %i.fq = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.fq, %vector.ph ], [ %i.fr, %vector.body ]
  %vec.phi163 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %i.fr = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.fs = add <4 x i32> %vec.phi163, splat (i32 -1) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ft = icmp eq i32 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !979

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.fn, %n.vec
  br i1 %cmp.n, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader: ; preds = %.lr.ph106.split.split, %middle.block
  %.262105.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.split ], [ %i.fp, %middle.block ]
  %.165104.ph = phi i32 [ %i.bz, %.lr.ph106.split.split ], [ %i.fu, %middle.block ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77

.preheader:                                       ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us, %middle.block, %middle.block176, %middle.block193, %middle.block210, %middle.block227, %middle.block244, %.preheader82
  %.165.lcssa = phi i32 [ %i.bz, %.preheader82 ], [ %.266.us115, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.266.us115.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.266.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.266.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.266.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %i.da, %middle.block244 ], [ %i.do, %middle.block227 ], [ %i.ec, %middle.block210 ], [ %i.es, %middle.block193 ], [ %i.fg, %middle.block176 ], [ %i.fu, %middle.block ], [ %.266, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ] ; 6 uses
  %.262.lcssa = phi i32 [ %.161.lcssa, %.preheader82 ], [ %.363.us114, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.363.us114.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.363.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.363.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.363.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %i.cv, %middle.block244 ], [ %i.dj, %middle.block227 ], [ %i.dx, %middle.block210 ], [ %i.en, %middle.block193 ], [ %i.fb, %middle.block176 ], [ %i.fp, %middle.block ], [ %.363, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ] ; 2 uses
  %i.fv = icmp slt i32 %.165.lcssa, 0
  br i1 %i.fv, label %.lr.ph128.preheader, label %._crit_edge

.lr.ph128.preheader:                              ; preds = %.preheader
  %i.fw = tail call i32 @llvm.umax.i32(i32 %.165.lcssa, i32 -12)
  %i.fx = icmp samesign ult i32 %.165.lcssa, -12
  %umin151 = zext i1 %i.fx to i32                 ; 2 uses
  %i.fy = add nsw i32 %.165.lcssa, %umin151
  %i.fz = sub nsw i32 %i.fw, %i.fy
  %i.ga = udiv i32 %i.fz, 12
  %i.gb = add nuw nsw i32 %i.ga, %umin151         ; 2 uses
  %i.gc = mul i32 %i.gb, 12
  %i.gd = add i32 %.165.lcssa, %i.gc
  %i.ge = add i32 %i.gd, 12
  %i.gf = xor i32 %i.gb, -1
  %i.gg = add i32 %.0, %i.gf
  br label %._crit_edge

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77:    ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77
  %.262105 = phi i32 [ %.363, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ], [ %.262105.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader ]
  %.165104 = phi i32 [ %.266, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ], [ %.165104.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader ]
  %.363 = add nsw i32 %.pn, %.262105              ; 3 uses
  %.266 = add nsw i32 %.165104, -1                ; 2 uses
  %i.gh = icmp slt i32 %.363, 0
  br i1 %i.gh, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77, label %.preheader, !llvm.loop !980

._crit_edge:                                      ; preds = %.lr.ph128.preheader, %.preheader
  %.367.lcssa = phi i32 [ %.165.lcssa, %.preheader ], [ %i.ge, %.lr.ph128.preheader ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0, %.preheader ], [ %i.gg, %.lr.ph128.preheader ] ; 2 uses
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.gi = sub nsw i32 0, %.1.lcssa
  %i.gj = sub nsw i32 0, %.367.lcssa
  %i.gk = sub nsw i32 0, %.262.lcssa
  %i.gl = sub nsw i32 0, %.258.lcssa
  %i.gm = sub nsw i32 0, %.254.lcssa
  %i.gn = sub nsw i32 0, %.251.lcssa
  %i.go = sub nsw i32 0, %.147.lcssa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.468 = phi i32 [ %i.gj, %bb.d ], [ %.367.lcssa, %._crit_edge ]
  %.4 = phi i32 [ %i.gk, %bb.d ], [ %.262.lcssa, %._crit_edge ]
  %.359 = phi i32 [ %i.gl, %bb.d ], [ %.258.lcssa, %._crit_edge ]
  %.355 = phi i32 [ %i.gm, %bb.d ], [ %.254.lcssa, %._crit_edge ]
  %.3 = phi i32 [ %i.gn, %bb.d ], [ %.251.lcssa, %._crit_edge ]
  %.248 = phi i32 [ %i.go, %bb.d ], [ %.147.lcssa, %._crit_edge ]
  %.2 = phi i32 [ %i.gi, %bb.d ], [ %.1.lcssa, %._crit_edge ]
  %i.gp = mul nsw i32 %.2, 12
  %i.gq = add nsw i32 %i.gp, %.468
  %i.gr = sext i32 %.359 to i64
  %i.gs = mul nsw i64 %i.gr, 60
  %i.gt = sext i32 %.355 to i64
  %i.gu = add nsw i64 %i.gs, %i.gt
  %i.gv = mul nsw i64 %i.gu, 60
  %i.gw = sext i32 %.3 to i64
  %i.gx = add nsw i64 %i.gv, %i.gw
  %i.gy = mul nsw i64 %i.gx, 1000000
  %i.gz = sext i32 %.248 to i64
  %i.ha = add nsw i64 %i.gy, %i.gz
  %.sroa.2.0.insert.ext = zext i32 %.4 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.044.0.insert.ext = zext i32 %i.gq to i64
  %.sroa.044.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.044.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.044.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.ha, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 -7861937637475483648, 7861937633814483648) i64 @_ZN6duckdb4Time8FromTimeEiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = mul nsw i64 %i.a, 60
  %i.c = sext i32 %1 to i64
  %i.d = add nsw i64 %i.b, %i.c
  %i.e = mul nsw i64 %i.d, 60
  %i.f = sext i32 %2 to i64
  %i.g = add nsw i64 %i.e, %i.f
  %i.h = mul nsw i64 %i.g, 1000000
  %i.i = sext i32 %3 to i64
  %i.j = add nsw i64 %i.h, %i.i
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb8Interval6GetAgeENS_11timestamp_tES1_(i64 %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::TimestampComponents", align 8 ; 2 uses
  %3 = alloca %"struct.duckdb::TimestampComponents", align 8 ; 2 uses
  call void @_ZN6duckdb9Timestamp13GetComponentsENS_11timestamp_tE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::TimestampComponents") align 4 %2, i64 %0)
  call void @_ZN6duckdb9Timestamp13GetComponentsENS_11timestamp_tE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::TimestampComponents") align 4 %3, i64 %1)
  %i.a = icmp slt i64 %0, %1
  %i.b = tail call { i64, i64 } @_ZN6duckdb8Interval6GetAgeENS_19TimestampComponentsES1_b(ptr noundef nonnull byval(%"struct.duckdb::TimestampComponents") align 8 %2, ptr noundef nonnull byval(%"struct.duckdb::TimestampComponents") align 8 %3, i1 noundef zeroext %i.a)
  ret { i64, i64 } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9Timestamp13GetComponentsENS_11timestamp_tE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::TimestampComponents") align 4 captures(none) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::date_t", align 4   ; 4 uses
  %3 = alloca %"struct.duckdb::dtime_t", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @_ZN6duckdb9Timestamp7ConvertENS_11timestamp_tERNS_6date_tERNS_7dtime_tE(i64 %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.sroa.01.0.copyload = load i32, ptr %2, align 4, !tbaa !3 ; 8 uses
  %i.a = icmp slt i32 %.sroa.01.0.copyload, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %.sroa.01.0.copyload, -146097 ; 2 uses
  %umin.i.neg7 = sext i1 %i.b to i32
  %umin.i = zext i1 %i.b to i32
  %.neg = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %.sroa.01.0.copyload)
  %i.c = add nsw i32 %.neg, %umin.i.neg7
  %i.d = udiv i32 %i.c, 146097
  %i.e = add nuw nsw i32 %i.d, %umin.i            ; 2 uses
  %i.f = mul i32 %i.e, 146097
  %i.g = add nsw i32 %.sroa.01.0.copyload, 146097
  %i.h = add i32 %i.g, %i.f
  %.neg27.i = mul nsw i32 %i.e, -400
  %i.i = add nsw i32 %.neg27.i, 1570
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.j = icmp samesign ugt i32 %.sroa.01.0.copyload, 146096
  br i1 %i.j, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.k = add nsw i32 %.sroa.01.0.copyload, -146097
  %i.l = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.01.0.copyload, i32 292193)
  %i.m = add nuw nsw i32 %i.l, 146096
  %i.n = udiv i32 %i.m, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.n, -146097
  %i.o = add nsw i32 %i.k, %.neg.i
  %i.p = mul nuw nsw i32 %i.n, 400
  %i.q = add nuw nsw i32 %i.p, 2370
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.r = phi i32 [ %i.i, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.q, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.h, %.lr.ph.i.preheader.i ], [ %.sroa.01.0.copyload, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.s = udiv i32 %.1.i, 365
  %i.t = zext nneg i32 %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.t, %._crit_edge.i.i ] ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  %i.w = icmp slt i32 %.1.i, %i.v
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.w, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = trunc nsw i64 %indvars.iv.i.i to i32
  %i.aa = add nsw i32 %i.r, %i.z
  store i32 %i.aa, ptr %0, align 4, !tbaa !3
  %i.ab = sub nsw i32 %.1.i, %i.v                 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = sub nsw i32 %i.ad, %i.v
  %i.af = icmp eq i32 %i.ae, 366                  ; 2 uses
  %4 = zext nneg i32 %i.ab to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.af, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.af, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.ag = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %4
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !153 ; 2 uses
  %i.ai = sext i8 %i.ah to i32
  store i32 %i.ai, ptr %i.y, align 4, !tbaa !3
  %i.aj = sext i8 %i.ah to i64
  %i.ak = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = add nuw i32 %i.ab, 1
  %i.ao = sub i32 %i.an, %i.am
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !3
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !tbaa !108 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = sdiv i64 %.sroa.0.0.copyload, 3600000000 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !3
  %sext.i4 = shl i64 %i.at, 32
  %i.av = ashr exact i64 %sext.i4, 32
  %.neg.i5 = mul nsw i64 %i.av, -3600000000
  %i.aw = add i64 %.neg.i5, %.sroa.0.0.copyload   ; 2 uses
  %i.ax = sdiv i64 %i.aw, 60000000                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  store i32 %i.ay, ptr %i.aq, align 4, !tbaa !3
  %sext13.i = shl i64 %i.ax, 32
  %i.az = ashr exact i64 %sext13.i, 32
  %.neg14.i = mul nsw i64 %i.az, -60000000
  %i.ba = add i64 %.neg14.i, %i.aw                ; 2 uses
  %i.bb = sdiv i64 %i.ba, 1000000                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.ar, align 4, !tbaa !3
  %.neg16.i = mul i64 %i.bb, 4293967296
  %i.bd = add i64 %.neg16.i, %i.ba
  %i.be = trunc i64 %i.bd to i32
  store i32 %i.be, ptr %i.as, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb8Interval13GetDifferenceENS_11timestamp_tES1_(i64 %0, i64 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  switch i64 %0, label %bb.b [
    i64 -9223372036854775807, label %bb.c
    i64 9223372036854775807, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  switch i64 %1, label %bb.h [
    i64 -9223372036854775807, label %bb.c
    i64 9223372036854775807, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.a, %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.95, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.q unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.018 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.e) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.018, label %bb.g, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.018, label %bb.g, label %bb.p

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn30 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #46
  br label %bb.p

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.h = call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.h, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.96, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.q unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread: ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.l) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.0, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.0, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn2134 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ]
  call void @__cxa_free_exception(ptr %i.i) #46
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn2133 = phi { ptr, i32 } [ %.pn2134, %bb.m ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.o = load i64, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.p = sdiv i64 %i.o, 86400000000
  %i.q = srem i64 %i.o, 86400000000
  %.sroa.2.0.insert.ext.i = shl nsw i64 %i.p, 32
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.2.0.insert.ext.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret { i64, i64 } %.fca.1.insert.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.n
  %.pn21.pn = phi { ptr, i32 } [ %.pn2133, %bb.n ], [ %.pn30, %bb.g ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn21.pn

bb.q:                                             ; preds = %bb.k, %bb.e
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN6duckdb9Timestamp20GetEpochMicroSecondsENS_11timestamp_tE(i64 returned %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret i64 %0
}

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN6duckdb8Interval9FromMicroEl(i64 noundef %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sdiv i64 %0, 86400000000
  %i.b = srem i64 %0, 86400000000
  %.sroa.2.0.insert.ext = shl nsw i64 %i.a, 32
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.2.0.insert.ext, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.b, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN6duckdb8Interval6InvertENS_10interval_tE(i64 %0, i64 %1) local_unnamed_addr #9 align 2 {
bb.a:
  %.sroa.0.sroa.4.0.extract.shift = and i64 %0, -4294967296
  %i.a = sub nsw i64 0, %1
  %i.b = sub i64 0, %0
  %.sroa.0.sroa.0.0.insert.ext = and i64 %i.b, 4294967295
  %.sroa.0.sroa.0.0.insert.insert = sub i64 %.sroa.0.sroa.0.0.insert.ext, %.sroa.0.sroa.4.0.extract.shift
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.a, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6duckdb8Interval3AddENS_6date_tENS_10interval_tE(i32 %0, i64 %1, i64 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::date_t", align 4   ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %.sroa.09.0.extract.trunc = trunc i64 %1 to i32 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  switch i32 %0, label %bb.b [
    i32 -2147483647, label %bb.aa
    i32 2147483647, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %.sroa.09.0.extract.trunc, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.b = icmp samesign ult i32 %0, -146097        ; 2 uses
  %umin.i.neg70 = sext i1 %i.b to i32
  %umin.i = zext i1 %i.b to i32
  %.neg68 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %0)
  %i.c = add nsw i32 %.neg68, %umin.i.neg70
  %i.d = udiv i32 %i.c, 146097
  %i.e = add nuw nsw i32 %i.d, %umin.i            ; 2 uses
  %i.f = mul i32 %i.e, 146097
  %i.g = add nsw i32 %0, 146097
  %i.h = add i32 %i.g, %i.f
  %.neg27.i = mul nsw i32 %i.e, -400
  %i.i = add nsw i32 %.neg27.i, 1570
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.j = icmp samesign ugt i32 %0, 146096
  br i1 %i.j, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.k = add nsw i32 %0, -146097
  %i.l = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.m = add nuw nsw i32 %i.l, 146096
  %i.n = udiv i32 %i.m, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.n, -146097
  %i.o = add nsw i32 %i.k, %.neg.i
  %i.p = mul nuw nsw i32 %i.n, 400
  %i.q = add nuw nsw i32 %i.p, 2370
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.r = phi i32 [ %i.i, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.q, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.h, %.lr.ph.i.preheader.i ], [ %0, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.s = udiv i32 %.1.i, 365
  %i.t = zext nneg i32 %i.s to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ %i.t, %._crit_edge.i.i ] ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  %i.w = icmp slt i32 %.1.i, %i.v
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.w, label %bb.d, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.d
  %i.x = trunc nsw i64 %indvars.iv.i.i to i32
  %i.y = sub nsw i32 %.1.i, %i.v                  ; 2 uses
  %i.z = getelementptr i8, ptr %i.u, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = sub nsw i32 %i.aa, %i.v
  %i.ac = icmp eq i32 %i.ab, 366                  ; 2 uses
  %10 = zext nneg i32 %i.y to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.ac, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.ac, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.ad = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %10
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !153 ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = sext i8 %i.ae to i64
  %i.ah = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = add nuw i32 %i.y, 1
  %i.al = sub i32 %i.ak, %i.aj
  %i.am = sdiv i32 %.sroa.09.0.extract.trunc, 12  ; 2 uses
  %i.an = add nsw i32 %i.r, %i.am
  %i.ao = add i32 %i.an, %i.x                     ; 3 uses
  %.neg = mul nsw i32 %i.am, -12
  %i.ap = add i32 %.neg, %.sroa.09.0.extract.trunc
  %i.aq = add nsw i32 %i.ap, %i.af                ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, 12
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.as = add nsw i32 %i.ao, 1
  %i.at = add nsw i32 %i.aq, -12
  br label %bb.h

bb.f:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.au = icmp slt i32 %i.aq, 1
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = add nsw i32 %i.ao, -1
  %i.aw = add nsw i32 %i.aq, 12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.057 = phi i32 [ %i.as, %bb.e ], [ %i.av, %bb.g ], [ %i.ao, %bb.f ] ; 4 uses
  %.056 = phi i32 [ %i.at, %bb.e ], [ %i.aw, %bb.g ], [ %i.aq, %bb.f ] ; 4 uses
  %i.ax = and i32 %.057, 3
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread3.i

_ZN6duckdb4Date10IsLeapYearEi.exit.thread3.i:     ; preds = %bb.h
  %i.az = sext i32 %.056 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date11NORMAL_DAYSE, i64 %i.az
  br label %_ZN6duckdb4Date9MonthDaysEii.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = srem i32 %.057, 100
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i

_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i:      ; preds = %bb.i
  %i.bc = sext i32 %.056 to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date9LEAP_DAYSE, i64 %i.bc
  br label %_ZN6duckdb4Date9MonthDaysEii.exit

_ZN6duckdb4Date10IsLeapYearEi.exit.i:             ; preds = %bb.i
  %i.be = srem i32 %.057, 400
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = sext i32 %.056 to i64
  %spec.select.v.i = select i1 %i.bf, ptr @_ZN6duckdb4Date9LEAP_DAYSE, ptr @_ZN6duckdb4Date11NORMAL_DAYSE
  %spec.select.i37 = getelementptr inbounds [4 x i8], ptr %spec.select.v.i, i64 %i.bg
  br label %_ZN6duckdb4Date9MonthDaysEii.exit

_ZN6duckdb4Date9MonthDaysEii.exit:                ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit.thread3.i, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i, %_ZN6duckdb4Date10IsLeapYearEi.exit.i
  %i.bh = phi ptr [ %i.ba, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread3.i ], [ %spec.select.i37, %_ZN6duckdb4Date10IsLeapYearEi.exit.i ], [ %i.bd, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i ]
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = tail call noundef i32 @llvm.smin.i32(i32 %i.al, i32 %i.bi)
  %i.bk = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %.057, i32 noundef %.056, i32 noundef %i.bj)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_ZN6duckdb4Date9MonthDaysEii.exit
  %i.bl = phi i32 [ %i.bk, %_ZN6duckdb4Date9MonthDaysEii.exit ], [ %0, %bb.b ] ; 3 uses
  store i32 %i.bl, ptr %3, align 4, !tbaa !3
  %.not29 = icmp eq i64 %.sroa.4.0.extract.shift, 0
  br i1 %.not29, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %i.bl, i32 noundef %.sroa.4.0.extract.trunc, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.bm, label %._crit_edge73, label %bb.l

._crit_edge73:                                    ; preds = %bb.k
  %.sroa.0.0.copyload.pre71.pre = load i32, ptr %3, align 4, !tbaa !3
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bn = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ac unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %.sink.split

bb.o:                                             ; preds = %bb.n, %bb.m
  %.021 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bq = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.bq) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.021, label %.sink.split, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.021, label %.sink.split, label %bb.ab

bb.p:                                             ; preds = %._crit_edge73, %bb.j
  %.sroa.0.0.copyload.pre71 = phi i32 [ %.sroa.0.0.copyload.pre71.pre, %._crit_edge73 ], [ %i.bl, %bb.j ] ; 2 uses
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = sdiv i64 %2, 86400000000
  %i.bu = trunc nsw i64 %i.bt to i32
  %i.bv = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %.sroa.0.0.copyload.pre71, i32 noundef %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.bv, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %bb.q
  %.sroa.0.0.copyload.pre = load i32, ptr %3, align 4, !tbaa !3
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bw = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ac unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread: ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %.sink.split

bb.u:                                             ; preds = %bb.t, %bb.s
  %.019 = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bz = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.bz) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br i1 %.019, label %.sink.split, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br i1 %.019, label %.sink.split, label %bb.ab

bb.v:                                             ; preds = %._crit_edge, %bb.p
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.pre, %._crit_edge ], [ %.sroa.0.0.copyload.pre71, %bb.p ] ; 2 uses
  switch i32 %.sroa.0.0.copyload, label %bb.aa [
    i32 -2147483647, label %bb.w
    i32 2147483647, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.cc = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ac unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread: ; preds = %bb.w
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
end_hunk_3
