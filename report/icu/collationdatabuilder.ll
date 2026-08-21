Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationdatabuilder?download=true
inline.NumInlined: 391
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6icu_7820CollationDataBuilder11encodeOneCEElR10UErrorCode:bb.a
  br i1 %.not.i.i, label %_ZN6icu_7820CollationDataBuilder5addCEElR10UErrorCode.exit, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !132
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i, %.critedge.i
  %i.ae = phi i32 [ %.pre.i.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i.i ], [ %i.t, %.critedge.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  store i64 %1, ptr %i.ai, align 8, !tbaa !84
  %i.aj = add nsw i32 %i.ae, 1
  store i32 %i.aj, ptr %i.s, align 8, !tbaa !132
  br label %_ZN6icu_7820CollationDataBuilder5addCEElR10UErrorCode.exit

_ZN6icu_789UVector6410addElementElR10UErrorCode.exit.loopexit.i: ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %i.ak = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN6icu_7820CollationDataBuilder5addCEElR10UErrorCode.exit

_ZN6icu_7820CollationDataBuilder5addCEElR10UErrorCode.exit: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i, %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit.loopexit.i
  %.1.i = phi i32 [ %i.t, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i.i ], [ %i.t, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i.i ], [ %i.ak, %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit.loopexit.i ] ; 2 uses
  %i.al = load i32, ptr %2, align 4, !tbaa !82
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.f, label %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread

bb.f:                                             ; preds = %_ZN6icu_7820CollationDataBuilder5addCEElR10UErrorCode.exit
  %i.an = icmp sgt i32 %.1.i, 524287
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 15, ptr %2, align 4, !tbaa !82
  br label %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ao = shl i32 %.1.i, 13
  %i.ap = or disjoint i32 %i.ao, 454
  br label %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread

_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread: ; preds = %bb.d, %bb.c, %bb.g, %bb.h, %_ZN6icu_7820CollationDataBuilder5addCEElR10UErrorCode.exit, %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit
  %.1 = phi i32 [ %i.q, %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit ], [ %i.ap, %bb.h ], [ 0, %bb.g ], [ 0, %_ZN6icu_7820CollationDataBuilder5addCEElR10UErrorCode.exit ], [ %i.h, %bb.c ], [ %i.l, %bb.d ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 2, 1) i32 @_ZN6icu_7820CollationDataBuilder9encodeCEsEPKliR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [31 x i32], align 16              ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !82
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %2, 31
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !82
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call signext i8 @utrie2_isFrozen_78(ptr noundef nonnull %i.e)
  %.not48 = icmp eq i8 %i.g, 0
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 27, ptr %3, align 4, !tbaa !82
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  switch i32 %2, label %.lr.ph.preheader [
    i32 0, label %bb.q
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.h = load i64, ptr %1, align 8, !tbaa !84
  %i.i = tail call noundef i32 @_ZN6icu_7820CollationDataBuilder11encodeOneCEElR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, i64 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 817
  %i.k = load i8, ptr %i.j, align 1, !tbaa !122
  %.not49 = icmp eq i8 %i.k, 0
  br i1 %.not49, label %bb.j, label %.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  %i.l = load i64, ptr %1, align 8, !tbaa !84     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !84   ; 2 uses
  %i.o = lshr i64 %i.l, 32                        ; 2 uses
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = and i64 %i.l, 72057594037862655
  %i.r = icmp eq i64 %i.q, 83886080
  br i1 %i.r, label %bb.k, label %.lr.ph.preheader

bb.k:                                             ; preds = %bb.j
  %i.s = and i64 %i.n, -4278190081
  %i.t = icmp eq i64 %i.s, 1280
  %i.u = icmp ne i64 %i.o, 0
  %or.cond4 = and i1 %i.u, %i.t
  br i1 %or.cond4, label %bb.l, label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.k
  %i.v = trunc i64 %i.l to i32
  %i.w = shl i32 %i.v, 8
  %i.x = or disjoint i32 %i.w, %i.p
  %i.y = lshr i64 %i.n, 16
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z
  %i.ab = or disjoint i32 %i.aa, 196
  br label %bb.q

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.g, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ac = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !84 ; 4 uses
  %i.af = lshr i64 %i.ae, 32                      ; 2 uses
  %i.ag = trunc nuw i64 %i.af to i32              ; 2 uses
  %i.ah = trunc i64 %i.ae to i32                  ; 4 uses
  %i.ai = and i64 %i.ae, 281470698455295
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ae, 1099511627775
  %i.al = icmp eq i64 %i.ak, 83887360
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = or disjoint i32 %i.ag, 193
  br label %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.an = icmp eq i64 %i.af, 0
  %i.ao = and i32 %i.ah, 255
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond.i = and i1 %i.an, %i.ap
  %i.aq = or i32 %i.ah, 194
  br i1 %or.cond.i, label %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread, label %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread58

_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit: ; preds = %.lr.ph
  %i.ar = lshr i32 %i.ah, 16
  %i.as = lshr exact i32 %i.ah, 8
  %i.at = and i32 %i.as, 255
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = or disjoint i32 %i.au, %i.ag            ; 2 uses
  %.not50 = icmp eq i32 %i.av, 1
  br i1 %.not50, label %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread58, label %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread

_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread: ; preds = %bb.o, %bb.n, %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit
  %.0.i55 = phi i32 [ %i.av, %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit ], [ %i.am, %bb.n ], [ %i.aq, %bb.o ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %.0.i55, ptr %i.aw, align 4, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %i.ax, label %._crit_edge, label %.lr.ph, !llvm.loop !156

._crit_edge:                                      ; preds = %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread
  %i.ay = call noundef i32 @_ZN6icu_7820CollationDataBuilder17encodeExpansion32EPKiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.p

_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread58: ; preds = %bb.o, %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit
  %i.az = tail call noundef i32 @_ZN6icu_7820CollationDataBuilder15encodeExpansionEPKliR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread58
  %.3 = phi i32 [ %i.az, %_ZN6icu_7820CollationDataBuilder17encodeOneCEAsCE32El.exit.thread58 ], [ %i.ay, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.g, %bb.a, %bb.p, %bb.h, %bb.f, %bb.c
  %.4 = phi i32 [ %i.ab, %bb.l ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.a ], [ %i.i, %bb.h ], [ %.3, %bb.p ], [ %2, %bb.g ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 197, 1) i32 @_ZN6icu_7820CollationDataBuilder17encodeExpansion32EPKiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !82
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !69     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !126  ; 7 uses
  %.not4156 = icmp slt i32 %i.f, %2
  br i1 %.not4156, label %.thread46, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not4353 = icmp eq i32 %2, 1
  br i1 %.not4353, label %.lr.ph59.split.us.preheader, label %.lr.ph59.split.preheader

.lr.ph59.split.preheader:                         ; preds = %.lr.ph59
  %i.i = zext i32 %2 to i64
  %i.j = sext i32 %i.f to i64                     ; 2 uses
  %i.k = add i32 %i.f, 1
  %i.l = sub i32 %i.k, %2
  %wide.trip.count = zext i32 %i.l to i64
  br label %.lr.ph59.split

.lr.ph59.split.us.preheader:                      ; preds = %.lr.ph59
  %i.m = sext i32 %i.f to i64
  %wide.trip.count74 = zext i32 %i.f to i64
  br label %.lr.ph59.split.us

.lr.ph59.split.us:                                ; preds = %.lr.ph59.split.us.preheader, %bb.e
  %indvars.iv71 = phi i64 [ 0, %.lr.ph59.split.us.preheader ], [ %indvars.iv.next72, %bb.e ] ; 5 uses
  %i.n = icmp slt i64 %indvars.iv71, %i.m
  br i1 %i.n, label %bb.c, label %_ZNK6icu_789UVector3210elementAtiEi.exit.us

bb.c:                                             ; preds = %.lr.ph59.split.us
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv71
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit.us

_ZNK6icu_789UVector3210elementAtiEi.exit.us:      ; preds = %bb.c, %.lr.ph59.split.us
  %i.q = phi i32 [ %i.p, %bb.c ], [ 0, %.lr.ph59.split.us ]
  %i.r = icmp eq i32 %i.c, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.us
  %i.s = icmp samesign ugt i64 %indvars.iv71, 524287
  br i1 %i.s, label %.thread48, label %.preheader50._crit_edge

bb.e:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.us
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %.thread46, label %.lr.ph59.split.us, !llvm.loop !157

.lr.ph59.split:                                   ; preds = %.lr.ph59.split.preheader, %.loopexit
  %indvars.iv68 = phi i64 [ 0, %.lr.ph59.split.preheader ], [ %indvars.iv.next69, %.loopexit ] ; 6 uses
  %i.t = icmp slt i64 %indvars.iv68, %i.j
  br i1 %i.t, label %bb.f, label %_ZNK6icu_789UVector3210elementAtiEi.exit

bb.f:                                             ; preds = %.lr.ph59.split
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !69
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit

_ZNK6icu_789UVector3210elementAtiEi.exit:         ; preds = %.lr.ph59.split, %bb.f
  %i.w = phi i32 [ %i.v, %bb.f ], [ 0, %.lr.ph59.split ]
  %i.x = icmp eq i32 %i.c, %i.w
  br i1 %i.x, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit
  %i.y = icmp samesign ugt i64 %indvars.iv68, 524287
  br i1 %i.y, label %.thread48, label %.preheader50

.thread48:                                        ; preds = %bb.g, %bb.d
  store i32 15, ptr %3, align 4, !tbaa !82
  br label %bb.l

bb.h:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not43 = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not43, label %.preheader50._crit_edge, label %.preheader50, !llvm.loop !158

.preheader50:                                     ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %bb.g ] ; 3 uses
  %i.z = add nuw nsw i64 %indvars.iv, %indvars.iv68 ; 2 uses
  %4 = icmp slt i64 %i.z, %i.j
  br i1 %4, label %bb.i, label %_ZNK6icu_789UVector3210elementAtiEi.exit44

bb.i:                                             ; preds = %.preheader50
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit44

_ZNK6icu_789UVector3210elementAtiEi.exit44:       ; preds = %.preheader50, %bb.i
  %i.ac = phi i32 [ %i.ab, %bb.i ], [ 0, %.preheader50 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69
  %.not42 = icmp eq i32 %i.ac, %i.ae
  br i1 %.not42, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit44, %_ZNK6icu_789UVector3210elementAtiEi.exit
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count
  br i1 %exitcond.not, label %.thread46, label %.lr.ph59.split, !llvm.loop !157

.preheader50._crit_edge:                          ; preds = %bb.h, %bb.d
  %.035.lcssa52.in = phi i64 [ %indvars.iv71, %bb.d ], [ %indvars.iv68, %bb.h ]
  %.035.lcssa52 = trunc nuw i64 %.035.lcssa52.in to i32
  %i.af = shl nuw i32 %.035.lcssa52, 13
  %i.ag = shl i32 %2, 8
  %i.ah = or i32 %i.ag, %i.af
  %i.ai = or disjoint i32 %i.ah, 197
  br label %bb.l

.thread46:                                        ; preds = %.loopexit, %bb.e, %bb.b
  %i.aj = icmp sgt i32 %i.f, 524287
  br i1 %i.aj, label %bb.j, label %.preheader

.preheader:                                       ; preds = %.thread46
  %i.ak = icmp sgt i32 %2, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge62

.lr.ph:                                           ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.trip.count79 = zext nneg i32 %2 to i64
  br label %bb.k

bb.j:                                             ; preds = %.thread46
  store i32 15, ptr %3, align 4, !tbaa !82
  br label %bb.l

._crit_edge62:                                    ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, %.preheader
  %i.an = shl i32 %i.f, 13
  %i.ao = shl i32 %2, 8
  %i.ap = or i32 %i.ao, %i.an
  %i.aq = or disjoint i32 %i.ap, 197
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit
  %indvars.iv76 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next77, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv76
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !69
  %i.at = load i32, ptr %i.e, align 8, !tbaa !126 ; 4 uses
  %i.au = icmp slt i32 %i.at, -1
  %i.av = load i32, ptr %i.al, align 4
  %.not.i.i = icmp sle i32 %i.av, %i.at
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i: ; preds = %bb.k
  %i.aw = add nsw i32 %i.at, 1
  %i.ax = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !126
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i, %bb.k
  %i.ay = phi i32 [ %.pre.i, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i ], [ %i.at, %bb.k ]
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !76
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !69
  %i.bc = load i32, ptr %i.e, align 8, !tbaa !126
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.e, align 8, !tbaa !126
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge62, label %bb.k, !llvm.loop !159

bb.l:                                             ; preds = %.preheader50._crit_edge, %.thread48, %._crit_edge62, %bb.j, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ %i.ai, %.preheader50._crit_edge ], [ 0, %bb.j ], [ %i.aq, %._crit_edge62 ], [ 0, %.thread48 ]
  ret i32 %.6
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 198, 1) i32 @_ZN6icu_7820CollationDataBuilder15encodeExpansionEPKliR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !82
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !84     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !132  ; 7 uses
  %.not4156 = icmp slt i32 %i.f, %2
  br i1 %.not4156, label %.thread46, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not4353 = icmp eq i32 %2, 1
  br i1 %.not4353, label %.lr.ph59.split.us.preheader, label %.lr.ph59.split.preheader

.lr.ph59.split.preheader:                         ; preds = %.lr.ph59
  %i.i = zext i32 %2 to i64
  %i.j = sext i32 %i.f to i64                     ; 2 uses
  %i.k = add i32 %i.f, 1
  %i.l = sub i32 %i.k, %2
  %wide.trip.count = zext i32 %i.l to i64
  br label %.lr.ph59.split

.lr.ph59.split.us.preheader:                      ; preds = %.lr.ph59
  %i.m = sext i32 %i.f to i64
  %wide.trip.count74 = zext i32 %i.f to i64
  br label %.lr.ph59.split.us

.lr.ph59.split.us:                                ; preds = %.lr.ph59.split.us.preheader, %bb.e
  %indvars.iv71 = phi i64 [ 0, %.lr.ph59.split.us.preheader ], [ %indvars.iv.next72, %bb.e ] ; 5 uses
  %i.n = icmp slt i64 %indvars.iv71, %i.m
  br i1 %i.n, label %bb.c, label %_ZNK6icu_789UVector6410elementAtiEi.exit.us

bb.c:                                             ; preds = %.lr.ph59.split.us
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv71
  %i.p = load i64, ptr %i.o, align 8, !tbaa !84
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.us

_ZNK6icu_789UVector6410elementAtiEi.exit.us:      ; preds = %bb.c, %.lr.ph59.split.us
  %i.q = phi i64 [ %i.p, %bb.c ], [ 0, %.lr.ph59.split.us ]
  %i.r = icmp eq i64 %i.c, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.us
  %i.s = icmp samesign ugt i64 %indvars.iv71, 524287
  br i1 %i.s, label %.thread48, label %.preheader50._crit_edge

bb.e:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.us
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %.thread46, label %.lr.ph59.split.us, !llvm.loop !160

.lr.ph59.split:                                   ; preds = %.lr.ph59.split.preheader, %.loopexit
  %indvars.iv68 = phi i64 [ 0, %.lr.ph59.split.preheader ], [ %indvars.iv.next69, %.loopexit ] ; 6 uses
  %i.t = icmp slt i64 %indvars.iv68, %i.j
  br i1 %i.t, label %bb.f, label %_ZNK6icu_789UVector6410elementAtiEi.exit

bb.f:                                             ; preds = %.lr.ph59.split
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv68
  %i.v = load i64, ptr %i.u, align 8, !tbaa !84
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit

_ZNK6icu_789UVector6410elementAtiEi.exit:         ; preds = %.lr.ph59.split, %bb.f
  %i.w = phi i64 [ %i.v, %bb.f ], [ 0, %.lr.ph59.split ]
  %i.x = icmp eq i64 %i.c, %i.w
  br i1 %i.x, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.y = icmp samesign ugt i64 %indvars.iv68, 524287
  br i1 %i.y, label %.thread48, label %.preheader50

.thread48:                                        ; preds = %bb.g, %bb.d
  store i32 15, ptr %3, align 4, !tbaa !82
  br label %bb.l

bb.h:                                             ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not43 = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not43, label %.preheader50._crit_edge, label %.preheader50, !llvm.loop !161

.preheader50:                                     ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %bb.g ] ; 3 uses
  %i.z = add nuw nsw i64 %indvars.iv, %indvars.iv68 ; 2 uses
  %4 = icmp slt i64 %i.z, %i.j
  br i1 %4, label %bb.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit44

bb.i:                                             ; preds = %.preheader50
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !84
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit44

_ZNK6icu_789UVector6410elementAtiEi.exit44:       ; preds = %.preheader50, %bb.i
  %i.ac = phi i64 [ %i.ab, %bb.i ], [ 0, %.preheader50 ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !84
  %.not42 = icmp eq i64 %i.ac, %i.ae
  br i1 %.not42, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit44, %_ZNK6icu_789UVector6410elementAtiEi.exit
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count
  br i1 %exitcond.not, label %.thread46, label %.lr.ph59.split, !llvm.loop !160

.preheader50._crit_edge:                          ; preds = %bb.h, %bb.d
  %.035.lcssa52.in = phi i64 [ %indvars.iv71, %bb.d ], [ %indvars.iv68, %bb.h ]
  %.035.lcssa52 = trunc nuw i64 %.035.lcssa52.in to i32
  %i.af = shl nuw i32 %.035.lcssa52, 13
  %i.ag = shl i32 %2, 8
  %i.ah = or i32 %i.ag, %i.af
  %i.ai = or disjoint i32 %i.ah, 198
  br label %bb.l

.thread46:                                        ; preds = %.loopexit, %bb.e, %bb.b
  %i.aj = icmp sgt i32 %i.f, 524287
  br i1 %i.aj, label %bb.j, label %.preheader

.preheader:                                       ; preds = %.thread46
  %i.ak = icmp sgt i32 %2, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge62

.lr.ph:                                           ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.trip.count79 = zext nneg i32 %2 to i64
  br label %bb.k

bb.j:                                             ; preds = %.thread46
  store i32 15, ptr %3, align 4, !tbaa !82
  br label %bb.l

._crit_edge62:                                    ; preds = %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit, %.preheader
  %i.an = shl i32 %i.f, 13
  %i.ao = shl i32 %2, 8
  %i.ap = or i32 %i.ao, %i.an
  %i.aq = or disjoint i32 %i.ap, 198
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph, %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit
  %indvars.iv76 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next77, %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !84
  %i.at = load i32, ptr %i.e, align 8, !tbaa !132 ; 4 uses
  %i.au = icmp slt i32 %i.at, -1
  %i.av = load i32, ptr %i.al, align 4
  %.not.i.i = icmp sle i32 %i.av, %i.at
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i: ; preds = %bb.k
  %i.aw = add nsw i32 %i.at, 1
  %i.ax = tail call noundef signext i8 @_ZN6icu_789UVector6414expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i, label %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !132
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i, %bb.k
  %i.ay = phi i32 [ %.pre.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i ], [ %i.at, %bb.k ] ; 2 uses
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !78
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  store i64 %i.as, ptr %i.bb, align 8, !tbaa !84
  %i.bc = add nsw i32 %i.ay, 1
  store i32 %i.bc, ptr %i.e, align 8, !tbaa !132
  br label %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit

_ZN6icu_789UVector6410addElementElR10UErrorCode.exit: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge62, label %bb.k, !llvm.loop !162

bb.l:                                             ; preds = %.preheader50._crit_edge, %.thread48, %._crit_edge62, %bb.j, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ %i.ai, %.preheader50._crit_edge ], [ 0, %bb.j ], [ %i.aq, %._crit_edge62 ], [ 0, %.thread48 ]
  ret i32 %.6
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483648, 524288) i32 @_ZN6icu_7820CollationDataBuilder28copyContractionsFromBaseCE32ERNS_13UnicodeStringEijPNS_15ConditionalCE32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.icu_78::UCharsTrie::Iterator", align 8 ; 12 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = load i32, ptr %5, align 4, !tbaa !82
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.g = lshr i32 %3, 13
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = and i32 %3, 256
  %.not38 = icmp eq i32 %i.j, 0
  br i1 %.not38, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr %i.i, align 2, !tbaa !102
  %i.l = zext i16 %i.k to i32
  %i.m = shl nuw i32 %i.l, 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !102
  %i.p = zext i16 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p
  %i.r = tail call noundef i32 @_ZN6icu_7820CollationDataBuilder16copyFromBaseCE32EijaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %2, i32 noundef %i.q, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.s = tail call noundef i32 @_ZN6icu_7820CollationDataBuilder18addConditionalCE32ERKNS_13UnicodeStringEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 %i.s, ptr %i.t, align 8, !tbaa !105
  %i.u = load i32, ptr %5, align 4, !tbaa !82
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i32 noundef %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.036 = phi ptr [ %i.x, %bb.d ], [ %4, %bb.b ]  ; 2 uses
  %.033 = phi i32 [ %i.s, %bb.d ], [ -1, %bb.b ]  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !80   ; 2 uses
  %i.aa = icmp slt i16 %i.z, 0
  %i.ab = ashr i16 %i.z, 5
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = select i1 %i.aa, i32 %i.ae, i32 %i.ac
  %.fr48 = freeze i32 %i.af                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store ptr %i.ag, ptr %7, align 8, !tbaa !150
  invoke void @_ZN6icu_7810UCharsTrie8IteratorC1ENS_14ConstChar16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %7, align 8, !tbaa !150
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ah) #21, !srcloc !152
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 108 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = icmp eq i32 %.fr48, 0                   ; 2 uses
  %i.ao = icmp slt i32 %.fr48, 1024
  %.tr.i.i.i = trunc i32 %.fr48 to i16
  %i.ap = shl i16 %.tr.i.i.i, 5
  br i1 %i.ao, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f, %.split.us.backedge
  %.137.us = phi ptr [ %i.be, %.split.us.backedge ], [ %.036, %bb.f ]
  %.1.us = phi i32 [ %i.ba, %.split.us.backedge ], [ %.033, %bb.f ]
  %i.aq = invoke noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.g unwind label %.split44.us

bb.g:                                             ; preds = %.split.us
  %.not40.us = icmp eq i8 %i.aq, 0
  br i1 %.not40.us, label %.split46.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i16, ptr %i.aj, align 8, !tbaa !80 ; 2 uses
  %i.as = icmp slt i16 %i.ar, 0
  %i.at = ashr i16 %i.ar, 5
  %i.au = sext i16 %i.at to i32
  %i.av = load i32, ptr %i.ak, align 4
  %i.aw = select i1 %i.as, i32 %i.av, i32 %i.au
  %i.ax = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i32 noundef 0, i32 noundef %i.aw)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit.us unwind label %.split44.us ; 0 uses

_ZN6icu_7813UnicodeString6appendERKS0_.exit.us:   ; preds = %bb.h
  %i.ay = load i32, ptr %i.al, align 4, !tbaa !153
  %i.az = invoke noundef i32 @_ZN6icu_7820CollationDataBuilder16copyFromBaseCE32EijaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %2, i32 noundef %i.ay, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.i unwind label %.split44.us

bb.i:                                             ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit.us
  %i.ba = invoke noundef i32 @_ZN6icu_7820CollationDataBuilder18addConditionalCE32ERKNS_13UnicodeStringEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.az, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.j unwind label %.split44.us ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.137.us, i64 88
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !105
  %i.bc = load i32, ptr %5, align 4, !tbaa !82
end_hunk_0
