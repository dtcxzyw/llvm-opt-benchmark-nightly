Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1684
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt:.critedge
.critedge.11:                                     ; preds = %.critedge.10
  %i.w = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 22), ptr noundef nonnull %1, i32 noundef 2)
  %i.x = icmp slt i32 %i.w, 4
  br i1 %i.x, label %bb.a, label %.critedge.12

.critedge.12:                                     ; preds = %.critedge.11
  %i.y = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 24), ptr noundef nonnull %1, i32 noundef 2)
  %i.z = icmp slt i32 %i.y, 4
  br i1 %i.z, label %bb.a, label %.critedge.13

.critedge.13:                                     ; preds = %.critedge.12
  %i.aa = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 26), ptr noundef nonnull %1, i32 noundef 2)
  %i.ab = icmp slt i32 %i.aa, 4
  br i1 %i.ab, label %bb.a, label %.critedge.14

.critedge.14:                                     ; preds = %.critedge.13
  %i.ac = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 28), ptr noundef nonnull %1, i32 noundef 2)
  %i.ad = icmp slt i32 %i.ac, 4
  br i1 %i.ad, label %bb.a, label %.critedge.15

.critedge.15:                                     ; preds = %.critedge.14
  %i.ae = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 30), ptr noundef nonnull %1, i32 noundef 2)
  %i.af = icmp slt i32 %i.ae, 4
  br i1 %i.af, label %bb.a, label %.critedge.16

.critedge.16:                                     ; preds = %.critedge.15
  %i.ag = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 32), ptr noundef nonnull %1, i32 noundef 2)
  %i.ah = icmp slt i32 %i.ag, 4
  br i1 %i.ah, label %bb.a, label %.critedge.17

.critedge.17:                                     ; preds = %.critedge.16
  %i.ai = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 34), ptr noundef nonnull %1, i32 noundef 2)
  %i.aj = icmp slt i32 %i.ai, 4
  br i1 %i.aj, label %bb.a, label %.critedge.18

.critedge.18:                                     ; preds = %.critedge.17
  %i.ak = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 36), ptr noundef nonnull %1, i32 noundef 2)
  %i.al = icmp slt i32 %i.ak, 4
  br i1 %i.al, label %bb.a, label %.critedge.19

.critedge.19:                                     ; preds = %.critedge.18
  %i.am = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 38), ptr noundef nonnull %1, i32 noundef 2)
  %i.an = icmp slt i32 %i.am, 4
  br i1 %i.an, label %bb.a, label %.critedge.20

.critedge.20:                                     ; preds = %.critedge.19
  %i.ao = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 40), ptr noundef nonnull %1, i32 noundef 2)
  %i.ap = icmp slt i32 %i.ao, 4
  br i1 %i.ap, label %bb.a, label %.critedge.21

.critedge.21:                                     ; preds = %.critedge.20
  %i.aq = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 42), ptr noundef nonnull %1, i32 noundef 2)
  %i.ar = icmp slt i32 %i.aq, 4
  br i1 %i.ar, label %bb.a, label %.critedge.22

.critedge.22:                                     ; preds = %.critedge.21
  %i.as = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 44), ptr noundef nonnull %1, i32 noundef 2)
  %i.at = icmp slt i32 %i.as, 4
  br i1 %i.at, label %bb.a, label %.critedge.23

.critedge.23:                                     ; preds = %.critedge.22
  %i.au = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 46), ptr noundef nonnull %1, i32 noundef 2)
  %i.av = icmp slt i32 %i.au, 4
  br i1 %i.av, label %bb.a, label %.critedge.24

.critedge.24:                                     ; preds = %.critedge.23
  %i.aw = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 48), ptr noundef nonnull %1, i32 noundef 2)
  %i.ax = icmp slt i32 %i.aw, 4
  br i1 %i.ax, label %bb.a, label %.critedge.25

.critedge.25:                                     ; preds = %.critedge.24
  %i.ay = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 50), ptr noundef nonnull %1, i32 noundef 2)
  %i.az = icmp slt i32 %i.ay, 4
  br i1 %i.az, label %bb.a, label %.critedge.26

.critedge.26:                                     ; preds = %.critedge.25
  %i.ba = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 52), ptr noundef nonnull %1, i32 noundef 2)
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %bb.a, label %.critedge.27

.critedge.27:                                     ; preds = %.critedge.26
  %i.bc = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 54), ptr noundef nonnull %1, i32 noundef 2)
  %i.bd = icmp slt i32 %i.bc, 4
  br i1 %i.bd, label %bb.a, label %.critedge.28

.critedge.28:                                     ; preds = %.critedge.27
  %i.be = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 56), ptr noundef nonnull %1, i32 noundef 2)
  %i.bf = icmp slt i32 %i.be, 4
  br i1 %i.bf, label %bb.a, label %.critedge.29

.critedge.29:                                     ; preds = %.critedge.28
  %i.bg = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 58), ptr noundef nonnull %1, i32 noundef 2)
  %i.bh = icmp slt i32 %i.bg, 4
  br i1 %i.bh, label %bb.a, label %.critedge.30

.critedge.30:                                     ; preds = %.critedge.29
  %i.bi = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 60), ptr noundef nonnull %1, i32 noundef 2)
  %i.bj = icmp slt i32 %i.bi, 4
  br i1 %i.bj, label %bb.a, label %.critedge.31

.critedge.31:                                     ; preds = %.critedge.30
  %i.bk = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 62), ptr noundef nonnull %1, i32 noundef 2)
  %i.bl = icmp slt i32 %i.bk, 4
  br i1 %i.bl, label %bb.a, label %.critedge14

bb.a:                                             ; preds = %.critedge.31, %.critedge.30, %.critedge.29, %.critedge.28, %.critedge.27, %.critedge.26, %.critedge.25, %.critedge.24, %.critedge.23, %.critedge.22, %.critedge.21, %.critedge.20, %.critedge.19, %.critedge.18, %.critedge.17, %.critedge.16, %.critedge.15, %.critedge.14, %.critedge.13, %.critedge.12, %.critedge.11, %.critedge.10, %.critedge.9, %.critedge.8, %.critedge.7, %.critedge.6, %.critedge.5, %.critedge.4, %.critedge.3, %.critedge.2, %.critedge.1, %.critedge
  %.lcssa19 = phi ptr [ @_ZN2cvL13formatInfoLUTE, %.critedge ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 2), %.critedge.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 4), %.critedge.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 6), %.critedge.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 8), %.critedge.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 10), %.critedge.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 12), %.critedge.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 14), %.critedge.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 16), %.critedge.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 18), %.critedge.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 20), %.critedge.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 22), %.critedge.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 24), %.critedge.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 26), %.critedge.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 28), %.critedge.14 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 30), %.critedge.15 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 32), %.critedge.16 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 34), %.critedge.17 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 36), %.critedge.18 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 38), %.critedge.19 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 40), %.critedge.20 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 42), %.critedge.21 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 44), %.critedge.22 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 46), %.critedge.23 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 48), %.critedge.24 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 50), %.critedge.25 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 52), %.critedge.26 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 54), %.critedge.27 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 56), %.critedge.28 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 58), %.critedge.29 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 60), %.critedge.30 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 62), %.critedge.31 ]
  %i.bm = load i16, ptr %.lcssa19, align 2, !tbaa !105
  %i.bn = xor i16 %i.bm, 21522
  store i16 %i.bn, ptr %1, align 2, !tbaa !105
  br label %.critedge14

.critedge14:                                      ; preds = %.critedge.31, %bb.a
  %i.bo = phi i1 [ true, %bb.a ], [ false, %.critedge.31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 %i.bo
}

declare noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl16decodeFormatInfoERKNS_3MatERi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !181
  %.fr58 = freeze i32 %i.d                        ; 2 uses
  %i.e = icmp slt i32 %.fr58, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !182  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = and i8 %i.k, 1                           ; 6 uses
  br i1 %i.e, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.sink.i38.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sink.i38.1, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %i.o = shl i8 %i.n, 1
  %i.p = and i8 %i.o, 2
  %i.q = shl i64 %i.i, 1
  %.sink.i38.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sink.i38.2, i64 8
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = shl i8 %i.s, 2
  %i.u = and i8 %i.t, 4
  %i.v = or disjoint i8 %i.p, %i.u
  %i.w = mul i64 %i.i, 3
  %.sink.i38.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %.sink.i38.3, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = shl i8 %i.y, 3
  %i.aa = and i8 %i.z, 8
  %i.ab = or disjoint i8 %i.v, %i.aa
  %i.ac = shl i64 %i.i, 2
  %.sink.i38.4 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i38.4, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = shl i8 %i.ae, 4
  %i.ag = and i8 %i.af, 16
  %i.ah = or disjoint i8 %i.ab, %i.ag
  %i.ai = mul i64 %i.i, 5
  %.sink.i38.5 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink.i38.5, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.al = shl i8 %i.ak, 5
  %i.am = and i8 %i.al, 32
  %i.an = or disjoint i8 %i.ah, %i.am
  br label %.split47

.split.us:                                        ; preds = %bb.a
  %i.ao = shl nuw nsw i8 %i.l, 1
  %i.ap = shl nuw nsw i8 %i.l, 2
  %i.aq = or disjoint i8 %i.ao, %i.ap
  %i.ar = shl nuw nsw i8 %i.l, 3
  %i.as = or disjoint i8 %i.aq, %i.ar
  %i.at = shl nuw nsw i8 %i.l, 4
  %i.au = or disjoint i8 %i.as, %i.at
  %i.av = shl nuw nsw i8 %i.l, 5
  %i.aw = or disjoint i8 %i.au, %i.av
  br label %.split47

.split47:                                         ; preds = %.split.preheader, %.split.us
  %.pn = phi i8 [ %i.an, %.split.preheader ], [ %i.aw, %.split.us ]
  %i.ax = icmp slt i32 %.fr58, 2                  ; 2 uses
  %i.ay = mul i64 %i.i, 7
  %.sink.idx.i = select i1 %i.ax, i64 0, i64 %i.ay
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10
  %i.bb = shl i8 %i.ba, 6
  %i.bc = and i8 %i.bb, 64
  %i.bd = or i8 %.pn, %i.bc
  %i.be = shl i64 %i.i, 3
  %.sink.idx.i33 = select i1 %i.ax, i64 0, i64 %i.be
  %.sink.i34 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i33 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink.i34, i64 8
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = shl i8 %i.bg, 7
  %3 = or i8 %i.bd, %i.bh
  %i.bi = or i8 %3, %i.l
  %4 = zext i8 %i.bi to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink.i34, i64 7
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !10
  %5 = and i8 %i.bk, 1
  %6 = zext nneg i8 %5 to i16
  %7 = shl nuw nsw i16 %6, 8
  %8 = or disjoint i16 %7, %4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink.i34, i64 4
  %9 = load <2 x i8>, ptr %i.bl, align 1, !tbaa !10
  %10 = and <2 x i8> %9, splat (i8 1)
  %11 = zext nneg <2 x i8> %10 to <2 x i16>
  %12 = shl nuw nsw <2 x i16> %11, <i16 10, i16 9> ; 2 uses
  %13 = extractelement <2 x i16> %12, i64 1
  %14 = or disjoint i16 %8, %13
  %15 = extractelement <2 x i16> %12, i64 0
  %16 = or disjoint i16 %14, %15
  %17 = getelementptr inbounds nuw i8, ptr %.sink.i34, i64 2
  %i.bm = load <2 x i8>, ptr %17, align 1, !tbaa !10
  %18 = and <2 x i8> %i.bm, splat (i8 1)
  %19 = zext nneg <2 x i8> %18 to <2 x i16>
  %20 = shl nuw nsw <2 x i16> %19, <i16 12, i16 11> ; 2 uses
  %21 = extractelement <2 x i16> %20, i64 1
  %22 = or i16 %16, %21
  %23 = extractelement <2 x i16> %20, i64 0
  %24 = or i16 %22, %23
  %25 = load <2 x i8>, ptr %.sink.i34, align 1, !tbaa !10
  %26 = and <2 x i8> %25, splat (i8 1)
  %27 = zext nneg <2 x i8> %26 to <2 x i16>
  %28 = shl nuw nsw <2 x i16> %27, <i16 14, i16 13> ; 2 uses
  %29 = extractelement <2 x i16> %28, i64 1
  %30 = or i16 %24, %29
  %31 = extractelement <2 x i16> %28, i64 0
  %32 = or i16 %30, %31
  store i16 %32, ptr %i.a, align 2, !tbaa !105
  %i.bn = call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt(ptr nonnull align 8 poison, ptr noundef nonnull align 2 dereferenceable(2) %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !231 ; 8 uses
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !181
  %.fr = freeze i32 %i.bq                         ; 2 uses
  %i.br = icmp slt i32 %.fr, 2
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !182 ; 9 uses
  %i.bt = load i64, ptr %i.h, align 8             ; 8 uses
  %i.bu = shl i64 %i.bt, 3
  %.sink.idx.i41 = select i1 %i.br, i64 0, i64 %i.bu
  %.sink.i42 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink.idx.i41 ; 8 uses
  %i.bv = add i32 %i.bp, -1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = and i8 %i.by, 1
  %i.ca = add i32 %i.bp, -2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = shl i8 %i.cd, 1
  %i.cf = and i8 %i.ce, 2
  %i.cg = or disjoint i8 %i.bz, %i.cf
  %i.ch = add i32 %i.bp, -3
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !10
  %i.cl = shl i8 %i.ck, 2
  %i.cm = and i8 %i.cl, 4
  %i.cn = or disjoint i8 %i.cg, %i.cm
  %i.co = add i32 %i.bp, -4
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cs = shl i8 %i.cr, 3
  %i.ct = and i8 %i.cs, 8
  %i.cu = or disjoint i8 %i.cn, %i.ct
  %i.cv = add i32 %i.bp, -5
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !10
  %i.cz = shl i8 %i.cy, 4
  %i.da = and i8 %i.cz, 16
  %i.db = or disjoint i8 %i.cu, %i.da
  %i.dc = add i32 %i.bp, -6
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dg = shl i8 %i.df, 5
  %i.dh = and i8 %i.dg, 32
  %i.di = or disjoint i8 %i.db, %i.dh
  %i.dj = add i32 %i.bp, -7
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = shl i8 %i.dm, 6
  %i.do = and i8 %i.dn, 64
  %i.dp = or i8 %i.di, %i.do
  %i.dq = add i32 %i.bp, -8
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !10
  %i.du = shl i8 %i.dt, 7
  %i.dv = or i8 %i.dp, %i.du
  %i.dw = zext i8 %i.dv to i16
  %i.dx = icmp slt i32 %.fr, 2
  br i1 %i.dx, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.split47
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !179 ; 7 uses
  %invariant.op = add i32 %i.dz, -7
  %i.ea = sext i32 %invariant.op to i64
  %i.eb = mul i64 %i.bt, %i.ea
  %.sink.i44 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %.sink.i44, i64 8
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !10
  %.reass.1 = add i32 %i.dz, -6
  %i.ee = sext i32 %.reass.1 to i64
  %i.ef = mul i64 %i.bt, %i.ee
  %.sink.i44.1 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ef
  %i.eg = getelementptr inbounds nuw i8, ptr %.sink.i44.1, i64 8
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !10
  %.reass.2 = add i32 %i.dz, -5
  %i.ei = sext i32 %.reass.2 to i64
  %i.ej = mul i64 %i.bt, %i.ei
  %.sink.i44.2 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink.i44.2, i64 8
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !10
  %.reass.3 = add i32 %i.dz, -4
  %i.em = sext i32 %.reass.3 to i64
  %i.en = mul i64 %i.bt, %i.em
  %.sink.i44.3 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.en
  %i.eo = getelementptr inbounds nuw i8, ptr %.sink.i44.3, i64 8
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !10
  %i.eq = insertelement <4 x i8> poison, i8 %i.ed, i64 0
  %i.er = insertelement <4 x i8> %i.eq, i8 %i.eh, i64 1
  %i.es = insertelement <4 x i8> %i.er, i8 %i.el, i64 2
  %i.et = insertelement <4 x i8> %i.es, i8 %i.ep, i64 3
  %i.eu = and <4 x i8> %i.et, splat (i8 1)
  %i.ev = zext nneg <4 x i8> %i.eu to <4 x i16>
  %i.ew = shl nuw nsw <4 x i16> %i.ev, <i16 8, i16 9, i16 10, i16 11>
  %.reass.4 = add i32 %i.dz, -3
  %i.ex = sext i32 %.reass.4 to i64
  %i.ey = mul i64 %i.bt, %i.ex
  %.sink.i44.4 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ey
  %i.ez = getelementptr inbounds nuw i8, ptr %.sink.i44.4, i64 8
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !10
  %i.fb = and i8 %i.fa, 1
  %i.fc = zext nneg i8 %i.fb to i16
  %i.fd = shl nuw nsw i16 %i.fc, 12
  %.reass.5 = add i32 %i.dz, -2
  %i.fe = sext i32 %.reass.5 to i64
  %i.ff = mul i64 %i.bt, %i.fe
  %.sink.i44.5 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ff
  %i.fg = getelementptr inbounds nuw i8, ptr %.sink.i44.5, i64 8
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !10
  %i.fi = and i8 %i.fh, 1
  %i.fj = zext nneg i8 %i.fi to i16
  %i.fk = shl nuw nsw i16 %i.fj, 13
  %i.fl = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ew)
  %op.rdx = or disjoint i16 %i.fl, %i.fd
  %op.rdx72 = or disjoint i16 %op.rdx, %i.fk
  %.reass.6 = add i32 %i.dz, -1
  %i.fm = sext i32 %.reass.6 to i64
  %i.fn = mul i64 %i.bt, %i.fm
  %.sink.i44.6 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.fn
  %i.fo = getelementptr inbounds nuw i8, ptr %.sink.i44.6, i64 8
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !10
  %i.fq = and i8 %i.fp, 1
  br label %.split55

.preheader.split.us:                              ; preds = %.split47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !10
  %i.ft = and i8 %i.fs, 1                         ; 4 uses
  %i.fu = insertelement <4 x i8> poison, i8 %i.ft, i64 0
  %i.fv = shufflevector <4 x i8> %i.fu, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.fw = zext nneg <4 x i8> %i.fv to <4 x i16>
  %i.fx = shl nuw nsw <4 x i16> %i.fw, <i16 8, i16 9, i16 10, i16 11>
  %.tr65 = zext nneg i8 %i.ft to i16
  %i.fy = shl nuw nsw i16 %.tr65, 12
  %.tr66 = zext nneg i8 %i.ft to i16
  %i.fz = shl nuw nsw i16 %.tr66, 13
  %i.ga = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.fx)
  %op.rdx73 = or disjoint i16 %i.ga, %i.fy
  %op.rdx74 = or i16 %op.rdx73, %i.fz
  br label %.split55

.split55:                                         ; preds = %.preheader.split.preheader, %.preheader.split.us
  %.sink71.in = phi i8 [ %i.fq, %.preheader.split.preheader ], [ %i.ft, %.preheader.split.us ]
  %.sink69 = phi i16 [ %op.rdx72, %.preheader.split.preheader ], [ %op.rdx74, %.preheader.split.us ]
  %.sink71 = zext nneg i8 %.sink71.in to i16
  %i.gb = shl nuw nsw i16 %.sink71, 14
  %i.gc = or i16 %.sink69, %i.gb
  %storemerge = or i16 %i.gc, %i.dw
  store i16 %storemerge, ptr %i.b, align 2, !tbaa !105
  %i.gd = call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt(ptr nonnull align 8 poison, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br i1 %i.gd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split55
  %.pre = load i16, ptr %i.b, align 2, !tbaa !105 ; 2 uses
  %i.ge = load i16, ptr %i.a, align 2
  %.not = icmp ne i16 %i.ge, %.pre
  %or.cond.not = select i1 %i.bn, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.d, label %switch.lookup

bb.c:                                             ; preds = %.split55
  br i1 %i.bn, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre60 = load i16, ptr %i.a, align 2, !tbaa !105
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %._crit_edge
  %i.gf = phi i16 [ %.pre60, %._crit_edge ], [ %.pre, %bb.b ] ; 2 uses
  %i.gg = lshr i16 %i.gf, 13
  %i.gh = and i16 %i.gg, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gj = zext nneg i16 %i.gh to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeDecoderImpl16decodeFormatInfoERKNS_3MatERi, i64 %i.gj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.gi, align 4, !tbaa !236
  %i.gk = lshr i16 %i.gf, 10
  %i.gl = and i16 %i.gk, 7
  %i.gm = zext nneg i16 %i.gl to i32
  store i32 %i.gm, ptr %2, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %switch.lookup
  %.032 = phi i1 [ false, %bb.b ], [ true, %switch.lookup ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %.032
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv17QRCodeDecoderImpl16extractCodewordsERNS_3MatERSt6vectorIhSaIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeEncoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #27, !inline_history !352
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !353
  %i.b = load i32, ptr %1, align 4, !tbaa !244    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !246
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = sext i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.h = load i32, ptr %i.c, align 4, !tbaa !246
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next.i.i.i, %i.i
  br i1 %i.j, label %bb.c, label %"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", !llvm.loop !355

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !356, !nonnull !357, !align !358
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv.i.i.i
  %i.n = tail call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl20errorCorrectionBlockERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  br i1 %i.n, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !356, !nonnull !357, !align !358
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv.i.i.i ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.d
  store ptr %i.r, ptr %i.s, align 8, !tbaa !58
  br label %"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %bb.b, %bb.a, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0", ptr %0, align 8, !tbaa !359
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !361
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !309
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.xor.v16i8(<16 x i8>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.xor.v4i8(<4 x i8>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !14, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !16, i64 8, !6, i64 16}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!13, !14, i64 0}
!18 = !{!16, !16, i64 0}
!19 = !{!12, !16, i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 int", !15, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!24, !5, i64 8}
!24 = !{!"_ZTSN2cv11BlockParamsE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!25 = !{!24, !5, i64 4}
!26 = !{!24, !5, i64 16}
!27 = !{!24, !5, i64 12}
!28 = !{!29, !21, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!30 = !{!29, !21, i64 8}
!31 = !{!32, !35, i64 28}
!32 = !{!"_ZTSN2cv17QRCodeEncoderImplE", !33, i64 0, !34, i64 8, !5, i64 24, !35, i64 28, !36, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !37, i64 48, !37, i64 72, !37, i64 96, !37, i64 120, !41, i64 144, !41, i64 352, !6, i64 560, !6, i64 561, !6, i64 562, !47, i64 568, !52, i64 592, !53, i64 600}
!33 = !{!"_ZTSN2cv13QRCodeEncoderE"}
!34 = !{!"_ZTSN2cv13QRCodeEncoder6ParamsE", !5, i64 0, !35, i64 4, !36, i64 8, !5, i64 12}
!35 = !{!"_ZTSN2cv13QRCodeEncoder15CorrectionLevelE", !6, i64 0}
!36 = !{!"_ZTSN2cv13QRCodeEncoder10EncodeModeE", !6, i64 0}
!37 = !{!"_ZTSSt6vectorIhSaIhEE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!41 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !42, i64 56, !43, i64 64, !44, i64 72, !46, i64 128}
!42 = !{!"p1 _ZTSN2cv12MatAllocatorE", !15, i64 0}
!43 = !{!"p1 _ZTSN2cv8UMatDataE", !15, i64 0}
!44 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !45, i64 4, !5, i64 8, !6, i64 12}
!45 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!46 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!47 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSN2cv3MatE", !15, i64 0}
!52 = !{!"p1 _ZTSN2cv11VersionInfoE", !15, i64 0}
!53 = !{!"p1 _ZTSN2cv11BlockParamsE", !15, i64 0}
!54 = !{!29, !21, i64 16}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = distinct !{!57, !56}
!58 = !{!40, !14, i64 8}
!59 = !{!40, !14, i64 0}
!60 = !{!32, !36, i64 32}
!61 = !{!40, !14, i64 16}
!62 = !{!36, !36, i64 0}
!63 = !{!32, !5, i64 36}
!64 = !{!32, !6, i64 560}
!65 = !{!66}
!66 = distinct !{!66, !67}
!67 = distinct !{!67, !"LVerDomain"}
!68 = distinct !{!68, !56, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!72}
!72 = distinct !{!72, !67}
!73 = !{!"branch_weights", i32 4, i32 28}
!74 = distinct !{!74, !56, !69, !70}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !56, !69}
!78 = !{!32, !6, i64 562}
!79 = !{!32, !6, i64 561}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!82 = distinct !{!82, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!83 = !{!32, !5, i64 24}
!84 = !{!32, !5, i64 40}
!85 = !{!32, !52, i64 592}
!86 = !{!32, !53, i64 600}
!87 = !{!88, !88, i64 0}
!88 = !{!"double", !6, i64 0}
!89 = !{!50, !51, i64 8}
!90 = !{!50, !51, i64 16}
!91 = distinct !{!91, !56}
!92 = !{!32, !5, i64 44}
!93 = !{!94, !5, i64 0}
!94 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!95 = !{!94, !5, i64 4}
!96 = !{!97, !5, i64 0}
!97 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !15, i64 8, !94, i64 16}
!98 = !{!97, !15, i64 8}
!99 = !{!100, !101, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!101 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !15, i64 0}
!102 = !{!100, !101, i64 8}
!103 = distinct !{!103, !56}
!104 = !{!100, !101, i64 16}
!105 = !{!106, !106, i64 0}
!106 = !{!"short", !6, i64 0}
!107 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!108 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!109 = distinct !{!109, !56}
!110 = distinct !{!110, !56}
!111 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!112 = !{!14, !14, i64 0}
!113 = distinct !{!113, !56}
!114 = distinct !{!114, !56}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv: argument 0"}
!117 = distinct !{!117, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv"}
!118 = !{!"branch_weights", i32 4, i32 12}
!119 = distinct !{!119, !56, !69, !70}
!120 = distinct !{!120, !56, !70, !69}
!121 = distinct !{!121, !56, !69, !70}
!122 = distinct !{!122, !56, !69, !70}
!123 = distinct !{!123, !56}
!124 = distinct !{!124, !56}
!125 = distinct !{!125, !56}
!126 = !{!127, !5, i64 0}
!127 = !{!"_ZTSN2cv11VersionInfoE", !5, i64 0, !6, i64 4, !6, i64 32}
!128 = !{!24, !5, i64 0}
!129 = distinct !{!129, !56}
!130 = distinct !{!130, !56}
!131 = distinct !{!131, !56}
!132 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!133 = distinct !{!133, !56}
!134 = distinct !{!134, !56}
!135 = distinct !{!135, !56}
!136 = distinct !{!136, !56}
!137 = distinct !{!137, !56, !138}
!138 = !{!"llvm.loop.peeled.count", i32 1}
!139 = distinct !{!139, !56}
!140 = !{!141, !142, i64 0}
!141 = !{!"_ZTSN2cv7MatExprE", !142, i64 0, !5, i64 8, !41, i64 16, !41, i64 224, !41, i64 432, !88, i64 640, !88, i64 648, !143, i64 656}
!142 = !{!"p1 _ZTSN2cv5MatOpE", !15, i64 0}
!143 = !{!"_ZTSN2cv7Scalar_IdEE", !144, i64 0}
!144 = !{!"_ZTSN2cv3VecIdLi4EEE", !145, i64 0}
!145 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!146 = distinct !{null}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN2cvlsIhiEENS_20MatCommaInitializer_IT_EERKNS_4Mat_IS2_EET0_: argument 0"}
!149 = distinct !{!149, !"_ZN2cvlsIhiEENS_20MatCommaInitializer_IT_EERKNS_4Mat_IS2_EET0_"}
!150 = !{!151, !14, i64 16}
!151 = !{!"_ZTSN2cv16MatConstIteratorE", !51, i64 0, !16, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!152 = !{!151, !51, i64 0}
!153 = !{!151, !16, i64 8}
!154 = !{!151, !14, i64 32}
!155 = !{!151, !14, i64 24}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZNK2cv20MatCommaInitializer_IhEcvNS_4Mat_IhEEEv: argument 0"}
!158 = distinct !{!158, !"_ZNK2cv20MatCommaInitializer_IhEcvNS_4Mat_IhEEEv"}
!159 = !{!41, !5, i64 0}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN2cvlsIhiEENS_20MatCommaInitializer_IT_EERKNS_4Mat_IS2_EET0_: argument 0"}
!162 = distinct !{!162, !"_ZN2cvlsIhiEENS_20MatCommaInitializer_IT_EERKNS_4Mat_IS2_EET0_"}
!163 = !{!164}
end_hunk_1
