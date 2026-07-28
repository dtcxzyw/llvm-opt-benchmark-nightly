inline.NumInlined: 962
inline.NumDeleted: 281
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal6BigInt13EqualToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6StringEEE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.q = load atomic i32, ptr %i.i monotonic, align 4
  %i.r = load atomic i32, ptr %i.m monotonic, align 4
  %i.s = xor i32 %i.r, %i.q
  %i.t = and i32 %i.s, 2147483646
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %.preheader.i, label %_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_.exit

.preheader.i:                                     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load atomic i32, ptr %i.i monotonic, align 4
  %i.w = and i32 %i.v, 2147483646
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = load atomic i32, ptr %i.i monotonic, align 4
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.aa, 1073741823
  %i.ac = zext nneg i32 %i.ab to i64
  %.not18.i = icmp samesign ult i64 %indvars.iv.next.i, %i.ac
  br i1 %.not18.i, label %bb.e, label %_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_.exit, !llvm.loop !15

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %.0.copyload.i.i.i.i8.i = load i64, ptr %i.ae, align 1
  %.not7.i = icmp eq i64 %.0.copyload.i.i.i.i.i, %.0.copyload.i.i.i.i8.i
  br i1 %.not7.i, label %bb.d, label %_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_.exit

_ZN2v88internal6BigInt13EqualToBigIntENS0_6TaggedIS1_EES3_.exit: ; preds = %bb.e, %bb.d, %.preheader.i, %bb.c, %bb.b, %_ZNK2v88internal17MaybeDirectHandleINS0_6BigIntEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.06.0 = phi i16 [ %spec.select, %_ZNK2v88internal17MaybeDirectHandleINS0_6BigIntEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ 1, %bb.c ], [ 1, %bb.b ], [ 257, %.preheader.i ], [ 257, %bb.d ], [ 1, %bb.e ]
  ret i16 %.sroa.06.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6BigInt13EqualToNumberENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 5 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.a, 4294967296
  %i.e = load i64, ptr %0, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = and i32 %i.i, 2147483646                 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.j, 0
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %i.j, 2
  br i1 %i.l, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = load atomic i32, ptr %i.h monotonic, align 4
  %i.n = trunc i32 %i.m to i1
  %i.o = icmp sgt i64 %i.a, -1
  %i.p = xor i1 %i.o, %i.n
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.0.copyload.i.i.i.i = load i64, ptr %i.q, align 4
  %i.r = ashr i64 %i.a, 32
  %i.s = tail call noundef i64 @llvm.abs.i64(i64 %i.r, i1 true)
  %i.t = icmp eq i64 %.0.copyload.i.i.i.i, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.a, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.0.copyload.i.i.i.i13 = load double, ptr %i.w, align 1
  %i.x = tail call noundef i32 @_ZN2v88internal6BigInt15CompareToDoubleENS0_12DirectHandleIS1_EEd(ptr %0, double noundef %.0.copyload.i.i.i.i13)
  %i.y = icmp eq i32 %i.x, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.g
  %.1 = phi i1 [ %i.y, %bb.g ], [ %i.k, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ %i.t, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 3) i32 @_ZN2v88internal6BigInt15CompareToDoubleENS0_12DirectHandleIS1_EEd(ptr nofree readonly captures(none) %0, double noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = fcmp uno double %1, 0.000000e+00
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq double %1, +inf
  br i1 %i.b, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp oeq double %1, -inf
  br i1 %i.c, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %0, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = trunc i32 %i.h to i1                     ; 10 uses
  %i.j = fcmp uge double %1, 0.000000e+00
  %.not = xor i1 %i.j, %i.i
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = select i1 %i.i, i32 -1, i32 1
  br label %bb.aa

bb.f:                                             ; preds = %bb.d
  %i.l = fcmp oeq double %1, 0.000000e+00
  %i.m = load atomic i32, ptr %i.g monotonic, align 4
  %i.n = and i32 %i.m, 2147483646                 ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.q = icmp eq i32 %i.n, 0
  br i1 %i.q, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = bitcast double %1 to i64                 ; 2 uses
  %i.s = lshr i64 %i.r, 52
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 2047                       ; 2 uses
  %i.v = and i64 %i.r, 4503599627370495
  %i.w = icmp samesign ult i32 %i.u, 1023
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = select i1 %i.i, i32 -1, i32 1
  br label %bb.aa

bb.k:                                             ; preds = %bb.i
  %i.y = load atomic i32, ptr %i.g monotonic, align 4
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = and i32 %i.z, 1073741823                ; 3 uses
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %.0.copyload.i.i.i.i = load i64, ptr %i.ae, align 1 ; 3 uses
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i.i, i1 false) ; 3 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 3 uses
  %i.ah = shl i32 %i.z, 6
  %i.ai = sub i32 %i.ah, %i.ag                    ; 2 uses
  %i.aj = add nsw i32 %i.u, -1022                 ; 2 uses
  %i.ak = icmp ult i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = select i1 %i.i, i32 1, i32 -1
  br label %bb.aa

bb.m:                                             ; preds = %bb.k
  %i.am = icmp ugt i32 %i.ai, %i.aj
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = select i1 %i.i, i32 -1, i32 1
  br label %bb.aa

bb.o:                                             ; preds = %bb.m
  %i.ao = or disjoint i64 %i.v, 4503599627370496  ; 3 uses
  %i.ap = add nsw i32 %i.ag, -12
  %i.aq = icmp ult i32 %i.ap, 52
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = add nsw i32 %i.ag, -11                  ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 %i.ao, %i.as
  %i.au = sub nuw nsw i64 75, %i.af
  %i.av = shl i64 %i.ao, %i.au
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aw = sub nsw i64 11, %i.af
  %i.ax = shl nuw i64 %i.ao, %i.aw
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.062 = phi i64 [ %i.av, %bb.p ], [ 0, %bb.q ]  ; 2 uses
  %.058 = phi i64 [ %i.at, %bb.p ], [ %i.ax, %bb.q ] ; 2 uses
  %.055 = phi i32 [ %i.ar, %bb.p ], [ 0, %bb.q ]
  %i.ay = icmp ugt i64 %.0.copyload.i.i.i.i, %.058
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.az = select i1 %i.i, i32 -1, i32 1
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.ba = icmp ult i64 %.0.copyload.i.i.i.i, %.058
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bb = select i1 %i.i, i32 1, i32 -1
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.bc = icmp samesign ult i32 %i.aa, 2
  br i1 %i.bc, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.bd = add nsw i32 %i.aa, -2
  br label %.lr.ph

bb.w:                                             ; preds = %bb.y
  %i.be = add nsw i32 %.054111, -1
  %i.bf = add i32 %.156110, -64
  %.257 = select i1 %.not73, i32 0, i32 %i.bf
  %.264 = select i1 %.not73, i64 %.163109, i64 0  ; 2 uses
  %i.bg = icmp slt i32 %.054111, 1
  br i1 %i.bg, label %._crit_edge, label %.lr.ph, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.054111 = phi i32 [ %i.be, %bb.w ], [ %i.bd, %.lr.ph.preheader ] ; 3 uses
  %.156110 = phi i32 [ %.257, %bb.w ], [ %.055, %.lr.ph.preheader ] ; 2 uses
  %.163109 = phi i64 [ %.264, %bb.w ], [ %.062, %.lr.ph.preheader ] ; 2 uses
  %.not73 = icmp eq i32 %.156110, 0               ; 3 uses
  %.159 = select i1 %.not73, i64 0, i64 %.163109  ; 2 uses
  %i.bh = zext nneg i32 %.054111 to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bh
  %.0.copyload.i.i.i.i80 = load i64, ptr %i.bi, align 1 ; 2 uses
  %i.bj = icmp ugt i64 %.0.copyload.i.i.i.i80, %.159
  br i1 %i.bj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.bk = select i1 %i.i, i32 -1, i32 1
  br label %bb.aa

bb.y:                                             ; preds = %.lr.ph
  %i.bl = icmp ult i64 %.0.copyload.i.i.i.i80, %.159
  br i1 %i.bl, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.bm = select i1 %i.i, i32 1, i32 -1
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.w, %bb.v
  %.163.lcssa = phi i64 [ %.062, %bb.v ], [ %.264, %bb.w ]
  %.not74 = icmp eq i64 %.163.lcssa, 0
  %i.bn = select i1 %i.i, i32 1, i32 -1
  %spec.select = select i1 %.not74, i32 0, i32 %i.bn
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z, %bb.x, %bb.e, %bb.g, %bb.h, %bb.l, %bb.n, %bb.u, %bb.s, %bb.j, %bb.c, %bb.b, %bb.a
  %.7 = phi i32 [ 1, %bb.c ], [ 2, %bb.a ], [ -1, %bb.b ], [ %i.k, %bb.e ], [ %i.p, %bb.g ], [ -1, %bb.h ], [ %i.x, %bb.j ], [ %i.al, %bb.l ], [ %i.an, %bb.n ], [ %i.az, %bb.s ], [ %i.bb, %bb.u ], [ %i.bk, %bb.x ], [ %spec.select, %._crit_edge ], [ %i.bm, %bb.z ]
  ret i32 %.7
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 3) i32 @_ZN2v88internal6BigInt15CompareToNumberENS0_12DirectHandleIS1_EENS2_INS0_6ObjectEEE(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 5 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = trunc i32 %i.h to i1                     ; 5 uses
  %i.j = icmp sgt i64 %i.a, -1
  %.not20 = xor i1 %i.j, %i.i
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = select i1 %i.i, i32 -1, i32 1
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.l = load atomic i32, ptr %i.g monotonic, align 4
  %i.m = and i32 %i.l, 2147483646
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %i.a, 4294967295
  %i.p = sext i1 %i.o to i32
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.q = load atomic i32, ptr %i.g monotonic, align 4
  %i.r = and i32 %i.q, 2147483644
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = select i1 %i.i, i32 -1, i32 1
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.t = ashr i64 %i.a, 32
  %i.u = tail call noundef i64 @llvm.abs.i64(i64 %i.t, i1 true) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.0.copyload.i.i.i.i = load i64, ptr %i.v, align 4 ; 2 uses
  %i.w = icmp ugt i64 %.0.copyload.i.i.i.i, %i.u
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = select i1 %i.i, i32 -1, i32 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = icmp samesign ult i64 %.0.copyload.i.i.i.i, %i.u
  %i.z = select i1 %i.i, i32 1, i32 -1
  %spec.select = select i1 %i.y, i32 %i.z, i32 0
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.aa = add nsw i64 %i.a, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i.i.i.i25 = load double, ptr %i.ac, align 1
  %i.ad = tail call noundef i32 @_ZN2v88internal6BigInt15CompareToDoubleENS0_12DirectHandleIS1_EEd(ptr %0, double noundef %.0.copyload.i.i.i.i25)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k
  %.2 = phi i32 [ %i.ad, %bb.k ], [ %i.k, %bb.c ], [ %i.p, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.i ], [ %spec.select, %bb.j ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6BigInt8ToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EEiNS0_11ShouldThrowE(ptr noundef %0, ptr nofree readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  %i.g = and i32 %i.f, 2147483646
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3656
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.j = load atomic i32, ptr %i.e monotonic, align 4 ; 2 uses
  %i.k = trunc i32 %i.j to i1                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.l = load atomic i32, ptr %i.e monotonic, align 4
  %i.m = and i32 %i.l, 2147483646
  %i.n = icmp eq i32 %i.m, 2
  %i.o = icmp eq i32 %2, 10
  %i.p = and i1 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.i = load i64, ptr %i.q, align 4 ; 3 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i.i, i1 false)
  %i.s = trunc nuw nsw i64 %i.r to i16
  %i.t = shl nuw nsw i16 %i.s, 7
  %.lhs.trunc = sub nuw nsw i16 8192, %i.t
  %i.u = udiv i16 %.lhs.trunc, 425
  %narrow = add nuw nsw i16 %i.u, 1
  %i.v = zext nneg i16 %narrow to i32
  %i.w = and i32 %i.j, 1
  %i.x = add nuw nsw i32 %i.w, %i.v               ; 5 uses
  %i.y = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.x, i8 noundef zeroext 0, i8 0) #18 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #19
  unreachable

_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE5CheckEv.exit: ; preds = %bb.d
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = add i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal6BigInt21NoSideEffectsToStringEPNS0_7IsolateENS0_12DirectHandleIS1_EE:bb.a
}

declare noundef ptr @_ZN2v86bigint9Processor3NewEPNS0_8PlatformE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6BigInt10FromNumberEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.v8::internal::DirectHandle"], align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = tail call ptr @_ZN2v88internal13MutableBigInt10NewFromIntEPNS0_7IsolateEi(ptr noundef %0, i32 noundef %i.e)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.a, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.i, align 1 ; 7 uses
  %i.j = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i)
  %i.k = fcmp ueq double %i.j, +inf
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond.i = fcmp ueq double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i, label %_ZN2v88internal15DoubleToIntegerEd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = fcmp ogt double %.0.copyload.i.i.i.i, 0.000000e+00
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call double @llvm.floor.f64(double %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

bb.g:                                             ; preds = %bb.e
  %i.n = tail call double @llvm.ceil.f64(double %.0.copyload.i.i.i.i)
  %i.o = fadd double %i.n, 0.000000e+00
  br label %_ZN2v88internal15DoubleToIntegerEd.exit

_ZN2v88internal15DoubleToIntegerEd.exit:          ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi double [ 0.000000e+00, %bb.d ], [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.p = fcmp une double %.0.i, %.0.copyload.i.i.i.i
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN2v88internal15DoubleToIntegerEd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %1, ptr %2, align 8
  %i.q = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 26, ptr nonnull %2, i64 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.r = load i64, ptr %i.q, align 8
  %i.s = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.r, ptr noundef null) #18 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal15DoubleToIntegerEd.exit
  %i.t = tail call ptr @_ZN2v88internal13MutableBigInt13NewFromDoubleEPNS0_7IsolateEd(ptr noundef %0, double noundef %.0.copyload.i.i.i.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b
  %.sroa.023.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.h ], [ %i.t, %bb.i ]
  ret ptr %.sroa.023.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6BigInt8ToNumberEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = and i32 %i.e, 2147483646
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15: ; preds = %bb.b, %bb.c
  %.0.i14 = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i14 to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 0, ptr %.0.i14, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.q = load atomic i32, ptr %i.d monotonic, align 4
  %i.r = and i32 %i.q, 2147483646
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.0.copyload.i.i.i.i = load i64, ptr %i.t, align 4 ; 3 uses
  %i.u = icmp ult i64 %.0.copyload.i.i.i.i, 2147483647
  br i1 %i.u, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.v = load atomic i32, ptr %i.d monotonic, align 4
  %i.w = trunc i32 %i.v to i1
  %.neg = mul nsw i64 %.0.copyload.i.i.i.i, -4294967296
  %i.x = shl nuw nsw i64 %.0.copyload.i.i.i.i, 32
  %i.y = select i1 %i.w, i64 %.neg, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.ae, %bb.g ], [ %i.aa, %bb.f ] ; 3 uses
  %i.af = ptrtoint ptr %.0.i to i64
  %i.ag = add i64 %i.af, 8
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.z, align 8
  store i64 %i.y, ptr %.0.i, align 8
  br label %bb.h

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.ai = tail call noundef double @_ZN2v88internal13MutableBigInt8ToDoubleENS0_12DirectHandleINS0_10BigIntBaseEEE(ptr nonnull %1)
  %i.aj = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store double %i.ai, ptr %i.an, align 1
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15
  %.sroa.028.0 = phi ptr [ %.0.i14, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit15 ], [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.aj, %.critedge ]
  ret ptr %.sroa.028.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZN2v88internal13MutableBigInt8ToDoubleENS0_12DirectHandleINS0_10BigIntBaseEEE(ptr nofree readonly captures(none) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = and i32 %i.e, 2147483646
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i32, ptr %i.d monotonic, align 4
  %i.i = lshr i32 %i.h, 1                         ; 2 uses
  %i.j = and i32 %i.i, 1073741823                 ; 3 uses
  %i.k = add nsw i32 %i.j, -1                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.0.copyload.i.i.i.i = load i64, ptr %i.n, align 1 ; 5 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i.i, i1 false) ; 4 uses
  %i.p = trunc nuw nsw i64 %i.o to i32            ; 2 uses
  %i.q = shl i32 %i.i, 6
  %i.r = sub i32 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, 1024
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic i32, ptr %i.d monotonic, align 4
  %i.u = trunc i32 %i.t to i1
  %i.v = select i1 %i.u, double -inf, double +inf
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.w = add nsw i32 %i.r, -1                     ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 6 uses
  %i.y = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.z = icmp eq i32 %i.y, 64
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = shl i64 %.0.copyload.i.i.i.i, %i.aa
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = select i1 %i.z, i64 0, i64 %i.ac        ; 5 uses
  %i.ae = add nsw i64 %i.o, -11
  %i.af = icmp ult i64 %.0.copyload.i.i.i.i, 4503599627370496 ; 2 uses
  %i.ag = icmp ne i32 %i.k, 0
  %or.cond3 = and i1 %i.af, %i.ag
  br i1 %or.cond3, label %.thread105, label %bb.e

.thread105:                                       ; preds = %bb.d
  %i.ah = add nsw i32 %i.j, -2                    ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %.0.copyload.i.i.i.i71 = load i64, ptr %i.aj, align 1 ; 2 uses
  %i.ak = sub nuw nsw i64 75, %i.o
  %i.al = lshr i64 %.0.copyload.i.i.i.i71, %i.ak
  %i.am = or i64 %i.al, %i.ad
  %i.an = add nuw nsw i64 %i.o, -75
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.af, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp ugt i64 %.0.copyload.i.i.i.i, 9007199254740991
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread105, %bb.f
  %.156100114 = phi i32 [ %i.ah, %.thread105 ], [ %i.k, %bb.f ]
  %.154101113 = phi i64 [ %.0.copyload.i.i.i.i71, %.thread105 ], [ %.0.copyload.i.i.i.i, %bb.f ]
  %.151102112 = phi i64 [ %i.am, %.thread105 ], [ %i.ad, %bb.f ]
  %.149104110 = phi i64 [ %i.an, %.thread105 ], [ %i.ae, %bb.f ]
  %i.ap = xor i64 %.149104110, -1
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.aq = icmp eq i32 %i.k, 0
  br i1 %i.aq, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = add nsw i32 %i.j, -2                    ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.as
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.at, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.151102111 = phi i64 [ %.151102112, %bb.g ], [ %i.ad, %bb.i ] ; 5 uses
  %.017.i = phi i32 [ %.156100114, %bb.g ], [ %i.ar, %bb.i ] ; 2 uses
  %.016.i = phi i64 [ %.154101113, %bb.g ], [ %.0.copyload.i.i.i.i.i, %bb.i ] ; 2 uses
  %.0.i = phi i64 [ %i.ap, %bb.g ], [ 63, %bb.i ]
  %i.au = shl nuw i64 1, %.0.i                    ; 2 uses
  %i.av = and i64 %i.au, %.016.i
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = add i64 %i.au, -1
  %i.ay = and i64 %i.ax, %.016.i
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118

.preheader.preheader.i:                           ; preds = %bb.k
  %i.az = icmp sgt i32 %.017.i, 0
  br i1 %i.az, label %.lr.ph, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.ba = zext nneg i32 %.017.i to i64
  br label %bb.l

.preheader.i:                                     ; preds = %bb.l
  %i.bb = trunc nuw i64 %i.bd to i32
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit, !llvm.loop !18

bb.l:                                             ; preds = %.lr.ph, %.preheader.i
  %indvars.iv.i123 = phi i64 [ %i.ba, %.lr.ph ], [ %i.bd, %.preheader.i ]
  %i.bd = add nsw i64 %indvars.iv.i123, -1        ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bd
  %.0.copyload.i.i.i.i24.i = load i64, ptr %i.be, align 1
  %.not22.i = icmp eq i64 %.0.copyload.i.i.i.i24.i, 0
  br i1 %.not22.i, label %.preheader.i, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118, !llvm.loop !18

_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit: ; preds = %.preheader.i, %.preheader.preheader.i
  %i.bf = and i64 %.151102111, 1
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118

_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118: ; preds = %bb.l, %bb.k, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit
  %i.bg = add nuw nsw i64 %.151102111, 1
  %.not62 = icmp ult i64 %.151102111, 4503599627370495
  br i1 %.not62, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118
  %i.bh = add nuw nsw i64 %i.x, 1
  %i.bi = icmp ugt i32 %i.w, 1022
  br i1 %i.bi, label %bb.n, label %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bj = load atomic i32, ptr %i.d monotonic, align 4
  %i.bk = trunc i32 %i.bj to i1
  %i.bl = select i1 %i.bk, double -inf, double +inf
  br label %bb.o

_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread: ; preds = %bb.j, %bb.h, %bb.e, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118, %bb.m, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit
  %.252 = phi i64 [ 0, %bb.m ], [ %i.bg, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118 ], [ %.151102111, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit ], [ %.151102111, %bb.j ], [ %i.ad, %bb.h ], [ %i.ad, %bb.e ]
  %.047 = phi i64 [ %i.bh, %bb.m ], [ %i.x, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread118 ], [ %i.x, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit ], [ %i.x, %bb.j ], [ %i.x, %bb.h ], [ %i.x, %bb.e ]
  %i.bm = load atomic i32, ptr %i.d monotonic, align 4
  %i.bn = trunc i32 %i.bm to i1
  %i.bo = select i1 %i.bn, i64 -9223372036854775808, i64 0
  %i.bp = shl i64 %.047, 52
  %i.bq = add i64 %i.bp, 4607182418800017408
  %i.br = or i64 %i.bq, %.252
  %i.bs = or i64 %i.br, %i.bo
  %i.bt = bitcast i64 %i.bs to double
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread, %bb.n, %bb.a
  %.2 = phi double [ 0.000000e+00, %bb.a ], [ %i.v, %bb.c ], [ %i.bl, %bb.n ], [ %i.bt, %_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim.exit.thread ]
  ret double %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN2v88internal13MutableBigInt14DecideRoundingENS0_12DirectHandleINS0_10BigIntBaseEEEiim(ptr nofree readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %1, -1
  %i.d = zext nneg i32 %i.c to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %2, -1                       ; 2 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = zext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %.0.copyload.i.i.i.i = load i64, ptr %i.l, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.017 = phi i32 [ %2, %bb.c ], [ %i.f, %bb.e ]  ; 2 uses
  %.016 = phi i64 [ %3, %bb.c ], [ %.0.copyload.i.i.i.i, %bb.e ] ; 2 uses
  %.0 = phi i64 [ %i.d, %bb.c ], [ 63, %bb.e ]
  %i.m = shl nuw i64 1, %.0                       ; 2 uses
  %i.n = and i64 %i.m, %.016
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add i64 %i.m, -1
  %i.q = and i64 %i.p, %.016
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.g
  %i.r = icmp sgt i32 %.017, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.s = zext nneg i32 %.017 to i64
  %i.t = load i64, ptr %0, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.h

.preheader:                                       ; preds = %bb.h
  %i.x = trunc nuw i64 %i.z to i32
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %.loopexit, !llvm.loop !18

bb.h:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv34 = phi i64 [ %i.s, %.lr.ph ], [ %i.z, %.preheader ]
  %i.z = add nsw i64 %indvars.iv34, -1            ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z
  %.0.copyload.i.i.i.i24 = load i64, ptr %i.aa, align 1
  %.not22 = icmp eq i64 %.0.copyload.i.i.i.i24, 0
  br i1 %.not22, label %.preheader, label %..loopexit.loopexit_crit_edge, !llvm.loop !18

..loopexit.loopexit_crit_edge:                    ; preds = %bb.h
  br label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %..loopexit.loopexit_crit_edge, %bb.d, %bb.g, %bb.f, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 2, %bb.g ], [ 0, %bb.f ], [ 2, %..loopexit.loopexit_crit_edge ], [ 1, %.preheader.preheader ], [ 1, %.preheader ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6BigInt16BigIntShortPrintERSo(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i32, ptr %i.a monotonic, align 4
  %i.f = lshr i32 %i.e, 1
  %i.g = and i32 %i.f, 1073741823
  switch i32 %i.g, label %bb.e [
    i32 0, label %bb.d
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) #18 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i = load i64, ptr %i.j, align 4
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.0.copyload.i.i.i.i) #18 ; 0 uses
end_hunk_1
