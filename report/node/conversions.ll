Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/conversions?download=true
inline.NumInlined: 1643
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2v88internal14TryStringToIntEPNS0_12LocalIsolateENS0_12DirectHandleINS0_6StringEEEi:bb.a
  store double 0.000000e+00, ptr %i.al, align 8
  call void @_ZN2v88internal17StringToIntHelper8ParseIntEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  %.val.i = load i32, ptr %i.ak, align 8
  switch i32 %.val.i, label %bb.g [
    i32 2, label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit
    i32 3, label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit
    i32 4, label %bb.d
    i32 5, label %bb.e
  ]

bb.d:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit
  %i.am = load i32, ptr %i.ag, align 8
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = select i1 %i.an, double -0.000000e+00, double 0.000000e+00
  br label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit

bb.e:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit
  %i.ap = load i32, ptr %i.ag, align 8
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = load double, ptr %i.al, align 8         ; 2 uses
  br i1 %i.aq, label %bb.f, label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit

bb.f:                                             ; preds = %bb.e
  %i.as = fneg double %i.ar
  br label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit

bb.g:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #24
  unreachable

_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit: ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit, %bb.d, %bb.e, %bb.f
  %.0.i = phi double [ +qnan, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit ], [ %i.ao, %bb.d ], [ %i.as, %bb.f ], [ +qnan, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit ], [ %i.ar, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.at = load i8, ptr %i.r, align 8, !range !19, !noundef !20
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.r, align 8
  br i1 %i.au, label %bb.h, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.h:                                             ; preds = %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.p

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit: ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 0, ptr %i.aw, align 8
  %.not.i.i10 = icmp eq ptr %0, null
  br i1 %.not.i.i10, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13, label %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i11

_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i11: ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !range !19, !noundef !20
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13, label %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i12

_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i12: ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i11
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 58696 ; 2 uses
  store ptr %i.bc, ptr %5, align 8
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #21
  store i8 1, ptr %i.aw, align 8
  %.pre = load i64, ptr %1, align 8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13

_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13: ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit, %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i11, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i12
  %i.bd = phi i64 [ %i.c, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit ], [ %i.c, %_ZN2v88internal31SharedStringAccessGuardIfNeeded8IsNeededEPNS0_12LocalIsolateE.exit.i11 ], [ %.pre, %_ZNSt8optionalIN2v84base9LockGuardINS1_5MutexEEEE7emplaceIJPS3_EEENSt9enable_ifIX18is_constructible_vIS4_DpT_EERS4_E4typeEDpOS9_.exit.i12 ]
  call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jjRKNS0_31SharedStringAccessGuardIfNeededE(i64 %i.bd, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.be = zext nneg i32 %i.g to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %2, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.be, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 2, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i8 0, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 61
  store i8 0, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 62
  store i8 1, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i32 0, ptr %i.bo, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal20NumberParseIntHelperE, i64 16), ptr %6, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store double 0.000000e+00, ptr %i.bp, align 8
  call void @_ZN2v88internal17StringToIntHelper8ParseIntEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
  %.val.i14 = load i32, ptr %i.bo, align 8
  switch i32 %.val.i14, label %bb.m [
    i32 2, label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit16
    i32 3, label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit16
    i32 4, label %bb.j
    i32 5, label %bb.k
  ]

bb.j:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13
  %i.bq = load i32, ptr %i.bk, align 8
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = select i1 %i.br, double -0.000000e+00, double 0.000000e+00
  br label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit16

bb.k:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13
  %i.bt = load i32, ptr %i.bk, align 8
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = load double, ptr %i.bp, align 8         ; 2 uses
  br i1 %i.bu, label %bb.l, label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit16

bb.l:                                             ; preds = %bb.k
  %i.bw = fneg double %i.bv
  br label %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit16

bb.m:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.11) #24
  unreachable

_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit16: ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13, %bb.j, %bb.k, %bb.l
  %.0.i15 = phi double [ +qnan, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13 ], [ %i.bs, %bb.j ], [ %i.bw, %bb.l ], [ +qnan, %_ZN2v88internal31SharedStringAccessGuardIfNeededC2EPNS0_12LocalIsolateE.exit13 ], [ %i.bv, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bx = load i8, ptr %i.aw, align 8, !range !19, !noundef !20
  %i.by = trunc nuw i8 %i.bx to i1
  store i8 0, ptr %i.aw, align 8
  br i1 %i.by, label %bb.n, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit18

bb.n:                                             ; preds = %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit16
  %i.bz = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i.i.i.i17 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i17, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit18, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bz) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit18

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit18: ; preds = %_ZN2v88internal20NumberParseIntHelper9GetResultEv.exit16, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit18, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %.sroa.025.0 = phi double [ %.0.i15, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit18 ], [ %.0.i, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ undef, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit18 ], [ 1, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { double, i8 } poison, double %.sroa.025.0, 0
  %.fca.1.insert = insertvalue { double, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { double, i8 } %.fca.1.insert
}

declare void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jjRKNS0_31SharedStringAccessGuardIfNeededE(i64, ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14IsSpecialIndexENS0_6TaggedINS0_6StringEEE(i64 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !alias.scope !110
  %i.a = call noundef zeroext i1 @_ZN2v88internal14IsSpecialIndexENS0_6TaggedINS0_6StringEEERNS0_31SharedStringAccessGuardIfNeededE(i64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !19, !noundef !20
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8
  br i1 %i.d, label %bb.b, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14IsSpecialIndexENS0_6TaggedINS0_6StringEEERNS0_31SharedStringAccessGuardIfNeededE(i64 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i16], align 16              ; 14 uses
  %i.b = alloca [25 x i8], align 16               ; 3 uses
  %i.c = add i64 %0, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 11 uses
  %i.g = add i32 %i.f, -25
  %or.cond = icmp ult i32 %i.g, -24
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jjRKNS0_31SharedStringAccessGuardIfNeededE(i64 %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  %i.h = load i16, ptr %i.a, align 16             ; 4 uses
  %i.i = add i16 %i.h, -48
  %i.j = icmp ult i16 %i.i, 10
  br i1 %i.j, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i16 %i.h, 45
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %i.f, 1
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %i.o = add i16 %i.n, -48
  %i.p = icmp ult i16 %i.o, 10
  br i1 %i.p, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i16 %i.n, 73
  %i.r = icmp eq i32 %i.f, 9
  %or.cond4 = and i1 %i.r, %i.q
  br i1 %or.cond4, label %bb.j, label %.thread

bb.g:                                             ; preds = %bb.c
  %i.s = icmp eq i16 %i.h, 73
  %i.t = icmp eq i32 %i.f, 8
  %or.cond6 = and i1 %i.t, %i.s
  br i1 %or.cond6, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i16 %i.h, 78
  %i.v = icmp eq i32 %i.f, 3
  %or.cond8 = and i1 %i.v, %i.u
  br i1 %or.cond8, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.x = load i16, ptr %i.w, align 2
  %i.y = icmp eq i16 %i.x, 97
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = icmp eq i16 %i.aa, 78
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br label %.thread

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.b
  %.047 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ] ; 4 uses
  %i.ad = sub nuw nsw i32 %i.f, %.047
  %i.ae = icmp samesign ult i32 %i.ad, 16
  br i1 %i.ae, label %.preheader60, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.j
  %.pre75 = zext nneg i32 %i.f to i64
  br label %bb.l

.preheader60:                                     ; preds = %bb.j
  %i.af = icmp samesign ult i32 %.047, %i.f
  br i1 %i.af, label %iter.check, label %.critedge

iter.check:                                       ; preds = %.preheader60
  %i.ag = zext nneg i32 %.047 to i64              ; 7 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %i.ah = sub nsw i64 %wide.trip.count, %i.ag     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check79 = icmp ult i64 %i.ah, 16
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ah, 12
  %n.vec = and i64 %i.ah, -16                     ; 4 uses
  %i.aj = or disjoint i64 %n.vec, %i.ag
  %invariant.gep = getelementptr [2 x i8], ptr %i.a, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ splat (i1 true), %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi80 = phi <8 x i1> [ splat (i1 true), %vector.ph ], [ %i.aq, %vector.body ]
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2
  %wide.load81 = load <8 x i16>, ptr %i.ak, align 2
  %i.al = add <8 x i16> %wide.load, splat (i16 -48)
  %i.am = add <8 x i16> %wide.load81, splat (i16 -48)
  %i.an = icmp ult <8 x i16> %i.al, splat (i16 10)
  %i.ao = icmp ult <8 x i16> %i.am, splat (i16 10)
  %i.ap = and <8 x i1> %vec.phi, %i.an            ; 2 uses
  %i.aq = and <8 x i1> %vec.phi80, %i.ao          ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <8 x i1> %i.aq, %i.ap
  %i.as = bitcast <8 x i1> %bin.rdx to i8
  %i.at = icmp eq i8 %i.as, -1                    ; 3 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.at, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.vec82 = and i64 %i.ah, -4                    ; 3 uses
  %i.au = or disjoint i64 %n.vec82, %i.ag
  %i.av = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %bc.merge.rdx, i64 0
  %invariant.gep99 = getelementptr [2 x i8], ptr %i.a, i64 %i.ag
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi84 = phi <4 x i1> [ %i.av, %vec.epilog.ph ], [ %i.ay, %vec.epilog.vector.body ]
  %gep100 = getelementptr [2 x i8], ptr %invariant.gep99, i64 %index83
  %wide.load85 = load <4 x i16>, ptr %gep100, align 2
  %i.aw = add <4 x i16> %wide.load85, splat (i16 -48)
  %i.ax = icmp ult <4 x i16> %i.aw, splat (i16 10)
  %i.ay = and <4 x i1> %vec.phi84, %i.ax          ; 2 uses
  %index.next86 = add nuw i64 %index83, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next86, %n.vec82
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !112

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ba = bitcast <4 x i1> %i.ay to i4
  %i.bb = icmp eq i4 %i.ba, -1                    ; 2 uses
  %cmp.n87 = icmp eq i64 %i.ah, %n.vec82
  br i1 %cmp.n87, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ag, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.04662.ph = phi i1 [ true, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.04662 = phi i1 [ %i.bg, %.lr.ph ], [ %.04662.ph, %.lr.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = add i16 %i.bd, -48
  %i.bf = icmp ult i16 %i.be, 10
  %i.bg = and i1 %.04662, %i.bf                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i1 [ %i.bb, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %i.bg, %.lr.ph ]
  br i1 %.lcssa, label %.critedge, label %bb.l

.critedge:                                        ; preds = %.preheader60, %._crit_edge
  %.pre-phi = phi i64 [ %i.ag, %._crit_edge ], [ 1, %.preheader60 ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.pre-phi
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = icmp eq i16 %i.bi, 48
  br i1 %i.bj, label %bb.k, label %.thread

bb.k:                                             ; preds = %.critedge
  %i.bk = add nsw i32 %i.f, -1
  %i.bl = icmp eq i32 %.047, %i.bk
  br label %.thread

bb.l:                                             ; preds = %._crit_edge74, %._crit_edge
  %.pre-phi76 = phi i64 [ %.pre75, %._crit_edge74 ], [ %wide.trip.count, %._crit_edge ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.pre-phi76
  %i.bn = call noundef double @_ZN2v88internal22InternalStringToDoubleItEEdPKT_S4_NS0_14ConversionFlagEd(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bm, i32 noundef 0, double noundef 0.000000e+00) ; 2 uses
  %i.bo = fcmp uno double %i.bn, 0.000000e+00
  br i1 %i.bo, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bp = call { i64, ptr } @_ZN2v88internal18DoubleToStringViewEdNS_4base6VectorIcEE(double noundef %i.bn, ptr nonnull %i.b, i64 25) ; 2 uses
  %i.bq = extractvalue { i64, ptr } %i.bp, 0
  %i.br = extractvalue { i64, ptr } %i.bp, 1
  %.not = icmp eq i64 %i.bq, %.pre-phi76
  br i1 %.not, label %.lr.ph65, label %.loopexit

.lr.ph65:                                         ; preds = %bb.m, %.lr.ph65
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph65 ], [ 0, %bb.m ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv69
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv69
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = sext i8 %i.bt to i16
  %.not51 = icmp eq i16 %i.bv, %i.bw              ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp ne i64 %indvars.iv.next70, %.pre-phi76
  %or.cond90.not = select i1 %.not51, i1 %exitcond73.not, i1 false
  br i1 %or.cond90.not, label %.lr.ph65, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %.lr.ph65, %bb.m
  %.3 = phi i1 [ false, %bb.m ], [ %.not51, %.lr.ph65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.thread

.thread:                                          ; preds = %bb.k, %.critedge, %.loopexit, %bb.l, %bb.h, %bb.f, %bb.d, %bb.i
  %.5 = phi i1 [ false, %bb.h ], [ false, %bb.l ], [ false, %bb.f ], [ false, %bb.d ], [ %i.ac, %bb.i ], [ %.3, %.loopexit ], [ true, %.critedge ], [ %i.bl, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.thread
  %.6 = phi i1 [ %.5, %.thread ], [ false, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN2v88internal24DoubleToFloat32_NoInlineEd(double noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = fcmp ogt double %0, f0x47EFFFFFE0000000
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ugt double %0, f0x47EFFFFFEFFFFFFF
  br i1 %i.b, label %bb.c, label %_ZN2v88internal15DoubleToFloat32Ed.exit

bb.c:                                             ; preds = %bb.b
  br label %_ZN2v88internal15DoubleToFloat32Ed.exit

bb.d:                                             ; preds = %bb.a
  %i.c = fcmp olt double %0, f0xC7EFFFFFE0000000
  br i1 %i.c, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.d = fcmp ult double %0, f0xC7EFFFFFEFFFFFFF
  br i1 %i.d, label %bb.f, label %_ZN2v88internal15DoubleToFloat32Ed.exit

bb.f:                                             ; preds = %bb.e
  br label %_ZN2v88internal15DoubleToFloat32Ed.exit

bb.g:                                             ; preds = %bb.d
  %i.e = fptrunc double %0 to float
  br label %_ZN2v88internal15DoubleToFloat32Ed.exit

_ZN2v88internal15DoubleToFloat32Ed.exit:          ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %i.e, %bb.g ], [ +inf, %bb.c ], [ f0x7F7FFFFF, %bb.b ], [ -inf, %bb.f ], [ f0xFF7FFFFF, %bb.e ]
  ret float %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN2v88internal22DoubleToInt32_NoInlineEd(double noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  %i.b = fcmp one double %i.a, +inf
  %i.c = fcmp ole double %0, f0x41DFFFFFFFC00000
  %or.cond.i = and i1 %i.c, %i.b
  %i.d = fcmp oge double %0, f0xC1E0000000000000
  %or.cond3.i = and i1 %i.d, %or.cond.i
  br i1 %or.cond3.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fptosi double %0 to i32
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

bb.c:                                             ; preds = %bb.a
  %i.f = bitcast double %0 to i64                 ; 5 uses
  %i.g = and i64 %i.f, 9218868437227405312
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  %i.i = lshr i64 %i.f, 52
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = and i32 %i.j, 2047
  %i.l = add nsw i32 %i.k, -1075
  %.0.i.i = select i1 %i.h, i32 -1074, i32 %i.l   ; 5 uses
  %i.m = icmp slt i32 %.0.i.i, 0
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i32 %.0.i.i, -52
  br i1 %i.n, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i64 %i.f, 4503599627370495           ; 2 uses
  %i.p = or disjoint i64 %i.o, 4503599627370496
  %.0.i17.i = select i1 %i.h, i64 %i.o, i64 %i.p
  %i.q = sub nsw i32 0, %.0.i.i
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 %.0.i17.i, %i.r
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.t = icmp samesign ugt i32 %.0.i.i, 31
  br i1 %i.t, label %_ZN2v88internal13DoubleToInt32Ed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %.0.i.i to i64
  %i.v = shl i64 %i.f, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i = phi i64 [ %i.s, %bb.e ], [ %i.v, %bb.g ]
  %i.w = trunc i64 %.0.i to i32                   ; 2 uses
  %i.x = sub i32 0, %i.w
  %i.y = icmp slt i64 %i.f, 0
  %i.z = select i1 %i.y, i32 %i.x, i32 %i.w
  br label %_ZN2v88internal13DoubleToInt32Ed.exit

_ZN2v88internal13DoubleToInt32Ed.exit:            ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  %.1.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.d ], [ %i.z, %bb.h ], [ 0, %bb.f ]
  ret i32 %.1.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEED0Ev(ptr noundef nonnull align 8 dereferenceable(204) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal20StringToBigIntHelperINS0_7IsolateEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23, !inline_history !17
  br label %_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEED2Ev.exit

_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE12ParseOneByteEPKh(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE13ParseInternalIhEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE12ParseTwoByteEPKt(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE13ParseInternalItEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20StringToBigIntHelperINS0_7IsolateEE13ParseInternalIhEEvPKT_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 6 uses
  %gepdiff = sub nsw i64 %i.f, %i.c
  %i.l = trunc i64 %gepdiff to i32
  %i.m = icmp ult i32 %i.l, 100                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 4
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.k)
  %i.q = icmp samesign ugt i64 %i.p, 1
  %or.cond.i.not = select i1 %i.m, i1 true, i1 %i.q
  br i1 %or.cond.i.not, label %.preheader91, label %bb.b

.preheader91:                                     ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %.backedge

bb.b:                                             ; preds = %bb.a
  %i.y = trunc i32 %i.j to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 197
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.k, 2
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN2v86bigintL9kCharBitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = zext nneg i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
end_hunk_0
