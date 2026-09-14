Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-number-format?download=true
inline.NumInlined: 3488
inline.NumDeleted: 1452
begin_hunk_0_@_ZN2v88internal14JSNumberFormat25TrailingZeroDisplayStringEPNS0_7IsolateERKN6icu_7813UnicodeStringE:bb.a

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
  %i.z = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.y, i32 noundef %spec.select.i.i, i32 noundef %i.t, i32 noundef 0, i32 noundef %i.p) #22 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %i.ab = load i16, ptr %i.a, align 8             ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.f, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae   ; 2 uses
  %i.ah = add nsw i32 %i.ag, %i.z                 ; 3 uses
  %i.ai = load i16, ptr %i.i, align 8             ; 3 uses
  %i.aj = icmp slt i16 %i.ai, 0
  %i.ak = ashr i16 %i.ai, 5
  %i.al = sext i16 %i.ak to i32
  %i.am = load i32, ptr %i.n, align 4
  %i.an = select i1 %i.aj, i32 %i.am, i32 %i.al   ; 3 uses
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
  %i.ay = sub nuw i32 %i.an, %i.ah                ; 2 uses
  br label %_ZNK6icu_7813UnicodeStringixEi.exit

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ax, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.019 = phi i32 [ 0, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %i.bc, %bb.c ] ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %i.au, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = icmp eq i16 %i.ba, 48
  br i1 %i.bb, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.bc = add nuw i32 %.019, 1                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %i.bc, %i.ay
  br i1 %exitcond.not, label %.critedge, label %_ZNK6icu_7813UnicodeStringixEi.exit, !llvm.loop !19

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
  %i.cr = add nuw nsw i32 %storemerge59, 1        ; 3 uses
  store i32 %i.cr, ptr %1, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.027 = add nuw nsw i32 %.02760, 1              ; 2 uses
  %i.cs = load i16, ptr %i.i, align 8             ; 3 uses
  %i.ct = icmp slt i16 %i.cs, 0
  %i.cu = ashr i16 %i.cs, 5
  %i.cv = sext i16 %i.cu to i32
  %i.cw = load i32, ptr %i.n, align 4
  %i.cx = select i1 %i.ct, i32 %i.cw, i32 %i.cv
  %i.cy = trunc nuw i64 %indvars.iv.next to i32
  %i.cz = icmp sgt i32 %i.cx, %i.cy
  br i1 %i.cz, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %.critedge, !llvm.loop !20

.critedge.loopexit.split.loop.exit73:             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.da = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit73, %.preheader
  %storemerge.lcssa = phi i32 [ 0, %.preheader ], [ %storemerge59, %.critedge.loopexit.split.loop.exit73 ], [ %i.cr, %bb.d ] ; 2 uses
  %.027.lcssa = phi i32 [ %.02758, %.preheader ], [ %i.da, %.critedge.loopexit.split.loop.exit73 ], [ %.027, %bb.d ] ; 2 uses
  store i32 %storemerge.lcssa, ptr %2, align 4
  %i.db = load i16, ptr %i.i, align 8             ; 3 uses
  %i.dc = icmp slt i16 %i.db, 0
  %i.dd = ashr i16 %i.db, 5
  %i.de = sext i16 %i.dd to i32
  %i.df = load i32, ptr %i.n, align 4
  %i.dg = select i1 %i.dc, i32 %i.df, i32 %i.de
  %i.dh = icmp slt i32 %.027.lcssa, %i.dg
  br i1 %i.dh, label %_ZNK6icu_7813UnicodeStringixEi.exit52.lr.ph, label %.critedge2

_ZNK6icu_7813UnicodeStringixEi.exit52.lr.ph:      ; preds = %.critedge
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dk = sext i32 %.027.lcssa to i64
  br label %_ZNK6icu_7813UnicodeStringixEi.exit52

_ZNK6icu_7813UnicodeStringixEi.exit52:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit52.lr.ph, %bb.e
  %i.dl = phi i32 [ %storemerge.lcssa, %_ZNK6icu_7813UnicodeStringixEi.exit52.lr.ph ], [ %i.dt, %bb.e ]
  %indvars.iv65 = phi i64 [ %i.dk, %_ZNK6icu_7813UnicodeStringixEi.exit52.lr.ph ], [ %indvars.iv.next66, %bb.e ] ; 2 uses
  %i.dm = phi i16 [ %i.db, %_ZNK6icu_7813UnicodeStringixEi.exit52.lr.ph ], [ %i.du, %bb.e ]
  %i.dn = and i16 %i.dm, 2
  %.not.i.i.i51 = icmp eq i16 %i.dn, 0
  %i.do = load ptr, ptr %i.dj, align 8
  %i.dp = select i1 %.not.i.i.i51, ptr %i.do, ptr %i.di
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %indvars.iv65
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = icmp eq i16 %i.dr, 35
  br i1 %i.ds, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit52
  %i.dt = add nsw i32 %i.dl, 1                    ; 2 uses
  store i32 %i.dt, ptr %2, align 4
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.du = load i16, ptr %i.i, align 8             ; 3 uses
  %i.dv = icmp slt i16 %i.du, 0
  %i.dw = ashr i16 %i.du, 5
  %i.dx = sext i16 %i.dw to i32
  %i.dy = load i32, ptr %i.n, align 4
  %i.dz = select i1 %i.dv, i32 %i.dy, i32 %i.dx
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next66, %i.ea
  br i1 %i.eb, label %_ZNK6icu_7813UnicodeStringixEi.exit52, label %.critedge2, !llvm.loop !21

.critedge2.critedge:                              ; preds = %.sink.split.i.i.i42, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit39.thread, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i44
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.critedge2

.critedge2:                                       ; preds = %bb.e, %_ZNK6icu_7813UnicodeStringixEi.exit52, %.critedge, %.critedge2.critedge, %.critedge31, %bb.c
  %.028 = phi i1 [ true, %bb.c ], [ false, %.critedge31 ], [ false, %.critedge2.critedge ], [ true, %.critedge ], [ true, %_ZNK6icu_7813UnicodeStringixEi.exit52 ], [ true, %bb.e ]
  ret i1 %.028
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14JSNumberFormat29SignificantDigitsFromSkeletonERKN6icu_7813UnicodeStringEPiS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.21) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i16, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
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
  br label %.critedge2

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
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  store i32 1, ptr %1, align 4
  %.031 = add nuw nsw i32 %i.z, 1                 ; 3 uses
  %i.ab = load i16, ptr %i.i, align 8             ; 3 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.n, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = icmp slt i32 %.031, %i.ag
  br i1 %i.ah, label %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, label %.critedge

_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph:        ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %narrow = add nuw i32 %i.z, 1
  %i.ak = zext i32 %narrow to i64
  br label %_ZNK6icu_7813UnicodeStringixEi.exit

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.ak, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.al = phi i16 [ %i.ab, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %i.at, %bb.b ]
  %.033 = phi i32 [ %.031, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %.0, %bb.b ]
  %storemerge32 = phi i32 [ 1, %_ZNK6icu_7813UnicodeStringixEi.exit.lr.ph ], [ %i.as, %bb.b ] ; 2 uses
  %i.am = and i16 %i.al, 2
  %.not.i.i.i23 = icmp eq i16 %i.am, 0
  %i.an = load ptr, ptr %i.aj, align 8
  %i.ao = select i1 %.not.i.i.i23, ptr %i.an, ptr %i.ai
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = icmp eq i16 %i.aq, 64
  br i1 %i.ar, label %bb.b, label %.critedge.loopexit.split.loop.exit43

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.as = add nuw nsw i32 %storemerge32, 1        ; 3 uses
  store i32 %i.as, ptr %1, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.0 = add nuw nsw i32 %.033, 1                  ; 2 uses
  %i.at = load i16, ptr %i.i, align 8             ; 3 uses
  %i.au = icmp slt i16 %i.at, 0
  %i.av = ashr i16 %i.at, 5
  %i.aw = sext i16 %i.av to i32
  %i.ax = load i32, ptr %i.n, align 4
  %i.ay = select i1 %i.au, i32 %i.ax, i32 %i.aw
  %i.az = trunc nuw i64 %indvars.iv.next to i32
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %.critedge, !llvm.loop !22

.critedge.loopexit.split.loop.exit43:             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.bb = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit43, %.preheader
  %storemerge.lcssa = phi i32 [ 1, %.preheader ], [ %storemerge32, %.critedge.loopexit.split.loop.exit43 ], [ %i.as, %bb.b ] ; 2 uses
  %.0.lcssa = phi i32 [ %.031, %.preheader ], [ %i.bb, %.critedge.loopexit.split.loop.exit43 ], [ %.0, %bb.b ] ; 2 uses
  store i32 %storemerge.lcssa, ptr %2, align 4
  %i.bc = load i16, ptr %i.i, align 8             ; 3 uses
  %i.bd = icmp slt i16 %i.bc, 0
  %i.be = ashr i16 %i.bc, 5
  %i.bf = sext i16 %i.be to i32
  %i.bg = load i32, ptr %i.n, align 4
  %i.bh = select i1 %i.bd, i32 %i.bg, i32 %i.bf
  %i.bi = icmp slt i32 %.0.lcssa, %i.bh
  br i1 %i.bi, label %_ZNK6icu_7813UnicodeStringixEi.exit26.lr.ph, label %.critedge2

_ZNK6icu_7813UnicodeStringixEi.exit26.lr.ph:      ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = sext i32 %.0.lcssa to i64
  br label %_ZNK6icu_7813UnicodeStringixEi.exit26

_ZNK6icu_7813UnicodeStringixEi.exit26:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit26.lr.ph, %bb.c
  %i.bm = phi i32 [ %storemerge.lcssa, %_ZNK6icu_7813UnicodeStringixEi.exit26.lr.ph ], [ %i.bu, %bb.c ]
  %indvars.iv38 = phi i64 [ %i.bl, %_ZNK6icu_7813UnicodeStringixEi.exit26.lr.ph ], [ %indvars.iv.next39, %bb.c ] ; 2 uses
  %i.bn = phi i16 [ %i.bc, %_ZNK6icu_7813UnicodeStringixEi.exit26.lr.ph ], [ %i.bv, %bb.c ]
  %i.bo = and i16 %i.bn, 2
  %.not.i.i.i25 = icmp eq i16 %i.bo, 0
  %i.bp = load ptr, ptr %i.bk, align 8
  %i.bq = select i1 %.not.i.i.i25, ptr %i.bp, ptr %i.bj
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %indvars.iv38
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = icmp eq i16 %i.bs, 35
  br i1 %i.bt, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit26
  %i.bu = add nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.bu, ptr %2, align 4
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.bv = load i16, ptr %i.i, align 8             ; 3 uses
  %i.bw = icmp slt i16 %i.bv, 0
  %i.bx = ashr i16 %i.bv, 5
  %i.by = sext i16 %i.bx to i32
  %i.bz = load i32, ptr %i.n, align 4
  %i.ca = select i1 %i.bw, i32 %i.bz, i32 %i.by
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next39, %i.cb
  br i1 %i.cc, label %_ZNK6icu_7813UnicodeStringixEi.exit26, label %.critedge2, !llvm.loop !23

.critedge2:                                       ; preds = %bb.c, %_ZNK6icu_7813UnicodeStringixEi.exit26, %.critedge, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %i.cd = phi i1 [ false, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread ], [ false, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit ], [ true, %.critedge ], [ true, %_ZNK6icu_7813UnicodeStringixEi.exit26 ], [ true, %bb.c ]
  ret i1 %i.cd
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14JSNumberFormat26SetDigitOptionsToFormatterERKN6icu_786number26UnlocalizedNumberFormatterERKNS0_4Intl24NumberFormatDigitOptionsE(ptr dead_on_unwind noalias writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8 %0, ptr noundef nonnull align 8 dereferenceable(289) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(40) %2) local_unnamed_addr #0 align 2 {
switch.lookup:
  %3 = alloca %"class.icu_78::number::UnlocalizedNumberFormatter", align 8 ; 13 uses
  %4 = alloca %"class.icu_78::number::UnlocalizedNumberFormatter", align 8 ; 11 uses
  %5 = alloca %"class.icu_78::number::IntegerWidth", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::number::Precision", align 8 ; 10 uses
  %7 = alloca %"class.icu_78::number::Precision", align 8 ; 4 uses
  %8 = alloca %"class.icu_78::number::FractionPrecision", align 8 ; 4 uses
  %9 = alloca %"class.icu_78::number::Precision", align 8 ; 4 uses
  %10 = alloca %"class.icu_78::number::FractionPrecision", align 8 ; 4 uses
  %11 = alloca %"class.icu_78::number::Precision", align 8 ; 4 uses
  %12 = alloca %"class.icu_78::number::IncrementPrecision", align 8 ; 4 uses
  %13 = alloca %"class.icu_78::number::Precision", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal14JSNumberFormat26SetDigitOptionsToFormatterERKN6icu_786number26UnlocalizedNumberFormatterERKNS0_4Intl24NumberFormatDigitOptionsE, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  call void @_ZNKR6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE12roundingModeE25UNumberFormatRoundingMode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8 %3, ptr noundef nonnull align 8 dereferenceable(288) %1, i32 noundef %switch.ext) #22
  %i.d = load i32, ptr %2, align 4                ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.f = call { i64, i8 } @_ZN6icu_786number12IntegerWidth10zeroFillToEi(i32 noundef %i.d) #22 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.f, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.f, 1
  store i64 %.fca.0.extract, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZNKR6icu_786number23NumberFormatterSettingsINS0_26UnlocalizedNumberFormatterEE12integerWidthERKNS0_12IntegerWidthE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::UnlocalizedNumberFormatter") align 8 %4, ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull align 4 dereferenceable(9) %5) #22
  %i.g = call noundef nonnull align 8 dereferenceable(289) ptr @_ZN6icu_786number26UnlocalizedNumberFormatteraSEOS1_(ptr noundef nonnull align 8 dereferenceable(289) %3, ptr noundef nonnull align 8 dereferenceable(289) %4) #22 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 248
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #22
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 208
  call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #22
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 192
  call void @_ZN6icu_786number4impl10StringPropD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @_ZN6icu_786number5ScaleD1Ev(ptr noundef nonnull align 8 dereferenceable(20) %i.k) #22
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN6icu_786number4impl14SymbolsWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.n) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN6icu_786number9Precision9unlimitedEv(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::Precision") align 8 %6) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 4
  switch i32 %i.p, label %bb.g [
    i32 1, label %bb.c
    i32 0, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i32, ptr %i.s, align 4
  call void @_ZN6icu_786number9Precision23minMaxSignificantDigitsEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::Precision") align 8 %7, i32 noundef %i.r, i32 noundef %i.t) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i32, ptr %i.w, align 4
  call void @_ZN6icu_786number9Precision14minMaxFractionEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::FractionPrecision") align 8 %8, i32 noundef %i.v, i32 noundef %i.x) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %8, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %not..0 = phi i32 [ 0, %bb.e ], [ 1, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
  call void @_ZN6icu_786number9Precision14minMaxFractionEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::FractionPrecision") align 8 %10, i32 noundef %i.z, i32 noundef %i.ab) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load i32, ptr %i.ae, align 4
  call void @_ZNK6icu_786number17FractionPrecision21withSignificantDigitsEii23UNumberRoundingPriority(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::Precision") align 8 %9, ptr noundef nonnull align 8 dereferenceable(28) %10, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %not..0) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %9, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
end_hunk_0
