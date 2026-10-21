Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APFloat?download=true
inline.NumInlined: 4012
inline.NumDeleted: 1007
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm6detail10hash_valueERKNS0_9IEEEFloatE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i8 %i.d, ptr %2, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.j, ptr %i.m, align 1
  %i.n = load i32, ptr %i.l, align 4, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i32 %i.n, ptr %i.o, align 1
  %i.p = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = lshr i8 %i.b, 3
  %i.r = and i8 %i.q, 1
  %i.s = load ptr, ptr %0, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i32, ptr %i.t, align 4, !tbaa !53   ; 2 uses
  %i.w = add i32 %i.v, -64
  %i.x = icmp ult i32 %i.w, -128
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.0.i.i = select i1 %i.x, ptr %i.z, ptr %i.y
  %i.aa = add i32 %i.v, 64
  %i.ab = lshr i32 %i.aa, 6
  %.sroa.speculated.i.i = tail call noundef range(i32 1, 67108864) i32 @llvm.umax.i32(i32 %i.ab, i32 1)
  %i.ac = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %.idx = zext nneg i32 %i.ac to i64
  %i.ad = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %.0.i.i, i64 noundef %.idx) #29
  %i.ae = xor i64 %i.ad, -49064778989728563
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store i8 %i.d, ptr %1, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.r, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.t, align 4, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i32 %i.ag, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.u, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i32 %i.ai, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i64 %i.ae, ptr %i.ak, align 1
  %i.al = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i64 [ %i.al, %bb.c ], [ %i.p, %bb.b ]
  %.sroa.0.0 = xor i64 %.sroa.0.0.in, -49064778989728563
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i8, ptr %i.b, align 4               ; 3 uses
  %i.d = and i8 %i.c, 6
  %spec.select.i.not.i = icmp ne i8 %i.d, 0
  %i.e = and i8 %i.c, 7                           ; 2 uses
  %i.f = icmp ne i8 %i.e, 3
  %i.g = and i1 %spec.select.i.not.i, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !65
  %i.j = add nsw i32 %i.i, 16383                  ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53
  %i.n = add i32 %i.m, -64
  %i.o = icmp ult i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i.i = select i1 %i.o, ptr %i.q, ptr %i.p
  %i.r = load i64, ptr %.0.i.i, align 8, !tbaa !45 ; 2 uses
  %i.s = icmp eq i32 %i.j, 1
  %.lobit = lshr i64 %i.r, 63
  %i.t = and i32 %i.j, 32767
  %i.u = zext nneg i32 %i.t to i64
  %i.v = select i1 %i.s, i64 %.lobit, i64 %i.u
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.e [
    i8 3, label %bb.f
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %1, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53
  %i.z = add i32 %i.y, -64
  %i.aa = icmp ult i32 %i.z, -128
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.0.i.i7 = select i1 %i.aa, ptr %i.ac, ptr %i.ab
  %i.ad = load i64, ptr %.0.i.i7, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.04 = phi i64 [ 0, %bb.c ], [ 32767, %bb.e ], [ %i.v, %bb.b ], [ 32767, %bb.d ]
  %.0 = phi i64 [ 0, %bb.c ], [ %i.ad, %bb.e ], [ %i.r, %bb.b ], [ -9223372036854775808, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %.0, ptr %i.a, align 16, !tbaa !45
  %i.ae = lshr i8 %i.c, 3
  %i.af = and i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 15
  %i.ai = add nuw nsw i64 %.04, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !45
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 80, ptr nonnull %i.a, i64 2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6detail9IEEEFloat42convertPPCDoubleDoubleLegacyAPFloatToAPIntEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %2 = alloca %"struct.llvm::fltSemantics", align 4 ; 6 uses
  %3 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 7 uses
  %4 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 14 uses
  %5 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.c = load ptr, ptr %1, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa.struct !77
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1022, ptr %i.d, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN4llvm6detail9IEEEFloatC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  %i.e = call noundef i32 @_ZN4llvm6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) %2, i8 noundef signext 1, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN4llvm6detail9IEEEFloatC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  %i.f = call noundef i32 @_ZN4llvm6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE, i8 noundef signext 1, ptr noundef nonnull %i.b) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !noalias !422 ; 3 uses
  %i.i = and i8 %i.h, 6
  %spec.select.i.not.i.i.i = icmp ne i8 %i.i, 0
  %i.j = and i8 %i.h, 7                           ; 2 uses
  %i.k = icmp ne i8 %i.j, 3
  %i.l = and i1 %spec.select.i.not.i.i.i, %i.k    ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !65, !noalias !422
  %i.o = add nsw i32 %i.n, 1023                   ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %4, align 8, !tbaa !64, !noalias !422
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !53, !noalias !422
  %i.t = add i32 %i.s, -64
  %i.u = icmp ult i32 %i.t, -128
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !422
  %.0.i.i.i.i = select i1 %i.u, ptr %i.w, ptr %i.v
  %i.x = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !45, !noalias !422 ; 3 uses
  %i.y = icmp eq i32 %i.o, 1
  br i1 %i.y, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i64 %i.x, 52
  %.lobit.i.i = and i64 %i.z, 1
  br label %_ZN4llvm5APIntD2Ev.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.j, label %bb.f [
    i8 3, label %_ZN4llvm5APIntD2Ev.exit
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %4, align 8, !tbaa !64, !noalias !422
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !53, !noalias !422
  %i.ad = add i32 %i.ac, -64
  %i.ae = icmp ult i32 %i.ad, -128
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !422
  %.0.i.i9.i.i = select i1 %i.ae, ptr %i.ag, ptr %i.af
  %i.ah = load i64, ptr %.0.i.i9.i.i, align 8, !tbaa !45, !noalias !422
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.x, %bb.c ], [ %i.x, %bb.b ], [ %i.ah, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0.i.i = phi i64 [ %.lobit.i.i, %bb.c ], [ %i.p, %bb.b ], [ 2047, %bb.f ], [ 2047, %bb.e ], [ 0, %bb.d ]
  %i.ai = and i64 %.sroa.0.0.i.i, 4503599627370495
  %i.aj = lshr i8 %i.h, 3
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = shl i64 %i.ak, 63
  %i.am = or disjoint i64 %i.ai, %i.al
  %i.an = shl i64 %.0.i.i, 52
  %i.ao = and i64 %i.an, 9218868437227405312
  %i.ap = or disjoint i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.a, align 16, !tbaa !45
  %i.aq = load i8, ptr %i.b, align 1, !range !56
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond = select i1 %i.l, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.g, label %bb.t

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.as = call noundef i32 @_ZN4llvm6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) %2, i8 noundef signext 1, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN4llvm6detail9IEEEFloatC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  %i.at = call noundef i32 @_ZN4llvm6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true)
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = call noundef i32 @_ZN4llvm6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true)
  %i.aw = call noundef i32 @_ZN4llvm6detail9IEEEFloat9normalizeENS_12RoundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef signext 1, i32 noundef %i.av) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 4             ; 4 uses
  %i.az = and i8 %i.ay, 7
  %i.ba = icmp eq i8 %i.az, 3
  br i1 %i.ba, label %bb.j, label %_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = load i8, ptr %i.g, align 4              ; 2 uses
  %i.bc = and i8 %i.bb, 7
  %.not.i.i = icmp eq i8 %i.bc, 3
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = xor i8 %i.bb, %i.ay
  %i.be = and i8 %i.bd, 8
  %.not.i = icmp eq i8 %i.be, 0
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bf = and i8 %i.ay, -13                       ; 2 uses
  store i8 %i.bf, ptr %i.ax, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = phi i8 [ %i.bf, %bb.l ], [ %i.ay, %bb.k ]
  %i.bh = load ptr, ptr %5, align 8, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !66
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.n, label %_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit

bb.n:                                             ; preds = %bb.m
  %i.bl = and i8 %i.bg, -13
  store i8 %i.bl, ptr %i.ax, align 4
  br label %_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit

_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit: ; preds = %bb.i, %bb.m, %bb.n
  %i.bm = call noundef i32 @_ZN4llvm6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE, i8 noundef signext 1, ptr noundef nonnull %i.b) ; 0 uses
  %i.bn = load i8, ptr %i.ax, align 4, !noalias !423 ; 3 uses
  %i.bo = and i8 %i.bn, 6
  %spec.select.i.not.i.i.i3 = icmp ne i8 %i.bo, 0
  %i.bp = and i8 %i.bn, 7                         ; 2 uses
  %i.bq = icmp ne i8 %i.bp, 3
  %i.br = and i1 %spec.select.i.not.i.i.i3, %i.bq
  br i1 %i.br, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !65, !noalias !423
  %i.bu = add nsw i32 %i.bt, 1023                 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load ptr, ptr %5, align 8, !tbaa !64, !noalias !423
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !53, !noalias !423
  %i.bz = add i32 %i.by, -64
  %i.ca = icmp ult i32 %i.bz, -128
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !423
  %.0.i.i.i.i7 = select i1 %i.ca, ptr %i.cc, ptr %i.cb
  %i.cd = load i64, ptr %.0.i.i.i.i7, align 8, !tbaa !45, !noalias !423 ; 3 uses
  %i.ce = icmp eq i32 %i.bu, 1
  br i1 %i.ce, label %bb.p, label %_ZN4llvm5APIntD2Ev.exit11

bb.p:                                             ; preds = %bb.o
  %i.cf = lshr i64 %i.cd, 52
  %.lobit.i.i8 = and i64 %i.cf, 1
  br label %_ZN4llvm5APIntD2Ev.exit11

bb.q:                                             ; preds = %_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE.exit
  switch i8 %i.bp, label %bb.s [
    i8 3, label %_ZN4llvm5APIntD2Ev.exit11
    i8 0, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  br label %_ZN4llvm5APIntD2Ev.exit11

bb.s:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %5, align 8, !tbaa !64, !noalias !423
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !53, !noalias !423
  %i.cj = add i32 %i.ci, -64
  %i.ck = icmp ult i32 %i.cj, -128
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !423
  %.0.i.i9.i.i6 = select i1 %i.ck, ptr %i.cm, ptr %i.cl
  %i.cn = load i64, ptr %.0.i.i9.i.i6, align 8, !tbaa !45, !noalias !423
  br label %_ZN4llvm5APIntD2Ev.exit11

_ZN4llvm5APIntD2Ev.exit11:                        ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.sroa.0.0.i.i4 = phi i64 [ %i.cd, %bb.p ], [ %i.cd, %bb.o ], [ %i.cn, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ]
  %.0.i.i5 = phi i64 [ %.lobit.i.i8, %bb.p ], [ %i.bv, %bb.o ], [ 2047, %bb.s ], [ 2047, %bb.r ], [ 0, %bb.q ]
  %i.co = and i64 %.sroa.0.0.i.i4, 4503599627370495
  %i.cp = lshr i8 %i.bn, 3
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = shl i64 %i.cq, 63
  %i.cs = or disjoint i64 %i.co, %i.cr
  %i.ct = shl i64 %.0.i.i5, 52
  %i.cu = and i64 %i.ct, 9218868437227405312
  %i.cv = or disjoint i64 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !45
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !45
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4llvm5APIntD2Ev.exit11
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 128, ptr nonnull %i.a, i64 2) #29
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @_ZNK4llvm6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #14 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i8, ptr %i.a, align 4, !noalias !426 ; 3 uses
  %i.c = and i8 %i.b, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.c, 0
  %i.d = and i8 %i.b, 7                           ; 2 uses
  %i.e = icmp ne i8 %i.d, 3
  %i.f = and i1 %spec.select.i.not.i.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !65, !noalias !426
  %i.i = add nsw i32 %i.h, 1023                   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %1, align 8, !tbaa !64, !noalias !426
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53, !noalias !426
  %i.n = add i32 %i.m, -64
  %i.o = icmp ult i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !426
  %.0.i.i.i = select i1 %i.o, ptr %i.q, ptr %i.p
  %i.r = load i64, ptr %.0.i.i.i, align 8, !tbaa !45, !noalias !426 ; 3 uses
  %i.s = icmp eq i32 %i.i, 1
  br i1 %i.s, label %bb.c, label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase13semIEEEdoubleEEEENS_5APIntEv.exit

bb.c:                                             ; preds = %bb.b
  %i.t = lshr i64 %i.r, 52
  %.lobit.i = and i64 %i.t, 1
  br label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase13semIEEEdoubleEEEENS_5APIntEv.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.d, label %bb.f [
    i8 3, label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase13semIEEEdoubleEEEENS_5APIntEv.exit
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase13semIEEEdoubleEEEENS_5APIntEv.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %1, align 8, !tbaa !64, !noalias !426
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53, !noalias !426
  %i.x = add i32 %i.w, -64
  %i.y = icmp ult i32 %i.x, -128
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !426
  %.0.i.i9.i = select i1 %i.y, ptr %i.aa, ptr %i.z
  %i.ab = load i64, ptr %.0.i.i9.i, align 8, !tbaa !45, !noalias !426
  br label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase13semIEEEdoubleEEEENS_5APIntEv.exit

_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase13semIEEEdoubleEEEENS_5APIntEv.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ %i.r, %bb.b ], [ %i.ab, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi i64 [ %.lobit.i, %bb.c ], [ %i.j, %bb.b ], [ 2047, %bb.f ], [ 2047, %bb.e ], [ 0, %bb.d ]
  %i.ac = and i64 %.sroa.0.0.i, 4503599627370495
  %i.ad = lshr i8 %i.b, 3
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = shl i64 %i.ae, 63
  %i.ag = or disjoint i64 %i.ac, %i.af
  %i.ah = shl i64 %.0.i, 52
  %i.ai = and i64 %i.ah, 9218868437227405312
  %i.aj = or disjoint i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 64, ptr %i.ak, align 8, !tbaa !68, !alias.scope !426
  store i64 %i.aj, ptr %0, align 8, !tbaa !46, !alias.scope !426
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.99", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i8, ptr %i.a, align 4, !noalias !429 ; 3 uses
  %i.c = and i8 %i.b, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.c, 0
  %i.d = and i8 %i.b, 7                           ; 2 uses
  %i.e = icmp ne i8 %i.d, 3
  %i.f = and i1 %spec.select.i.not.i.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !65, !noalias !429
  %i.i = add nsw i32 %i.h, 16383                  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %1, align 8, !tbaa !64, !noalias !429
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53, !noalias !429
  %i.n = add i32 %i.m, -64
  %i.o = icmp ult i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !429
  %.0.i.i.i = select i1 %i.o, ptr %i.q, ptr %i.p  ; 2 uses
  %.sroa.013.0.copyload.i = load i64, ptr %.0.i.i.i, align 8, !noalias !429 ; 2 uses
  %.sroa.7.0..0.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..0.i.i.sroa_idx.i, align 8, !noalias !429 ; 3 uses
  %i.r = icmp eq i32 %i.i, 1
  br i1 %i.r, label %bb.c, label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase11semIEEEquadEEEENS_5APIntEv.exit

bb.c:                                             ; preds = %bb.b
  %i.s = lshr i64 %.sroa.7.0.copyload.i, 48
  %.lobit.i = and i64 %i.s, 1
  br label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase11semIEEEquadEEEENS_5APIntEv.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.d, label %bb.f [
    i8 3, label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase11semIEEEquadEEEENS_5APIntEv.exit
    i8 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase11semIEEEquadEEEENS_5APIntEv.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %1, align 8, !tbaa !64, !noalias !429
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53, !noalias !429
  %i.w = add i32 %i.v, -64
  %i.x = icmp ult i32 %i.w, -128
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !429
  %.0.i.i10.i = select i1 %i.x, ptr %i.z, ptr %i.y ; 2 uses
  %.sroa.013.0.copyload14.i = load i64, ptr %.0.i.i10.i, align 8, !noalias !429
  %.sroa.7.0..0.i.i10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i10.i, i64 8
  %.sroa.7.0.copyload16.i = load i64, ptr %.sroa.7.0..0.i.i10.sroa_idx.i, align 8, !noalias !429
  br label %_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase11semIEEEquadEEEENS_5APIntEv.exit

_ZNK4llvm6detail9IEEEFloat23convertIEEEFloatToAPIntIL_ZNS_11APFloatBase11semIEEEquadEEEENS_5APIntEv.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.013.0.i = phi i64 [ %.sroa.013.0.copyload.i, %bb.c ], [ %.sroa.013.0.copyload.i, %bb.b ], [ %.sroa.013.0.copyload14.i, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.7.0.i = phi i64 [ %.sroa.7.0.copyload.i, %bb.c ], [ %.sroa.7.0.copyload.i, %bb.b ], [ %.sroa.7.0.copyload16.i, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi i64 [ %.lobit.i, %bb.c ], [ %i.j, %bb.b ], [ 32767, %bb.f ], [ 32767, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !429
  store i64 %.sroa.013.0.i, ptr %2, align 8, !noalias !429
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = and i64 %.sroa.7.0.i, 281474976710655
  %i.ab = lshr i8 %i.b, 3
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = shl i64 %i.ac, 63
  %i.ae = or disjoint i64 %i.aa, %i.ad
  %i.af = shl i64 %.0.i, 48
  %i.ag = and i64 %i.af, 9223090561878065152
  %i.ah = or disjoint i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !45, !noalias !429
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 128, ptr nonnull %2, i64 2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !429
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @_ZNK4llvm6detail9IEEEFloat26convertFloatAPFloatToAPIntEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #14 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i8, ptr %i.a, align 4, !noalias !432 ; 3 uses
  %i.c = and i8 %i.b, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.c, 0
  %i.d = and i8 %i.b, 7                           ; 2 uses
  %i.e = icmp ne i8 %i.d, 3
  %i.f = and i1 %spec.select.i.not.i.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

end_hunk_0
begin_hunk_1_@_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv:bb.a
  br label %bb.bp

bb.aw:                                            ; preds = %bb.au
  %i.fq = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase15semFloat8E4M3FNE
  br i1 %i.fq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZNK4llvm6detail9IEEEFloat33convertFloat8E4M3FNAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.ay:                                            ; preds = %bb.aw
  %i.fr = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase17semFloat8E4M3FNUZE
  br i1 %i.fr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZNK4llvm6detail9IEEEFloat35convertFloat8E4M3FNUZAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.ba:                                            ; preds = %bb.ay
  %i.fs = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase20semFloat8E4M3B11FNUZE
  br i1 %i.fs, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZNK4llvm6detail9IEEEFloat38convertFloat8E4M3B11FNUZAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.bc:                                            ; preds = %bb.ba
  %i.ft = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase13semFloat8E3M4E
  br i1 %i.ft, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZNK4llvm6detail9IEEEFloat31convertFloat8E3M4APFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.be:                                            ; preds = %bb.bc
  %i.fu = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase12semFloatTF32E
  br i1 %i.fu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZNK4llvm6detail9IEEEFloat30convertFloatTF32APFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.bg:                                            ; preds = %bb.be
  %i.fv = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase16semFloat8E8M0FNUE
  br i1 %i.fv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZNK4llvm6detail9IEEEFloat34convertFloat8E8M0FNUAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.bi:                                            ; preds = %bb.bg
  %i.fw = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase15semFloat6E3M2FNE
  br i1 %i.fw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZNK4llvm6detail9IEEEFloat33convertFloat6E3M2FNAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bi
  %i.fx = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase15semFloat6E2M3FNE
  br i1 %i.fx, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZNK4llvm6detail9IEEEFloat33convertFloat6E2M3FNAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bk
  %i.fy = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase15semFloat4E2M1FNE
  br i1 %i.fy, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  tail call void @_ZNK4llvm6detail9IEEEFloat33convertFloat4E2M1FNAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  tail call void @_ZNK4llvm6detail9IEEEFloat34convertF80LongDoubleAPFloatToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %_ZNK4llvm6detail9IEEEFloat31convertFloat8E5M2APFloatToAPIntEv.exit, %bb.ak, %_ZNK4llvm6detail9IEEEFloat30convertQuadrupleAPFloatToAPIntEv.exit, %_ZNK4llvm6detail9IEEEFloat27convertDoubleAPFloatToAPIntEv.exit, %_ZNK4llvm6detail9IEEEFloat26convertFloatAPFloatToAPIntEv.exit, %_ZNK4llvm6detail9IEEEFloat27convertBFloatAPFloatToAPIntEv.exit, %_ZNK4llvm6detail9IEEEFloat25convertHalfAPFloatToAPIntEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef float @_ZNK4llvm6detail9IEEEFloat14convertToFloatEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %.in.i.i = select i1 %i.c, ptr %1, ptr %i.d
  %i.e = load i64, ptr %.in.i.i, align 8, !tbaa !46
  %i.f = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.d) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b
  %i.g = trunc i64 %i.e to i32
  %i.h = bitcast i32 %i.g to float
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret float %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZNK4llvm6detail9IEEEFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %.in.i.i = select i1 %i.c, ptr %1, ptr %i.d
  %i.e = load double, ptr %.in.i.i, align 8, !tbaa !46
  %i.f = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.d) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret double %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef fp128 @_ZNK4llvm6detail9IEEEFloat13convertToQuadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = load ptr, ptr %1, align 8, !tbaa !46     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45
  %i.d = load i64, ptr %i.a, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !68
  %i.g = icmp ugt i32 %i.f, 64
  br i1 %i.g, label %bb.b, label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.a) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b
  %i.h = zext i64 %i.c to i128
  %i.i = shl nuw i128 %i.h, 64
  %i.j = zext i64 %i.d to i128
  %i.k = or disjoint i128 %i.i, %i.j
  %i.l = bitcast i128 %i.k to fp128
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret fp128 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6detail9IEEEFloat26initFromF80LongDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm6detail9IEEEFloat17initFromIEEEAPIntIL_ZNS_11APFloatBase20semX87DoubleExtendedEEEEvRKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm6detail9IEEEFloat17initFromIEEEAPIntIL_ZNS_11APFloatBase20semX87DoubleExtendedEEEEvRKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  %i.d = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.c, ptr %1, ptr %i.d ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %spec.select.i, align 8 ; 6 uses
  %i.e = zext i32 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 63
  %i.g = lshr i64 %i.f, 6
  %i.h = add nuw nsw i64 %i.g, 4294967295
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45   ; 2 uses
  %i.l = and i64 %i.k, 32767                      ; 3 uses
  store ptr @_ZN4llvm11APFloatBase20semX87DoubleExtendedE, ptr %0, align 8, !tbaa !64
  %i.m = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #27 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.p = load i8, ptr %i.o, align 4               ; 3 uses
  %sh.diff = lshr i64 %i.k, 12
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %i.q = and i8 %tr.sh.diff, 8                    ; 4 uses
  %i.r = and i8 %i.p, -9
  %i.s = or disjoint i8 %i.r, %i.q                ; 3 uses
  store i8 %i.s, ptr %i.o, align 4
  %i.t = icmp ne i64 %i.l, 0                      ; 2 uses
  %i.u = or i64 %.sroa.0.0.copyload, %i.l
  %or.cond = icmp eq i64 %i.u, 0
  %i.v = add nsw i64 %i.l, -16383                 ; 2 uses
  %i.w = icmp eq i64 %i.v, 16384                  ; 2 uses
  %i.x = icmp slt i64 %.sroa.0.0.copyload, 0
  %or.cond3 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond3, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.y = and i64 %.sroa.0.0.copyload, 9223372036854775807
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.c, label %.critedge29

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !64    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !59 ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 2
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i32 %i.ac, 1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = icmp ne i8 %i.q, 0
  tail call void @_ZN4llvm6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext false, i1 noundef zeroext %i.af, ptr noundef null)
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = and i8 %i.p, -16
  %i.ah = or disjoint i8 %i.ag, %i.q
  store i8 %i.ah, ptr %i.o, align 4
  %.val.i.i = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ai = add nsw i32 %.val.i.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !53 ; 2 uses
  %i.am = add i32 %i.al, -64
  %i.an = icmp ult i32 %i.am, -128
  %.0.i.i = select i1 %i.an, ptr %i.m, ptr %i.n
  %i.ao = add i32 %i.al, 64
  %i.ap = lshr i32 %i.ao, 6
  %.sroa.speculated.i.i.i = tail call noundef range(i32 1, 67108864) i32 @llvm.umax.i32(i32 %i.ap, i32 1)
  tail call void @_ZN4llvm5APInt5tcSetEPmmj(ptr noundef nonnull %.0.i.i, i64 noundef 0, i32 noundef %.sroa.speculated.i.i.i) #29
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

.critedge:                                        ; preds = %bb.a
  %i.aq = icmp sgt i64 %.sroa.0.0.copyload, -1
  %or.cond7 = select i1 %i.t, i1 %i.aq, i1 false
  %or.cond47 = select i1 %i.w, i1 true, i1 %or.cond7
  br i1 %or.cond47, label %.critedge29, label %.thread38

.critedge29:                                      ; preds = %.critedge, %bb.b
  %i.ar = and i8 %i.s, -8
  %i.as = or disjoint i8 %i.ar, 1
  store i8 %i.as, ptr %i.o, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 16384, ptr %i.at, align 8, !tbaa !65
  %i.au = load ptr, ptr %0, align 8, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !53
  %i.ax = add i32 %i.aw, -64
  %i.ay = icmp ult i32 %i.ax, -128
  %.0.i = select i1 %i.ay, ptr %i.m, ptr %i.n     ; 2 uses
  store i64 %.sroa.0.0.copyload, ptr %.0.i, align 8
  %.sroa.6.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 0, ptr %.sroa.6.0..0.i.sroa_idx, align 8
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

.thread38:                                        ; preds = %.critedge
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread38
  %i.az = load ptr, ptr %0, align 8, !tbaa !64    ; 3 uses
  %i.ba = and i8 %i.p, -16                        ; 2 uses
  %i.bb = or disjoint i8 %i.q, %i.ba
  %i.bc = or disjoint i8 %i.bb, 3
  store i8 %i.bc, ptr %i.o, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !66
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.g, label %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit

bb.g:                                             ; preds = %bb.f
  %i.bg = or disjoint i8 %i.ba, 3
  store i8 %i.bg, ptr %i.o, align 4
  br label %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit

_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit:        ; preds = %bb.f, %bb.g
  %i.bh = getelementptr i8, ptr %i.az, i64 4
  %.val.i.i33 = load i32, ptr %i.bh, align 4, !tbaa !52
  %i.bi = add nsw i32 %.val.i.i33, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !53 ; 2 uses
  %i.bm = add i32 %i.bl, -64
  %i.bn = icmp ult i32 %i.bm, -128
  %.0.i.i34 = select i1 %i.bn, ptr %i.m, ptr %i.n
  %i.bo = add i32 %i.bl, 64
  %i.bp = lshr i32 %i.bo, 6
  %.sroa.speculated.i.i.i35 = tail call noundef range(i32 1, 67108864) i32 @llvm.umax.i32(i32 %i.bp, i32 1)
  tail call void @_ZN4llvm5APInt5tcSetEPmmj(ptr noundef nonnull %.0.i.i34, i64 noundef 0, i32 noundef %.sroa.speculated.i.i.i35) #29
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

bb.h:                                             ; preds = %.thread38
  %i.bq = and i8 %i.s, -8
  %i.br = or disjoint i8 %i.bq, 2
  store i8 %i.br, ptr %i.o, align 4
  %i.bs = trunc nsw i64 %i.v to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !65
  %i.bu = load ptr, ptr %0, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !53
  %i.bx = add i32 %i.bw, -64
  %i.by = icmp ult i32 %i.bx, -128
  %.0.i36 = select i1 %i.by, ptr %i.m, ptr %i.n   ; 2 uses
  store i64 %.sroa.0.0.copyload, ptr %.0.i36, align 8
  %.sroa.6.0..0.i36.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i36, i64 8
  store i64 0, ptr %.sroa.6.0..0.i36.sroa_idx, align 8
  br i1 %i.t, label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -16382, ptr %i.bt, align 8, !tbaa !65
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

_ZN4llvm6detail9IEEEFloat7makeInfEb.exit:         ; preds = %bb.e, %bb.d, %.critedge29, %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6detail9IEEEFloat34initFromPPCDoubleDoubleLegacyAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %3 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 8 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !68
  %i.d = icmp ult i32 %i.c, 65
  %i.e = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.d, ptr %1, ptr %i.e ; 2 uses
  %i.f = load i64, ptr %spec.select.i, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 64, ptr %i.i, align 8, !tbaa !68
  store i64 %i.f, ptr %2, align 8, !tbaa !46
  call void @_ZN4llvm6detail9IEEEFloat17initFromIEEEAPIntIL_ZNS_11APFloatBase13semIEEEdoubleEEEEvRKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.j = load i32, ptr %i.i, align 8, !tbaa !68
  %i.k = icmp ugt i32 %i.j, 64
  br i1 %i.k, label %bb.b, label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4llvm5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.l) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.n = call noundef i32 @_ZN4llvm6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase24semPPCDoubleDoubleLegacyE, i8 noundef signext 1, ptr noundef nonnull %i.a) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.p = load i8, ptr %i.o, align 4               ; 2 uses
  %i.q = and i8 %i.p, 6
  %spec.select.i.not.i = icmp ne i8 %i.q, 0
  %i.r = and i8 %i.p, 7
  %i.s = icmp ne i8 %i.r, 3
  %i.t = and i1 %spec.select.i.not.i, %i.s
  br i1 %i.t, label %bb.d, label %bb.n

bb.d:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 64, ptr %i.u, align 8, !tbaa !68
  store i64 %i.h, ptr %4, align 8, !tbaa !46
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr noundef nonnull align 8 dereferenceable(12) %4) #29
  %i.v = load i32, ptr %i.u, align 8, !tbaa !68
  %i.w = icmp ugt i32 %i.v, 64
  br i1 %i.w, label %bb.e, label %_ZN4llvm5APIntD2Ev.exit5

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN4llvm5APIntD2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.x) #28
  br label %_ZN4llvm5APIntD2Ev.exit5

_ZN4llvm5APIntD2Ev.exit5:                         ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.z = call noundef i32 @_ZN4llvm6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase24semPPCDoubleDoubleLegacyE, i8 noundef signext 1, ptr noundef nonnull %i.a) ; 0 uses
  %i.aa = call noundef i32 @_ZN4llvm6detail9IEEEFloat21addOrSubtractSpecialsERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit5
  %i.ac = call noundef i32 @_ZN4llvm6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
  %i.ad = call noundef i32 @_ZN4llvm6detail9IEEEFloat9normalizeENS_12RoundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 1, i32 noundef %i.ac) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm5APIntD2Ev.exit5
  %i.ae = load i8, ptr %i.o, align 4              ; 4 uses
  %i.af = and i8 %i.ae, 7
  %i.ag = icmp eq i8 %i.af, 3
  br i1 %i.ag, label %bb.i, label %_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ai = load i8, ptr %i.ah, align 4             ; 2 uses
  %i.aj = and i8 %i.ai, 7
  %.not.i.i = icmp eq i8 %i.aj, 3
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = xor i8 %i.ai, %i.ae
  %i.al = and i8 %i.ak, 8
  %.not.i = icmp eq i8 %i.al, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = and i8 %i.ae, -13                       ; 2 uses
  store i8 %i.am, ptr %i.o, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = phi i8 [ %i.am, %bb.k ], [ %i.ae, %bb.j ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !66
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.m, label %_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit

bb.m:                                             ; preds = %bb.l
  %i.as = and i8 %i.an, -13
  store i8 %i.as, ptr %i.o, align 4
  br label %_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit

_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit: ; preds = %bb.h, %bb.l, %bb.m
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE.exit, %_ZN4llvm5APIntD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6detail9IEEEFloat19initFromDoubleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm6detail9IEEEFloat17initFromIEEEAPIntIL_ZNS_11APFloatBase13semIEEEdoubleEEEEvRKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm6detail9IEEEFloat26initFromFloat8E8M0FNUAPIntERKNS_5APIntE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  %i.d = load ptr, ptr %1, align 8
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr %i.d
  %i.e = zext i32 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 63
  %i.g = lshr i64 %i.f, 6
  %i.h = add nuw nsw i64 %i.g, 4294967295
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45
  %i.l = and i64 %i.k, 255
  store ptr @_ZN4llvm11APFloatBase16semFloat8E8M0FNUE, ptr %0, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = add nsw i64 %i.l, -127                   ; 2 uses
  %i.p = icmp eq i64 %i.o, 128
  %i.q = and i8 %i.n, -16
  %i.r = trunc nsw i64 %i.o to i32
  %.sink17.v.i = select i1 %i.p, i8 1, i8 2
  %.sink17.i = or disjoint i8 %.sink17.v.i, %i.q
  store i8 %.sink17.i, ptr %i.m, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.r, ptr %i.s, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.t, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6detail9IEEEFloat22initFromQuadrupleAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm6detail9IEEEFloat17initFromIEEEAPIntIL_ZNS_11APFloatBase11semIEEEquadEEEEvRKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm6detail9IEEEFloat17initFromIEEEAPIntIL_ZNS_11APFloatBase11semIEEEquadEEEEvRKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  %i.d = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.c, ptr %1, ptr %i.d ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %spec.select.i, align 8 ; 3 uses
  %.sroa.6.0.spec.select.i.sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0.spec.select.i.sroa_idx, align 8
  %i.e = and i64 %.sroa.6.0.copyload, 281474976710655 ; 3 uses
  %i.f = zext i32 %i.b to i64
  %i.g = add nuw nsw i64 %i.f, 63
  %i.h = lshr i64 %i.g, 6
  %i.i = add nuw nsw i64 %i.h, 4294967295
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !45   ; 2 uses
  %i.m = lshr i64 %i.l, 48
  %i.n = and i64 %i.m, 32767                      ; 2 uses
  store ptr @_ZN4llvm11APFloatBase11semIEEEquadE, ptr %0, align 8, !tbaa !64
  %i.o = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #27 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.r = load i8, ptr %i.q, align 4               ; 3 uses
  %sh.diff = lshr i64 %i.l, 60
  %tr.sh.diff = trunc nuw nsw i64 %sh.diff to i8
  %i.s = and i8 %tr.sh.diff, 8                    ; 4 uses
  %i.t = and i8 %i.r, -9
  %i.u = or disjoint i8 %i.t, %i.s                ; 3 uses
  store i8 %i.u, ptr %i.q, align 4
  %.not30.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload, 0
  %.not31.i.i.i.i.i = icmp eq i64 %i.e, 0
  %i.v = select i1 %.not30.i.i.i.i.i, i1 %.not31.i.i.i.i.i, i1 false ; 3 uses
  %i.w = icmp eq i64 %i.n, 0                      ; 2 uses
  %or.cond = and i1 %i.w, %i.v
  %i.x = add nsw i64 %i.n, -16383                 ; 2 uses
  %i.y = icmp eq i64 %i.x, 16384                  ; 2 uses
  %i.z = and i1 %i.y, %i.v
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %0, align 8, !tbaa !64    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !59 ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 2
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i32 %i.ac, 1
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = icmp ne i8 %i.s, 0
  tail call void @_ZN4llvm6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext false, i1 noundef zeroext %i.af, ptr noundef null)
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = and i8 %i.r, -16
  %i.ah = or disjoint i8 %i.ag, %i.s
  store i8 %i.ah, ptr %i.q, align 4
  %.val.i.i = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ai = add nsw i32 %.val.i.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !53 ; 2 uses
  %i.am = add i32 %i.al, -64
  %i.an = icmp ult i32 %i.am, -128
  %.0.i.i = select i1 %i.an, ptr %i.o, ptr %i.p
  %i.ao = add i32 %i.al, 64
  %i.ap = lshr i32 %i.ao, 6
  %.sroa.speculated.i.i.i = tail call noundef range(i32 1, 67108864) i32 @llvm.umax.i32(i32 %i.ap, i32 1)
  tail call void @_ZN4llvm5APInt5tcSetEPmmj(ptr noundef nonnull %.0.i.i, i64 noundef 0, i32 noundef %.sroa.speculated.i.i.i) #29
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

.critedge:                                        ; preds = %bb.a
  %.not = xor i1 %i.y, true
  %.not18 = or i1 %i.v, %.not
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.aq = and i8 %i.u, -8
  %i.ar = or disjoint i8 %i.aq, 1
  store i8 %i.ar, ptr %i.q, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 16384, ptr %i.as, align 8, !tbaa !65
  %i.at = load ptr, ptr %0, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !53
  %i.aw = add i32 %i.av, -64
  %i.ax = icmp ult i32 %i.aw, -128
  %.0.i = select i1 %i.ax, ptr %i.o, ptr %i.p     ; 2 uses
  store i64 %.sroa.0.0.copyload, ptr %.0.i, align 8
  %.sroa.6.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.e, ptr %.sroa.6.0..0.i.sroa_idx, align 8
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

bb.f:                                             ; preds = %.critedge
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %0, align 8, !tbaa !64    ; 3 uses
  %i.az = and i8 %i.r, -16                        ; 2 uses
  %i.ba = or disjoint i8 %i.s, %i.az
  %i.bb = or disjoint i8 %i.ba, 3
  store i8 %i.bb, ptr %i.q, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !66
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.h, label %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit

bb.h:                                             ; preds = %bb.g
  %i.bf = or disjoint i8 %i.az, 3
  store i8 %i.bf, ptr %i.q, align 4
  br label %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit

_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit:        ; preds = %bb.g, %bb.h
  %i.bg = getelementptr i8, ptr %i.ay, i64 4
  %.val.i.i21 = load i32, ptr %i.bg, align 4, !tbaa !52
  %i.bh = add nsw i32 %.val.i.i21, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !53 ; 2 uses
  %i.bl = add i32 %i.bk, -64
  %i.bm = icmp ult i32 %i.bl, -128
  %.0.i.i22 = select i1 %i.bm, ptr %i.o, ptr %i.p
  %i.bn = add i32 %i.bk, 64
  %i.bo = lshr i32 %i.bn, 6
  %.sroa.speculated.i.i.i23 = tail call noundef range(i32 1, 67108864) i32 @llvm.umax.i32(i32 %i.bo, i32 1)
  tail call void @_ZN4llvm5APInt5tcSetEPmmj(ptr noundef nonnull %.0.i.i22, i64 noundef 0, i32 noundef %.sroa.speculated.i.i.i23) #29
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

bb.i:                                             ; preds = %bb.f
  %i.bp = and i8 %i.u, -8
  %i.bq = or disjoint i8 %i.bp, 2
  store i8 %i.bq, ptr %i.q, align 4
  %i.br = trunc nsw i64 %i.x to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !65
  %i.bt = load ptr, ptr %0, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !53
  %i.bw = add i32 %i.bv, -64
  %i.bx = icmp ult i32 %i.bw, -128
  %.0.i24 = select i1 %i.bx, ptr %i.o, ptr %i.p   ; 2 uses
  store i64 %.sroa.0.0.copyload, ptr %.0.i24, align 8
  %.sroa.6.0..0.i24.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i24, i64 8
  store i64 %i.e, ptr %.sroa.6.0..0.i24.sroa_idx, align 8
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 -16382, ptr %i.bs, align 8, !tbaa !65
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

bb.k:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.bu, align 4, !tbaa !53
  %i.bz = add i32 %i.by, -64
  %i.ca = icmp ult i32 %i.bz, -128
  %i.cb = load ptr, ptr %i.p, align 8
  %.0.i26 = select i1 %i.ca, ptr %i.cb, ptr %i.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i26, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !45
  %i.ce = or i64 %i.cd, 281474976710656
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !45
  br label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit

_ZN4llvm6detail9IEEEFloat7makeInfEb.exit:         ; preds = %bb.d, %bb.c, %bb.e, %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit, %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm6detail9IEEEFloat17initFromIEEEAPIntIL_ZNS_11APFloatBase13semIEEEdoubleEEEEvRKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  %i.d = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.c, ptr %1, ptr %i.d ; 2 uses
  %i.e = load i64, ptr %spec.select.i, align 8, !tbaa !45
  %i.f = and i64 %i.e, 4503599627370495           ; 5 uses
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  %i.n = lshr i64 %i.m, 52
  %i.o = and i64 %i.n, 2047                       ; 3 uses
  store ptr @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr %0, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.q = load i8, ptr %i.p, align 4               ; 3 uses
  %sh.diff = lshr i64 %i.m, 60
  %tr.sh.diff = trunc nuw nsw i64 %sh.diff to i8
  %i.r = and i8 %tr.sh.diff, 8                    ; 3 uses
  %i.s = and i8 %i.q, -9
  %i.t = or disjoint i8 %i.s, %i.r                ; 2 uses
  %.not31.i.i.i.i.i = icmp eq i64 %i.f, 0         ; 2 uses
  %i.u = icmp eq i64 %i.o, 0
  %i.v = or i64 %i.o, %i.f
  %or.cond = icmp eq i64 %i.v, 0
  %i.w = add nsw i64 %i.o, -1023                  ; 2 uses
  %i.x = icmp eq i64 %i.w, 1024                   ; 2 uses
  %i.y = and i1 %.not31.i.i.i.i.i, %i.x
  br i1 %i.y, label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit, label %.critedge

_ZN4llvm6detail9IEEEFloat7makeInfEb.exit:         ; preds = %bb.a
  %i.z = and i8 %i.q, -16
  %i.aa = or disjoint i8 %i.z, %i.r
  store i8 %i.aa, ptr %i.p, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1024, ptr %i.ab, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm5APInt5tcSetEPmmj(ptr noundef nonnull %i.ac, i64 noundef 0, i32 noundef 1) #29
  br label %bb.g

.critedge:                                        ; preds = %bb.a
  %.not = xor i1 %i.x, true
  %.not18 = or i1 %.not31.i.i.i.i.i, %.not
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.ad = and i8 %i.t, -8
  %i.ae = or disjoint i8 %i.ad, 1
  store i8 %i.ae, ptr %i.p, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1024, ptr %i.af, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.ag, align 8, !tbaa !45
  br label %bb.g

bb.c:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %or.cond, label %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit, label %bb.d

_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit:        ; preds = %bb.c
  %i.aj = and i8 %i.q, -16
  %i.ak = or disjoint i8 %i.r, %i.aj
  %i.al = or disjoint i8 %i.ak, 3
  store i8 %i.al, ptr %i.p, align 4
  store i32 -1023, ptr %i.ah, align 8, !tbaa !65
  tail call void @_ZN4llvm5APInt5tcSetEPmmj(ptr noundef nonnull %i.ai, i64 noundef 0, i32 noundef 1) #29
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.am = and i8 %i.t, -8
  %i.an = or disjoint i8 %i.am, 2
  store i8 %i.an, ptr %i.p, align 4
  %i.ao = trunc nsw i64 %i.w to i32
  store i32 %i.ao, ptr %i.ah, align 8, !tbaa !65
  store i64 %i.f, ptr %i.ai, align 8, !tbaa !45
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -1022, ptr %i.ah, align 8, !tbaa !65
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = or disjoint i64 %i.f, 4503599627370496
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit, %bb.b, %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6detail9IEEEFloat18initFromFloatAPIntERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm6detail9IEEEFloat17initFromIEEEAPIntIL_ZNS_11APFloatBase13semIEEEsingleEEEEvRKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm6detail9IEEEFloat17initFromIEEEAPIntIL_ZNS_11APFloatBase13semIEEEsingleEEEEvRKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  %i.d = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.c, ptr %1, ptr %i.d ; 2 uses
  %i.e = load i64, ptr %spec.select.i, align 8, !tbaa !45
  %i.f = and i64 %i.e, 8388607                    ; 5 uses
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  %i.n = lshr i64 %i.m, 23
  %i.o = and i64 %i.n, 255                        ; 3 uses
  store ptr @_ZN4llvm11APFloatBase13semIEEEsingleE, ptr %0, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.q = load i8, ptr %i.p, align 4               ; 3 uses
  %sh.diff = lshr i64 %i.m, 28
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %i.r = and i8 %tr.sh.diff, 8                    ; 3 uses
  %i.s = and i8 %i.q, -9
  %i.t = or disjoint i8 %i.s, %i.r                ; 2 uses
  %.not31.i.i.i.i.i = icmp eq i64 %i.f, 0         ; 2 uses
  %i.u = icmp eq i64 %i.o, 0
  %i.v = or i64 %i.o, %i.f
  %or.cond = icmp eq i64 %i.v, 0
  %i.w = add nsw i64 %i.o, -127                   ; 2 uses
  %i.x = icmp eq i64 %i.w, 128                    ; 2 uses
  %i.y = and i1 %.not31.i.i.i.i.i, %i.x
  br i1 %i.y, label %_ZN4llvm6detail9IEEEFloat7makeInfEb.exit, label %.critedge

_ZN4llvm6detail9IEEEFloat7makeInfEb.exit:         ; preds = %bb.a
  %i.z = and i8 %i.q, -16
  %i.aa = or disjoint i8 %i.z, %i.r
  store i8 %i.aa, ptr %i.p, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 128, ptr %i.ab, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm5APInt5tcSetEPmmj(ptr noundef nonnull %i.ac, i64 noundef 0, i32 noundef 1) #29
  br label %bb.g

.critedge:                                        ; preds = %bb.a
  %.not = xor i1 %i.x, true
  %.not18 = or i1 %.not31.i.i.i.i.i, %.not
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.ad = and i8 %i.t, -8
  %i.ae = or disjoint i8 %i.ad, 1
  store i8 %i.ae, ptr %i.p, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 128, ptr %i.af, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.ag, align 8, !tbaa !45
  br label %bb.g

bb.c:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %or.cond, label %_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit, label %bb.d

_ZN4llvm6detail9IEEEFloat8makeZeroEb.exit:        ; preds = %bb.c
  %i.aj = and i8 %i.q, -16
  %i.ak = or disjoint i8 %i.r, %i.aj
  %i.al = or disjoint i8 %i.ak, 3
  store i8 %i.al, ptr %i.p, align 4
  store i32 -127, ptr %i.ah, align 8, !tbaa !65
  tail call void @_ZN4llvm5APInt5tcSetEPmmj(ptr noundef nonnull %i.ai, i64 noundef 0, i32 noundef 1) #29
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.am = and i8 %i.t, -8
  %i.an = or disjoint i8 %i.am, 2
  store i8 %i.an, ptr %i.p, align 4
  %i.ao = trunc nsw i64 %i.w to i32
  store i32 %i.ao, ptr %i.ah, align 8, !tbaa !65
  store i64 %i.f, ptr %i.ai, align 8, !tbaa !45
end_hunk_1
