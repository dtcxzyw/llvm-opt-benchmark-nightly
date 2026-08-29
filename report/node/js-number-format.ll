Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-number-format?download=true
inline.NumInlined: 3488
inline.NumDeleted: 1452
begin_hunk_0_@_ZN2v88internal14JSNumberFormat22RoundingPriorityStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE:bb.a

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i52: ; preds = %.sink.split.i.i.i50
  %i.dh = sub nuw nsw i32 %i.cy, %spec.select.i.i51
  %i.di = call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.dh) ; 2 uses
  %.not.i53 = icmp eq i32 %i.di, 0
  br i1 %.not.i53, label %.critedge29, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i52
  %i.dj = and i16 %i.cs, 2
  %.not.i.i.i54 = icmp eq i16 %i.dj, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = select i1 %.not.i.i.i54, ptr %i.dm, ptr %i.dk
  %i.do = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.dn, i32 noundef %spec.select.i.i51, i32 noundef %i.di, i32 noundef 0, i32 noundef %i.de) #22
  br label %.critedge29

.critedge29:                                      ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit47.thread, %.sink.split.i.i.i50, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i52, %bb.e
  %.0.i.i49 = phi i32 [ %i.do, %bb.e ], [ -1, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i52 ], [ -1, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit47.thread ], [ -1, %.sink.split.i.i.i50 ] ; 2 uses
  %i.dp = icmp sgt i32 %.0.i.i49, -1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.dp, label %bb.f, label %_ZNK6icu_7813UnicodeStringixEi.exit58.thread

bb.f:                                             ; preds = %.critedge29.thread, %.critedge29
  %.16972 = phi i32 [ %i.cp, %.critedge29.thread ], [ %.0.i.i49, %.critedge29 ]
  %i.dq = add nuw nsw i32 %.16972, 2              ; 3 uses
  %i.dr = load i16, ptr %i.i, align 8             ; 3 uses
  %i.ds = icmp slt i16 %i.dr, 0
  %i.dt = ashr i16 %i.dr, 5
  %i.du = sext i16 %i.dt to i32
  %i.dv = load i32, ptr %i.n, align 4
  %i.dw = select i1 %i.ds, i32 %i.dv, i32 %i.du   ; 2 uses
  %i.dx = icmp eq i32 %i.dq, %i.dw
  br i1 %i.dx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dy = icmp ult i32 %i.dq, %i.dw
  br i1 %i.dy, label %_ZNK6icu_7813UnicodeStringixEi.exit58, label %_ZNK6icu_7813UnicodeStringixEi.exit58.thread

_ZNK6icu_7813UnicodeStringixEi.exit58:            ; preds = %bb.g
  %i.dz = and i16 %i.dr, 2
  %.not.i.i.i57 = icmp eq i16 %i.dz, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = select i1 %.not.i.i.i57, ptr %i.ec, ptr %i.ea
  %i.ee = zext nneg i32 %i.dq to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = icmp eq i16 %i.eg, 32
  br i1 %i.eh, label %bb.h, label %_ZNK6icu_7813UnicodeStringixEi.exit58.thread

_ZNK6icu_7813UnicodeStringixEi.exit58.thread:     ; preds = %bb.g, %_ZNK6icu_7813UnicodeStringixEi.exit58, %.critedge29
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNK6icu_7813UnicodeStringixEi.exit58, %bb.c, %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZNK6icu_7813UnicodeStringixEi.exit58.thread
  %.sink = phi i64 [ 5464, %_ZNK6icu_7813UnicodeStringixEi.exit58.thread ], [ 2848, %bb.c ], [ 2848, %_ZNK6icu_7813UnicodeStringixEi.exit ], [ 2672, %_ZNK6icu_7813UnicodeStringixEi.exit58 ], [ 2672, %bb.f ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  ret ptr %i.ei
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal14JSNumberFormat25TrailingZeroDisplayStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull @.str.16) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m
  %i.q = and i16 %i.b, 1
  %.not.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

.sink.split.i.i.i:                                ; preds = %bb.a
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.h, i32 0) ; 2 uses
  %i.r = icmp slt i32 %i.h, 0
  br i1 %i.r, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i: ; preds = %.sink.split.i.i.i
  %i.s = sub nuw nsw i32 %i.h, %spec.select.i.i
  %i.t = call i32 @llvm.umin.i32(i32 %i.h, i32 %i.s) ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i, %bb.a, %.sink.split.i.i.i
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNK6icu_7813UnicodeStringixEi.exit.thread

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit:    ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %i.u = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %.not.i.i.i, ptr %i.x, ptr %i.v
  %i.z = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.y, i32 noundef %spec.select.i.i, i32 noundef %i.t, i32 noundef 0, i32 noundef %i.p) #22 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %i.aa, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit.thread

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %i.ab = add nuw nsw i32 %i.z, 2                 ; 3 uses
  %i.ac = load i16, ptr %i.i, align 8             ; 3 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.n, align 4
  %i.ah = select i1 %i.ad, i32 %i.ag, i32 %i.af   ; 2 uses
  %i.ai = icmp eq i32 %i.ab, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp ult i32 %i.ab, %i.ah
  br i1 %i.aj, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %_ZNK6icu_7813UnicodeStringixEi.exit.thread

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.c
  %i.ak = and i16 %i.ac, 2
  %.not.i.i.i9 = icmp eq i16 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = select i1 %.not.i.i.i9, ptr %i.an, ptr %i.al
  %i.ap = zext nneg i32 %i.ab to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = icmp eq i16 %i.ar, 32
  br i1 %i.as, label %bb.d, label %_ZNK6icu_7813UnicodeStringixEi.exit.thread

_ZNK6icu_7813UnicodeStringixEi.exit.thread:       ; preds = %bb.c, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZNK6icu_7813UnicodeStringixEi.exit.thread
  %.sink = phi i64 [ 5464, %_ZNK6icu_7813UnicodeStringixEi.exit.thread ], [ 3104, %_ZNK6icu_7813UnicodeStringixEi.exit ], [ 3104, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  ret ptr %i.at
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14JSNumberFormat32MinimumIntegerDigitsFromSkeletonERKN6icu_7813UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.17) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m
  %i.q = and i16 %i.b, 1
  %.not.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %.critedge

.sink.split.i.i.i:                                ; preds = %bb.a
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.h, i32 0) ; 2 uses
  %i.r = icmp slt i32 %i.h, 0
  br i1 %i.r, label %.critedge, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i: ; preds = %.sink.split.i.i.i
  %i.s = sub nuw nsw i32 %i.h, %spec.select.i.i
  %i.t = call i32 @llvm.umin.i32(i32 %i.h, i32 %i.s) ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %.critedge, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit:    ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %i.u = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %.not.i.i.i, ptr %i.x, ptr %i.v
  %i.z = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.y, i32 noundef %spec.select.i.i, i32 noundef %i.t, i32 noundef 0, i32 noundef %i.p) #22 ; 4 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %i.ab = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.f, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae   ; 3 uses
  %i.ah = add nsw i32 %i.ag, %i.z                 ; 2 uses
  %i.ai = load i16, ptr %i.i, align 8             ; 3 uses
  %i.aj = icmp slt i16 %i.ai, 0
  %i.ak = ashr i16 %i.ai, 5
  %i.al = sext i16 %i.ak to i32
  %i.am = load i32, ptr %i.n, align 4
  %i.an = select i1 %i.aj, i32 %i.am, i32 %i.al   ; 5 uses
  %i.ao = icmp slt i32 %i.ah, %i.an
  %i.ap = icmp ult i32 %i.ah, %i.an
  %or.cond17 = and i1 %i.ao, %i.ap
  br i1 %or.cond17, label %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, label %.critedge

_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph:        ; preds = %bb.b
  %i.aq = and i16 %i.ai, 2
  %.not.i.i.i14 = icmp eq i16 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = select i1 %.not.i.i.i14, ptr %i.at, ptr %i.ar
  %i.av = sext i32 %i.ag to i64
  %i.aw = zext nneg i32 %i.z to i64
  %i.ax = add nsw i64 %i.av, %i.aw
  %2 = sext i32 %i.an to i64
  %3 = add i32 %i.ag, %i.z
  %i.ay = sub i32 %i.an, %3
  br label %_ZNK6icu_7813UnicodeStringixEi.exit

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ax, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.019 = phi i32 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %i.bc, %bb.c ] ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %i.au, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = icmp eq i16 %i.ba, 48
  br i1 %i.bb, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.bc = add nuw nsw i32 %.019, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %4 = icmp slt i64 %indvars.iv.next, %2
  %5 = trunc nsw i64 %indvars.iv.next to i32
  %6 = icmp ugt i32 %i.an, %5
  %or.cond = and i1 %4, %6
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %.critedge, !llvm.loop !8

.critedge:                                        ; preds = %bb.c, %_ZNK6icu_7813UnicodeStringixEi.exit, %bb.b, %.sink.split.i.i.i, %bb.a, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %.011 = phi i32 [ 1, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit ], [ 1, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ], [ 1, %bb.a ], [ 1, %.sink.split.i.i.i ], [ 0, %bb.b ], [ %i.ay, %bb.c ], [ %.019, %_ZNK6icu_7813UnicodeStringixEi.exit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i32 %.011
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14JSNumberFormat26FractionDigitsFromSkeletonERKN6icu_7813UnicodeStringEPiS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.18) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.j = load i16, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m
  %i.q = and i16 %i.b, 1
  %.not.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

.sink.split.i.i.i:                                ; preds = %bb.a
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.h, i32 0) ; 2 uses
  %i.r = icmp slt i32 %i.h, 0
  br i1 %i.r, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i: ; preds = %.sink.split.i.i.i
  %i.s = sub nuw nsw i32 %i.h, %spec.select.i.i
  %i.t = call i32 @llvm.umin.i32(i32 %i.h, i32 %i.s) ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i, %bb.a, %.sink.split.i.i.i
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.b

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit:    ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %i.u = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %.not.i.i.i, ptr %i.x, ptr %i.v
  %i.z = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.y, i32 noundef %spec.select.i.i, i32 noundef %i.t, i32 noundef 0, i32 noundef %i.p) #22 ; 3 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  store i32 0, ptr %1, align 4
  %.02758 = add nuw nsw i32 %i.z, 1               ; 3 uses
  %i.ab = load i16, ptr %i.i, align 8             ; 3 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.n, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = icmp slt i32 %.02758, %i.ag
  br i1 %i.ah, label %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, label %.critedge

_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph:        ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %narrow = add nuw i32 %i.z, 1
  %i.ak = zext i32 %narrow to i64
  br label %_ZNK6icu_7813UnicodeStringixEi.exit

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull @.str.19) #22
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i16, ptr %i.al, align 8            ; 4 uses
  %i.an = icmp slt i16 %i.am, 0
  %i.ao = ashr i16 %i.am, 5
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = select i1 %i.an, i32 %i.ar, i32 %i.ap   ; 4 uses
  %i.at = load i16, ptr %i.i, align 8             ; 2 uses
  %i.au = icmp slt i16 %i.at, 0
  %i.av = ashr i16 %i.at, 5
  %i.aw = sext i16 %i.av to i32
  %i.ax = load i32, ptr %i.n, align 4
  %i.ay = select i1 %i.au, i32 %i.ax, i32 %i.aw
  %i.az = and i16 %i.am, 1
  %.not.i.i32 = icmp eq i16 %i.az, 0
  br i1 %.not.i.i32, label %.sink.split.i.i.i34, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39.thread

.sink.split.i.i.i34:                              ; preds = %bb.b
  %spec.select.i.i35 = call i32 @llvm.smin.i32(i32 %i.as, i32 0) ; 2 uses
  %i.ba = icmp slt i32 %i.as, 0
  br i1 %i.ba, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39.thread, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i36

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i36: ; preds = %.sink.split.i.i.i34
  %i.bb = sub nuw nsw i32 %i.as, %spec.select.i.i35
  %i.bc = call i32 @llvm.umin.i32(i32 %i.as, i32 %i.bb) ; 2 uses
  %.not.i37 = icmp eq i32 %i.bc, 0
  br i1 %.not.i37, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39:  ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i36
  %i.bd = and i16 %i.am, 2
  %.not.i.i.i38 = icmp eq i16 %i.bd, 0
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = select i1 %.not.i.i.i38, ptr %i.bg, ptr %i.be
  %i.bi = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.bh, i32 noundef %spec.select.i.i35, i32 noundef %i.bc, i32 noundef 0, i32 noundef %i.ay) #22
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39.thread, label %.critedge31.thread

.critedge31.thread:                               ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.c

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39.thread: ; preds = %.sink.split.i.i.i34, %bb.b, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i36, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull @.str.20) #22
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bl = load i16, ptr %i.bk, align 8            ; 4 uses
  %i.bm = icmp slt i16 %i.bl, 0
  %i.bn = ashr i16 %i.bl, 5
  %i.bo = sext i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = select i1 %i.bm, i32 %i.bq, i32 %i.bo   ; 4 uses
  %i.bs = load i16, ptr %i.i, align 8             ; 2 uses
  %i.bt = icmp slt i16 %i.bs, 0
  %i.bu = ashr i16 %i.bs, 5
  %i.bv = sext i16 %i.bu to i32
  %i.bw = load i32, ptr %i.n, align 4
  %i.bx = select i1 %i.bt, i32 %i.bw, i32 %i.bv
  %i.by = and i16 %i.bl, 1
  %.not.i.i40 = icmp eq i16 %i.by, 0
  br i1 %.not.i.i40, label %.sink.split.i.i.i42, label %.critedge2.critedge

.sink.split.i.i.i42:                              ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39.thread
  %spec.select.i.i43 = call i32 @llvm.smin.i32(i32 %i.br, i32 0) ; 2 uses
  %i.bz = icmp slt i32 %i.br, 0
  br i1 %i.bz, label %.critedge2.critedge, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i44

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i44: ; preds = %.sink.split.i.i.i42
  %i.ca = sub nuw nsw i32 %i.br, %spec.select.i.i43
  %i.cb = call i32 @llvm.umin.i32(i32 %i.br, i32 %i.ca) ; 2 uses
  %.not.i45 = icmp eq i32 %i.cb, 0
  br i1 %.not.i45, label %.critedge2.critedge, label %.critedge31

.critedge31:                                      ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i44
  %i.cc = and i16 %i.bl, 2
  %.not.i.i.i46 = icmp eq i16 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = select i1 %.not.i.i.i46, ptr %i.cf, ptr %i.cd
  %i.ch = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.cg, i32 noundef %spec.select.i.i43, i32 noundef %i.cb, i32 noundef 0, i32 noundef %i.bx) #22
  %i.ci = icmp sgt i32 %i.ch, -1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.ci, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %.critedge31.thread, %.critedge31
  store i32 0, ptr %2, align 4
  store i32 0, ptr %1, align 4
  br label %.critedge2

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.ak, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.cj = phi i16 [ %i.ab, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %i.cs, %bb.d ]
  %.02760 = phi i32 [ %.02758, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %.027, %bb.d ]
  %storemerge59 = phi i32 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %i.cr, %bb.d ] ; 2 uses
  %i.ck = and i16 %i.cj, 2
  %.not.i.i.i49 = icmp eq i16 %i.ck, 0
  %i.cl = load ptr, ptr %i.aj, align 8
  %i.cm = select i1 %.not.i.i.i49, ptr %i.cl, ptr %i.ai
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = add i16 %i.co, -48
  %i.cq = icmp ult i16 %i.cp, 10
  br i1 %i.cq, label %bb.d, label %.critedge.loopexit.split.loop.exit73

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
end_hunk_0
