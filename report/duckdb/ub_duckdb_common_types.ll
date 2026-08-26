Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb9DataChunk4HashERNS_6vectorImLb1ESaImEEERNS_6VectorE:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !576
  %i.e = load ptr, ptr %0, align 8, !tbaa !578    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !108
  store i64 %i.i, ptr %i.b, align 8, !tbaa !108
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit, label %bb.b, !prof !469

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.280, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
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
  %i.c = add nsw i32 %i.b, 146096
  %i.d = sub i32 %i.c, %0
  %i.e = udiv i32 %i.d, 146097                    ; 2 uses
  %i.f = mul nuw i32 %i.e, 146097
  %i.g = add i32 %0, %i.f
  %i.h = add i32 %i.g, 146097
  %.neg32 = mul nsw i32 %i.e, -400
  %i.i = add nsw i32 %.neg32, 1570
  br label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.a
  %i.j = icmp samesign ugt i32 %0, 146096
  br i1 %i.j, label %.lr.ph17.i.preheader, label %._crit_edge.i

.lr.ph17.i.preheader:                             ; preds = %.preheader.i
  %i.k = add nsw i32 %0, -146097
  %i.l = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.m = add nuw i32 %i.l, 146096
  %i.n = udiv i32 %i.m, 146097                    ; 2 uses
  %.neg = mul nsw i32 %i.n, -146097
  %i.o = add nsw i32 %.neg, %i.k
  %i.p = mul nuw nsw i32 %i.n, 400
  %i.q = add nuw nsw i32 %i.p, 2370
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph17.i.preheader, %.lr.ph.i.preheader, %.preheader.i
  %i.r = phi i32 [ %i.i, %.lr.ph.i.preheader ], [ 1970, %.preheader.i ], [ %i.q, %.lr.ph17.i.preheader ]
  %.1 = phi i32 [ %i.h, %.lr.ph.i.preheader ], [ %0, %.preheader.i ], [ %i.o, %.lr.ph17.i.preheader ] ; 3 uses
  %i.s = udiv i32 %.1, 365
  %i.t = zext nneg i32 %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.t, %._crit_edge.i ] ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  %i.w = icmp slt i32 %.1, %i.v
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.w, label %bb.b, label %_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit, !llvm.loop !783

_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit: ; preds = %bb.b
  %i.x = trunc nsw i64 %indvars.iv.i to i32
  %i.y = add nsw i32 %i.r, %i.x
  store i32 %i.y, ptr %1, align 4, !tbaa !3
  %i.z = sub nsw i32 %.1, %i.v                    ; 2 uses
  store i32 %i.z, ptr %3, align 4, !tbaa !3
  %i.aa = getelementptr i8, ptr %i.u, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = sub nsw i32 %i.ab, %i.v
  %i.ad = icmp eq i32 %i.ac, 366                  ; 2 uses
  %i.ae = zext nneg i32 %i.z to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE = select i1 %i.ad, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE = select i1 %i.ad, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.af = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !153 ; 2 uses
  %i.ah = sext i8 %i.ag to i32
  store i32 %i.ah, ptr %2, align 4, !tbaa !3
  %i.ai = sext i8 %i.ag to i64
  %i.aj = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = load i32, ptr %3, align 4, !tbaa !3
  %i.an = sub nsw i32 %i.am, %i.al
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %3, align 4, !tbaa !3
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
end_hunk_0
begin_hunk_1_@_ZN6duckdb4Date11FromCStringEPKcmb:bb.a
          to label %bb.n unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.010 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.g) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.n) #47
  br label %.sink.split

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
  %.neg36 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %1)
  %i.i = add nuw nsw i32 %.neg36, 146096
  %i.j = udiv i32 %i.i, 146097                    ; 2 uses
  %i.k = mul nuw nsw i32 %i.j, 146097
  %i.l = add nsw i32 %1, 146097
  %i.m = add i32 %i.l, %i.k
  %.neg32.i = mul nsw i32 %i.j, -400
  %i.n = add nsw i32 %.neg32.i, 1570
  br label %._crit_edge.i.i12

.preheader.i.i:                                   ; preds = %bb.b
  %i.o = icmp samesign ugt i32 %1, 146096
  br i1 %i.o, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i12

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.p = add nsw i32 %1, -146097
  %i.q = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 292193)
  %i.r = add nuw nsw i32 %i.q, 146096
  %i.s = udiv i32 %i.r, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.s, -146097
  %i.t = add nsw i32 %i.p, %.neg.i
  %i.u = mul nuw nsw i32 %i.s, 400
  %i.v = add nuw nsw i32 %i.u, 2370
  br label %._crit_edge.i.i12

._crit_edge.i.i12:                                ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.w = phi i32 [ %i.n, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.v, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.m, %.lr.ph.i.preheader.i ], [ %1, %.preheader.i.i ], [ %i.t, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.x = udiv i32 %.1.i, 365
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge.i.i12
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ %i.y, %._crit_edge.i.i12 ] ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 3 uses
  %i.ab = icmp slt i32 %.1.i, %i.aa
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.ab, label %bb.c, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.c
  %i.ac = trunc nsw i64 %indvars.iv.i.i to i32
  %i.ad = add nsw i32 %i.w, %i.ac                 ; 3 uses
  %i.ae = sub nsw i32 %.1.i, %i.aa                ; 2 uses
  %i.af = getelementptr i8, ptr %i.z, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = sub nsw i32 %i.ag, %i.aa
  %i.ai = icmp eq i32 %i.ah, 366                  ; 2 uses
  %i.aj = zext nneg i32 %i.ae to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.ai, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.ai, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.ak = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !153 ; 2 uses
  %i.am = sext i8 %i.al to i32
  %i.an = sext i8 %i.al to i64
  %i.ao = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = add nuw i32 %i.ae, 1
  %i.as = sub i32 %i.ar, %i.aq
  %i.at = icmp slt i32 %i.ad, 1                   ; 3 uses
  %i.au = sub i32 1, %i.ad
  %.sroa.026.0 = select i1 %i.at, i32 %i.au, i32 %i.ad ; 2 uses
  %.0.i.i = select i1 %i.at, i64 11, i64 6
  %i.av = insertelement <4 x i32> poison, i32 %.sroa.026.0, i64 0
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ax = icmp sgt <4 x i32> %i.aw, <i32 99999, i32 999999, i32 9999999, i32 9999>
  %i.ay = select <4 x i1> %i.ax, <4 x i64> <i64 1, i64 1, i64 1, i64 5>, <4 x i64> <i64 0, i64 0, i64 0, i64 4>
  %i.az = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ay) ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, %.0.i.i          ; 4 uses
  %i.bb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #48, !noalias !811 ; 4 uses
  invoke void @_ZN6duckdb16DateToStringCast6FormatEPciiimb(ptr noundef nonnull %i.bb, i32 noundef %.sroa.026.0, i32 noundef %i.am, i32 noundef %i.as, i64 noundef %i.az, i1 noundef zeroext %i.at)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !108
  %i.bd = icmp samesign ugt i64 %i.ba, 15
  br i1 %i.bd, label %.noexc.i15, label %._crit_edge.i.i14

.noexc.i15:                                       ; preds = %bb.d
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.f   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i15
  store ptr %i.be, ptr %0, align 8, !tbaa !89
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !153
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %bb.d, %.noexc17
  %i.bg = phi ptr [ %i.be, %.noexc17 ], [ %i.bc, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i64 %i.ba, i1 false)
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !152
  %i.bj = load ptr, ptr %0, align 8, !tbaa !89
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @_ZdaPv(ptr noundef nonnull %i.bb) #47
  br label %bb.g

bb.e:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit20

bb.f:                                             ; preds = %.noexc.i15
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit20

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit20: ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.f ], [ %i.bl, %bb.e ]
  call void @_ZdaPv(ptr noundef nonnull %i.bb) #47
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
end_hunk_1
begin_hunk_2_@_ZN6duckdb4Date17EpochMicrosecondsENS_6date_tE:bb.a
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

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb4Date17EpochMillisecondsENS_6date_tE(i32 %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
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
  %i.c = add nsw i32 %i.b, 146096
  %i.d = sub i32 %i.c, %0
  %i.e = udiv i32 %i.d, 146097                    ; 2 uses
  %i.f = mul nuw i32 %i.e, 146097
  %i.g = add i32 %0, %i.f
  %i.h = add i32 %i.g, 146097
  %.neg19 = mul nsw i32 %i.e, -400
  %i.i = add nsw i32 %.neg19, 1570
  br label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.a
  %i.j = icmp samesign ugt i32 %0, 146096
  br i1 %i.j, label %.lr.ph17.i.preheader, label %._crit_edge.i

.lr.ph17.i.preheader:                             ; preds = %.preheader.i
  %i.k = add nsw i32 %0, -146097
  %i.l = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.m = add nuw i32 %i.l, 146096
  %i.n = udiv i32 %i.m, 146097                    ; 2 uses
  %.neg = mul nsw i32 %i.n, -146097
  %i.o = add nsw i32 %.neg, %i.k
  %i.p = mul nuw nsw i32 %i.n, 400
  %i.q = add nuw nsw i32 %i.p, 2370
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph17.i.preheader, %.lr.ph.i.preheader, %.preheader.i
  %.1 = phi i32 [ %i.i, %.lr.ph.i.preheader ], [ 1970, %.preheader.i ], [ %i.q, %.lr.ph17.i.preheader ]
  %.sroa.0.1 = phi i32 [ %i.h, %.lr.ph.i.preheader ], [ %0, %.preheader.i ], [ %i.o, %.lr.ph17.i.preheader ] ; 2 uses
  %i.r = udiv i32 %.sroa.0.1, 365
  %i.s = zext nneg i32 %i.r to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.s, %._crit_edge.i ] ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = icmp slt i32 %.sroa.0.1, %i.u
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.v, label %bb.b, label %_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit, !llvm.loop !783

_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit: ; preds = %bb.b
  %i.w = trunc nsw i64 %indvars.iv.i to i32
  %i.x = add nsw i32 %.1, %i.w
  ret i32 %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -128, 128) i32 @_ZN6duckdb4Date12ExtractMonthENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %.fr = freeze i32 %0                            ; 7 uses
  %i.a = icmp slt i32 %.fr, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.neg4 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %.fr)
  %i.b = add nuw nsw i32 %.neg4, 146096           ; 2 uses
  %1 = urem i32 %i.b, 146097
  %i.c = add nsw i32 %.fr, 146097
  %i.d = add i32 %i.c, %i.b
  %2 = sub i32 %i.d, %1
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %.fr, 146096
  br i1 %i.e, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.f = tail call i32 @llvm.usub.sat.i32(i32 %.fr, i32 292193) ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 146096
  %i.h = urem i32 %i.g, 146097
  %i.i = sub nsw i32 %.fr, %i.f
  %i.j = add nsw i32 %i.i, -292193
  %i.k = add nsw i32 %i.j, %i.h
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %.1.i = phi i32 [ %2, %.lr.ph.i.preheader.i ], [ %.fr, %.preheader.i.i ], [ %i.k, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.l = udiv i32 %.1.i, 365
  %i.m = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.m, %._crit_edge.i.i ] ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 3 uses
  %i.p = icmp slt i32 %.1.i, %i.o
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.p, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.q = sub nsw i32 %.1.i, %i.o
  %i.r = getelementptr i8, ptr %i.n, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = sub nsw i32 %i.s, %i.o
  %i.u = icmp eq i32 %i.t, 366
  %i.v = zext nneg i32 %i.q to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.u, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %i.w = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !153
  %i.y = sext i8 %i.x to i32
  ret i32 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZN6duckdb4Date10ExtractDayENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %.fr = freeze i32 %0                            ; 7 uses
  %i.a = icmp slt i32 %.fr, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.neg4 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %.fr)
  %i.b = add nuw nsw i32 %.neg4, 146096           ; 2 uses
  %1 = urem i32 %i.b, 146097
  %i.c = add nsw i32 %.fr, 146097
  %i.d = add i32 %i.c, %i.b
  %2 = sub i32 %i.d, %1
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %.fr, 146096
  br i1 %i.e, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.f = tail call i32 @llvm.usub.sat.i32(i32 %.fr, i32 292193) ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 146096
  %i.h = urem i32 %i.g, 146097
  %i.i = sub nsw i32 %.fr, %i.f
  %i.j = add nsw i32 %i.i, -292193
  %i.k = add nsw i32 %i.j, %i.h
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %.1.i = phi i32 [ %2, %.lr.ph.i.preheader.i ], [ %.fr, %.preheader.i.i ], [ %i.k, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.l = udiv i32 %.1.i, 365
  %i.m = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.m, %._crit_edge.i.i ] ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 3 uses
  %i.p = icmp slt i32 %.1.i, %i.o
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.p, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.q = sub nsw i32 %.1.i, %i.o                  ; 2 uses
  %i.r = getelementptr i8, ptr %i.n, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = sub nsw i32 %i.s, %i.o
  %i.u = icmp eq i32 %i.t, 366                    ; 2 uses
  %i.v = zext nneg i32 %i.q to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.u, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.u, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.w = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !153
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = add nuw i32 %i.q, 1
  %i.ad = sub i32 %i.ac, %i.ab
  ret i32 %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -2147483646, -2147483648) i32 @_ZN6duckdb4Date19ExtractDayOfTheYearENS_6date_tE(i32 %0) local_unnamed_addr #9 align 2 {
bb.a:
  %.fr = freeze i32 %0                            ; 8 uses
  %i.a = icmp slt i32 %.fr, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = tail call i32 @llvm.umax.i32(i32 %.fr, i32 -146097)
  %i.c = add nsw i32 %i.b, 146096
  %i.d = sub i32 %i.c, %.fr                       ; 2 uses
  %1 = urem i32 %i.d, 146097
  %2 = sub nuw i32 %i.d, %1
  %i.e = add i32 %.fr, %2
  %i.f = add i32 %i.e, 146097
  br label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.a
  %i.g = icmp samesign ugt i32 %.fr, 146096
  br i1 %i.g, label %.lr.ph17.i.preheader, label %._crit_edge.i

.lr.ph17.i.preheader:                             ; preds = %.preheader.i
  %i.h = add nsw i32 %.fr, -146097
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 %.fr, i32 292193)
  %i.j = add nuw i32 %i.i, 146096                 ; 2 uses
  %i.k = urem i32 %i.j, 146097
  %.neg = sub i32 %i.k, %i.j
  %i.l = add i32 %.neg, %i.h
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph17.i.preheader, %.lr.ph.i.preheader, %.preheader.i
  %.sroa.0.1 = phi i32 [ %i.f, %.lr.ph.i.preheader ], [ %.fr, %.preheader.i ], [ %i.l, %.lr.ph17.i.preheader ] ; 3 uses
  %i.m = udiv i32 %.sroa.0.1, 365
  %i.n = zext nneg i32 %i.m to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.n, %._crit_edge.i ] ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = icmp slt i32 %.sroa.0.1, %i.p
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.q, label %bb.b, label %_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit, !llvm.loop !783

_ZN6duckdb4Date17ExtractYearOffsetERiS1_S1_.exit: ; preds = %bb.b
  %i.r = add i32 %.sroa.0.1, 1
  %i.s = sub i32 %i.r, %i.p
  ret i32 %i.s
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
  %.neg34.i = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %0)
  %i.b = add nuw nsw i32 %.neg34.i, 146096
  %i.c = udiv i32 %i.b, 146097                    ; 2 uses
  %i.d = mul nuw nsw i32 %i.c, 146097
  %i.e = add nsw i32 %0, 146097
  %i.f = add i32 %i.e, %i.d
  %.neg32.i.i = mul nsw i32 %i.c, -400
  %i.g = add nsw i32 %.neg32.i.i, 1570
  br label %._crit_edge.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a
  %i.h = icmp samesign ugt i32 %0, 146096
  br i1 %i.h, label %.lr.ph17.i.preheader.i.i, label %._crit_edge.i.i.i

.lr.ph17.i.preheader.i.i:                         ; preds = %.preheader.i.i.i
  %i.i = add nsw i32 %0, -146097
  %i.j = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.k = add nuw nsw i32 %i.j, 146096
  %i.l = udiv i32 %i.k, 146097                    ; 2 uses
  %.neg.i.i = mul nsw i32 %i.l, -146097
  %i.m = add nsw i32 %i.i, %.neg.i.i
  %i.n = mul nuw nsw i32 %i.l, 400
  %i.o = add nuw nsw i32 %i.n, 2370
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph17.i.preheader.i.i, %.preheader.i.i.i, %.lr.ph.i.preheader.i.i
  %i.p = phi i32 [ %i.g, %.lr.ph.i.preheader.i.i ], [ 1970, %.preheader.i.i.i ], [ %i.o, %.lr.ph17.i.preheader.i.i ]
  %.1.i.i = phi i32 [ %i.f, %.lr.ph.i.preheader.i.i ], [ %0, %.preheader.i.i.i ], [ %i.m, %.lr.ph17.i.preheader.i.i ] ; 2 uses
  %i.q = udiv i32 %.1.i.i, 365
  %i.r = zext nneg i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.b ], [ %i.r, %._crit_edge.i.i.i ] ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp slt i32 %.1.i.i, %i.t
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  br i1 %i.u, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit.i, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit.i: ; preds = %bb.b
  %i.v = trunc nsw i64 %indvars.iv.i.i.i to i32
  %i.w = add nsw i32 %i.p, %i.v                   ; 2 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !3
  %i.x = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %i.w, i32 noundef 1, i32 noundef 1) ; 4 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit.i
  %.lhs.trunc.i.i.i = sub i32 3, %i.x
  %i.z = urem i32 %.lhs.trunc.i.i.i, 7
  %i.aa = sub nuw nsw i32 6, %i.z
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit.i

bb.d:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit.i
  %narrow.i.i.i = add nuw i32 %i.x, 3
  %i.ab = urem i32 %narrow.i.i.i, 7
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit.i

_ZN6duckdbL13GetISOWeekOneEi.exit.i:              ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ac = sub nsw i32 %i.x, %.0.i.i.i             ; 2 uses
  %i.ad = icmp samesign ugt i32 %.0.i.i.i, 3
  %i.ae = add nsw i32 %i.ac, 7
  %spec.select.i.i = select i1 %i.ad, i32 %i.ae, i32 %i.ac
  %i.af = sub nsw i32 %0, %spec.select.i.i        ; 2 uses
  %i.ag = sdiv i32 %i.af, 7                       ; 2 uses
  %.neg.i = mul nsw i32 %i.ag, -7
  %i.ah = add i32 %.neg.i, %i.af
  %.lobit.i.i = ashr i32 %i.ah, 31
  %.0.i.i = add nsw i32 %.lobit.i.i, %i.ag        ; 4 uses
  %i.ai = icmp slt i32 %.0.i.i, 0
  br i1 %i.ai, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit.i
  %i.aj = load i32, ptr %1, align 4, !tbaa !3
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %1, align 4, !tbaa !3
  %i.al = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %i.ak, i32 noundef 1, i32 noundef 1) ; 4 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc.i.i17.i = sub i32 3, %i.al
  %i.an = urem i32 %.lhs.trunc.i.i17.i, 7
  %i.ao = sub nuw nsw i32 6, %i.an
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit18.i

bb.g:                                             ; preds = %bb.e
  %narrow.i.i14.i = add nuw i32 %i.al, 3
  %i.ap = urem i32 %narrow.i.i14.i, 7
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit18.i

_ZN6duckdbL13GetISOWeekOneEi.exit18.i:            ; preds = %bb.g, %bb.f
  %.0.i.i15.i = phi i32 [ %i.ao, %bb.f ], [ %i.ap, %bb.g ] ; 2 uses
  %i.aq = sub nsw i32 %i.al, %.0.i.i15.i          ; 2 uses
  %i.ar = icmp samesign ugt i32 %.0.i.i15.i, 3
  %i.as = add nsw i32 %i.aq, 7
  %spec.select.i16.i = select i1 %i.ar, i32 %i.as, i32 %i.aq
  %i.at = sub nsw i32 %0, %spec.select.i16.i      ; 2 uses
  %i.au = sdiv i32 %i.at, 7                       ; 2 uses
  %.neg32.i = mul nsw i32 %i.au, -7
  %i.av = add i32 %.neg32.i, %i.at
  %.lobit.i20.i = ashr i32 %i.av, 31
  %.0.i21.i = add nsw i32 %.lobit.i20.i, %i.au
  br label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit

bb.h:                                             ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit.i
  %i.aw = icmp samesign ugt i32 %.0.i.i, 51
  br i1 %i.aw, label %bb.i, label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %1, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  %i.az = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %i.ay, i32 noundef 1, i32 noundef 1) ; 4 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.lhs.trunc.i.i25.i = sub i32 3, %i.az
  %i.bb = urem i32 %.lhs.trunc.i.i25.i, 7
  %i.bc = sub nuw nsw i32 6, %i.bb
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit26.i

bb.k:                                             ; preds = %bb.i
  %narrow.i.i22.i = add nuw i32 %i.az, 3
  %i.bd = urem i32 %narrow.i.i22.i, 7
  br label %_ZN6duckdbL13GetISOWeekOneEi.exit26.i

_ZN6duckdbL13GetISOWeekOneEi.exit26.i:            ; preds = %bb.k, %bb.j
  %.0.i.i23.i = phi i32 [ %i.bc, %bb.j ], [ %i.bd, %bb.k ] ; 2 uses
  %i.be = sub nsw i32 %i.az, %.0.i.i23.i          ; 2 uses
  %i.bf = icmp samesign ugt i32 %.0.i.i23.i, 3
  %i.bg = add nsw i32 %i.be, 7
  %spec.select.i24.i = select i1 %i.bf, i32 %i.bg, i32 %i.be
  %.not.i = icmp slt i32 %0, %spec.select.i24.i
  br i1 %.not.i, label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit26.i
  %i.bh = load i32, ptr %1, align 4, !tbaa !3
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %1, align 4, !tbaa !3
  br label %_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit

_ZN6duckdbL14GetISOYearWeekENS_6date_tERi.exit:   ; preds = %_ZN6duckdbL13GetISOWeekOneEi.exit18.i, %bb.h, %_ZN6duckdbL13GetISOWeekOneEi.exit26.i, %bb.l
  %.0.i = phi i32 [ %.0.i21.i, %_ZN6duckdbL13GetISOWeekOneEi.exit18.i ], [ 0, %bb.l ], [ %.0.i.i, %_ZN6duckdbL13GetISOWeekOneEi.exit26.i ], [ %.0.i.i, %bb.h ]
  %i.bj = add nsw i32 %.0.i, 1
  store i32 %i.bj, ptr %2, align 4, !tbaa !3
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
  %.neg26 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %0)
  %i.b = add nuw nsw i32 %.neg26, 146096
  %i.c = udiv i32 %i.b, 146097                    ; 2 uses
  %i.d = mul nuw nsw i32 %i.c, 146097
  %i.e = add nsw i32 %0, 146097
  %i.f = add i32 %i.e, %i.d
  %.neg32.i = mul nsw i32 %i.c, -400
  %i.g = add nsw i32 %.neg32.i, 1570
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.h = icmp samesign ugt i32 %0, 146096
  br i1 %i.h, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.i = add nsw i32 %0, -146097
  %i.j = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.k = add nuw nsw i32 %i.j, 146096
  %i.l = udiv i32 %i.k, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.l, -146097
  %i.m = add nsw i32 %i.i, %.neg.i
  %i.n = mul nuw nsw i32 %i.l, 400
  %i.o = add nuw nsw i32 %i.n, 2370
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.p = phi i32 [ %i.g, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.f, %.lr.ph.i.preheader.i ], [ %0, %.preheader.i.i ], [ %i.m, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.q = udiv i32 %.1.i, 365
  %i.r = zext nneg i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.r, %._crit_edge.i.i ] ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 3 uses
  %i.u = icmp slt i32 %.1.i, %i.t
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.u, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.v = trunc nsw i64 %indvars.iv.i.i to i32
  %i.w = add nsw i32 %i.p, %i.v
  %.fr25 = freeze i32 %i.w                        ; 4 uses
  %i.x = sub nsw i32 %.1.i, %i.t                  ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = sub nsw i32 %i.z, %i.t
  %i.ab = icmp eq i32 %i.aa, 366                  ; 2 uses
  %i.ac = zext nneg i32 %i.x to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.ab, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.ab, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.ad = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !153 ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = sext i8 %i.ae to i64
  %i.ah = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = sub nsw i32 %i.x, %i.aj
  %i.al = add nsw i32 %i.af, -1                   ; 3 uses
  %i.am = and i32 %.fr25, 3
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.c, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread22

_ZN6duckdb4Date10IsLeapYearEi.exit.thread22:      ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE, i64 %i.ao
  br label %bb.d

bb.c:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.aq = srem i32 %.fr25, 100
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread

_ZN6duckdb4Date10IsLeapYearEi.exit.thread:        ; preds = %bb.c
  %i.ar = sext i32 %i.al to i64
  %i.as = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, i64 %i.ar
  br label %bb.d

_ZN6duckdb4Date10IsLeapYearEi.exit:               ; preds = %bb.c
  %i.at = srem i32 %.fr25, 400
  %i.au = icmp eq i32 %i.at, 0
  %i.av = sext i32 %i.al to i64
  %spec.select24.v = select i1 %i.au, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %spec.select24 = getelementptr inbounds [4 x i8], ptr %spec.select24.v, i64 %i.av
  br label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread22
  %i.aw = phi ptr [ %i.ap, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread22 ], [ %spec.select24, %_ZN6duckdb4Date10IsLeapYearEi.exit ], [ %i.as, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread ]
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, %i.ak                ; 2 uses
  %i.az = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %.fr25, i32 noundef 1, i32 noundef 1) ; 3 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc.i = sub i32 3, %i.az
  %i.bb = urem i32 %.lhs.trunc.i, 7
  %i.bc = xor i32 %i.bb, 7
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

bb.f:                                             ; preds = %bb.d
  %narrow.i = add nuw i32 %i.az, 3
  %i.bd = urem i32 %narrow.i, 7
  %narrow4.i = add nuw nsw i32 %i.bd, 1
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.bc, %bb.e ], [ %narrow4.i, %bb.f ] ; 3 uses
  %i.be = sub nuw nsw i32 7, %.0.i
  %i.bf = icmp eq i32 %.0.i, 1
  %i.bg = sub nuw nsw i32 8, %.0.i
  %spec.select = select i1 %i.bf, i32 0, i32 %i.bg
  %.0 = select i1 %1, i32 %spec.select, i32 %i.be ; 2 uses
  %i.bh = icmp slt i32 %i.ay, %.0
  br i1 %i.bh, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit
  %i.bi = sub nsw i32 %i.ay, %.0
  %i.bj = udiv i32 %i.bi, 7
  %i.bk = add nuw nsw i32 %i.bj, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit, %bb.g
  %.011 = phi i32 [ %i.bk, %bb.g ], [ 0, %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit ]
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
end_hunk_2
begin_hunk_3_@_ZN6duckdb8Interval8GetMicroERKNS_10interval_tE:bb.a
bb.o:                                             ; preds = %bb.n, %bb.m
  %.08 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ad = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ad) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br i1 %.08, label %.sink.split, label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br i1 %.08, label %.sink.split, label %bb.v

bb.p:                                             ; preds = %bb.k
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !108
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !108
  %i.ai = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.ai, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.93, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.w unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread: ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %.sink.split

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i1 [ false, %bb.s ], [ true, %bb.r ]  ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.am) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br i1 %.0, label %.sink.split, label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br i1 %.0, label %.sink.split, label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i64 %i.ap

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  %.pn26.pn.ph = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @__cxa_free_exception(ptr %.sink) #46
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26.pn = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn26.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  resume { ptr, i32 } %.pn26.pn

bb.w:                                             ; preds = %bb.s, %bb.n, %bb.i, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb8Interval14GetNanosecondsERKNS_10interval_tE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = tail call noundef i64 @_ZN6duckdb8Interval8GetMicroERKNS_10interval_tE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.c = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.b, i64 noundef 1000, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.94, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #46
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %.pn10, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  resume { ptr, i32 } %.pn9

bb.h:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i64 %i.j

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN6duckdb8Interval6GetAgeENS_19TimestampComponentsES1_b(ptr nofree noundef readonly byval(%"struct.duckdb::TimestampComponents") align 8 captures(none) %0, ptr nofree noundef readonly byval(%"struct.duckdb::TimestampComponents") align 8 captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !964
  %.fr81 = freeze i32 %i.a                        ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !964
  %.fr80 = freeze i32 %i.b                        ; 4 uses
  %i.c = sub nsw i32 %.fr81, %.fr80               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load <4 x i32>, ptr %i.d, align 4, !tbaa !3
  %i.g = load i32, ptr %i.d, align 4, !tbaa !966
  %i.h = load <4 x i32>, ptr %i.e, align 4, !tbaa !3
  %i.i = load i32, ptr %i.e, align 4, !tbaa !966
  %i.j = sub nsw <4 x i32> %i.f, %i.h             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !967
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !967
  %i.o = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !968
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !968
  %i.t = sub nsw i32 %i.q, %i.s                   ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = sub nsw i32 0, %i.c
  %i.v = sub nsw <4 x i32> zeroinitializer, %i.j
  %i.w = sub nsw i32 0, %i.o
  %i.x = sub nsw i32 0, %i.t
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.049 = phi i32 [ %i.w, %bb.b ], [ %i.o, %bb.a ] ; 2 uses
  %.046 = phi i32 [ %i.x, %bb.b ], [ %i.t, %bb.a ] ; 5 uses
  %.0 = phi i32 [ %i.u, %bb.b ], [ %i.c, %bb.a ]  ; 2 uses
  %i.y = phi <4 x i32> [ %i.v, %bb.b ], [ %i.j, %bb.a ] ; 10 uses
  %i.z = icmp slt i32 %.046, 0
  br i1 %i.z, label %.lr.ph.preheader, label %.preheader85

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aa = tail call i32 @llvm.umax.i32(i32 %.046, i32 -1000000)
  %i.ab = add nsw i32 %i.aa, 999999
  %i.ac = sub i32 %i.ab, %.046
  %i.ad = udiv i32 %i.ac, 1000000                 ; 2 uses
  %i.ae = mul nuw i32 %i.ad, 1000000
  %i.af = add i32 %.046, %i.ae
  %i.ag = add i32 %i.af, 1000000
  %i.ah = xor i32 %i.ad, -1
  %i.ai = add i32 %.049, %i.ah
  br label %.preheader85

.preheader85:                                     ; preds = %.lr.ph.preheader, %bb.c
  %.150.lcssa = phi i32 [ %.049, %bb.c ], [ %i.ai, %.lr.ph.preheader ] ; 5 uses
  %.147.lcssa = phi i32 [ %.046, %bb.c ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %i.aj = icmp slt i32 %.150.lcssa, 0
  %i.ak = extractelement <4 x i32> %i.y, i64 3    ; 2 uses
  br i1 %i.aj, label %.lr.ph91.preheader, label %.preheader84

.lr.ph91.preheader:                               ; preds = %.preheader85
  %i.al = tail call i32 @llvm.umax.i32(i32 %.150.lcssa, i32 -60)
  %i.am = add nsw i32 %i.al, 59
  %i.an = sub i32 %i.am, %.150.lcssa
  %i.ao = udiv i32 %i.an, 60                      ; 2 uses
  %i.ap = mul nuw i32 %i.ao, 60
  %i.aq = add i32 %.150.lcssa, %i.ap
  %i.ar = add i32 %i.aq, 60
  %i.as = xor i32 %i.ao, -1
  %i.at = add i32 %i.ak, %i.as
  br label %.preheader84

.preheader84:                                     ; preds = %.lr.ph91.preheader, %.preheader85
  %.153.lcssa = phi i32 [ %i.ak, %.preheader85 ], [ %i.at, %.lr.ph91.preheader ] ; 5 uses
  %.251.lcssa = phi i32 [ %.150.lcssa, %.preheader85 ], [ %i.ar, %.lr.ph91.preheader ] ; 2 uses
  %i.au = icmp slt i32 %.153.lcssa, 0
  %i.av = extractelement <4 x i32> %i.y, i64 2    ; 2 uses
  br i1 %i.au, label %.lr.ph96.preheader, label %.preheader83

.lr.ph96.preheader:                               ; preds = %.preheader84
  %i.aw = tail call i32 @llvm.umax.i32(i32 %.153.lcssa, i32 -60)
  %i.ax = add nsw i32 %i.aw, 59
  %i.ay = sub i32 %i.ax, %.153.lcssa
  %i.az = udiv i32 %i.ay, 60                      ; 2 uses
  %i.ba = mul nuw i32 %i.az, 60
  %i.bb = add i32 %.153.lcssa, %i.ba
  %i.bc = add i32 %i.bb, 60
  %i.bd = xor i32 %i.az, -1
  %i.be = add i32 %i.av, %i.bd
  br label %.preheader83

.preheader83:                                     ; preds = %.lr.ph96.preheader, %.preheader84
  %.157.lcssa = phi i32 [ %i.av, %.preheader84 ], [ %i.be, %.lr.ph96.preheader ] ; 5 uses
  %.254.lcssa = phi i32 [ %.153.lcssa, %.preheader84 ], [ %i.bc, %.lr.ph96.preheader ] ; 2 uses
  %i.bf = icmp slt i32 %.157.lcssa, 0
  %i.bg = extractelement <4 x i32> %i.y, i64 1    ; 2 uses
  br i1 %i.bf, label %.lr.ph101.preheader, label %.preheader82

.lr.ph101.preheader:                              ; preds = %.preheader83
  %i.bh = tail call i32 @llvm.umax.i32(i32 %.157.lcssa, i32 -24)
  %i.bi = add nsw i32 %i.bh, 23
  %i.bj = sub i32 %i.bi, %.157.lcssa
  %i.bk = udiv i32 %i.bj, 24                      ; 2 uses
  %i.bl = mul nuw i32 %i.bk, 24
  %i.bm = add i32 %.157.lcssa, %i.bl
  %i.bn = add i32 %i.bm, 24
  %i.bo = xor i32 %i.bk, -1
  %i.bp = add i32 %i.bg, %i.bo
  br label %.preheader82

.preheader82:                                     ; preds = %.lr.ph101.preheader, %.preheader83
  %.161.lcssa = phi i32 [ %i.bg, %.preheader83 ], [ %i.bp, %.lr.ph101.preheader ] ; 20 uses
  %.258.lcssa = phi i32 [ %.157.lcssa, %.preheader83 ], [ %i.bn, %.lr.ph101.preheader ] ; 2 uses
  %i.bq = icmp slt i32 %.161.lcssa, 0
  %i.br = extractelement <4 x i32> %i.y, i64 0    ; 7 uses
  br i1 %i.bq, label %.lr.ph106, label %.preheader

.lr.ph106:                                        ; preds = %.preheader82
  %i.bs = sext i32 %i.i to i64                    ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date11NORMAL_DAYSE, i64 %i.bs
  %i.bu = srem i32 %.fr80, 100
  %.not.i70 = icmp eq i32 %i.bu, 0
  %i.bv = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date9LEAP_DAYSE, i64 %i.bs
  %i.bw = srem i32 %.fr80, 400
  %i.bx = icmp eq i32 %i.bw, 0
  %spec.select79.v = select i1 %i.bx, ptr @_ZN6duckdb4Date9LEAP_DAYSE, ptr @_ZN6duckdb4Date11NORMAL_DAYSE
  %spec.select79 = getelementptr inbounds [4 x i8], ptr %spec.select79.v, i64 %i.bs
  %i.by = sext i32 %i.g to i64                    ; 3 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date11NORMAL_DAYSE, i64 %i.by
  %i.ca = srem i32 %.fr81, 100
  %.not.i = icmp eq i32 %i.ca, 0
  %i.cb = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date9LEAP_DAYSE, i64 %i.by
  %i.cc = srem i32 %.fr81, 400
  %i.cd = icmp eq i32 %i.cc, 0
  %spec.select.v = select i1 %i.cd, ptr @_ZN6duckdb4Date9LEAP_DAYSE, ptr @_ZN6duckdb4Date11NORMAL_DAYSE
  %spec.select = getelementptr inbounds [4 x i8], ptr %spec.select.v, i64 %i.by
  br i1 %2, label %.lr.ph106.split.us, label %.lr.ph106.split

.lr.ph106.split.us:                               ; preds = %.lr.ph106
  %i.ce = and i32 %.fr81, 3
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph106.split.us.split.us, label %.lr.ph106.split.us.split

.lr.ph106.split.us.split.us:                      ; preds = %.lr.ph106.split.us
  br i1 %.not.i, label %.lr.ph106.split.us.split.us.split.us, label %.lr.ph106.split.us.split.us.split

.lr.ph106.split.us.split.us.split.us:             ; preds = %.lr.ph106.split.us.split.us
  %.pn.us.us.us = load i32, ptr %spec.select, align 4, !tbaa !3 ; 4 uses
  %i.cg = add nsw i32 %.161.lcssa, %.pn.us.us.us  ; 3 uses
  %i.ch = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %.lobit237 = lshr i32 %i.cg, 31                 ; 2 uses
  %i.ci = add i32 %.lobit237, %i.cg
  %i.cj = sub i32 %i.ch, %i.ci
  %i.ck = udiv i32 %i.cj, %.pn.us.us.us
  %i.cl = add i32 %.lobit237, %i.ck
  %i.cm = add i32 %i.cl, 1                        ; 3 uses
  %min.iters.check220 = icmp ult i32 %i.cm, 8
  br i1 %min.iters.check220, label %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %.lr.ph106.split.us.split.us.split.us
  %n.vec222 = and i32 %i.cm, -8                   ; 3 uses
  %i.cn = mul i32 %n.vec222, %.pn.us.us.us
  %i.co = add i32 %.161.lcssa, %i.cn              ; 2 uses
  %i.cp = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i32 [ 0, %vector.ph221 ], [ %index.next227, %vector.body223 ]
  %vec.phi225 = phi <4 x i32> [ %i.cp, %vector.ph221 ], [ %i.cq, %vector.body223 ]
  %vec.phi226 = phi <4 x i32> [ zeroinitializer, %vector.ph221 ], [ %i.cr, %vector.body223 ]
  %i.cq = add <4 x i32> %vec.phi225, splat (i32 -1) ; 2 uses
  %i.cr = add <4 x i32> %vec.phi226, splat (i32 -1) ; 2 uses
  %index.next227 = add nuw i32 %index224, 8       ; 2 uses
  %i.cs = icmp eq i32 %index.next227, %n.vec222
  br i1 %i.cs, label %middle.block228, label %vector.body223, !llvm.loop !969

middle.block228:                                  ; preds = %vector.body223
  %bin.rdx229 = add <4 x i32> %i.cr, %i.cq
  %i.ct = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx229) ; 2 uses
  %cmp.n230 = icmp eq i32 %i.cm, %n.vec222
  br i1 %cmp.n230, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader: ; preds = %.lr.ph106.split.us.split.us.split.us, %middle.block228
  %.262105.us.us.us.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.us.split.us.split.us ], [ %i.co, %middle.block228 ]
  %.165104.us.us.us.ph = phi i32 [ %i.br, %.lr.ph106.split.us.split.us.split.us ], [ %i.ct, %middle.block228 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us

_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us:      ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us
  %.262105.us.us.us = phi i32 [ %.363.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %.262105.us.us.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader ]
  %.165104.us.us.us = phi i32 [ %.266.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %.165104.us.us.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us.preheader ]
  %.363.us.us.us = add nsw i32 %.pn.us.us.us, %.262105.us.us.us ; 3 uses
  %.266.us.us.us = add nsw i32 %.165104.us.us.us, -1 ; 2 uses
  %i.cu = icmp slt i32 %.363.us.us.us, 0
  br i1 %i.cu, label %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us, label %.preheader, !llvm.loop !970

.lr.ph106.split.us.split.us.split:                ; preds = %.lr.ph106.split.us.split.us
  %.pn.us.us = load i32, ptr %i.cb, align 4, !tbaa !3 ; 4 uses
  %i.cv = add nsw i32 %.161.lcssa, %.pn.us.us     ; 3 uses
  %i.cw = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 0)
  %.lobit236 = lshr i32 %i.cv, 31                 ; 2 uses
  %i.cx = add i32 %.lobit236, %i.cv
  %i.cy = sub i32 %i.cw, %i.cx
  %i.cz = udiv i32 %i.cy, %.pn.us.us
  %i.da = add i32 %.lobit236, %i.cz
  %i.db = add i32 %i.da, 1                        ; 3 uses
  %min.iters.check206 = icmp ult i32 %i.db, 8
  br i1 %min.iters.check206, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph106.split.us.split.us.split
  %n.vec208 = and i32 %i.db, -8                   ; 3 uses
  %i.dc = mul i32 %n.vec208, %.pn.us.us
  %i.dd = add i32 %.161.lcssa, %i.dc              ; 2 uses
  %i.de = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i32 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ]
  %vec.phi211 = phi <4 x i32> [ %i.de, %vector.ph207 ], [ %i.df, %vector.body209 ]
  %vec.phi212 = phi <4 x i32> [ zeroinitializer, %vector.ph207 ], [ %i.dg, %vector.body209 ]
  %i.df = add <4 x i32> %vec.phi211, splat (i32 -1) ; 2 uses
  %i.dg = add <4 x i32> %vec.phi212, splat (i32 -1) ; 2 uses
  %index.next213 = add nuw i32 %index210, 8       ; 2 uses
  %i.dh = icmp eq i32 %index.next213, %n.vec208
  br i1 %i.dh, label %middle.block214, label %vector.body209, !llvm.loop !971

middle.block214:                                  ; preds = %vector.body209
  %bin.rdx215 = add <4 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx215) ; 2 uses
  %cmp.n216 = icmp eq i32 %i.db, %n.vec208
  br i1 %cmp.n216, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader: ; preds = %.lr.ph106.split.us.split.us.split, %middle.block214
  %.262105.us.us.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.us.split.us.split ], [ %i.dd, %middle.block214 ]
  %.165104.us.us.ph = phi i32 [ %i.br, %.lr.ph106.split.us.split.us.split ], [ %i.di, %middle.block214 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us

_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us:  ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us
  %.262105.us.us = phi i32 [ %.363.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.262105.us.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader ]
  %.165104.us.us = phi i32 [ %.266.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.165104.us.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us.preheader ]
  %.363.us.us = add nsw i32 %.pn.us.us, %.262105.us.us ; 3 uses
  %.266.us.us = add nsw i32 %.165104.us.us, -1    ; 2 uses
  %i.dj = icmp slt i32 %.363.us.us, 0
  br i1 %i.dj, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us, label %.preheader, !llvm.loop !972

.lr.ph106.split.us.split:                         ; preds = %.lr.ph106.split.us
  %.pn.us = load i32, ptr %i.bz, align 4, !tbaa !3 ; 4 uses
  %i.dk = add nsw i32 %.161.lcssa, %.pn.us        ; 3 uses
  %i.dl = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 0)
  %.lobit235 = lshr i32 %i.dk, 31                 ; 2 uses
  %i.dm = add i32 %.lobit235, %i.dk
  %i.dn = sub i32 %i.dl, %i.dm
  %i.do = udiv i32 %i.dn, %.pn.us
  %i.dp = add i32 %.lobit235, %i.do
  %i.dq = add i32 %i.dp, 1                        ; 3 uses
  %min.iters.check192 = icmp ult i32 %i.dq, 8
  br i1 %min.iters.check192, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %.lr.ph106.split.us.split
  %n.vec194 = and i32 %i.dq, -8                   ; 3 uses
  %i.dr = mul i32 %n.vec194, %.pn.us
  %i.ds = add i32 %.161.lcssa, %i.dr              ; 2 uses
  %i.dt = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i32 [ 0, %vector.ph193 ], [ %index.next199, %vector.body195 ]
  %vec.phi197 = phi <4 x i32> [ %i.dt, %vector.ph193 ], [ %i.du, %vector.body195 ]
  %vec.phi198 = phi <4 x i32> [ zeroinitializer, %vector.ph193 ], [ %i.dv, %vector.body195 ]
  %i.du = add <4 x i32> %vec.phi197, splat (i32 -1) ; 2 uses
  %i.dv = add <4 x i32> %vec.phi198, splat (i32 -1) ; 2 uses
  %index.next199 = add nuw i32 %index196, 8       ; 2 uses
  %i.dw = icmp eq i32 %index.next199, %n.vec194
  br i1 %i.dw, label %middle.block200, label %vector.body195, !llvm.loop !973

middle.block200:                                  ; preds = %vector.body195
  %bin.rdx201 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx201) ; 2 uses
  %cmp.n202 = icmp eq i32 %i.dq, %n.vec194
  br i1 %cmp.n202, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader: ; preds = %.lr.ph106.split.us.split, %middle.block200
  %.262105.us.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.us.split ], [ %i.ds, %middle.block200 ]
  %.165104.us.ph = phi i32 [ %i.br, %.lr.ph106.split.us.split ], [ %i.dx, %middle.block200 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us

_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us:   ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us
  %.262105.us = phi i32 [ %.363.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.262105.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader ]
  %.165104.us = phi i32 [ %.266.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.165104.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us.preheader ]
  %.363.us = add nsw i32 %.pn.us, %.262105.us     ; 3 uses
  %.266.us = add nsw i32 %.165104.us, -1          ; 2 uses
  %i.dy = icmp slt i32 %.363.us, 0
  br i1 %i.dy, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us, label %.preheader, !llvm.loop !974

.lr.ph106.split:                                  ; preds = %.lr.ph106
  %i.dz = and i32 %.fr80, 3
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph106.split.split.us, label %.lr.ph106.split.split

.lr.ph106.split.split.us:                         ; preds = %.lr.ph106.split
  br i1 %.not.i70, label %.lr.ph106.split.split.us.split.us, label %.lr.ph106.split.split.us.split

.lr.ph106.split.split.us.split.us:                ; preds = %.lr.ph106.split.split.us
  %.pn.us113.us = load i32, ptr %spec.select79, align 4, !tbaa !3 ; 4 uses
  %i.eb = add nsw i32 %.161.lcssa, %.pn.us113.us  ; 3 uses
  %i.ec = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 0)
  %.lobit234 = lshr i32 %i.eb, 31                 ; 2 uses
  %i.ed = add i32 %.lobit234, %i.eb
  %i.ee = sub i32 %i.ec, %i.ed
  %i.ef = udiv i32 %i.ee, %.pn.us113.us
  %i.eg = add i32 %.lobit234, %i.ef
  %i.eh = add i32 %i.eg, 1                        ; 3 uses
  %min.iters.check178 = icmp ult i32 %i.eh, 8
  br i1 %min.iters.check178, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph106.split.split.us.split.us
  %n.vec180 = and i32 %i.eh, -8                   ; 3 uses
  %i.ei = mul i32 %n.vec180, %.pn.us113.us
  %i.ej = add i32 %.161.lcssa, %i.ei              ; 2 uses
  %i.ek = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i32 [ 0, %vector.ph179 ], [ %index.next185, %vector.body181 ]
  %vec.phi183 = phi <4 x i32> [ %i.ek, %vector.ph179 ], [ %i.el, %vector.body181 ]
  %vec.phi184 = phi <4 x i32> [ zeroinitializer, %vector.ph179 ], [ %i.em, %vector.body181 ]
  %i.el = add <4 x i32> %vec.phi183, splat (i32 -1) ; 2 uses
  %i.em = add <4 x i32> %vec.phi184, splat (i32 -1) ; 2 uses
  %index.next185 = add nuw i32 %index182, 8       ; 2 uses
  %i.en = icmp eq i32 %index.next185, %n.vec180
  br i1 %i.en, label %middle.block186, label %vector.body181, !llvm.loop !975

middle.block186:                                  ; preds = %vector.body181
  %bin.rdx187 = add <4 x i32> %i.em, %i.el
  %i.eo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx187) ; 2 uses
  %cmp.n188 = icmp eq i32 %i.eh, %n.vec180
  br i1 %cmp.n188, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader: ; preds = %.lr.ph106.split.split.us.split.us, %middle.block186
  %.262105.us110.us.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.split.us.split.us ], [ %i.ej, %middle.block186 ]
  %.165104.us111.us.ph = phi i32 [ %i.br, %.lr.ph106.split.split.us.split.us ], [ %i.eo, %middle.block186 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us

_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us:       ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us
  %.262105.us110.us = phi i32 [ %.363.us114.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.262105.us110.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader ]
  %.165104.us111.us = phi i32 [ %.266.us115.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.165104.us111.us.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us.preheader ]
  %.363.us114.us = add nsw i32 %.pn.us113.us, %.262105.us110.us ; 3 uses
  %.266.us115.us = add nsw i32 %.165104.us111.us, -1 ; 2 uses
  %i.ep = icmp slt i32 %.363.us114.us, 0
  br i1 %i.ep, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us, label %.preheader, !llvm.loop !976

.lr.ph106.split.split.us.split:                   ; preds = %.lr.ph106.split.split.us
  %.pn.us113 = load i32, ptr %i.bv, align 4, !tbaa !3 ; 4 uses
  %i.eq = add nsw i32 %.161.lcssa, %.pn.us113     ; 3 uses
  %i.er = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 0)
  %.lobit233 = lshr i32 %i.eq, 31                 ; 2 uses
  %i.es = add i32 %.lobit233, %i.eq
  %i.et = sub i32 %i.er, %i.es
  %i.eu = udiv i32 %i.et, %.pn.us113
  %i.ev = add i32 %.lobit233, %i.eu
  %i.ew = add i32 %i.ev, 1                        ; 3 uses
  %min.iters.check164 = icmp ult i32 %i.ew, 8
  br i1 %min.iters.check164, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %.lr.ph106.split.split.us.split
  %n.vec166 = and i32 %i.ew, -8                   ; 3 uses
  %i.ex = mul i32 %n.vec166, %.pn.us113
  %i.ey = add i32 %.161.lcssa, %i.ex              ; 2 uses
  %i.ez = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i32 [ 0, %vector.ph165 ], [ %index.next171, %vector.body167 ]
  %vec.phi169 = phi <4 x i32> [ %i.ez, %vector.ph165 ], [ %i.fa, %vector.body167 ]
  %vec.phi170 = phi <4 x i32> [ zeroinitializer, %vector.ph165 ], [ %i.fb, %vector.body167 ]
  %i.fa = add <4 x i32> %vec.phi169, splat (i32 -1) ; 2 uses
  %i.fb = add <4 x i32> %vec.phi170, splat (i32 -1) ; 2 uses
  %index.next171 = add nuw i32 %index168, 8       ; 2 uses
  %i.fc = icmp eq i32 %index.next171, %n.vec166
  br i1 %i.fc, label %middle.block172, label %vector.body167, !llvm.loop !977

middle.block172:                                  ; preds = %vector.body167
  %bin.rdx173 = add <4 x i32> %i.fb, %i.fa
  %i.fd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx173) ; 2 uses
  %cmp.n174 = icmp eq i32 %i.ew, %n.vec166
  br i1 %cmp.n174, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader: ; preds = %.lr.ph106.split.split.us.split, %middle.block172
  %.262105.us110.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.split.us.split ], [ %i.ey, %middle.block172 ]
  %.165104.us111.ph = phi i32 [ %i.br, %.lr.ph106.split.split.us.split ], [ %i.fd, %middle.block172 ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us:   ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us
  %.262105.us110 = phi i32 [ %.363.us114, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.262105.us110.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader ]
  %.165104.us111 = phi i32 [ %.266.us115, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.165104.us111.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us.preheader ]
  %.363.us114 = add nsw i32 %.pn.us113, %.262105.us110 ; 3 uses
  %.266.us115 = add nsw i32 %.165104.us111, -1    ; 2 uses
  %i.fe = icmp slt i32 %.363.us114, 0
  br i1 %i.fe, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us, label %.preheader, !llvm.loop !978

.lr.ph106.split.split:                            ; preds = %.lr.ph106.split
  %.pn = load i32, ptr %i.bt, align 4, !tbaa !3   ; 4 uses
  %i.ff = add nsw i32 %.161.lcssa, %.pn           ; 3 uses
  %i.fg = tail call i32 @llvm.smax.i32(i32 %i.ff, i32 0)
  %.lobit = lshr i32 %i.ff, 31                    ; 2 uses
  %i.fh = add i32 %.lobit, %i.ff
  %i.fi = sub i32 %i.fg, %i.fh
  %i.fj = udiv i32 %i.fi, %.pn
  %i.fk = add i32 %.lobit, %i.fj
  %i.fl = add i32 %i.fk, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fl, 8
  br i1 %min.iters.check, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph106.split.split
  %n.vec = and i32 %i.fl, -8                      ; 3 uses
  %i.fm = mul i32 %n.vec, %.pn
  %i.fn = add i32 %.161.lcssa, %i.fm              ; 2 uses
  %i.fo = shufflevector <4 x i32> %i.y, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.fo, %vector.ph ], [ %i.fp, %vector.body ]
  %vec.phi162 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fq, %vector.body ]
  %i.fp = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.fq = add <4 x i32> %vec.phi162, splat (i32 -1) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.fr = icmp eq i32 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !979

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fq, %i.fp
  %i.fs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.fl, %n.vec
  br i1 %cmp.n, label %.preheader, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader: ; preds = %.lr.ph106.split.split, %middle.block
  %.262105.ph = phi i32 [ %.161.lcssa, %.lr.ph106.split.split ], [ %i.fn, %middle.block ]
  %.165104.ph = phi i32 [ %i.br, %.lr.ph106.split.split ], [ %i.fs, %middle.block ]
  br label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77

.preheader:                                       ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us, %middle.block, %middle.block172, %middle.block186, %middle.block200, %middle.block214, %middle.block228, %.preheader82
  %.165.lcssa = phi i32 [ %i.br, %.preheader82 ], [ %.266.us115, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.266.us115.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.266.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.266.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.266.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %i.ct, %middle.block228 ], [ %i.di, %middle.block214 ], [ %i.dx, %middle.block200 ], [ %i.eo, %middle.block186 ], [ %i.fd, %middle.block172 ], [ %i.fs, %middle.block ], [ %.266, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ] ; 5 uses
  %.262.lcssa = phi i32 [ %.161.lcssa, %.preheader82 ], [ %.363.us114, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread.us ], [ %.363.us114.us, %_ZN6duckdb4Date10IsLeapYearEi.exit71.us.us ], [ %.363.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread73.us ], [ %.363.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.us.us ], [ %.363.us.us.us, %_ZN6duckdb4Date10IsLeapYearEi.exit.us.us.us ], [ %i.co, %middle.block228 ], [ %i.dd, %middle.block214 ], [ %i.ds, %middle.block200 ], [ %i.ej, %middle.block186 ], [ %i.ey, %middle.block172 ], [ %i.fn, %middle.block ], [ %.363, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ] ; 2 uses
  %i.ft = icmp slt i32 %.165.lcssa, 0
  br i1 %i.ft, label %.lr.ph128.preheader, label %._crit_edge

.lr.ph128.preheader:                              ; preds = %.preheader
  %i.fu = tail call i32 @llvm.umax.i32(i32 %.165.lcssa, i32 -12)
  %i.fv = add nsw i32 %i.fu, 11
  %i.fw = sub i32 %i.fv, %.165.lcssa
  %i.fx = udiv i32 %i.fw, 12                      ; 2 uses
  %i.fy = mul nuw i32 %i.fx, 12
  %i.fz = add i32 %.165.lcssa, %i.fy
  %i.ga = add i32 %i.fz, 12
  %i.gb = xor i32 %i.fx, -1
  %i.gc = add i32 %.0, %i.gb
  br label %._crit_edge

_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77:    ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77
  %.262105 = phi i32 [ %.363, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ], [ %.262105.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader ]
  %.165104 = phi i32 [ %.266, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77 ], [ %.165104.ph, %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77.preheader ]
  %.363 = add nsw i32 %.pn, %.262105              ; 3 uses
  %.266 = add nsw i32 %.165104, -1                ; 2 uses
  %i.gd = icmp slt i32 %.363, 0
  br i1 %i.gd, label %_ZN6duckdb4Date10IsLeapYearEi.exit71.thread77, label %.preheader, !llvm.loop !980

._crit_edge:                                      ; preds = %.lr.ph128.preheader, %.preheader
  %.367.lcssa = phi i32 [ %.165.lcssa, %.preheader ], [ %i.ga, %.lr.ph128.preheader ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0, %.preheader ], [ %i.gc, %.lr.ph128.preheader ] ; 2 uses
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ge = sub nsw i32 0, %.1.lcssa
  %i.gf = sub nsw i32 0, %.367.lcssa
  %i.gg = sub nsw i32 0, %.262.lcssa
  %i.gh = sub nsw i32 0, %.258.lcssa
  %i.gi = sub nsw i32 0, %.254.lcssa
  %i.gj = sub nsw i32 0, %.251.lcssa
  %i.gk = sub nsw i32 0, %.147.lcssa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.468 = phi i32 [ %i.gf, %bb.d ], [ %.367.lcssa, %._crit_edge ]
  %.4 = phi i32 [ %i.gg, %bb.d ], [ %.262.lcssa, %._crit_edge ]
  %.359 = phi i32 [ %i.gh, %bb.d ], [ %.258.lcssa, %._crit_edge ]
  %.355 = phi i32 [ %i.gi, %bb.d ], [ %.254.lcssa, %._crit_edge ]
  %.3 = phi i32 [ %i.gj, %bb.d ], [ %.251.lcssa, %._crit_edge ]
  %.248 = phi i32 [ %i.gk, %bb.d ], [ %.147.lcssa, %._crit_edge ]
  %.2 = phi i32 [ %i.ge, %bb.d ], [ %.1.lcssa, %._crit_edge ]
  %i.gl = mul nsw i32 %.2, 12
  %i.gm = add nsw i32 %i.gl, %.468
  %i.gn = sext i32 %.359 to i64
  %i.go = mul nsw i64 %i.gn, 60
  %i.gp = sext i32 %.355 to i64
  %i.gq = add nsw i64 %i.go, %i.gp
  %i.gr = mul nsw i64 %i.gq, 60
  %i.gs = sext i32 %.3 to i64
  %i.gt = add nsw i64 %i.gr, %i.gs
  %i.gu = mul nsw i64 %i.gt, 1000000
  %i.gv = sext i32 %.248 to i64
  %i.gw = add nsw i64 %i.gu, %i.gv
  %.sroa.2.0.insert.ext = zext i32 %.4 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.044.0.insert.ext = zext i32 %i.gm to i64
  %.sroa.044.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.044.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.044.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.gw, 1
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
  %.sroa.01.0.copyload = load i32, ptr %2, align 4, !tbaa !3 ; 7 uses
  %i.a = icmp slt i32 %.sroa.01.0.copyload, 0
  br i1 %i.a, label %.lr.ph.i.preheader.i, label %.preheader.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.neg = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %.sroa.01.0.copyload)
  %i.b = add nuw nsw i32 %.neg, 146096
  %i.c = udiv i32 %i.b, 146097                    ; 2 uses
  %i.d = mul nuw nsw i32 %i.c, 146097
  %i.e = add nsw i32 %.sroa.01.0.copyload, 146097
  %i.f = add i32 %i.e, %i.d
  %.neg32.i = mul nsw i32 %i.c, -400
  %i.g = add nsw i32 %.neg32.i, 1570
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.h = icmp samesign ugt i32 %.sroa.01.0.copyload, 146096
  br i1 %i.h, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.i = add nsw i32 %.sroa.01.0.copyload, -146097
  %i.j = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.01.0.copyload, i32 292193)
  %i.k = add nuw nsw i32 %i.j, 146096
  %i.l = udiv i32 %i.k, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.l, -146097
  %i.m = add nsw i32 %i.i, %.neg.i
  %i.n = mul nuw nsw i32 %i.l, 400
  %i.o = add nuw nsw i32 %i.n, 2370
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.p = phi i32 [ %i.g, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.f, %.lr.ph.i.preheader.i ], [ %.sroa.01.0.copyload, %.preheader.i.i ], [ %i.m, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.q = udiv i32 %.1.i, 365
  %i.r = zext nneg i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ %i.r, %._crit_edge.i.i ] ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 3 uses
  %i.u = icmp slt i32 %.1.i, %i.t
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.u, label %bb.b, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = trunc nsw i64 %indvars.iv.i.i to i32
  %i.y = add nsw i32 %i.p, %i.x
  store i32 %i.y, ptr %0, align 4, !tbaa !3
  %i.z = sub nsw i32 %.1.i, %i.t                  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = sub nsw i32 %i.ab, %i.t
  %i.ad = icmp eq i32 %i.ac, 366                  ; 2 uses
  %i.ae = zext nneg i32 %i.z to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.ad, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.ad, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.af = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !153 ; 2 uses
  %i.ah = sext i8 %i.ag to i32
  store i32 %i.ah, ptr %i.w, align 4, !tbaa !3
  %i.ai = sext i8 %i.ag to i64
  %i.aj = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = add nuw i32 %i.z, 1
  %i.an = sub i32 %i.am, %i.al
  store i32 %i.an, ptr %i.v, align 4, !tbaa !3
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !tbaa !108 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = sdiv i64 %.sroa.0.0.copyload, 3600000000 ; 2 uses
  %i.at = trunc i64 %i.as to i32
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !3
  %sext.i = shl i64 %i.as, 32
  %i.au = ashr exact i64 %sext.i, 32
  %.neg.i4 = mul nsw i64 %i.au, -3600000000
  %i.av = add i64 %.neg.i4, %.sroa.0.0.copyload   ; 2 uses
  %i.aw = sdiv i64 %i.av, 60000000                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.ap, align 4, !tbaa !3
  %sext13.i = shl i64 %i.aw, 32
  %i.ay = ashr exact i64 %sext13.i, 32
  %.neg14.i = mul nsw i64 %i.ay, -60000000
  %i.az = add i64 %.neg14.i, %i.av                ; 2 uses
  %i.ba = sdiv i64 %i.az, 1000000                 ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  store i32 %i.bb, ptr %i.aq, align 4, !tbaa !3
  %.neg16.i = mul i64 %i.ba, 4293967296
  %i.bc = add i64 %.neg16.i, %i.az
  %i.bd = trunc i64 %i.bc to i32
  store i32 %i.bd, ptr %i.ar, align 4, !tbaa !3
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
  %.neg68 = tail call i32 @llvm.usub.sat.i32(i32 -146097, i32 %0)
  %i.b = add nuw nsw i32 %.neg68, 146096
  %i.c = udiv i32 %i.b, 146097                    ; 2 uses
  %i.d = mul nuw nsw i32 %i.c, 146097
  %i.e = add nsw i32 %0, 146097
  %i.f = add i32 %i.e, %i.d
  %.neg32.i = mul nsw i32 %i.c, -400
  %i.g = add nsw i32 %.neg32.i, 1570
  br label %._crit_edge.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.h = icmp samesign ugt i32 %0, 146096
  br i1 %i.h, label %.lr.ph17.i.preheader.i, label %._crit_edge.i.i

.lr.ph17.i.preheader.i:                           ; preds = %.preheader.i.i
  %i.i = add nsw i32 %0, -146097
  %i.j = tail call i32 @llvm.usub.sat.i32(i32 %0, i32 292193)
  %i.k = add nuw nsw i32 %i.j, 146096
  %i.l = udiv i32 %i.k, 146097                    ; 2 uses
  %.neg.i = mul nsw i32 %i.l, -146097
  %i.m = add nsw i32 %i.i, %.neg.i
  %i.n = mul nuw nsw i32 %i.l, 400
  %i.o = add nuw nsw i32 %i.n, 2370
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph17.i.preheader.i, %.preheader.i.i, %.lr.ph.i.preheader.i
  %i.p = phi i32 [ %i.g, %.lr.ph.i.preheader.i ], [ 1970, %.preheader.i.i ], [ %i.o, %.lr.ph17.i.preheader.i ]
  %.1.i = phi i32 [ %i.f, %.lr.ph.i.preheader.i ], [ %0, %.preheader.i.i ], [ %i.m, %.lr.ph17.i.preheader.i ] ; 3 uses
  %i.q = udiv i32 %.1.i, 365
  %i.r = zext nneg i32 %i.q to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ %i.r, %._crit_edge.i.i ] ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date20CUMULATIVE_YEAR_DAYSE, i64 %indvars.iv.i.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3    ; 3 uses
  %i.u = icmp slt i32 %.1.i, %i.t
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %i.u, label %bb.d, label %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit, !llvm.loop !783

_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit: ; preds = %bb.d
  %i.v = trunc nsw i64 %indvars.iv.i.i to i32
  %i.w = sub nsw i32 %.1.i, %i.t                  ; 2 uses
  %i.x = getelementptr i8, ptr %i.s, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = sub nsw i32 %i.y, %i.t
  %i.aa = icmp eq i32 %i.z, 366                   ; 2 uses
  %i.ab = zext nneg i32 %i.w to i64
  %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i = select i1 %i.aa, ptr @_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE, ptr @_ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE
  %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i = select i1 %i.aa, ptr @_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE, ptr @_ZN6duckdb4Date15CUMULATIVE_DAYSE
  %i.ac = getelementptr inbounds nuw i8, ptr %_ZN6duckdb4Date26LEAP_MONTH_PER_DAY_OF_YEARE._ZN6duckdb4Date21MONTH_PER_DAY_OF_YEARE.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !153 ; 2 uses
  %i.ae = sext i8 %i.ad to i32
  %i.af = sext i8 %i.ad to i64
  %i.ag = getelementptr [4 x i8], ptr %_ZN6duckdb4Date20CUMULATIVE_LEAP_DAYSE._ZN6duckdb4Date15CUMULATIVE_DAYSE.i, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = add nuw i32 %i.w, 1
  %i.ak = sub i32 %i.aj, %i.ai
  %i.al = sdiv i32 %.sroa.09.0.extract.trunc, 12  ; 2 uses
  %i.am = add nsw i32 %i.p, %i.al
  %i.an = add i32 %i.am, %i.v                     ; 3 uses
  %.neg = mul nsw i32 %i.al, -12
  %i.ao = add i32 %.neg, %.sroa.09.0.extract.trunc
  %i.ap = add nsw i32 %i.ao, %i.ae                ; 5 uses
  %i.aq = icmp sgt i32 %i.ap, 12
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.ar = add nsw i32 %i.an, 1
  %i.as = add nsw i32 %i.ap, -12
  br label %bb.h

bb.f:                                             ; preds = %_ZN6duckdb4Date7ConvertENS_6date_tERiS2_S2_.exit
  %i.at = icmp slt i32 %i.ap, 1
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = add nsw i32 %i.an, -1
  %i.av = add nsw i32 %i.ap, 12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.057 = phi i32 [ %i.ar, %bb.e ], [ %i.au, %bb.g ], [ %i.an, %bb.f ] ; 4 uses
  %.056 = phi i32 [ %i.as, %bb.e ], [ %i.av, %bb.g ], [ %i.ap, %bb.f ] ; 4 uses
  %i.aw = and i32 %.057, 3
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread3.i

_ZN6duckdb4Date10IsLeapYearEi.exit.thread3.i:     ; preds = %bb.h
  %i.ay = sext i32 %.056 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date11NORMAL_DAYSE, i64 %i.ay
  br label %_ZN6duckdb4Date9MonthDaysEii.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = srem i32 %.057, 100
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit.i, label %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i

_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i:      ; preds = %bb.i
  %i.bb = sext i32 %.056 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr @_ZN6duckdb4Date9LEAP_DAYSE, i64 %i.bb
  br label %_ZN6duckdb4Date9MonthDaysEii.exit

_ZN6duckdb4Date10IsLeapYearEi.exit.i:             ; preds = %bb.i
  %i.bd = srem i32 %.057, 400
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = sext i32 %.056 to i64
  %spec.select.v.i = select i1 %i.be, ptr @_ZN6duckdb4Date9LEAP_DAYSE, ptr @_ZN6duckdb4Date11NORMAL_DAYSE
  %spec.select.i37 = getelementptr inbounds [4 x i8], ptr %spec.select.v.i, i64 %i.bf
  br label %_ZN6duckdb4Date9MonthDaysEii.exit

_ZN6duckdb4Date9MonthDaysEii.exit:                ; preds = %_ZN6duckdb4Date10IsLeapYearEi.exit.thread3.i, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i, %_ZN6duckdb4Date10IsLeapYearEi.exit.i
  %i.bg = phi ptr [ %i.az, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread3.i ], [ %spec.select.i37, %_ZN6duckdb4Date10IsLeapYearEi.exit.i ], [ %i.bc, %_ZN6duckdb4Date10IsLeapYearEi.exit.thread.i ]
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = tail call noundef i32 @llvm.smin.i32(i32 %i.ak, i32 %i.bh)
  %i.bj = tail call i32 @_ZN6duckdb4Date8FromDateEiii(i32 noundef %.057, i32 noundef %.056, i32 noundef %i.bi)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_ZN6duckdb4Date9MonthDaysEii.exit
  %i.bk = phi i32 [ %i.bj, %_ZN6duckdb4Date9MonthDaysEii.exit ], [ %0, %bb.b ] ; 3 uses
  store i32 %i.bk, ptr %3, align 4, !tbaa !3
  %.not29 = icmp eq i64 %.sroa.4.0.extract.shift, 0
  br i1 %.not29, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %i.bk, i32 noundef %.sroa.4.0.extract.trunc, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.bl, label %._crit_edge75, label %bb.l

._crit_edge75:                                    ; preds = %bb.k
  %.sroa.0.0.copyload.pre73.pre = load i32, ptr %3, align 4, !tbaa !3
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bm = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ac unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %.sink.split

bb.o:                                             ; preds = %bb.n, %bb.m
  %.021 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.bp) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.021, label %.sink.split, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.021, label %.sink.split, label %bb.ab

bb.p:                                             ; preds = %._crit_edge75, %bb.j
  %.sroa.0.0.copyload.pre73 = phi i32 [ %.sroa.0.0.copyload.pre73.pre, %._crit_edge75 ], [ %i.bk, %bb.j ] ; 2 uses
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = sdiv i64 %2, 86400000000
  %i.bt = trunc nsw i64 %i.bs to i32
  %i.bu = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIiiiEEbT_T0_RT1_(i32 noundef %.sroa.0.0.copyload.pre73, i32 noundef %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br i1 %i.bu, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %bb.q
  %.sroa.0.0.copyload.pre = load i32, ptr %3, align 4, !tbaa !3
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bv = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ac unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread: ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
end_hunk_3
