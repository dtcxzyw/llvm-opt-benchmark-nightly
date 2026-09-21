Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/IiqDecoder?download=true
inline.NumInlined: 1447
inline.NumDeleted: 765
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK8rawspeed10IiqDecoder20correctSensorDefectsENS_10ByteStreamE:bb.a

.lr.ph.split:                                     ; preds = %bb.i
  %i.ai = add nuw nsw i64 %indvars.iv88, 10       ; 2 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ai, %i.g
  br i1 %.not.i.i.i.i.i.i, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %i.aj = phi i64 [ %i.ai, %.lr.ph.split ], [ %i.n, %.lr.ph.split.preheader ] ; 2 uses
  %indvars.iv88 = phi i64 [ %i.at, %.lr.ph.split ], [ %i.m, %.lr.ph.split.preheader ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv88
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.ak, align 1
  %i.al = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i6 = icmp ult i64 %invariant.op, %i.aj
  br i1 %.not.i.i.i.i.i.i6, label %.split27.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit9

.split27.us:                                      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit9:          ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %i.am = add nuw nsw i64 %indvars.iv88, 4        ; 2 uses
  %i.an = icmp samesign ule i64 %i.am, %i.g
  call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aj
  %.0.copyload.i.i.i.i.i.i7 = load i16, ptr %i.ao, align 1
  %i.ap = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i7)
  %i.aq = add nuw nsw i64 %indvars.iv88, 6
  %.not.i.i.i.i.i.i10 = icmp samesign ugt i64 %i.aq, %i.g
  br i1 %.not.i.i.i.i.i.i10, label %.split20.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit13

.split20.us:                                      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit9, %_ZN8rawspeed10ByteStream6getU16Ev.exit9.us
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit13:         ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.am
  %.0.copyload.i.i.i.i.i.i11 = load i16, ptr %i.ar, align 1
  %i.as = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i11)
  %i.at = add nuw nsw i64 %indvars.iv88, 8        ; 3 uses
  %.not.i.i = icmp samesign ugt i64 %i.at, %i.g
  br i1 %.not.i.i, label %.split23.us, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

.split23.us:                                      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit13, %_ZN8rawspeed10ByteStream6getU16Ev.exit13.us
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit13
  %i.au = zext i16 %i.al to i32                   ; 2 uses
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !68  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !151
  %.not5 = icmp sgt i32 %i.ax, %i.au
  br i1 %.not5, label %bb.f, label %bb.i, !llvm.loop !271

bb.f:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  switch i16 %i.as, label %bb.i [
    i16 131, label %bb.g
    i16 137, label %bb.g
    i16 129, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  call void @_ZNK8rawspeed10IiqDecoder16correctBadColumnEt(ptr noundef nonnull align 8 dereferenceable(112) %0, i16 noundef zeroext %i.al)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bb = zext i16 %i.ap to i32
  %i.bc = shl nuw i32 %i.bb, 16
  %i.bd = or disjoint i32 %i.bc, %i.au
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !36
  %i.be = call ptr @_ZNSt6vectorIjSaIjEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %.not = icmp eq i64 %i.at, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef byval(%"class.rawspeed::ByteStream") align 8 captures(none) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array.77", align 4    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153, !noalias !282
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !154, !noalias !282
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !155, !noalias !282
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !156, !noalias !282
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !157, !noalias !282
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  switch i8 %2, label %bb.c [
    i8 0, label %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit"
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit"

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv") #18
  unreachable

"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit": ; preds = %bb.a, %bb.b
  %i.q = phi i1 [ true, %bb.b ], [ false, %bb.a ] ; 14 uses
  %.0.i = phi i32 [ 4, %bb.b ], [ 2, %bb.a ]      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 23 uses
  %.promoted = load i32, ptr %i.r, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i16, ptr %i.v, align 4
  %.fr499 = freeze i16 %i.w
  %i.x = icmp eq i16 %.fr499, -8531               ; 3 uses
  %i.y = load ptr, ptr %1, align 8                ; 18 uses
  %i.z = icmp sgt i32 %i.t, -1                    ; 10 uses
  %i.aa = zext i32 %.promoted to i64              ; 17 uses
  %i.ab = add nuw nsw i64 %i.aa, 2                ; 3 uses
  %.not.i.i.i.i.i.i.us = icmp samesign ugt i64 %i.ab, %i.u ; 2 uses
  br i1 %i.x, label %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit.split.us.preheader", label %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit.split.preheader"

"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit.split.preheader": ; preds = %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit"
  br i1 %.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit

"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit.split.us.preheader": ; preds = %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit"
  br i1 %.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit.us

_ZN8rawspeed10ByteStream6getU16Ev.exit.us:        ; preds = %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit.split.us.preheader"
  tail call void @llvm.assume(i1 %i.z)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %.0.copyload.i.i.i.i.i.i.us = load i16, ptr %i.ac, align 1
  %i.ad = add nuw nsw i64 %i.aa, 4                ; 2 uses
  %.not.i.i.i.i.i.i.us.1 = icmp samesign ugt i64 %i.ad, %i.u
  br i1 %.not.i.i.i.i.i.i.us.1, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.1

_ZN8rawspeed10ByteStream6getU16Ev.exit.us.1:      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %.0.copyload.i.i.i.i.i.i.us.1 = load i16, ptr %i.ae, align 1
  %i.af = add nuw nsw i64 %i.aa, 6                ; 2 uses
  %.not.i.i.i.i.i.i.us.2 = icmp samesign ugt i64 %i.af, %i.u
  br i1 %.not.i.i.i.i.i.i.us.2, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.2

_ZN8rawspeed10ByteStream6getU16Ev.exit.us.2:      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ad
  %.0.copyload.i.i.i.i.i.i.us.2 = load i16, ptr %i.ag, align 1
  %i.ah = add nuw nsw i64 %i.aa, 8                ; 2 uses
  %.not.i.i.i.i.i.i.us.3 = icmp samesign ugt i64 %i.ah, %i.u
  br i1 %.not.i.i.i.i.i.i.us.3, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.3

_ZN8rawspeed10ByteStream6getU16Ev.exit.us.3:      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.2
  %i.ai = add nuw nsw i64 %i.aa, 10
  %.not.i.i.i.i.i.i.us.4 = icmp samesign ugt i64 %i.ai, %i.u
  %i.aj = add nuw nsw i64 %i.aa, 12
  %.not.i.i.i.i.i.i.us.5 = icmp samesign ugt i64 %i.aj, %i.u
  %or.cond661 = select i1 %.not.i.i.i.i.i.i.us.4, i1 true, i1 %.not.i.i.i.i.i.i.us.5
  br i1 %or.cond661, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5

_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5:      ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %.0.copyload.i.i.i.i.i.i.us.3 = load i16, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  %i.am = load <2 x i16>, ptr %i.al, align 1
  %i.an = add nuw nsw i64 %i.aa, 14
  %.not.i.i.i.i.i.i.us.6 = icmp samesign ugt i64 %i.an, %i.u
  %i.ao = add nuw nsw i64 %i.aa, 16               ; 2 uses
  %.not.i.i.i.i.i.i.us.7 = icmp samesign ugt i64 %i.ao, %i.u
  %or.cond632 = select i1 %.not.i.i.i.i.i.i.us.6, i1 true, i1 %.not.i.i.i.i.i.i.us.7
  br i1 %or.cond632, label %.split.us, label %.split402.us

.split402.us:                                     ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit.5, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5
  %.sroa.12.0 = phi i16 [ %.0.copyload.i.i.i.i.i.i.us.3, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5 ], [ %i.bc, %_ZN8rawspeed10ByteStream6getU16Ev.exit.5 ] ; 3 uses
  %.sroa.9.0 = phi i16 [ %.0.copyload.i.i.i.i.i.i.us.2, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5 ], [ %i.ax, %_ZN8rawspeed10ByteStream6getU16Ev.exit.5 ] ; 4 uses
  %.sroa.6.0 = phi i16 [ %.0.copyload.i.i.i.i.i.i.us.1, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5 ], [ %i.au, %_ZN8rawspeed10ByteStream6getU16Ev.exit.5 ]
  %.sroa.0.0 = phi i16 [ %.0.copyload.i.i.i.i.i.i.us, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5 ], [ %i.ar, %_ZN8rawspeed10ByteStream6getU16Ev.exit.5 ] ; 2 uses
  %.promoted491.in = phi i64 [ %i.ao, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5 ], [ %i.bh, %_ZN8rawspeed10ByteStream6getU16Ev.exit.5 ] ; 2 uses
  %i.ap = phi <2 x i16> [ %i.am, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5 ], [ %i.bf, %_ZN8rawspeed10ByteStream6getU16Ev.exit.5 ] ; 4 uses
  %.promoted491 = trunc nuw i64 %.promoted491.in to i32
  store i32 %.promoted491, ptr %i.r, align 8
  %4 = shufflevector <2 x i16> %i.ap, <2 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %5 = insertelement <4 x i16> %4, i16 %.sroa.9.0, i64 0
  %6 = insertelement <4 x i16> %5, i16 %.sroa.12.0, i64 1
  %.fr = freeze <4 x i16> %6
  %7 = icmp eq <4 x i16> %.fr, zeroinitializer
  %8 = bitcast <4 x i1> %7 to i4
  %.not664 = icmp eq i4 %8, 0
  br i1 %.not664, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit142, label %_ZNSt6vectorIfSaIfEED2Ev.exit

.split.us:                                        ; preds = %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit.split.preheader", %_ZN8rawspeed10ByteStream6getU16Ev.exit, %_ZN8rawspeed10ByteStream6getU16Ev.exit.1, %_ZN8rawspeed10ByteStream6getU16Ev.exit.2, %_ZN8rawspeed10ByteStream6getU16Ev.exit.3, %_ZN8rawspeed10ByteStream6getU16Ev.exit.5, %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit.split.us.preheader", %_ZN8rawspeed10ByteStream6getU16Ev.exit.us, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.1, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.2, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.3, %_ZN8rawspeed10ByteStream6getU16Ev.exit.us.5
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #18
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %"_ZZNK8rawspeed10IiqDecoder17PhaseOneFlatFieldENS_10ByteStreamENS0_7IiqCorrEENK3$_0clEv.exit.split.preheader"
  tail call void @llvm.assume(i1 %i.z)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.aq, align 1
  %i.ar = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i)
  %i.as = add nuw nsw i64 %i.aa, 4                ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp samesign ugt i64 %i.as, %i.u
  br i1 %.not.i.i.i.i.i.i.1, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit.1

_ZN8rawspeed10ByteStream6getU16Ev.exit.1:         ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %.0.copyload.i.i.i.i.i.i.1 = load i16, ptr %i.at, align 1
  %i.au = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i.1)
  %i.av = add nuw nsw i64 %i.aa, 6                ; 2 uses
  %.not.i.i.i.i.i.i.2 = icmp samesign ugt i64 %i.av, %i.u
  br i1 %.not.i.i.i.i.i.i.2, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit.2

_ZN8rawspeed10ByteStream6getU16Ev.exit.2:         ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.as
  %.0.copyload.i.i.i.i.i.i.2 = load i16, ptr %i.aw, align 1
  %i.ax = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i.2)
  %i.ay = add nuw nsw i64 %i.aa, 8                ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp samesign ugt i64 %i.ay, %i.u
  br i1 %.not.i.i.i.i.i.i.3, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit.3

_ZN8rawspeed10ByteStream6getU16Ev.exit.3:         ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit.2
  %i.az = add nuw nsw i64 %i.aa, 10
  %.not.i.i.i.i.i.i.4 = icmp samesign ugt i64 %i.az, %i.u
  %i.ba = add nuw nsw i64 %i.aa, 12
  %.not.i.i.i.i.i.i.5 = icmp samesign ugt i64 %i.ba, %i.u
  %or.cond662 = select i1 %.not.i.i.i.i.i.i.4, i1 true, i1 %.not.i.i.i.i.i.i.5
  br i1 %or.cond662, label %.split.us, label %_ZN8rawspeed10ByteStream6getU16Ev.exit.5

_ZN8rawspeed10ByteStream6getU16Ev.exit.5:         ; preds = %_ZN8rawspeed10ByteStream6getU16Ev.exit.3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.av
  %.0.copyload.i.i.i.i.i.i.3 = load i16, ptr %i.bb, align 1
  %i.bc = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i.3)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ay
  %i.be = load <2 x i16>, ptr %i.bd, align 1
  %i.bf = tail call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.be)
  %i.bg = add nuw nsw i64 %i.aa, 14
  %.not.i.i.i.i.i.i.6 = icmp samesign ugt i64 %i.bg, %i.u
  %i.bh = add nuw nsw i64 %i.aa, 16               ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp samesign ugt i64 %i.bh, %i.u
  %or.cond633 = select i1 %.not.i.i.i.i.i.i.6, i1 true, i1 %.not.i.i.i.i.i.i.7
  br i1 %or.cond633, label %.split.us, label %.split402.us

_ZN8rawspeed19roundUpDivisionSafeEmm.exit142:     ; preds = %.split402.us
  %i.bi = insertelement <2 x i16> poison, i16 %.sroa.9.0, i64 0
  %i.bj = insertelement <2 x i16> %i.bi, i16 %.sroa.12.0, i64 1
  %i.bk = add <2 x i16> %i.bj, splat (i16 -1)
  %.lhs.trunc = add i16 %.sroa.9.0, -1
  %i.bl = udiv <2 x i16> %i.bk, %i.ap             ; 2 uses
  %i.bm = extractelement <2 x i16> %i.bl, i64 0   ; 3 uses
  %.zext = zext i16 %i.bm to i32
  %i.bn = add nuw nsw i32 %.zext, 1
  %i.bo = extractelement <2 x i16> %i.bl, i64 1
  %.zext389 = zext i16 %i.bo to i32
  %i.bp = mul nuw nsw i32 %i.bn, %.0.i
  %i.bq = zext nneg i32 %i.bp to i64              ; 10 uses
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 4 uses
  %i.bs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #27 ; 14 uses
  store float 0.000000e+00, ptr %i.bs, align 4, !tbaa !284, !noalias !285
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.br, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bt, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !284, !noalias !285
  %i.bu = extractelement <2 x i16> %i.ap, i64 1   ; 2 uses
  %i.bv = uitofp i16 %i.bu to float               ; 4 uses
  %i.bw = zext i16 %.sroa.6.0 to i32              ; 2 uses
  %i.bx = zext i16 %i.bu to i32                   ; 3 uses
  %i.by = zext i16 %.sroa.12.0 to i32
  %i.bz = sub nsw i32 %i.by, %i.bx
  %i.ca = add nsw i32 %i.bz, %i.bw                ; 2 uses
  %i.cb = extractelement <2 x i16> %i.ap, i64 0   ; 4 uses
  %.not392482 = icmp ugt i16 %i.cb, %.lhs.trunc
  %i.cc = uitofp i16 %i.cb to float               ; 2 uses
  %i.cd = zext i16 %.sroa.0.0 to i32
  %i.ce = zext i16 %i.cb to i32
  %i.cf = zext i16 %.sroa.9.0 to i32
  %i.cg = sub nsw i32 %i.cf, %i.ce
  %i.ch = add nsw i32 %i.cg, %i.cd                ; 2 uses
  %i.ci = zext nneg i32 %.0.i to i64              ; 18 uses
  %i.cj = zext i16 %i.bm to i64                   ; 7 uses
  %i.ck = zext nneg i32 %.0.i to i64
  %i.cl = zext i16 %i.cb to i64                   ; 2 uses
  %i.cm = zext i16 %.sroa.0.0 to i64
  %i.cn = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = icmp eq i16 %i.bm, 0
  %unroll_iter = and i64 %i.cn, 131070
  %i.ct = and i64 %i.cj, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ct, 0
  %lcmp.mod677 = trunc i64 %i.cn to i1
  br label %.preheader398

.preheader398:                                    ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit142, %.critedge
  %i.cu = phi float [ undef, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit142 ], [ %i.kz, %.critedge ] ; 3 uses
  %i.cv = phi float [ undef, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit142 ], [ %i.la, %.critedge ] ; 3 uses
  %.090498 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit142 ], [ %i.lb, %.critedge ] ; 4 uses
  %.us-phi461492497 = phi i64 [ %.promoted491.in, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit142 ], [ %.us-phi461.in, %.critedge ]
  %i.cw = icmp eq i32 %.090498, 0                 ; 2 uses
  %i.cx = and i64 %.us-phi461492497, 4294967295   ; 4 uses
  br i1 %i.cw, label %.preheader398.split.us, label %.preheader398.split

.preheader398.split.us:                           ; preds = %.preheader398
  br i1 %i.x, label %.preheader397.us.us, label %.preheader397.us

.preheader397.us.us:                              ; preds = %.preheader398.split.us, %.split414.us.split.us.us.us
  %indvars.iv573 = phi i64 [ %indvars.iv.next574, %.split414.us.split.us.us.us ], [ 0, %.preheader398.split.us ] ; 3 uses
  %.us-phi415432441.us.us = phi i64 [ %.lcssa674.a, %.split414.us.split.us.us.us ], [ %i.cx, %.preheader398.split.us ] ; 3 uses
  %i.cy = mul nuw nsw i64 %indvars.iv573, %i.ci   ; 2 uses
  %i.cz = add nuw nsw i64 %i.cy, %i.ci
  %i.da = icmp samesign ule i64 %i.cz, %i.bq      ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cy ; 2 uses
  %i.dc = add nuw nsw i64 %.us-phi415432441.us.us, 2 ; 3 uses
  %.not.i.i.i.i.i.i146.us.us.us.us = icmp samesign ugt i64 %i.dc, %i.u
  br i1 %.not.i.i.i.i.i.i146.us.us.us.us, label %.split410.us, label %bb.d

bb.d:                                             ; preds = %.preheader397.us.us
  tail call void @llvm.assume(i1 %i.z)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 %.us-phi415432441.us.us
  %.0.copyload.i.i.i.i.i.i147.us.us.us.us = load i16, ptr %i.dd, align 1
  %i.de = uitofp i16 %.0.copyload.i.i.i.i.i.i147.us.us.us.us to float
  %i.df = fmul nnan float %i.de, f0x38000000
  tail call void @llvm.assume(i1 %i.da)
  store float %i.df, ptr %i.db, align 4, !tbaa !284
  br i1 %i.q, label %bb.e, label %.split414.us.split.us.us.us

bb.e:                                             ; preds = %bb.d
  %i.dg = add nuw nsw i64 %.us-phi415432441.us.us, 4 ; 2 uses
  %.not.i.i.i.i.i.i146.us.us.us.us.1 = icmp samesign ugt i64 %i.dg, %i.u
  br i1 %.not.i.i.i.i.i.i146.us.us.us.us.1, label %.split410.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.z)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.dc
  %.0.copyload.i.i.i.i.i.i147.us.us.us.us.1 = load i16, ptr %i.dh, align 1
  %i.di = uitofp i16 %.0.copyload.i.i.i.i.i.i147.us.us.us.us.1 to float
  %i.dj = fmul nnan float %i.di, f0x38000000
  tail call void @llvm.assume(i1 %i.da)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store float %i.dj, ptr %i.dk, align 4, !tbaa !284
  br label %.split414.us.split.us.us.us

.split414.us.split.us.us.us:                      ; preds = %bb.f, %bb.d
  %.lcssa674.a = phi i64 [ %i.dc, %bb.d ], [ %i.dg, %bb.f ] ; 2 uses
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1
  %.not391.us.us.not = icmp samesign ult i64 %indvars.iv573, %i.cj
  br i1 %.not391.us.us.not, label %.preheader397.us.us, label %.split460.us, !llvm.loop !276

.preheader397.us:                                 ; preds = %.preheader398.split.us, %.split414.us.split.us447
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %.split414.us.split.us447 ], [ 0, %.preheader398.split.us ] ; 3 uses
  %.us-phi415432441.us = phi i64 [ %.lcssa673.a, %.split414.us.split.us447 ], [ %i.cx, %.preheader398.split.us ] ; 3 uses
  %i.dl = mul nuw nsw i64 %indvars.iv563, %i.ci   ; 2 uses
  %i.dm = add nuw nsw i64 %i.dl, %i.ci
  %i.dn = icmp samesign ule i64 %i.dm, %i.bq      ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.dl ; 2 uses
  %i.dp = add nuw nsw i64 %.us-phi415432441.us, 2 ; 3 uses
  %.not.i.i.i.i.i.i146.us.us445 = icmp samesign ugt i64 %i.dp, %i.u
  br i1 %.not.i.i.i.i.i.i146.us.us445, label %.split410.us, label %bb.g

bb.g:                                             ; preds = %.preheader397.us
  tail call void @llvm.assume(i1 %i.z)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 %.us-phi415432441.us
  %.0.copyload.i.i.i.i.i.i147.us.us446 = load i16, ptr %i.dq, align 1
  %i.dr = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i147.us.us446)
  %i.ds = uitofp i16 %i.dr to float
  %i.dt = fmul nnan float %i.ds, f0x38000000
  tail call void @llvm.assume(i1 %i.dn)
  store float %i.dt, ptr %i.do, align 4, !tbaa !284
  br i1 %i.q, label %bb.h, label %.split414.us.split.us447

bb.h:                                             ; preds = %bb.g
  %i.du = add nuw nsw i64 %.us-phi415432441.us, 4 ; 2 uses
  %.not.i.i.i.i.i.i146.us.us445.1 = icmp samesign ugt i64 %i.du, %i.u
  br i1 %.not.i.i.i.i.i.i146.us.us445.1, label %.split410.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.assume(i1 %i.z)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.dp
  %.0.copyload.i.i.i.i.i.i147.us.us446.1 = load i16, ptr %i.dv, align 1
  %i.dw = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i147.us.us446.1)
  %i.dx = uitofp i16 %i.dw to float
  %i.dy = fmul nnan float %i.dx, f0x38000000
  tail call void @llvm.assume(i1 %i.dn)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store float %i.dy, ptr %i.dz, align 4, !tbaa !284
  br label %.split414.us.split.us447

.split414.us.split.us447:                         ; preds = %bb.i, %bb.g
  %.lcssa673.a = phi i64 [ %i.dp, %bb.g ], [ %i.du, %bb.i ] ; 2 uses
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1
end_hunk_0
