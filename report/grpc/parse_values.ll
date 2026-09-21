Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/parse_values?download=true
inline.NumInlined: 252
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4bssl3der12ParseUTCTimeENS0_5InputEPNS0_15GeneralizedTimeE:bb.a

_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit12: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.aj = mul i8 %i.ae, 10
  %i.ak = add nsw i8 %i.aj, -16
  %i.al = add nsw i8 %i.ak, %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  store i8 %i.al, ptr %i.ac, align 1, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.an = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.c)
  br i1 %i.an, label %bb.n, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit15

bb.n:                                             ; preds = %bb.m
  %i.ao = load i8, ptr %i.c, align 1, !tbaa !11   ; 2 uses
  %i.ap = add i8 %i.ao, -58
  %or.cond.i13 = icmp ult i8 %i.ap, -10
  br i1 %or.cond.i13, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit15, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.aq = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.c)
  br i1 %i.aq, label %bb.p, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit15

bb.p:                                             ; preds = %bb.o
  %i.ar = load i8, ptr %i.c, align 1, !tbaa !11   ; 2 uses
  %i.as = add i8 %i.ar, -58
  %or.cond.1.i14 = icmp ult i8 %i.as, -10
  br i1 %or.cond.1.i14, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit15, label %bb.q

_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit15: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.at = mul i8 %i.ao, 10
  %i.au = add nsw i8 %i.at, -16
  %i.av = add nsw i8 %i.au, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  store i8 %i.av, ptr %i.am, align 4, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ax = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b)
  br i1 %i.ax, label %bb.r, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit18

bb.r:                                             ; preds = %bb.q
  %i.ay = load i8, ptr %i.b, align 1, !tbaa !11   ; 2 uses
  %i.az = add i8 %i.ay, -58
  %or.cond.i16 = icmp ult i8 %i.az, -10
  br i1 %or.cond.i16, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit18, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ba = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b)
  br i1 %i.ba, label %bb.t, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit18

bb.t:                                             ; preds = %bb.s
  %i.bb = load i8, ptr %i.b, align 1, !tbaa !11   ; 2 uses
  %i.bc = add i8 %i.bb, -58
  %or.cond.1.i17 = icmp ult i8 %i.bc, -10
  br i1 %or.cond.1.i17, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit18, label %bb.u

_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit18: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.bd = mul i8 %i.ay, 10
  %i.be = add nsw i8 %i.bd, -16
  %i.bf = add nsw i8 %i.be, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  store i8 %i.bf, ptr %i.aw, align 1, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bh = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.bh, label %bb.v, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit21

bb.v:                                             ; preds = %bb.u
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !11   ; 2 uses
  %i.bj = add i8 %i.bi, -58
  %or.cond.i19 = icmp ult i8 %i.bj, -10
  br i1 %or.cond.i19, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit21, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bk = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
  br i1 %i.bk, label %bb.x, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit21

bb.x:                                             ; preds = %bb.w
  %i.bl = load i8, ptr %i.a, align 1, !tbaa !11   ; 2 uses
  %i.bm = add i8 %i.bl, -58
  %or.cond.1.i20 = icmp ult i8 %i.bm, -10
  br i1 %or.cond.1.i20, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit21, label %bb.y

_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit21: ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bn = mul i8 %i.bi, 10
  %i.bo = add nsw i8 %i.bn, -16
  %i.bp = add nsw i8 %i.bo, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store i8 %i.bp, ptr %i.bg, align 2, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.bq = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.g)
  %i.br = load i8, ptr %i.g, align 1
  %i.bs = icmp eq i8 %i.br, 90
  %or.cond.not = select i1 %i.bq, i1 %i.bs, i1 false
  br i1 %or.cond.not, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bt = call noundef zeroext i1 @_ZN4bssl3der10ByteReader7HasMoreEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.bt, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = icmp samesign ult i16 %i.r, 50
  %storemerge.v = select i1 %i.bu, i16 2000, i16 1900
  %storemerge = add nuw nsw i16 %storemerge.v, %i.r
  store i16 %storemerge, ptr %4, align 8, !tbaa !28
  %i.bv = call fastcc noundef zeroext i1 @_ZN4bssl3der12_GLOBAL__N_123ValidateGeneralizedTimeERKNS0_15GeneralizedTimeE(ptr noundef nonnull align 2 dereferenceable(8) %4)
  br i1 %i.bv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bw = load i64, ptr %4, align 8
  store i64 %i.bw, ptr %2, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.y, %bb.z, %bb.ab
  %.0 = phi i1 [ false, %bb.y ], [ true, %bb.ab ], [ false, %bb.z ], [ false, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit21, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit18, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit15, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit12, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit, %bb.ac
  %.1 = phi i1 [ %.0, %bb.ac ], [ false, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit21 ], [ false, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit18 ], [ false, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit15 ], [ false, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit12 ], [ false, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit ], [ false, %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN4bssl3der10ByteReader7HasMoreEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN4bssl3der12_GLOBAL__N_123ValidateGeneralizedTimeERKNS0_15GeneralizedTimeE(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !42    ; 2 uses
  %i.c = add i8 %i.b, -13
  %or.cond = icmp ult i8 %i.c, -12
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.e = load i8, ptr %i.d, align 1, !tbaa !43    ; 5 uses
  %i.f = icmp eq i8 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i8, ptr %i.g, align 2
  %i.i = icmp ugt i8 %i.h, 23
  %or.cond20 = select i1 %i.f, i1 true, i1 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp ugt i8 %i.k, 59
  %or.cond23 = select i1 %or.cond20, i1 true, i1 %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.n = load i8, ptr %i.m, align 2
  %i.o = icmp ugt i8 %i.n, 60
  %or.cond26 = select i1 %or.cond23, i1 true, i1 %i.o
  br i1 %or.cond26, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %i.b, label %default.unreachable [
    i8 4, label %bb.d
    i8 6, label %bb.d
    i8 9, label %bb.d
    i8 11, label %bb.d
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 5, label %bb.e
    i8 7, label %bb.e
    i8 8, label %bb.e
    i8 10, label %bb.e
    i8 12, label %bb.e
    i8 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.p = icmp ugt i8 %i.e, 30
  br i1 %i.p, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.q = icmp ugt i8 %i.e, 31
  br i1 %i.q, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.r = load i16, ptr %0, align 2, !tbaa !28     ; 2 uses
  %i.s = and i16 %i.r, 3
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %1 = insertelement <2 x i16> poison, i16 %i.r, i64 0
  %2 = shufflevector <2 x i16> %1, <2 x i16> poison, <2 x i32> zeroinitializer
  %3 = urem <2 x i16> %2, <i16 100, i16 400>      ; 2 uses
  %4 = extractelement <2 x i16> %3, i64 0
  %.not = icmp ne i16 %4, 0
  %5 = extractelement <2 x i16> %3, i64 1
  %i.u = icmp eq i16 %5, 0
  %or.cond17 = or i1 %.not, %i.u
  br i1 %or.cond17, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ugt i8 %i.e, 29
  br i1 %i.v, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.w = icmp ugt i8 %i.e, 28
  br i1 %i.w, label %bb.k, label %bb.j

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.d
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.b, %bb.a, %bb.j
  %.0 = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.i ], [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bssl3der20ParseGeneralizedTimeENS0_5InputEPNS0_15GeneralizedTimeE(ptr %0, i64 %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %i.b = alloca i8, align 1                       ; 9 uses
  %i.c = alloca i8, align 1                       ; 9 uses
  %i.d = alloca i8, align 1                       ; 9 uses
  %i.e = alloca i8, align 1                       ; 9 uses
  %i.f = alloca i8, align 1                       ; 17 uses
  %3 = alloca %"class.bssl::der::ByteReader", align 8 ; 19 uses
  %4 = alloca %"struct.bssl::der::GeneralizedTime", align 8 ; 10 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN4bssl3der10ByteReaderC1ENS0_5InputE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %0, i64 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.h = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.f)
  br i1 %i.h, label %bb.b, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.f, align 1, !tbaa !11    ; 2 uses
  %i.j = add i8 %i.i, -58
  %or.cond.i = icmp ult i8 %i.j, -10
  br i1 %or.cond.i, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.l = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.f)
  br i1 %i.l, label %bb.d, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.f, align 1, !tbaa !11    ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond.i.1 = icmp ult i8 %i.n, -10
  br i1 %or.cond.i.1, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i8 %i.m to i16
  %i.p = mul nuw nsw i16 %i.k, 10
  %i.q = add nsw i16 %i.p, -528
  %i.r = add nsw i16 %i.q, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.s = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.f)
  br i1 %i.s, label %bb.f, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.f, align 1, !tbaa !11    ; 2 uses
  %i.u = add i8 %i.t, -58
  %or.cond.i.2 = icmp ult i8 %i.u, -10
  br i1 %or.cond.i.2, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i8 %i.t to i16
  %i.w = mul nuw nsw i16 %i.r, 10
  %i.x = add nsw i16 %i.w, -48
  %i.y = add nsw i16 %i.x, %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.z = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.f)
  br i1 %i.z, label %bb.h, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.f, align 1, !tbaa !11   ; 2 uses
  %i.ab = add i8 %i.aa, -58
  %or.cond.i.3 = icmp ult i8 %i.ab, -10
  br i1 %or.cond.i.3, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = zext nneg i8 %i.aa to i16
  %i.ad = mul nuw nsw i16 %i.y, 10
  %i.ae = add nsw i16 %i.ad, -48
  %i.af = add nsw i16 %i.ae, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  store i16 %i.af, ptr %4, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.ah = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.e)
  br i1 %i.ah, label %bb.j, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit

_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintItEEbRNS0_10ByteReaderEmPT_.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.ah

bb.j:                                             ; preds = %bb.i
  %i.ai = load i8, ptr %i.e, align 1, !tbaa !11   ; 2 uses
  %i.aj = add i8 %i.ai, -58
  %or.cond.i7 = icmp ult i8 %i.aj, -10
  br i1 %or.cond.i7, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.ak = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.e)
  br i1 %i.ak, label %bb.l, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.e, align 1, !tbaa !11   ; 2 uses
  %i.am = add i8 %i.al, -58
  %or.cond.1.i = icmp ult i8 %i.am, -10
  br i1 %or.cond.1.i, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit, label %bb.m

_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.ah

bb.m:                                             ; preds = %bb.l
  %i.an = mul i8 %i.ai, 10
  %i.ao = add nsw i8 %i.an, -16
  %i.ap = add nsw i8 %i.ao, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  store i8 %i.ap, ptr %i.ag, align 2, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ar = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.d)
  br i1 %i.ar, label %bb.n, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit10

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %i.d, align 1, !tbaa !11   ; 2 uses
  %i.at = add i8 %i.as, -58
  %or.cond.i8 = icmp ult i8 %i.at, -10
  br i1 %or.cond.i8, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit10, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.au = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.d)
  br i1 %i.au, label %bb.p, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit10

bb.p:                                             ; preds = %bb.o
  %i.av = load i8, ptr %i.d, align 1, !tbaa !11   ; 2 uses
  %i.aw = add i8 %i.av, -58
  %or.cond.1.i9 = icmp ult i8 %i.aw, -10
  br i1 %or.cond.1.i9, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit10, label %bb.q

_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit10: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.ax = mul i8 %i.as, 10
  %i.ay = add nsw i8 %i.ax, -16
  %i.az = add nsw i8 %i.ay, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  store i8 %i.az, ptr %i.aq, align 1, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.bb = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.c)
  br i1 %i.bb, label %bb.r, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit13

bb.r:                                             ; preds = %bb.q
  %i.bc = load i8, ptr %i.c, align 1, !tbaa !11   ; 2 uses
  %i.bd = add i8 %i.bc, -58
  %or.cond.i11 = icmp ult i8 %i.bd, -10
  br i1 %or.cond.i11, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit13, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.be = call noundef zeroext i1 @_ZN4bssl3der10ByteReader8ReadByteEPh(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.c)
  br i1 %i.be, label %bb.t, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit13

bb.t:                                             ; preds = %bb.s
  %i.bf = load i8, ptr %i.c, align 1, !tbaa !11   ; 2 uses
  %i.bg = add i8 %i.bf, -58
  %or.cond.1.i12 = icmp ult i8 %i.bg, -10
  br i1 %or.cond.1.i12, label %_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit13, label %bb.u

_ZN4bssl3der12_GLOBAL__N_119DecimalStringToUintIhEEbRNS0_10ByteReaderEmPT_.exit13: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.bh = mul i8 %i.bc, 10
  %i.bi = add nsw i8 %i.bh, -16
  %i.bj = add nsw i8 %i.bi, %i.bf
end_hunk_0
