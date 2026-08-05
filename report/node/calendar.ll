inline.NumInlined: 424
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6icu_788Calendar8pinFieldE19UCalendarDateFieldsR10UErrorCode:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.h, ptr %i.o, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8               ; 2 uses
  %i.z = icmp eq i8 %i.y, 127
  br i1 %i.z, label %bb.h, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %.pre.i = load i8, ptr %i.x, align 8
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit: ; preds = %bb.g, %bb.h
  %i.aa = phi i8 [ %.pre.i, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %i.ab = add i8 %i.aa, 1
  store i8 %i.ab, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.n
  store i8 %i.aa, ptr %i.ad, align 1
  %i.ae = load i8, ptr %i.r, align 8
  %i.af = and i8 %i.ae, -12
  store i8 %i.af, ptr %i.r, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.ag = icmp slt i32 %i.p, %i.l
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = and i8 %i.ai, 8
  %.not.i21 = icmp eq i8 %i.aj, 0
  br i1 %.not.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17, !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %i.l, ptr %i.o, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 8             ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 127
  br i1 %i.ap, label %bb.m, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit23

bb.m:                                             ; preds = %bb.l
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %.pre.i22 = load i8, ptr %i.an, align 8
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit23

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit23: ; preds = %bb.l, %bb.m
  %i.aq = phi i8 [ %.pre.i22, %bb.m ], [ %i.ao, %bb.l ] ; 2 uses
  %i.ar = add i8 %i.aq, 1
  store i8 %i.ar, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.n
  store i8 %i.aq, ptr %i.at, align 1
  %i.au = load i8, ptr %i.ah, align 8
  %i.av = and i8 %i.au, -12
  store i8 %i.av, ptr %i.ah, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit23, %bb.i, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788Calendar13computeFieldsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = load i32, ptr %1, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(72) %i.k, double noundef %i.i, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  %i.o = load i32, ptr %1, align 4
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.c, align 4
  %i.r = load i32, ptr %i.d, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 0, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 111
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.w, i8 1, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 127
  store i8 0, ptr %i.y, align 1
  %i.z = add nsw i32 %i.r, %i.q
  %i.aa = sitofp i32 %i.z to double
  %i.ab = fadd double %i.i, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ac = call noundef double @_ZN6icu_789ClockMath11floorDivideEdiPi(double noundef %i.ab, i32 noundef 86400000, ptr noundef nonnull %i.e) #17
  %i.ad = fadd double %i.ac, f0x41429EC600000000  ; 3 uses
  %i.ae = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %i.af = fcmp olt double %i.ad, f0xC1E0000000000000
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.ag = fptosi double %i.ad to i32              ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 1, ptr %i.ai, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ag, ptr %i.a, align 4
  %i.aj = load i32, ptr %1, align 4
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.f, label %_ZN6icu_788Calendar22computeGregorianFieldsEiR10UErrorCode.exit

bb.f:                                             ; preds = %bb.e
  %i.al = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.ag, i32 noundef -2440588, ptr noundef nonnull %i.a) #17
  %.not5.i = icmp eq i8 %i.al, 0
  br i1 %.not5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %1, align 4
  br label %_ZN6icu_788Calendar22computeGregorianFieldsEiR10UErrorCode.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.am = load i32, ptr %i.a, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 170
  call void @_ZN6icu_785Grego11dayToFieldsEiRiRaS2_S2_RsR10UErrorCode(i32 noundef %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 2 dereferenceable(2) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  %i.ar = load i32, ptr %1, align 4
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load i8, ptr %i.b, align 1
  %i.au = sext i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 111
  store i8 1, ptr %i.aw, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZN6icu_788Calendar22computeGregorianFieldsEiR10UErrorCode.exit

_ZN6icu_788Calendar22computeGregorianFieldsEiR10UErrorCode.exit: ; preds = %bb.e, %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ax = load i32, ptr %i.ah, align 8
  %i.ay = load ptr, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 384
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  call void @_ZN6icu_788Calendar17computeWeekFieldsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.bb = load i32, ptr %1, align 4
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6icu_788Calendar22computeGregorianFieldsEiR10UErrorCode.exit
  %i.bd = load i32, ptr %i.e, align 4             ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = srem i32 %i.bd, 1000
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.bf, ptr %i.bg, align 8
  %2 = sdiv i32 %i.bd, 1000
  %3 = srem i32 %2, 60
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %3, ptr %4, align 4
  %5 = sdiv i32 %i.bd, 60000
  %6 = srem i32 %5, 60
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %6, ptr %7, align 8
  %i.bh = sdiv i32 %i.bd, 3600000                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.bh, ptr %i.bi, align 4
  %i.bj = sdiv i32 %i.bd, 43200000
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.bj, ptr %i.bk, align 4
  %.lhs.trunc = trunc nsw i32 %i.bh to i16
  %i.bl = srem i16 %.lhs.trunc, 12
  %.sext = sext i16 %i.bl to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sext, ptr %i.bm, align 8
  %i.bn = load i32, ptr %i.c, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.bn, ptr %i.bo, align 4
  %i.bp = load i32, ptr %i.d, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bp, ptr %i.bq, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN6icu_788Calendar22computeGregorianFieldsEiR10UErrorCode.exit, %bb.k, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6icu_788Calendar11getTimeZoneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

declare noundef double @_ZN6icu_789ClockMath11floorDivideEdiPi(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788Calendar22computeGregorianFieldsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  store i32 %1, ptr %i.a, align 4
  %i.c = load i32, ptr %2, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef -2440588, ptr noundef nonnull %i.a) #17
  %.not5 = icmp eq i8 %i.e, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.f = load i32, ptr %i.a, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 170
  call void @_ZN6icu_785Grego11dayToFieldsEiRiRaS2_S2_RsR10UErrorCode(i32 noundef %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 2 dereferenceable(2) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %2) #17
  %i.k = load i32, ptr %2, align 4
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.b, align 1
  %i.n = sext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 111
  store i8 1, ptr %i.p, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788Calendar17computeWeekFieldsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 3 uses
  %i.f = load i16, ptr %i.e, align 1
  %i.g = lshr i16 %i.f, 3
  %i.h = and i16 %i.g, 15
  %i.i = zext nneg i16 %i.h to i32                ; 3 uses
  %i.j = sub nsw i32 %i.d, %i.i                   ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  %spec.select.v = select i1 %i.k, i32 8, i32 1
  %spec.select = add nsw i32 %spec.select.v, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %spec.select, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 1, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = load i32, ptr %i.n, align 4              ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8              ; 6 uses
  %i.r = add nsw i32 %i.d, 7
  %i.s = sub i32 %i.r, %i.i
  %i.t = srem i32 %i.s, 7                         ; 2 uses
  %.neg77 = add i32 %i.d, 7001
  %i.u = add i32 %i.q, %i.i
  %i.v = sub i32 %.neg77, %i.u
  %i.w = srem i32 %i.v, 7                         ; 2 uses
  %i.x = add nsw i32 %i.q, -1
  %i.y = add nsw i32 %i.x, %i.w
  %i.z = sdiv i32 %i.y, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 155 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = sub nsw i32 7, %i.w
  %.not63 = icmp samesign uge i32 %i.ad, %i.ac
  %i.ae = zext i1 %.not63 to i32
  %.053 = add nsw i32 %i.z, %i.ae                 ; 4 uses
  %i.af = icmp eq i32 %.053, 0
  br i1 %i.af, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ag = add nsw i32 %i.o, -1                    ; 2 uses
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  %i.al = load i32, ptr %1, align 4
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.an = add nsw i32 %i.ak, %i.q                 ; 2 uses
  %i.ao = load i16, ptr %i.e, align 1
  %i.ap = lshr i16 %i.ao, 3
  %i.aq = and i16 %i.ap, 15
  %i.ar = zext nneg i16 %i.aq to i32
  %.neg81 = add i32 %i.d, 1
  %i.as = add i32 %i.an, %i.ar
  %i.at = sub i32 %.neg81, %i.as
  %i.au = srem i32 %i.at, 7                       ; 3 uses
  %i.av = icmp slt i32 %i.au, 0
  %i.aw = add nsw i32 %i.au, 7
  %spec.select.i.i = select i1 %i.av, i32 %i.aw, i32 %i.au ; 2 uses
  %i.ax = add i32 %i.an, -1
  %i.ay = add i32 %i.ax, %spec.select.i.i
  %i.az = sdiv i32 %i.ay, 7
  %i.ba = sub nsw i32 7, %spec.select.i.i
  %i.bb = load i8, ptr %i.aa, align 1
  %i.bc = zext i8 %i.bb to i32
  %.not.i.i = icmp sge i32 %i.ba, %i.bc
  %i.bd = zext i1 %.not.i.i to i32
  %.0.i.i = add nsw i32 %i.az, %i.bd
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.be = load ptr, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 336
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %1) #17 ; 3 uses
  %i.bi = load i32, ptr %1, align 4
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bk = add nsw i32 %i.bh, -5
  %.not65 = icmp slt i32 %i.q, %i.bk
  br i1 %.not65, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = sub i32 %i.t, %i.q
  %i.bm = add i32 %i.bl, %i.bh
  %i.bn = srem i32 %i.bm, 7                       ; 3 uses
  %i.bo = icmp slt i32 %i.bn, 0
  %i.bp = add nsw i32 %i.bn, 7
  %spec.select68 = select i1 %i.bo, i32 %i.bp, i32 %i.bn
  %i.bq = sub nuw nsw i32 6, %spec.select68
  %.not66 = icmp samesign ult i32 %i.bq, %i.ac
  br i1 %.not66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = add nsw i32 %i.q, 7
  %i.bs = sub i32 %i.br, %i.t
  %i.bt = icmp sgt i32 %i.bs, %i.bh               ; 2 uses
end_hunk_0
