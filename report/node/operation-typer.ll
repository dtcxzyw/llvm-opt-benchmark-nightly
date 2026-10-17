Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/operation-typer?download=true
inline.NumInlined: 823
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2v88internal8compiler14OperationTyper13NumberModulusENS1_4TypeES3_:bb.a
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %.sroa.029.0.copyload = load i64, ptr %i.v, align 8
  %i.w = load ptr, ptr %0, align 8
  %i.x = call i64 @_ZN2v88internal8compiler4Type5UnionES2_S2_PNS0_4ZoneE(i64 %.sroa.030.0.copyload, i64 %.sroa.029.0.copyload, ptr noundef %i.w) #9
  store i64 %i.x, ptr %4, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.027.0.copyload = load i64, ptr %3, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = call i64 @_ZN2v88internal8compiler4Type9IntersectES2_S2_PNS0_4ZoneE(i64 %.sroa.027.0.copyload, i64 1119, ptr noundef %i.y) #9
  store i64 %i.z, ptr %3, align 8
  %.sroa.024.0.copyload = load i64, ptr %4, align 8
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = call i64 @_ZN2v88internal8compiler4Type9IntersectES2_S2_PNS0_4ZoneE(i64 %.sroa.024.0.copyload, i64 1119, ptr noundef %i.aa) #9 ; 2 uses
  store i64 %i.ab, ptr %4, align 8
  %i.ac = load i64, ptr %3, align 8
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  %.sroa.022.0.copyload = load i64, ptr %i.ag, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ab, %.sroa.022.0.copyload
  br i1 %i.ah, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit

_ZNK2v88internal8compiler4Type2IsES2_.exit.thread: ; preds = %bb.k
  br i1 %i.m, label %bb.o, label %bb.p

_ZNK2v88internal8compiler4Type2IsES2_.exit:       ; preds = %bb.k
  %i.ai = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %.sroa.022.0.copyload) #9
  br i1 %i.ai, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit
  %i.aj = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9 ; 3 uses
  %i.ak = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9 ; 2 uses
  %i.al = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.am = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.an = fcmp olt double %i.aj, 0.000000e+00
  %spec.select = or i1 %i.m, %i.an                ; 3 uses
  %i.ao = load ptr, ptr %i.ae, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 352
  %.sroa.014.0.copyload = load i64, ptr %i.ap, align 8 ; 3 uses
  %i.aq = load i64, ptr %3, align 8
  %i.ar = icmp eq i64 %i.aq, %.sroa.014.0.copyload
  br i1 %i.ar, label %_ZNK2v88internal8compiler4Type2IsES2_.exit46.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit46

_ZNK2v88internal8compiler4Type2IsES2_.exit46:     ; preds = %bb.l
  %i.as = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %.sroa.014.0.copyload) #9
  br i1 %i.as, label %_ZNK2v88internal8compiler4Type2IsES2_.exit46._ZNK2v88internal8compiler4Type2IsES2_.exit46.thread_crit_edge, label %bb.n

_ZNK2v88internal8compiler4Type2IsES2_.exit46._ZNK2v88internal8compiler4Type2IsES2_.exit46.thread_crit_edge: ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit46
  %.pre = load ptr, ptr %i.ae, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 352
  %.sroa.013.0.copyload.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNK2v88internal8compiler4Type2IsES2_.exit46.thread

_ZNK2v88internal8compiler4Type2IsES2_.exit46.thread: ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit46._ZNK2v88internal8compiler4Type2IsES2_.exit46.thread_crit_edge, %bb.l
  %.sroa.013.0.copyload = phi i64 [ %.sroa.013.0.copyload.pre, %_ZNK2v88internal8compiler4Type2IsES2_.exit46._ZNK2v88internal8compiler4Type2IsES2_.exit46.thread_crit_edge ], [ %.sroa.014.0.copyload, %bb.l ] ; 2 uses
  %i.at = load i64, ptr %4, align 8
  %i.au = icmp eq i64 %i.at, %.sroa.013.0.copyload
  br i1 %i.au, label %_ZNK2v88internal8compiler4Type2IsES2_.exit47.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit47

_ZNK2v88internal8compiler4Type2IsES2_.exit47:     ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit46.thread
  %i.av = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %.sroa.013.0.copyload) #9
  br i1 %i.av, label %_ZNK2v88internal8compiler4Type2IsES2_.exit47.thread, label %bb.n

_ZNK2v88internal8compiler4Type2IsES2_.exit47.thread: ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit46.thread, %_ZNK2v88internal8compiler4Type2IsES2_.exit47
  %i.aw = call noundef double @llvm.fabs.f64(double %i.aj) ; 2 uses
  %i.ax = call noundef double @llvm.fabs.f64(double %i.ak) ; 2 uses
  %i.ay = fcmp olt double %i.aw, %i.ax
  %.sroa.speculated55 = select i1 %i.ay, double %i.ax, double %i.aw ; 2 uses
  %i.az = call noundef double @llvm.fabs.f64(double %i.al) ; 2 uses
  %i.ba = call noundef double @llvm.fabs.f64(double %i.am) ; 2 uses
  %i.bb = fcmp olt double %i.az, %i.ba
  %.sroa.speculated = select i1 %i.bb, double %i.ba, double %i.az
  %i.bc = fadd double %.sroa.speculated, -1.000000e+00 ; 2 uses
  %i.bd = fcmp olt double %i.bc, %.sroa.speculated55
  %.sroa.speculated51 = select i1 %i.bd, double %i.bc, double %.sroa.speculated55 ; 3 uses
  %i.be = fcmp ult double %i.aj, 0.000000e+00
  br i1 %i.be, label %bb.m, label %.split

bb.m:                                             ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit47.thread
  %i.bf = fcmp ugt double %i.ak, 0.000000e+00
  %i.bg = fsub double 0.000000e+00, %.sroa.speculated51
  %. = select i1 %i.bf, double %.sroa.speculated51, double 0.000000e+00
  br label %.split

.split:                                           ; preds = %bb.m, %_ZNK2v88internal8compiler4Type2IsES2_.exit47.thread
  %.045 = phi double [ 0.000000e+00, %_ZNK2v88internal8compiler4Type2IsES2_.exit47.thread ], [ %i.bg, %bb.m ]
  %.044 = phi double [ %.sroa.speculated51, %_ZNK2v88internal8compiler4Type2IsES2_.exit47.thread ], [ %., %bb.m ]
  %i.bh = load ptr, ptr %0, align 8
  %i.bi = call i64 @_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE(double noundef %.045, double noundef %.044, ptr noundef %i.bh) #9 ; 2 uses
  br i1 %spec.select, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit46, %_ZNK2v88internal8compiler4Type2IsES2_.exit47, %_ZNK2v88internal8compiler4Type2IsES2_.exit, %bb.j
  %.2 = phi i1 [ %i.m, %bb.j ], [ %i.m, %_ZNK2v88internal8compiler4Type2IsES2_.exit ], [ %spec.select, %_ZNK2v88internal8compiler4Type2IsES2_.exit46 ], [ %spec.select, %_ZNK2v88internal8compiler4Type2IsES2_.exit47 ]
  %.sroa.041.1 = phi i64 [ 1, %bb.j ], [ 1, %_ZNK2v88internal8compiler4Type2IsES2_.exit ], [ 1119, %_ZNK2v88internal8compiler4Type2IsES2_.exit46 ], [ 1119, %_ZNK2v88internal8compiler4Type2IsES2_.exit47 ] ; 2 uses
  br i1 %.2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.split, %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, %bb.n
  %.sroa.041.160 = phi i64 [ 1, %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread ], [ %.sroa.041.1, %bb.n ], [ %i.bi, %.split ]
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = call i64 @_ZN2v88internal8compiler4Type5UnionES2_S2_PNS0_4ZoneE(i64 %.sroa.041.160, i64 2049, ptr noundef %i.bj) #9
  br label %bb.p

bb.p:                                             ; preds = %.split, %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, %bb.o, %bb.n
  %.sroa.041.2 = phi i64 [ %i.bk, %bb.o ], [ %.sroa.041.1, %bb.n ], [ 1, %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread ], [ %i.bi, %.split ] ; 2 uses
  br i1 %i.l, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %0, align 8
  %i.bm = call i64 @_ZN2v88internal8compiler4Type5UnionES2_S2_PNS0_4ZoneE(i64 %.sroa.041.2, i64 4097, ptr noundef %i.bl) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.p, %bb.q
  %.sroa.041.4 = phi i64 [ %.sroa.041.2, %bb.p ], [ %i.bm, %bb.q ], [ 1, %bb.a ]
  ret i64 %.sroa.041.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler14OperationTyper15NumberBitwiseOrENS1_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %i.a = tail call i64 @_ZN2v88internal8compiler14OperationTyper13NumberToInt32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1) ; 2 uses
  store i64 %i.a, ptr %3, align 8
  %i.b = tail call i64 @_ZN2v88internal8compiler14OperationTyper13NumberToInt32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %2) ; 2 uses
  store i64 %i.b, ptr %4, align 8
  %i.c = icmp eq i64 %i.a, 1
  %i.d = icmp eq i64 %i.b, 1
  %or.cond34 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond34, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9 ; 7 uses
  %i.f = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9 ; 7 uses
  %i.g = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9 ; 3 uses
  %i.h = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9 ; 3 uses
  %i.i = fcmp oge double %i.e, 0.000000e+00
  %i.j = fcmp oge double %i.f, 0.000000e+00
  %or.cond = and i1 %i.i, %i.j
  %i.k = fcmp olt double %i.e, %i.f
  %i.l = fcmp olt double %i.f, %i.e
  %..i.val = select i1 %i.k, double %i.f, double %i.e
  %..i19.val = select i1 %i.l, double %i.f, double %i.e
  %i.m = select i1 %or.cond, double %..i.val, double %..i19.val
  %i.n = fcmp oeq double %i.f, 0.000000e+00
  %i.o = fcmp oeq double %i.h, 0.000000e+00
  %or.cond3 = and i1 %i.n, %i.o                   ; 2 uses
  %.032 = select i1 %or.cond3, double %i.g, double f0x41DFFFFFFFC00000
  %.0 = select i1 %or.cond3, double %i.e, double %i.m
  %i.p = fcmp oeq double %i.e, 0.000000e+00
  %i.q = fcmp oeq double %i.g, 0.000000e+00
  %or.cond5 = and i1 %i.p, %i.q                   ; 2 uses
  %.133 = select i1 %or.cond5, double %i.h, double %.032 ; 2 uses
  %.1 = select i1 %or.cond5, double %i.f, double %.0
  %i.r = fcmp olt double %i.g, 0.000000e+00
  %i.s = fcmp olt double %i.h, 0.000000e+00
  %or.cond7 = or i1 %i.r, %i.s
  %i.t = fcmp ogt double %.133, -1.000000e+00
  %i.u = and i1 %or.cond7, %i.t
  %.2 = select i1 %i.u, double -1.000000e+00, double %.133
  %i.v = load ptr, ptr %0, align 8
  %i.w = call i64 @_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE(double noundef %.1, double noundef %.2, ptr noundef %i.v) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.018.0 = phi i64 [ %i.w, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.018.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler14OperationTyper16NumberBitwiseAndENS1_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %i.a = tail call i64 @_ZN2v88internal8compiler14OperationTyper13NumberToInt32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1) ; 2 uses
  store i64 %i.a, ptr %3, align 8
  %i.b = tail call i64 @_ZN2v88internal8compiler14OperationTyper13NumberToInt32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %2) ; 2 uses
  store i64 %i.b, ptr %4, align 8
  %i.c = icmp eq i64 %i.a, 1
  %i.d = icmp eq i64 %i.b, 1
  %or.cond26 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond26, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.f = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.g = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9 ; 6 uses
  %i.h = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9 ; 6 uses
  %i.i = fcmp oge double %i.e, 0.000000e+00       ; 3 uses
  %i.j = fcmp oge double %i.f, 0.000000e+00       ; 3 uses
  %or.cond = and i1 %i.i, %i.j
  %i.k = fcmp olt double %i.h, %i.g
  %i.l = fcmp olt double %i.g, %i.h
  %..i.val = select i1 %i.k, double %i.h, double %i.g
  %..i11.val = select i1 %i.l, double %i.h, double %i.g ; 2 uses
  %i.m = select i1 %or.cond, double %..i.val, double %..i11.val ; 2 uses
  %i.n = fcmp olt double %i.g, %i.m
  %.sroa.speculated18 = select i1 %i.n, double %i.g, double %i.m
  %.024 = select i1 %i.i, double %.sroa.speculated18, double %..i11.val ; 2 uses
  %i.o = fcmp olt double %i.h, %.024
  %i.p = and i1 %i.j, %i.o
  %.125 = select i1 %i.p, double %i.h, double %.024
  %i.q = or i1 %i.i, %i.j
  %.1 = select i1 %i.q, double 0.000000e+00, double f0xC1E0000000000000
  %i.r = load ptr, ptr %0, align 8
  %i.s = call i64 @_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE(double noundef %.1, double noundef %.125, ptr noundef %i.r) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.010.0 = phi i64 [ %i.s, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.010.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 1100) i64 @_ZN2v88internal8compiler14OperationTyper16NumberBitwiseXorENS1_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %i.a = tail call i64 @_ZN2v88internal8compiler14OperationTyper13NumberToInt32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1) ; 2 uses
  store i64 %i.a, ptr %3, align 8
  %i.b = tail call i64 @_ZN2v88internal8compiler14OperationTyper13NumberToInt32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %2) ; 2 uses
  store i64 %i.b, ptr %4, align 8
  %i.c = icmp eq i64 %i.a, 1
  %i.d = icmp eq i64 %i.b, 1
  %or.cond21 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond21, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.f = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.g = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.h = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.i = fcmp oge double %i.e, 0.000000e+00       ; 2 uses
  %i.j = fcmp oge double %i.f, 0.000000e+00       ; 2 uses
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fcmp olt double %i.g, 0.000000e+00       ; 2 uses
  %i.l = fcmp olt double %i.h, 0.000000e+00       ; 2 uses
  %or.cond3 = and i1 %i.k, %i.l
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond5 = and i1 %i.j, %i.k
  %or.cond7 = and i1 %i.i, %i.l
  %or.cond20 = or i1 %or.cond5, %or.cond7
  %spec.select = select i1 %or.cond20, i64 73, i64 1099
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  %.sroa.019.1 = phi i64 [ 1027, %bb.c ], [ 1, %bb.a ], [ 1027, %bb.b ], [ %spec.select, %bb.d ]
  ret i64 %.sroa.019.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler14OperationTyper15NumberShiftLeftENS1_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %i.a = tail call i64 @_ZN2v88internal8compiler14OperationTyper13NumberToInt32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1) ; 2 uses
  store i64 %i.a, ptr %3, align 8
  %i.b = tail call i64 @_ZN2v88internal8compiler14OperationTyper14NumberToUint32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %2) ; 2 uses
  store i64 %i.b, ptr %4, align 8
  %i.c = icmp eq i64 %i.a, 1
  %i.d = icmp eq i64 %i.b, 1
  %or.cond38 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond38, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.f = fptosi double %i.e to i32                ; 3 uses
  %i.g = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.h = fptosi double %i.g to i32                ; 3 uses
  %i.i = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.j = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.k = fptoui double %i.j to i32                ; 2 uses
  %spec.select26 = call i32 @llvm.umin.i32(i32 %i.k, i32 31) ; 4 uses
  %i.l = lshr i32 2147483647, %spec.select26
  %i.m = icmp slt i32 %i.l, %i.h
  %i.n = ashr exact i32 -2147483648, %spec.select26
  %i.o = icmp sgt i32 %i.n, %i.f
  %or.cond28 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ugt i32 %i.k, 31
  %i.q = fptoui double %i.i to i32
  %spec.select = select i1 %i.p, i32 0, i32 %i.q  ; 2 uses
  %i.r = shl i32 %i.f, %spec.select
  %i.s = shl i32 %i.f, %spec.select26
  %.sroa.speculated33 = call i32 @llvm.smin.i32(i32 %i.s, i32 %i.r) ; 2 uses
  %i.t = shl i32 %i.h, %spec.select
  %i.u = shl i32 %i.h, %spec.select26
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.t, i32 %i.u) ; 2 uses
  %i.v = icmp eq i32 %.sroa.speculated, 2147483647
  %i.w = icmp eq i32 %.sroa.speculated33, -2147483648
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = sitofp i32 %.sroa.speculated33 to double
  %i.y = sitofp i32 %.sroa.speculated to double
  %i.z = load ptr, ptr %0, align 8
  %i.aa = call i64 @_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE(double noundef %i.x, double noundef %i.y, ptr noundef %i.z) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sroa.021.2 = phi i64 [ %i.aa, %bb.d ], [ 1, %bb.a ], [ 1099, %bb.b ], [ 1099, %bb.c ]
  ret i64 %.sroa.021.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler14OperationTyper16NumberShiftRightENS1_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %i.a = tail call i64 @_ZN2v88internal8compiler14OperationTyper13NumberToInt32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1) ; 2 uses
  store i64 %i.a, ptr %3, align 8
  %i.b = tail call i64 @_ZN2v88internal8compiler14OperationTyper14NumberToUint32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %2) ; 2 uses
  store i64 %i.b, ptr %4, align 8
  %i.c = icmp eq i64 %i.a, 1
  %i.d = icmp eq i64 %i.b, 1
  %or.cond30 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond30, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.f = fptosi double %i.e to i32                ; 2 uses
  %i.g = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.h = fptosi double %i.g to i32                ; 2 uses
  %i.i = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.j = fptoui double %i.i to i32
  %i.k = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.l = fptoui double %i.k to i32                ; 2 uses
  %i.m = icmp ugt i32 %i.l, 31
  %spec.select = select i1 %i.m, i32 0, i32 %i.j  ; 2 uses
  %spec.select20 = call i32 @llvm.umin.i32(i32 %i.l, i32 31) ; 2 uses
  %i.n = ashr i32 %i.f, %spec.select
  %i.o = ashr i32 %i.f, %spec.select20
  %.sroa.speculated25 = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.n) ; 2 uses
  %i.p = ashr i32 %i.h, %spec.select
  %i.q = ashr i32 %i.h, %spec.select20
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.p, i32 %i.q) ; 2 uses
  %i.r = icmp eq i32 %.sroa.speculated, 2147483647
  %i.s = icmp eq i32 %.sroa.speculated25, -2147483648
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sitofp i32 %.sroa.speculated25 to double
  %i.u = sitofp i32 %.sroa.speculated to double
  %i.v = load ptr, ptr %0, align 8
  %i.w = call i64 @_ZN2v88internal8compiler4Type5RangeEddPNS0_4ZoneE(double noundef %i.t, double noundef %i.u, ptr noundef %i.v) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.017.1 = phi i64 [ %i.w, %bb.c ], [ 1, %bb.a ], [ 1099, %bb.b ]
  ret i64 %.sroa.017.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal8compiler14OperationTyper23NumberShiftRightLogicalENS1_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 3 uses
  %i.a = tail call i64 @_ZN2v88internal8compiler14OperationTyper14NumberToUint32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1) ; 2 uses
  store i64 %i.a, ptr %3, align 8
  %i.b = tail call i64 @_ZN2v88internal8compiler14OperationTyper14NumberToUint32ENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %2) ; 2 uses
  store i64 %i.b, ptr %4, align 8
  %i.c = icmp eq i64 %i.a, 1
  %i.d = icmp eq i64 %i.b, 1
  %or.cond21 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond21, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.f = fptoui double %i.e to i32
  %i.g = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.h = fptoui double %i.g to i32
  %i.i = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.j = fptoui double %i.i to i32
  %i.k = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.l = fptoui double %i.k to i32                ; 2 uses
  %i.m = icmp ugt i32 %i.l, 31
  %spec.select = select i1 %i.m, i32 0, i32 %i.j
  %spec.select20 = call i32 @llvm.umin.i32(i32 %i.l, i32 31)
  %i.n = lshr i32 %i.f, %spec.select20            ; 2 uses
  %i.o = uitofp i32 %i.n to double
  %i.p = lshr i32 %i.h, %spec.select              ; 3 uses
  %i.q = uitofp i32 %i.p to double
  %i.r = icmp eq i32 %i.n, 0                      ; 2 uses
  %i.s = icmp eq i32 %i.p, 2147483647
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i32 %i.p, -1
  %or.cond3 = select i1 %i.r, i1 %i.t, i1 false
end_hunk_0
