inline.NumInlined: 336
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl24synchronization_internal11GraphCyclesD2Ev:bb.a
  %.not.i.i7.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i7.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit8.i, label %bb.f

bb.f:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit6.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.s) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit8.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit8.i: ; preds = %bb.f, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit6.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.not.i.i9.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i9.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10.i, label %bb.g

bb.g:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit8.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.v) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10.i: ; preds = %bb.g, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit8.i
  %i.x = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.not.i.i11.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i11.i, label %_ZN4absl24synchronization_internal11GraphCycles3RepD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.x) #12
  br label %_ZN4absl24synchronization_internal11GraphCycles3RepD2Ev.exit

_ZN4absl24synchronization_internal11GraphCycles3RepD2Ev.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiED2Ev.exit10.i, %bb.h
  %i.z = load ptr, ptr %0, align 8
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.z) #12
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.014 = phi ptr [ %i.ai, %bb.l ], [ %.val, %bb.a ] ; 2 uses
  %i.aa = load ptr, ptr %.014, align 8            ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ad) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit.i

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit.i: ; preds = %bb.j, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.not.i.i.i1.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i1.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_14NodeD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit.i
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ag) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_14NodeD2Ev.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_14NodeD2Ev.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit.i, %bb.k
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %i.aa) #12
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZN4absl24synchronization_internal12_GLOBAL__N_14NodeD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

declare void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef) local_unnamed_addr #2 section "malloc_hook"

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl24synchronization_internal11GraphCycles15CheckInvariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.absl::synchronization_internal::(anonymous namespace)::NodeSet", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  store ptr %i.b, ptr %1, align 8
  store i32 8, ptr %i.d, align 4
  store i32 8, ptr %i.c, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.a
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i
  store i32 -1, ptr %i.f, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.c, align 8
  %i.g = zext i32 %.val.i.i.i to i64
  %i.h = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit, !llvm.loop !11

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit: ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.a, i64 72       ; 2 uses
  %.val55 = load i32, ptr %i.j, align 8
  %.not57 = icmp eq i32 %.val55, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetC2Ev.exit
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.b
  br i1 %.not.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.m) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSetD2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit
  %indvars.iv76 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next77, %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit ] ; 6 uses
  %.val29 = load ptr, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val29, i64 %indvars.iv76
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = xor i64 %i.q, -1136490970041655429       ; 2 uses
  %.not = icmp eq i64 %i.q, -1136490970041655429
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = urem i64 %i.r, 262139
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.s
  %.01219.i = load i32, ptr %i.t, align 4         ; 2 uses
  %.not20.i = icmp eq i32 %.01219.i, -1
  br i1 %.not20.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.u = load ptr, ptr %i.l, align 8
  %.val.i = load ptr, ptr %i.u, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.012.i = load i32, ptr %i.v, align 8           ; 2 uses
  %.not.i = icmp eq i32 %.012.i, -1
  br i1 %.not.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.01221.i = phi i32 [ %.01219.i, %.lr.ph.i ], [ %.012.i, %bb.e ] ; 2 uses
  %i.w = zext i32 %.01221.i to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %.not16.i = icmp eq i64 %i.aa, %i.q
  br i1 %.not16.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit, label %bb.e

_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit: ; preds = %bb.f, %bb.e
  %.012.lcssa.i.ph = phi i32 [ %.01221.i, %bb.f ], [ -1, %bb.e ]
  %i.ab = zext i32 %.012.lcssa.i.ph to i64
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit: ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit, %bb.d
  %.012.lcssa.i = phi i64 [ 4294967295, %bb.d ], [ %i.ab, %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit.loopexit ]
  %.not26 = icmp eq i64 %.012.lcssa.i, %indvars.iv76
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit
  %i.ac = trunc nuw i64 %indvars.iv76 to i32
  %i.ad = inttoptr i64 %i.r to ptr
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 67), i32 noundef 399, ptr noundef nonnull @.str.1, i32 noundef %i.ac, ptr noundef nonnull %i.ad) #12
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl24synchronization_internal11GraphCycles15CheckInvariantsEv) #14
  unreachable

bb.h:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_110PointerMap4FindEPv.exit, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.af = load i8, ptr %i.ae, align 4, !range !12, !noundef !13
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = trunc nuw i64 %indvars.iv76 to i32
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 67), i32 noundef 402, ptr noundef nonnull @.str.3, i32 noundef %i.ah) #12
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 402, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl24synchronization_internal11GraphCycles15CheckInvariantsEv) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.o, align 8
  %i.aj = call fastcc noundef zeroext i1 @_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %1, i32 noundef %i.ai)
  br i1 %i.aj, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %.val.i30 = load i32, ptr %i.al, align 8
  %2 = zext i32 %.val.i30 to i64                  ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.o, align 8
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 67), i32 noundef 405, ptr noundef nonnull @.str.4, i32 noundef %i.am) #12
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl24synchronization_internal11GraphCycles15CheckInvariantsEv) #14
  unreachable

bb.l:                                             ; preds = %.preheader, %bb.o
  %.033 = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.preheader ] ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %.033, i64 %2)
  %exitcond.not115.not = icmp ult i64 %.033, %2
  br i1 %exitcond.not115.not, label %.lr.ph118.a, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit

.lr.ph118.a:                                      ; preds = %bb.l
  %.val10.i = load ptr, ptr %i.ak, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph118.a, %bb.m
  %indvars.iv116 = phi i64 [ %indvars.iv.next, %bb.m ], [ %.033, %.lr.ph118.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %indvars.iv116
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv116, 1 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.o, label %bb.m

_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet4NextEPiS3_.exit: ; preds = %bb.l, %bb.m
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %.val = load i32, ptr %i.j, align 8
  %i.aq = zext i32 %.val to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next77, %i.aq
  br i1 %i.ar, label %bb.c, label %._crit_edge, !llvm.loop !14

bb.o:                                             ; preds = %bb.n
  %.val28 = load ptr, ptr %i.a, align 8
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val28, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load i32, ptr %i.o, align 8             ; 2 uses
  %i.aw = load i32, ptr %i.au, align 8            ; 2 uses
  %.not27 = icmp slt i32 %i.av, %i.aw
  br i1 %.not27, label %bb.l, label %bb.p, !llvm.loop !15

bb.p:                                             ; preds = %bb.o
  %i.ax = trunc nuw i64 %indvars.iv76 to i32
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 67), i32 noundef 413, ptr noundef nonnull @.str.5, i32 noundef %i.ax, i32 noundef %i.ao, i32 noundef %i.av, i32 noundef %i.aw) #12
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 413, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl24synchronization_internal11GraphCycles15CheckInvariantsEv) #14
  unreachable
}

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl24synchronization_internal12_GLOBAL__N_17NodeSet6insertEi(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::synchronization_internal::(anonymous namespace)::Vec.0", align 8 ; 12 uses
  %.val9 = load ptr, ptr %0, align 8              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %.val10 = load i32, ptr %i.a, align 8
  %i.b = add i32 %.val10, -1                      ; 2 uses
  %i.c = mul i32 %1, 41
  %.02210.i = and i32 %i.b, %i.c                  ; 2 uses
  %i.d = zext i32 %.02210.i to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.o, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %.02213.i = phi i32 [ %.022.i, %bb.b ], [ %.02210.i, %bb.a ] ; 3 uses
  %.01812.i = phi i8 [ %spec.select27.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.01911.i = phi i32 [ %spec.select.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = icmp ne i32 %i.h, -2
  %i.k = trunc nuw i8 %.01812.i to i1
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.k   ; 2 uses
  %spec.select.i = select i1 %or.cond.i, i32 %.01911.i, i32 %.02213.i
  %spec.select27.i = select i1 %or.cond.i, i8 %.01812.i, i8 1
  %i.l = add i32 %.02213.i, 1
  %.022.i = and i32 %i.l, %i.b                    ; 2 uses
  %i.m = zext i32 %.022.i to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp eq i32 %1, %i.o
  br i1 %i.p, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread, label %.lr.ph.i, !llvm.loop !16

_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit: ; preds = %.lr.ph.i
  %i.q = trunc nuw i8 %.01812.i to i1
  %i.r = select i1 %i.q, i32 %.01911.i, i32 %.02213.i
  %.pre = zext i32 %i.r to i64                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.pre
  %.pre27 = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %.pre
  %.not56 = icmp eq i32 %.pre27, %1
  br i1 %.not56, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit
  %i.t = icmp eq i32 %.pre27, -1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %1, ptr %i.s, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %.val8 = load i32, ptr %i.a, align 8            ; 8 uses
  %i.z = lshr i32 %.val8, 2
  %i.aa = sub i32 %.val8, %i.z
  %.not = icmp ult i32 %i.y, %i.aa
  br i1 %.not, label %_ZNK4absl24synchronization_internal12_GLOBAL__N_17NodeSet9FindIndexEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.ab, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  store i32 8, ptr %i.ad, align 4
  %i.ae = load ptr, ptr %0, align 8               ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ugt i32 %.val8, 8
  br i1 %i.ah, label %.lr.ph.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %i.ai = phi i32 [ %i.aj, %.lr.ph.i.i.i ], [ 8, %bb.g ]
  %i.aj = shl i32 %i.ai, 1                        ; 4 uses
  %i.ak = icmp ult i32 %i.aj, %.val8
  br i1 %i.ak, label %.lr.ph.i.i.i, label %bb.h, !llvm.loop !17

bb.h:                                             ; preds = %.lr.ph.i.i.i
  store i32 %i.aj, ptr %i.ad, align 4
  %i.al = zext i32 %i.aj to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = load ptr, ptr @_ZN4absl24synchronization_internal12_GLOBAL__N_15arenaE, align 8
  %i.ao = call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %i.am, ptr noundef %i.an) #12 ; 4 uses
  %i.ap = load ptr, ptr %2, align 8               ; 2 uses
  %i.aq = load i32, ptr %i.ac, align 8            ; 2 uses
  switch i32 %i.aq, label %bb.i [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
    i32 1, label %bb.j
  ], !prof !7

bb.i:                                             ; preds = %bb.h
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ar, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ao, ptr align 4 %i.ap, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.ap, align 4
  store i32 %i.as, ptr %i.ao, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i:        ; preds = %bb.j, %bb.i, %bb.h
  %i.at = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i4.i.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.at) #12
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i: ; preds = %bb.k, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i.i.i
  store ptr %i.ao, ptr %2, align 8
  %.pre28 = load ptr, ptr %0, align 8
  %.pre29 = load i32, ptr %i.a, align 8
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i: ; preds = %bb.g, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i
  %i.au = phi i32 [ %.pre29, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ], [ %.val8, %bb.g ] ; 2 uses
  %i.av = phi ptr [ %.pre28, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.aw = phi ptr [ %i.ao, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE4GrowEj.exit.i.i ], [ %i.ab, %bb.g ] ; 2 uses
  store i32 %.val8, ptr %i.ac, align 8
  switch i32 %i.au, label %bb.l [
    i32 0, label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i
    i32 1, label %bb.m
  ], !prof !7

bb.l:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  %i.ax = zext i32 %i.au to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ax, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aw, ptr align 4 %i.av, i64 %.idx.i.i.i, i1 false)
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i

bb.m:                                             ; preds = %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  %i.ay = load i32, ptr %i.av, align 4
  store i32 %i.ay, ptr %i.aw, align 4
  br label %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i

_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i:            ; preds = %bb.m, %bb.l, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit.i
  store i32 0, ptr %i.a, align 8
  %.val.i.pre = load i32, ptr %i.ac, align 8
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 4
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE8MoveFromEPS3_.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit.i: ; preds = %bb.f
  store ptr %i.ae, ptr %2, align 8
  store i32 %.val8, ptr %i.ac, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  store i32 %i.ba, ptr %i.ad, align 4
  store ptr %i.af, ptr %0, align 8
  store i32 0, ptr %i.a, align 8
  store i32 8, ptr %i.az, align 4
  br label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE8MoveFromEPS3_.exit

_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE8MoveFromEPS3_.exit: ; preds = %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit.i
  %i.bb = phi i32 [ %.pre32, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i ], [ 8, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit.i ] ; 2 uses
  %.val.i = phi i32 [ %.val.i.pre, %_ZSt6copy_nIPijS0_ET1_T_T0_S1_.exit.i ], [ %.val8, %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE7DiscardEv.exit.i ]
  store i32 0, ptr %i.x, align 8
  %i.bc = shl i32 %.val.i, 1                      ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.be = icmp ugt i32 %i.bc, %i.bb
  br i1 %i.be, label %.lr.ph.i.i, label %_ZN4absl24synchronization_internal12_GLOBAL__N_13VecIiE6resizeEj.exit

end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_T0_T1_:bb.a
._crit_edge.i.i.i6.i:                             ; preds = %.lr.ph.i.i.i16.i, %.lr.ph.i5.i
  %.0.lcssa.i.i.i7.i = phi i64 [ 0, %.lr.ph.i5.i ], [ %spec.select.i.i.i21.i, %.lr.ph.i.i.i16.i ] ; 5 uses
  %i.dq = and i64 %i.cs, 4
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i6.i
  %i.ds = add nsw i64 %i.ct, -2
  %i.dt = ashr exact i64 %i.ds, 1
  %i.du = icmp eq i64 %.0.lcssa.i.i.i7.i, %i.dt
  br i1 %i.du, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.dv = shl nuw nsw i64 %.0.lcssa.i.i.i7.i, 1
  %i.dw = or disjoint i64 %i.dv, 1                ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i7.i
  store i32 %i.dy, ptr %i.dz, align 4
  br label %.lr.ph.i.i.i.i9.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i6.i
  %.not.i.i8.i = icmp eq i64 %.0.lcssa.i.i.i7.i, 0
  br i1 %.not.i.i8.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i9.i

.lr.ph.i.i.i.i9.i:                                ; preds = %bb.j, %.thread.i.i.i
  %.128.i8.i.i.i = phi i64 [ %i.dw, %.thread.i.i.i ], [ %.0.lcssa.i.i.i7.i, %bb.j ]
  %i.ea = zext i32 %i.cp to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i9.i
  %.0134.i.i.i.i10.i = phi i64 [ %.128.i8.i.i.i, %.lr.ph.i.i.i.i9.i ], [ %.059.i.i.i.i12.i, %bb.l ] ; 3 uses
  %.05.in.i.i.i.i11.i = add nsw i64 %.0134.i.i.i.i10.i, -1
  %.059.i.i.i.i12.i = lshr i64 %.05.in.i.i.i.i11.i, 1 ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.i.i12.i
  %.val14.i.i.i.i13.i = load i32, ptr %i.eb, align 4 ; 2 uses
  %.val.val.i.i.i.i14.i = load ptr, ptr %3, align 8 ; 2 uses
  %i.ec = zext i32 %.val14.i.i.i.i13.i to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.ea
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = icmp slt i32 %i.ef, %i.ei
  br i1 %i.ej, label %bb.l, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0134.i.i.i.i10.i
  store i32 %.val14.i.i.i.i13.i, ptr %i.ek, align 4
  %.not9.i.i.i = icmp eq i64 %.059.i.i.i.i12.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i, label %bb.k, !llvm.loop !36

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.013.lcssa.i.i.i.i15.i = phi i64 [ 0, %bb.j ], [ %.0134.i.i.i.i10.i, %bb.k ], [ 0, %bb.l ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i15.i
  store i32 %i.cp, ptr %i.el, align 4
  %i.em = icmp sgt i64 %i.cs, 4
  br i1 %i.em, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_T0_.exit, !llvm.loop !38

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %.0152350 = phi i64 [ %i.eo, %bb.b ], [ %2, %.lr.ph ]
  %.02449 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.en = phi i64 [ %i.ge, %bb.b ], [ %i.c, %.lr.ph ]
  %i.eo = add nsw i64 %.0152350, -1               ; 3 uses
  %i.ep = lshr i64 %i.en, 3
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ep ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %.02449, i64 -4 ; 3 uses
  %.val34.i.i = load i32, ptr %i.e, align 4       ; 3 uses
  %.val35.i.i = load i32, ptr %i.eq, align 4      ; 3 uses
  %.val33.val.i.i = load ptr, ptr %3, align 8     ; 3 uses
  %i.es = zext i32 %.val34.i.i to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i.i, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = load i32, ptr %i.eu, align 8            ; 3 uses
  %i.ew = zext i32 %.val35.i.i to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i.i, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = load i32, ptr %i.ey, align 8            ; 3 uses
  %i.fa = icmp slt i32 %i.ev, %i.ez
  %.val32.i.i = load i32, ptr %i.er, align 4      ; 3 uses
  %i.fb = zext i32 %.val32.i.i to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i.i, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = load i32, ptr %i.fd, align 8            ; 4 uses
  br i1 %i.fa, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph51
  %i.ff = icmp slt i32 %i.ez, %i.fe
  br i1 %i.ff, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fg = load i32, ptr %0, align 4
  store i32 %.val35.i.i, ptr %0, align 4
  store i32 %i.fg, ptr %i.eq, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.fh = icmp slt i32 %i.ev, %i.fe
  %i.fi = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.fh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %.val32.i.i, ptr %0, align 4
  store i32 %i.fi, ptr %i.er, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %.val34.i.i, ptr %0, align 4
  store i32 %i.fi, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph51
  %i.fj = icmp slt i32 %i.ev, %i.fe
  br i1 %i.fj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fk = load i32, ptr %0, align 4
  store i32 %.val34.i.i, ptr %0, align 4
  store i32 %i.fk, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.fl = icmp slt i32 %i.ez, %i.fe
  %i.fm = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.fl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %.val32.i.i, ptr %0, align 4
  store i32 %i.fm, ptr %i.er, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store i32 %.val35.i.i, ptr %0, align 4
  store i32 %i.fm, ptr %i.eq, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.y
  %.013.i.i = phi ptr [ %.114.i.i, %bb.y ], [ %.02449, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.fw, %bb.y ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.val17.i.i = load i32, ptr %0, align 4
  %.val16.val.i.i = load ptr, ptr %3, align 8     ; 3 uses
  %i.fn = zext i32 %.val17.i.i to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.val16.val.i.i, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = load i32, ptr %i.fp, align 8            ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.fw, %bb.w ] ; 8 uses
  %.1.val.i.i = load i32, ptr %.1.i.i, align 4    ; 2 uses
  %i.fr = zext i32 %.1.val.i.i to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.val16.val.i.i, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = load i32, ptr %i.ft, align 8
  %i.fv = icmp slt i32 %i.fu, %i.fq
  %i.fw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.fv, label %bb.w, label %.preheader.i.i, !llvm.loop !39

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.w ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %.114.val.i.i = load i32, ptr %.114.i.i, align 4 ; 2 uses
  %i.fx = zext i32 %.114.val.i.i to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.val16.val.i.i, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = load i32, ptr %i.fz, align 8
  %i.gb = icmp slt i32 %i.fq, %i.ga
  br i1 %i.gb, label %.preheader.i.i, label %bb.x, !llvm.loop !40

bb.x:                                             ; preds = %.preheader.i.i
  %i.gc = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.gc, label %bb.y, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEET_SH_SH_T0_.exit

bb.y:                                             ; preds = %bb.x
  store i32 %.114.val.i.i, ptr %.1.i.i, align 4
  store i32 %.1.val.i.i, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !41

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEET_SH_SH_T0_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02449, i64 noundef %i.eo, ptr nonnull %3)
  %i.gd = ptrtoint ptr %.1.i.i to i64
  %i.ge = sub i64 %i.gd, %i.a                     ; 3 uses
  %i.gf = icmp sgt i64 %i.ge, 64
  br i1 %i.gf, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_T0_.exit, !llvm.loop !34

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN4absl24synchronization_internalL4SortERKNS5_12_GLOBAL__N_13VecIPNS6_4NodeEEEPNS7_IiEEE6ByRankEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{null}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
end_hunk_1
