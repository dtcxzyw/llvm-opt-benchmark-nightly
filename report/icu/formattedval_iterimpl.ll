Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/formattedval_iterimpl?download=true
inline.NumInlined: 47
inline.NumDeleted: 17
begin_hunk_0_@_ZNK6icu_7839FormattedValueFieldPositionIteratorImpl8appendToERNS_10AppendableER10UErrorCode:bb.a
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ]
  %i.h = icmp slt i16 %i.b, 0
  %i.i = ashr i16 %i.b, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = load ptr, ptr %1, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.0.i, i32 noundef %i.m) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7839FormattedValueFieldPositionIteratorImpl12nextPositionERNS_24ConstrainedFieldPositionER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr nofree nonnull readnone align 4 captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = sdiv i32 %i.b, 4                         ; 4 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !26
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.02438 = phi i32 [ %i.e, %.lr.ph ], [ %i.an, %bb.i ] ; 4 uses
  %i.h = shl nsw i32 %.02438, 2                   ; 5 uses
  %i.i = icmp sgt i32 %.02438, -1                 ; 4 uses
  %i.j = load i32, ptr %i.a, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, %i.h
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK6icu_789UVector3210elementAtiEi.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !17
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit

_ZNK6icu_789UVector3210elementAtiEi.exit:         ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %i.o, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.q = or disjoint i32 %i.h, 1                  ; 2 uses
  %i.r = icmp sgt i32 %i.j, %i.q
  %or.cond.i25 = select i1 %i.i, i1 %i.r, i1 false
  br i1 %or.cond.i25, label %bb.d, label %_ZNK6icu_789UVector3210elementAtiEi.exit26

bb.d:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.t = zext nneg i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit26

_ZNK6icu_789UVector3210elementAtiEi.exit26:       ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit, %bb.d
  %i.w = phi i32 [ %i.v, %bb.d ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit ] ; 2 uses
  %i.x = tail call noundef signext i8 @_ZNK6icu_7824ConstrainedFieldPosition12matchesFieldEii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.p, i32 noundef %i.w)
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit26
  %i.y = or disjoint i32 %i.h, 2                  ; 2 uses
  %i.z = load i32, ptr %i.a, align 8              ; 2 uses
  %i.aa = icmp sgt i32 %i.z, %i.y
  %or.cond.i27 = select i1 %i.i, i1 %i.aa, i1 false
  br i1 %or.cond.i27, label %bb.f, label %_ZNK6icu_789UVector3210elementAtiEi.exit28

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !17
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit28

_ZNK6icu_789UVector3210elementAtiEi.exit28:       ; preds = %bb.e, %bb.f
  %i.af = phi i32 [ %i.ae, %bb.f ], [ 0, %bb.e ]
  %i.ag = or disjoint i32 %i.h, 3                 ; 2 uses
  %i.ah = icmp sgt i32 %i.z, %i.ag
  %or.cond.i29 = select i1 %i.i, i1 %i.ah, i1 false
  br i1 %or.cond.i29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit28
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.aj = zext nneg i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6icu_789UVector3210elementAtiEi.exit28
  %i.am = phi i32 [ %i.al, %bb.g ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit28 ]
  tail call void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.p, i32 noundef %i.w, i32 noundef %i.af, i32 noundef %i.am)
  br label %.loopexit

bb.i:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit26
  %i.an = add i32 %.02438, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.c
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !23

.loopexit:                                        ; preds = %bb.i, %bb.a, %bb.h
  %.02434 = phi i32 [ %.02438, %bb.h ], [ %i.e, %bb.a ], [ %i.c, %bb.i ] ; 2 uses
  %i.ao = phi i8 [ 1, %bb.h ], [ 0, %bb.a ], [ 0, %bb.i ]
  %i.ap = icmp ne i32 %.02434, %i.c
  %i.aq = zext i1 %i.ap to i32
  %i.ar = add nsw i32 %.02434, %i.aq
  %i.as = sext i32 %i.ar to i64
  tail call void @_ZN6icu_7824ConstrainedFieldPosition24setInt64IterationContextEl(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.as)
  ret i8 %i.ao
}

declare noundef signext i8 @_ZNK6icu_7824ConstrainedFieldPosition12matchesFieldEii(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_7824ConstrainedFieldPosition8setStateEiiii(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_7824ConstrainedFieldPosition24setInt64IterationContextEl(ptr noundef nonnull align 8 dereferenceable(25), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7839FormattedValueFieldPositionIteratorImpl10getHandlerER10UErrorCode(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::FieldPositionIteratorHandler") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZN6icu_7828FieldPositionIteratorHandlerC1EPNS_9UVector32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

declare void @_ZN6icu_7828FieldPositionIteratorHandlerC1EPNS_9UVector32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7839FormattedValueFieldPositionIteratorImpl12appendStringENS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef align 8 %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !28
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.k) ; 0 uses
  %i.m = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

declare noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7839FormattedValueFieldPositionIteratorImpl15addOverlapSpansE14UFieldCategoryaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i8 noundef signext %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 30 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %.lr.ph126, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit114

.lr.ph126:                                        ; preds = %bb.a
  %i.e = lshr i32 %i.c, 2                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.g = zext nneg i32 %i.e to i64
  %wide.trip.count137 = zext nneg i32 %i.e to i64 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit
  %.not = icmp eq i32 %.351, 2147483647
  br i1 %.not, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit114, label %bb.k

bb.b:                                             ; preds = %.lr.ph126, %.loopexit
  %indvars.iv.a = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next135, %.loopexit ] ; 2 uses
  %.039124 = phi i32 [ 0, %.lr.ph126 ], [ %.3, %.loopexit ] ; 3 uses
  %.040123 = phi i32 [ 2147483647, %.lr.ph126 ], [ %.343, %.loopexit ] ; 3 uses
  %.044122 = phi i32 [ 0, %.lr.ph126 ], [ %.347, %.loopexit ] ; 3 uses
  %.048121 = phi i32 [ 2147483647, %.lr.ph126 ], [ %.351, %.loopexit ] ; 3 uses
  %i.h = shl nuw nsw i64 %indvars.iv.a, 2         ; 3 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.j = load i32, ptr %i.b, align 8
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = icmp slt i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6icu_789UVector3210elementAtiEi.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !17
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit

_ZNK6icu_789UVector3210elementAtiEi.exit:         ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %i.o, %bb.c ], [ 0, %bb.b ]
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv.a, 1 ; 4 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next135, %i.g
  br i1 %i.q, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit54
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count137
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !29

.lr.ph:                                           ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit, %bb.d
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.d ], [ %indvars.iv.next135, %_ZNK6icu_789UVector3210elementAtiEi.exit ] ; 2 uses
  %i.r = shl nuw nsw i64 %indvars.iv131, 2        ; 2 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.t = icmp slt i64 %i.s, %i.k
  br i1 %i.t, label %bb.e, label %_ZNK6icu_789UVector3210elementAtiEi.exit54

bb.e:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit54

_ZNK6icu_789UVector3210elementAtiEi.exit54:       ; preds = %.lr.ph, %bb.e
  %i.x = phi i32 [ %i.w, %bb.e ], [ 0, %.lr.ph ]
  %.not53.not = icmp eq i32 %i.p, %i.x
  br i1 %.not53.not, label %bb.f, label %bb.d

bb.f:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit54
  %i.y = trunc nuw nsw i64 %i.r to i32            ; 2 uses
  %i.z = or disjoint i64 %i.h, 2                  ; 2 uses
  %i.aa = icmp slt i64 %i.z, %i.k
  br i1 %i.aa, label %bb.g, label %_ZNK6icu_789UVector3210elementAtiEi.exit55

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !17
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit55

_ZNK6icu_789UVector3210elementAtiEi.exit55:       ; preds = %bb.f, %bb.g
  %i.ae = phi i32 [ %i.ad, %bb.g ], [ 0, %bb.f ]
  %i.af = tail call i32 @uprv_min_78(i32 noundef %.048121, i32 noundef %i.ae)
  %i.ag = or disjoint i64 %i.h, 3                 ; 2 uses
  %i.ah = load i32, ptr %i.b, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %_ZNK6icu_789UVector3210elementAtiEi.exit56

bb.h:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit55
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ag
  %i.am = load i32, ptr %i.al, align 4, !tbaa !17
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit56

_ZNK6icu_789UVector3210elementAtiEi.exit56:       ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit55, %bb.h
  %i.an = phi i32 [ %i.am, %bb.h ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit55 ]
  %i.ao = tail call i32 @uprv_max_78(i32 noundef %.044122, i32 noundef %i.an)
  %i.ap = or disjoint i32 %i.y, 2                 ; 2 uses
  %i.aq = load i32, ptr %i.b, align 8
  %i.ar = icmp sgt i32 %i.aq, %i.ap
  br i1 %i.ar, label %bb.i, label %_ZNK6icu_789UVector3210elementAtiEi.exit57

bb.i:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit56
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.at = zext nneg i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit57

_ZNK6icu_789UVector3210elementAtiEi.exit57:       ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit56, %bb.i
  %i.aw = phi i32 [ %i.av, %bb.i ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit56 ]
  %i.ax = tail call i32 @uprv_min_78(i32 noundef %.040123, i32 noundef %i.aw)
  %i.ay = or disjoint i32 %i.y, 3                 ; 2 uses
  %i.az = load i32, ptr %i.b, align 8
  %i.ba = icmp sgt i32 %i.az, %i.ay
  br i1 %i.ba, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit57
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.bc = zext nneg i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %bb.j, %_ZNK6icu_789UVector3210elementAtiEi.exit57
  %i.bf = phi i32 [ %i.be, %bb.j ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit57 ]
  %i.bg = tail call i32 @uprv_max_78(i32 noundef %.039124, i32 noundef %i.bf)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZNK6icu_789UVector3210elementAtiEi.exit, %.thread
  %.351 = phi i32 [ %i.af, %.thread ], [ %.048121, %_ZNK6icu_789UVector3210elementAtiEi.exit ], [ %.048121, %bb.d ] ; 3 uses
  %.347 = phi i32 [ %i.ao, %.thread ], [ %.044122, %_ZNK6icu_789UVector3210elementAtiEi.exit ], [ %.044122, %bb.d ] ; 2 uses
  %.343 = phi i32 [ %i.ax, %.thread ], [ %.040123, %_ZNK6icu_789UVector3210elementAtiEi.exit ], [ %.040123, %bb.d ] ; 2 uses
  %.3 = phi i32 [ %i.bg, %.thread ], [ %.039124, %_ZNK6icu_789UVector3210elementAtiEi.exit ], [ %.039124, %bb.d ] ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge, label %bb.b, !llvm.loop !30

bb.k:                                             ; preds = %._crit_edge
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !15  ; 4 uses
  %i.bi = icmp slt i32 %i.bh, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 8 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %.not.i.i = icmp sle i32 %i.bk, %i.bh
  %or.cond.i.i = select i1 %i.bi, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i: ; preds = %bb.k
  %i.bl = add nsw i32 %i.bh, 1
  %i.bm = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i = icmp eq i8 %i.bm, 0
  %.pre = load i32, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  br i1 %.not.i, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, %bb.k
  %i.bn = phi i32 [ %i.bh, %bb.k ], [ %.pre, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  store i32 %1, ptr %i.br, align 4, !tbaa !17
  %i.bs = load i32, ptr %i.b, align 8, !tbaa !15
  %i.bt = add nsw i32 %i.bs, 1                    ; 2 uses
  store i32 %i.bt, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i
  %i.bu = phi i32 [ %.pre, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i ], [ %i.bt, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i ] ; 4 uses
  %i.bv = sext i8 %2 to i32                       ; 2 uses
  %i.bw = icmp slt i32 %i.bu, -1
  %i.bx = load i32, ptr %i.bj, align 4
  %.not.i.i59 = icmp sle i32 %i.bx, %i.bu
  %or.cond.i.i60 = select i1 %i.bw, i1 true, i1 %.not.i.i59
  br i1 %or.cond.i.i60, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i61

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit
  %i.by = add nsw i32 %i.bu, 1
  %i.bz = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.by, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i63 = icmp eq i8 %i.bz, 0
  %.pre139.a = load i32, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  br i1 %.not.i63, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i61

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i61: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit
  %i.ca = phi i32 [ %i.bu, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit ], [ %.pre139.a, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !16
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  store i32 %i.bv, ptr %i.ce, align 4, !tbaa !17
  %i.cf = load i32, ptr %i.b, align 8, !tbaa !15
  %i.cg = add nsw i32 %i.cf, 1                    ; 2 uses
  store i32 %i.cg, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i61
  %i.ch = phi i32 [ %.pre139.a, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i62 ], [ %i.cg, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i61 ] ; 4 uses
  %i.ci = icmp slt i32 %i.ch, -1
  %i.cj = load i32, ptr %i.bj, align 4
  %.not.i.i67 = icmp sle i32 %i.cj, %i.ch
  %or.cond.i.i68 = select i1 %i.ci, i1 true, i1 %.not.i.i67
  br i1 %or.cond.i.i68, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66
  %i.ck = add nsw i32 %i.ch, 1
  %i.cl = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i71 = icmp eq i8 %i.cl, 0
  %.pre140.a = load i32, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  br i1 %.not.i71, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66
  %i.cm = phi i32 [ %i.ch, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit66 ], [ %.pre140.a, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !16
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cp
  store i32 %.351, ptr %i.cq, align 4, !tbaa !17
  %i.cr = load i32, ptr %i.b, align 8, !tbaa !15
  %i.cs = add nsw i32 %i.cr, 1                    ; 2 uses
  store i32 %i.cs, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69
  %i.ct = phi i32 [ %.pre140.a, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i70 ], [ %i.cs, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i69 ] ; 4 uses
  %i.cu = icmp slt i32 %i.ct, -1
  %i.cv = load i32, ptr %i.bj, align 4
  %.not.i.i75 = icmp sle i32 %i.cv, %i.ct
  %or.cond.i.i76 = select i1 %i.cu, i1 true, i1 %.not.i.i75
  br i1 %or.cond.i.i76, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74
  %i.cw = add nsw i32 %i.ct, 1
  %i.cx = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.cw, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i79 = icmp eq i8 %i.cx, 0
  %.pre141.a = load i32, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  br i1 %.not.i79, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74
  %i.cy = phi i32 [ %i.ct, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit74 ], [ %.pre141.a, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !16
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.db
  store i32 %.347, ptr %i.dc, align 4, !tbaa !17
  %i.dd = load i32, ptr %i.b, align 8, !tbaa !15
  %i.de = add nsw i32 %i.dd, 1                    ; 2 uses
  store i32 %i.de, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77
  %i.df = phi i32 [ %.pre141.a, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i78 ], [ %i.de, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i77 ] ; 4 uses
  %i.dg = icmp slt i32 %i.df, -1
  %i.dh = load i32, ptr %i.bj, align 4
  %.not.i.i83 = icmp sle i32 %i.dh, %i.df
  %or.cond.i.i84 = select i1 %i.dg, i1 true, i1 %.not.i.i83
  br i1 %or.cond.i.i84, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82
  %i.di = add nsw i32 %i.df, 1
  %i.dj = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.di, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i87 = icmp eq i8 %i.dj, 0
  %.pre142.a = load i32, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  br i1 %.not.i87, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82
  %i.dk = phi i32 [ %i.df, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit82 ], [ %.pre142.a, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !16
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  store i32 %1, ptr %i.do, align 4, !tbaa !17
  %i.dp = load i32, ptr %i.b, align 8, !tbaa !15
  %i.dq = add nsw i32 %i.dp, 1                    ; 2 uses
  store i32 %i.dq, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85
  %i.dr = phi i32 [ %.pre142.a, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i86 ], [ %i.dq, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i85 ] ; 4 uses
  %i.ds = sub nsw i32 1, %i.bv
  %i.dt = icmp slt i32 %i.dr, -1
  %i.du = load i32, ptr %i.bj, align 4
  %.not.i.i91 = icmp sle i32 %i.du, %i.dr
  %or.cond.i.i92 = select i1 %i.dt, i1 true, i1 %.not.i.i91
  br i1 %or.cond.i.i92, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90
  %i.dv = add nsw i32 %i.dr, 1
  %i.dw = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i95 = icmp eq i8 %i.dw, 0
  %.pre143 = load i32, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  br i1 %.not.i95, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90
  %i.dx = phi i32 [ %i.dr, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit90 ], [ %.pre143, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !16
  %i.ea = sext i32 %i.dx to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea
  store i32 %i.ds, ptr %i.eb, align 4, !tbaa !17
  %i.ec = load i32, ptr %i.b, align 8, !tbaa !15
  %i.ed = add nsw i32 %i.ec, 1                    ; 2 uses
  store i32 %i.ed, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93
  %i.ee = phi i32 [ %.pre143, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i94 ], [ %i.ed, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i93 ] ; 4 uses
  %i.ef = icmp slt i32 %i.ee, -1
  %i.eg = load i32, ptr %i.bj, align 4
  %.not.i.i99 = icmp sle i32 %i.eg, %i.ee
  %or.cond.i.i100 = select i1 %i.ef, i1 true, i1 %.not.i.i99
  br i1 %or.cond.i.i100, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102: ; preds = %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98
  %i.eh = add nsw i32 %i.ee, 1
  %i.ei = tail call noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.eh, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i103 = icmp eq i8 %i.ei, 0
  %.pre144 = load i32, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  br i1 %.not.i103, label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit106, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98
  %i.ej = phi i32 [ %i.ee, %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit98 ], [ %.pre144, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !16
  %i.em = sext i32 %i.ej to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.em
  store i32 %.343, ptr %i.en, align 4, !tbaa !17
  %i.eo = load i32, ptr %i.b, align 8, !tbaa !15
  %i.ep = add nsw i32 %i.eo, 1                    ; 2 uses
  store i32 %i.ep, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit106

_ZN6icu_789UVector3210addElementEiR10UErrorCode.exit106: ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101
  %i.eq = phi i32 [ %.pre144, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.i102 ], [ %i.ep, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread.i101 ] ; 4 uses
  %i.er = icmp slt i32 %i.eq, -1
  %i.es = load i32, ptr %i.bj, align 4
  %.not.i.i107 = icmp sle i32 %i.es, %i.eq
end_hunk_0
