Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uniset?download=true
inline.NumInlined: 259
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7810UnicodeSet11getSingleCPERKNS_13UnicodeStringE:bb.a
  %i.b = load i16, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  switch i32 %i.h, label %bb.c [
    i32 1, label %_ZNK6icu_7813UnicodeString6charAtEi.exit
    i32 2, label %bb.b
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2, !tbaa !43
  %i.o = zext i16 %i.n to i32
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0) ; 2 uses
  %i.q = icmp slt i32 %i.p, 65536
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.1 = phi i32 [ %i.o, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %bb.c ], [ %i.p, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7810UnicodeSet11containsAllERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = sdiv i32 %i.b, 2                         ; 3 uses
  %.not1523 = icmp sgt i32 %i.b, 1
  br i1 %.not1523, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 6 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %.fr33 = freeze i32 %i.j                        ; 3 uses
  %i.k = add i32 %.fr33, -1                       ; 6 uses
  %i.l = icmp slt i32 %.fr33, 2
  %i.m = zext nneg i32 %.fr33 to i64
  %i.n = getelementptr [4 x i8], ptr %i.g, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = lshr i32 %i.k, 1                         ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.q = and i32 %i.k, 1
  %.not.i.us = icmp eq i32 %i.q, 0
  %i.r = sext i32 %i.k to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.r
  br i1 %.not.i.us, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %wide.trip.count48 = zext nneg i32 %i.c to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %bb.b
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next46, %bb.b ] ; 2 uses
  %.idx54 = shl nuw nsw i64 %indvars.iv45, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx54 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37
  %i.v = icmp slt i32 %i.u, %i.h
  br i1 %i.v, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us

bb.b:                                             ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !65

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us: ; preds = %.lr.ph.split.us.split
  %i.w = getelementptr i8, ptr %i.t, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37
  %i.y = load i32, ptr %i.s, align 4, !tbaa !37
  %.not22.us = icmp sgt i32 %i.x, %i.y
  br i1 %.not22.us, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.z = icmp eq i32 %i.p, 0
  br i1 %i.z, label %.lr.ph.split.split.us.split.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split
  %i.aa = zext nneg i32 %i.k to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %wide.trip.count43 = zext nneg i32 %i.c to i64
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.c
  %indvars.iv40 = phi i64 [ 0, %.lr.ph.split.split.us.split.preheader ], [ %indvars.iv.next41, %bb.c ] ; 2 uses
  %.idx53 = shl nuw nsw i64 %indvars.iv40, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx53 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37
  %i.ae = icmp slt i32 %i.ad, %i.h
  br i1 %i.ae, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us26

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us26: ; preds = %.lr.ph.split.split.us.split
  %i.af = getelementptr i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !37
  %.not22.us30 = icmp sgt i32 %i.ag, %i.ah
  br i1 %.not22.us30, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us26
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %.critedge, label %.lr.ph.split.split.us.split, !llvm.loop !65

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet8containsEii.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split.split, !llvm.loop !65

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !37 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37
  %i.am = icmp slt i32 %i.aj, %i.h
  br i1 %i.am, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.an = load i32, ptr %i.o, align 4, !tbaa !37
  %.not.i.i.not = icmp slt i32 %i.aj, %i.an
  br i1 %.not.i.i.not, label %.lr.ph.i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.ao = phi i32 [ %i.au, %.lr.ph.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %.01730.i.i = phi i32 [ %..017.i.i, %.lr.ph.i.i ], [ %i.k, %bb.e ]
  %.01829.i.i = phi i32 [ %.018..i.i, %.lr.ph.i.i ], [ 0, %bb.e ]
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !37
  %i.as = icmp slt i32 %i.aj, %i.ar               ; 2 uses
  %.018..i.i = select i1 %i.as, i32 %.01829.i.i, i32 %i.ao ; 3 uses
  %..017.i.i = select i1 %i.as, i32 %i.ao, i32 %.01730.i.i ; 3 uses
  %i.at = add nuw nsw i32 %..017.i.i, %.018..i.i
  %i.au = lshr i32 %i.at, 1                       ; 2 uses
  %i.av = icmp eq i32 %i.au, %.018..i.i
  br i1 %i.av, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i:  ; preds = %.lr.ph.i.i, %bb.e
  %.122.i.i = phi i32 [ %i.k, %bb.e ], [ %..017.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.aw = and i32 %.122.i.i, 1
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %_ZNK6icu_7810UnicodeSet8containsEii.exit

_ZNK6icu_7810UnicodeSet8containsEii.exit:         ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i
  %i.ax = sext i32 %.122.i.i to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  %.not22 = icmp sgt i32 %i.al, %i.az
  br i1 %.not22, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %bb.d

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 3 uses
  %.not.i18 = icmp eq ptr %i.bb, null
  br i1 %.not.i18, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %.critedge
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !28
  %.not21 = icmp eq i32 %i.bd, 0
  br i1 %.not21, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %.not17 = icmp eq ptr %i.bf, null
  br i1 %.not17, label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = tail call noundef signext i8 @_ZNK6icu_787UVector11containsAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.bb)
  %i.bh = icmp ne i8 %i.bg, 0
  %i.bi = zext i1 %i.bh to i8
  br label %_ZNK6icu_7810UnicodeSet8containsEii.exit.thread

_ZNK6icu_7810UnicodeSet8containsEii.exit.thread:  ; preds = %.lr.ph.split.split, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, %_ZNK6icu_7810UnicodeSet8containsEii.exit, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us26, %.lr.ph.split.split.us.split, %.lr.ph.split.us.split, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us, %.lr.ph.split.us, %.critedge, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %bb.g, %bb.f
  %.1 = phi i8 [ %i.bi, %bb.g ], [ 1, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit ], [ 0, %bb.f ], [ 1, %.critedge ], [ 0, %.lr.ph.split.us.split ], [ 0, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us26 ], [ 0, %.lr.ph.split.us ], [ 0, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us ], [ 0, %.lr.ph.split.split.us.split ], [ 0, %_ZNK6icu_7810UnicodeSet8containsEii.exit ], [ 0, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i ], [ 0, %.lr.ph.split.split ]
  ret i8 %.1
}

declare noundef signext i8 @_ZNK6icu_787UVector11containsAllERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7810UnicodeSet11containsAllERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = and i16 %i.b, 17
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ]
  %i.h = icmp slt i16 %i.b, 0
  %i.i = ashr i16 %i.b, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %.0.i, i32 noundef %i.m, i32 noundef 1)
  %i.o = load i16, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.k, align 4
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r
  %i.u = icmp eq i32 %i.n, %i.t
  %i.v = zext i1 %i.u to i8
  ret i8 %i.v
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeSetStringSpan", align 8 ; 10 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread60, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.d
  %i.f = tail call noundef ptr @_ZNK6icu_786BMPSet4spanEPKDsS2_17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(868) %i.c, ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = trunc i64 %i.j to i32
  br label %.thread58

bb.d:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %2, 0
  br i1 %i.l, label %bb.e, label %.thread58

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @u_strlen_78(ptr noundef %1) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread58, label %.thread60

.thread60:                                        ; preds = %bb.b, %bb.e
  %.04462 = phi i32 [ %i.m, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %.not51 = icmp eq ptr %i.p, null
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread60
  %i.q = tail call noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %i.p, ptr noundef %1, i32 noundef %.04462, i32 noundef %3)
  br label %.thread58

bb.g:                                             ; preds = %.thread60
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !28
  %.not66 = icmp eq i32 %i.u, 0
  br i1 %.not66, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.v = icmp eq i32 %3, 0
  %i.w = select i1 %i.v, i32 41, i32 42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6icu_7820UnicodeSetStringSpanC1ERKNS_10UnicodeSetERKNS_7UVectorEj(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 252
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54
  %.not67 = icmp eq i32 %i.y, 0
  br i1 %.not67, label %.thread64, label %bb.i

.thread64:                                        ; preds = %bb.h
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.z = invoke noundef i32 @_ZNK6icu_7820UnicodeSetStringSpan4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef %1, i32 noundef %.04462, i32 noundef %3)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %bb.i
  call void @_ZN6icu_7820UnicodeSetStringSpanD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread58

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.g, %.thread64, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.not54 = icmp ne i32 %3, 0
  %spec.store.select = zext i1 %.not54 to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.l

bb.l:                                             ; preds = %bb.t, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread
  %.0 = phi i32 [ 0, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ %.2, %bb.t ] ; 4 uses
  %i.ac = add nsw i32 %.0, 1                      ; 4 uses
  %i.ad = sext i32 %.0 to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !43
  %i.ag = zext i16 %i.af to i32                   ; 4 uses
  %i.ah = and i32 %i.ag, 64512
  %i.ai = icmp ne i32 %i.ah, 55296
  %.not55 = icmp eq i32 %i.ac, %.04462
  %or.cond = select i1 %i.ai, i1 true, i1 %.not55
  br i1 %or.cond, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = sext i32 %i.ac to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %1, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !43
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = and i32 %i.am, 64512
  %i.ao = icmp eq i32 %i.an, 56320
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = add nsw i32 %.0, 2
  %i.aq = shl nuw nsw i32 %i.ag, 10
  %i.ar = add nsw i32 %i.aq, -56613888
  %i.as = add nuw nsw i32 %i.ar, %i.am
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.140 = phi i32 [ %i.ag, %bb.l ], [ %i.as, %bb.n ], [ %i.ag, %bb.m ] ; 5 uses
  %.2 = phi i32 [ %i.ac, %bb.l ], [ %i.ap, %bb.n ], [ %i.ac, %bb.m ] ; 3 uses
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %.not13.i = icmp eq ptr %i.at, null
  br i1 %.not13.i, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %.not.i57 = icmp eq ptr %i.aw, null
  br i1 %.not.i57, label %.lr.ph.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.o
  %.lcssa.i = phi ptr [ %i.at, %bb.o ], [ %i.aw, %tailrecurse.i ] ; 2 uses
  %i.ax = load ptr, ptr %.lcssa.i, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(868) %.lcssa.i, i32 noundef %.140), !inline_history !50
  br label %_ZNK6icu_7810UnicodeSet8containsEi.exit

.lr.ph.i:                                         ; preds = %bb.o, %tailrecurse.i
  %.tr14.i = phi ptr [ %i.au, %tailrecurse.i ], [ %0, %bb.o ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr14.i, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 3 uses
  %.not9.i = icmp eq ptr %i.bc, null
  br i1 %.not9.i, label %bb.p, label %tailrecurse.i

bb.p:                                             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZNK6icu_7810UnicodeSet12containsNoneEii:bb.a
  %.122.i = phi i32 [ %i.g, %bb.c ], [ %i.g, %bb.b ], [ %..017.i, %.lr.ph.i ] ; 2 uses
  %i.w = and i32 %.122.i, 1
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit._ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread_crit_edge, label %bb.d

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit._ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread_crit_edge: ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit
  %.phi.trans.insert = sext i32 %.122.i to i64
  %.phi.trans.insert6 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert6, align 4, !tbaa !37
  br label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread: ; preds = %bb.a, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit._ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread_crit_edge
  %i.y = phi i32 [ %.pre, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit._ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread_crit_edge ], [ %i.c, %bb.a ]
  %i.z = icmp slt i32 %2, %i.y
  %i.aa = zext i1 %i.z to i8
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit
  %i.ab = phi i8 [ 0, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit ], [ %i.aa, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread ]
  ret i8 %i.ab
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7810UnicodeSet12containsNoneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = sdiv i32 %i.b, 2                         ; 2 uses
  %.not1420 = icmp sgt i32 %i.b, 1
  br i1 %.not1420, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %.fr35 = freeze i32 %i.j                        ; 3 uses
  %i.k = add i32 %.fr35, -1                       ; 5 uses
  %i.l = icmp slt i32 %.fr35, 2
  %i.m = zext nneg i32 %.fr35 to i64
  %i.n = getelementptr [4 x i8], ptr %i.g, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = lshr i32 %i.k, 1                         ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.q = and i32 %i.k, 1
  %i.r = icmp eq i32 %i.q, 0
  %.phi.trans.insert.i.us = sext i32 %i.k to i64
  %.phi.trans.insert6.i.us = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.phi.trans.insert.i.us
  %wide.trip.count64 = zext nneg i32 %i.c to i64  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.idx74 = shl nuw nsw i64 %indvars.iv61, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx74 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !37
  %i.u = getelementptr i8, ptr %i.s, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  %i.w = icmp slt i32 %i.t, %i.h
  br i1 %i.w, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us.us, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us.us

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us.us: ; preds = %.lr.ph.split.us.split.us
  %.pre.i.us.us = load i32, ptr %.phi.trans.insert6.i.us, align 4, !tbaa !37
  br label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us.us

_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us.us: ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us.us, %.lr.ph.split.us.split.us
  %i.x = phi i32 [ %.pre.i.us.us, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i.us.us ], [ %i.h, %.lr.ph.split.us.split.us ]
  %.not19.us.us = icmp sgt i32 %i.v, %i.x
  br i1 %.not19.us.us, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us.us
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.critedge, label %.lr.ph.split.us.split.us, !llvm.loop !67

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.c
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.idx73 = shl nuw nsw i64 %indvars.iv56, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx73 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  %i.aa = icmp slt i32 %i.z, %i.h
  br i1 %i.aa, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread

bb.c:                                             ; preds = %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count64
  br i1 %exitcond60.not, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !67

_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us: ; preds = %.lr.ph.split.us.split
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37
  %.not19.us = icmp sgt i32 %i.ac, %i.h
  br i1 %.not19.us, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread, label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ad = icmp eq i32 %i.p, 0
  %wide.trip.count49 = zext nneg i32 %i.c to i64  ; 2 uses
  br i1 %i.ad, label %.lr.ph.split.split.us.split, label %.lr.ph.split.split

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split, %bb.d
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %bb.d ], [ 0, %.lr.ph.split ] ; 2 uses
  %.idx71 = shl nuw nsw i64 %indvars.iv46, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx71 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !37
  %i.ag = icmp slt i32 %i.af, %i.h
  br i1 %i.ag, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us29, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread

_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us29: ; preds = %.lr.ph.split.split.us.split
  %i.ah = getelementptr i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37
  %.not19.us30 = icmp sgt i32 %i.ai, %i.h
  br i1 %.not19.us30, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us29
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %.critedge, label %.lr.ph.split.split.us.split, !llvm.loop !67

bb.e:                                             ; preds = %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count49
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split.split, !llvm.loop !67

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !37 ; 3 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !37
  %i.an = icmp slt i32 %i.ak, %i.h
  br i1 %i.an, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.ao = load i32, ptr %i.o, align 4, !tbaa !37
  %.not.i.i.not = icmp slt i32 %i.ak, %i.ao
  br i1 %.not.i.i.not, label %.lr.ph.i.i, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.ap = phi i32 [ %i.av, %.lr.ph.i.i ], [ %i.p, %bb.f ] ; 3 uses
  %.01730.i.i = phi i32 [ %..017.i.i, %.lr.ph.i.i ], [ %i.k, %bb.f ]
  %.01829.i.i = phi i32 [ %.018..i.i, %.lr.ph.i.i ], [ 0, %bb.f ]
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37
  %i.at = icmp slt i32 %i.ak, %i.as               ; 2 uses
  %.018..i.i = select i1 %i.at, i32 %.01829.i.i, i32 %i.ap ; 3 uses
  %..017.i.i = select i1 %i.at, i32 %i.ap, i32 %.01730.i.i ; 3 uses
  %i.au = add nuw nsw i32 %..017.i.i, %.018..i.i
  %i.av = lshr i32 %i.au, 1                       ; 2 uses
  %i.aw = icmp eq i32 %i.av, %.018..i.i
  br i1 %i.aw, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, label %.lr.ph.i.i

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i:  ; preds = %.lr.ph.i.i, %bb.f
  %.122.i.i = phi i32 [ %i.k, %bb.f ], [ %..017.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ax = and i32 %.122.i.i, 1
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit._ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread_crit_edge.i, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread

_ZNK6icu_7810UnicodeSet13findCodePointEi.exit._ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread_crit_edge.i: ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i
  %.phi.trans.insert.i = sext i32 %.122.i.i to i64
  %.phi.trans.insert6.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert6.i, align 4, !tbaa !37
  br label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit

_ZNK6icu_7810UnicodeSet12containsNoneEii.exit:    ; preds = %.lr.ph.split.split, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit._ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread_crit_edge.i
  %i.az = phi i32 [ %.pre.i, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit._ZNK6icu_7810UnicodeSet13findCodePointEi.exit.thread_crit_edge.i ], [ %i.h, %.lr.ph.split.split ]
  %.not19 = icmp sgt i32 %i.am, %i.az
  br i1 %.not19, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread, label %bb.e

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25 ; 3 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !28
  %.not18 = icmp eq i32 %i.bg, 0
  br i1 %.not18, label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.bh = tail call noundef signext i8 @_ZNK6icu_787UVector12containsNoneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.be)
  %i.bi = icmp ne i8 %i.bh, 0
  %i.bj = zext i1 %i.bi to i8
  br label %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread

_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.thread: ; preds = %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i, %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit, %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us29, %.lr.ph.split.split.us.split, %.lr.ph.split.us.split, %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us, %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us.us, %bb.g, %.critedge, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %bb.h
  %.1 = phi i8 [ %i.bj, %bb.h ], [ 1, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit ], [ 1, %.critedge ], [ 1, %bb.g ], [ 0, %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us.us ], [ 0, %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us29 ], [ 0, %.lr.ph.split.us.split ], [ 0, %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit.us ], [ 0, %.lr.ph.split.split.us.split ], [ 0, %_ZNK6icu_7810UnicodeSet12containsNoneEii.exit ], [ 0, %_ZNK6icu_7810UnicodeSet13findCodePointEi.exit.i ]
  ret i8 %.1
}

declare noundef signext i8 @_ZNK6icu_787UVector12containsNoneERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7810UnicodeSet12containsNoneERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = and i16 %i.b, 17
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ]
  %i.h = icmp slt i16 %i.b, 0
  %i.i = ashr i16 %i.b, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %.0.i, i32 noundef %i.m, i32 noundef 0)
  %i.o = load i16, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.k, align 4
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r
  %i.u = icmp eq i32 %i.n, %i.t
  %i.v = zext i1 %i.u to i8
  ret i8 %i.v
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7810UnicodeSet17matchesIndexValueEh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i8 noundef zeroext %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = lshr i32 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = zext i8 %1 to i32                        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  %i.m = xor i32 %i.l, %i.i
  %i.n = icmp ult i32 %i.m, 256
  %i.o = and i32 %i.i, 255
  %.not35 = icmp samesign ugt i32 %i.o, %i.g      ; 2 uses
  %i.p = and i32 %i.l, 255
  %.not36 = icmp samesign ult i32 %i.p, %i.g      ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %or.cond = select i1 %.not35, i1 true, i1 %.not36
  br i1 %or.cond, label %bb.e, label %.critedge

bb.d:                                             ; preds = %bb.b
  %or.cond37 = select i1 %.not35, i1 %.not36, i1 false
  br i1 %or.cond37, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.critedge, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit:       ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph44, label %.critedge

.lr.ph44:                                         ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit, %bb.g
  %i.v = phi ptr [ %i.ae, %bb.g ], [ %i.r, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit ]
  %.12643 = phi i32 [ %i.ad, %bb.g ], [ 0, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit ] ; 2 uses
  %i.w = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i32 noundef %.12643) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i16, ptr %i.x, align 8, !tbaa !44
  %i.z = icmp ugt i16 %i.y, 31
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph44
  %i.aa = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i32 noundef 0)
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = icmp eq i8 %1, %i.ab
  br i1 %i.ac, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph44
  %i.ad = add nuw nsw i32 %.12643, 1              ; 2 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !25  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph44, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.g, %bb.f, %._crit_edge, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %.5 = phi i8 [ 0, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit ], [ 1, %bb.f ], [ 0, %._crit_edge ], [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i8 %.5
}

declare noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #8

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define noundef signext range(i8 0, 2) i8 @_ZThn8_NK6icu_7810UnicodeSet17matchesIndexValueEh(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = lshr i32 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = zext i8 %1 to i32                        ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  %i.m = xor i32 %i.l, %i.i
  %i.n = icmp ult i32 %i.m, 256
  %i.o = and i32 %i.i, 255
  %.not35.i = icmp samesign ugt i32 %i.o, %i.g    ; 2 uses
  %i.p = and i32 %i.l, 255
  %.not36.i = icmp samesign ult i32 %i.p, %i.g    ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %or.cond.i = select i1 %.not35.i, i1 true, i1 %.not36.i
  br i1 %or.cond.i, label %bb.e, label %_ZNK6icu_7810UnicodeSet17matchesIndexValueEh.exit

bb.d:                                             ; preds = %bb.b
  %or.cond37.i = select i1 %.not35.i, i1 %.not36.i, i1 false
  br i1 %or.cond37.i, label %bb.e, label %_ZNK6icu_7810UnicodeSet17matchesIndexValueEh.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.e, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNK6icu_7810UnicodeSet17matchesIndexValueEh.exit, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i:     ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph44.i, label %_ZNK6icu_7810UnicodeSet17matchesIndexValueEh.exit

.lr.ph44.i:                                       ; preds = %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i, %bb.g
  %i.v = phi ptr [ %i.ae, %bb.g ], [ %i.r, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i ]
  %.12643.i = phi i32 [ %i.ad, %bb.g ], [ 0, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.i ] ; 2 uses
  %i.w = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i32 noundef %.12643.i) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i16, ptr %i.x, align 8, !tbaa !44
end_hunk_1
