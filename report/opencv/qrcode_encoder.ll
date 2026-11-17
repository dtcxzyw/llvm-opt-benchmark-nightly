Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1688
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt:.critedge
  br i1 %i.r, label %bb.a, label %.critedge.9

.critedge.9:                                      ; preds = %.critedge.8
  %i.s = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 18), ptr noundef nonnull %1, i32 noundef 2)
  %i.t = icmp slt i32 %i.s, 4
  br i1 %i.t, label %bb.a, label %.critedge.10

.critedge.10:                                     ; preds = %.critedge.9
  %i.u = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 20), ptr noundef nonnull %1, i32 noundef 2)
  %i.v = icmp slt i32 %i.u, 4
  br i1 %i.v, label %bb.a, label %.critedge.11

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
  %i.bm = load i16, ptr %.lcssa19, align 2, !tbaa !93
  %i.bn = xor i16 %i.bm, 21522
  store i16 %i.bn, ptr %1, align 2, !tbaa !93
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !116
  %.fr58 = freeze i32 %i.d                        ; 2 uses
  %i.e = icmp slt i32 %.fr58, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 2 uses
  br i1 %i.e, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.sink.i38.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sink.i38.1, i64 8
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = shl i8 %i.m, 1
  %i.o = and i8 %i.n, 2
  %i.p = shl i64 %i.i, 1
  %.sink.i38.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i38.2, i64 8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = shl i8 %i.r, 2
  %i.t = and i8 %i.s, 4
  %i.u = or disjoint i8 %i.o, %i.t
  %i.v = mul i64 %i.i, 3
  %.sink.i38.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %.sink.i38.3, i64 8
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = shl i8 %i.x, 3
  %i.z = and i8 %i.y, 8
  %i.aa = or disjoint i8 %i.u, %i.z
  %i.ab = shl i64 %i.i, 2
  %.sink.i38.4 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i38.4, i64 8
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = shl i8 %i.ad, 4
  %i.af = and i8 %i.ae, 16
  %i.ag = or disjoint i8 %i.aa, %i.af
  %i.ah = mul i64 %i.i, 5
  %.sink.i38.5 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i38.5, i64 8
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = shl i8 %i.aj, 5
  %i.al = and i8 %i.ak, 32
  %i.am = or disjoint i8 %i.ag, %i.al
  br label %.split47

.split.us:                                        ; preds = %bb.a
  %i.an = and i8 %i.k, 1                          ; 5 uses
  %i.ao = shl nuw nsw i8 %i.an, 1
  %i.ap = shl nuw nsw i8 %i.an, 2
  %i.aq = or disjoint i8 %i.ao, %i.ap
  %i.ar = shl nuw nsw i8 %i.an, 3
  %i.as = or disjoint i8 %i.aq, %i.ar
  %i.at = shl nuw nsw i8 %i.an, 4
  %i.au = or disjoint i8 %i.as, %i.at
  %i.av = shl nuw nsw i8 %i.an, 5
  %i.aw = or disjoint i8 %i.au, %i.av
  br label %.split47

.split47:                                         ; preds = %.split.preheader, %.split.us
  %.pn = phi i8 [ %i.am, %.split.preheader ], [ %i.aw, %.split.us ]
  %i.ax = icmp slt i32 %.fr58, 2                  ; 2 uses
  %i.ay = mul i64 %i.i, 7
  %.sink.idx.i = select i1 %i.ax, i64 0, i64 %i.ay
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = shl i64 %i.i, 3
  %.sink.idx.i33 = select i1 %i.ax, i64 0, i64 %i.bb
  %.sink.i34 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i33 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink.i34, i64 7
  %i.bd = load <2 x i8>, ptr %i.bc, align 1, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %.sink.i34, i64 4
  %i.bf = load <2 x i8>, ptr %i.be, align 1, !tbaa !16
  %i.bg = load <4 x i8>, ptr %.sink.i34, align 1, !tbaa !16
  %3 = shufflevector <2 x i8> %i.bd, <2 x i8> %i.bf, <8 x i32> <i32 0, i32 1, i32 3, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x i8> %i.bg, <4 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %4 = shufflevector <8 x i8> %3, <8 x i8> %i.bh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bi = and <8 x i8> %4, splat (i8 1)
  %i.bj = zext nneg <8 x i8> %i.bi to <8 x i16>
  %i.bk = shl nuw <8 x i16> %i.bj, <i16 8, i16 7, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14>
  %i.bl = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.bk)
  %i.bm = shl i8 %i.ba, 6
  %i.bn = and i8 %i.bm, 64
  %i.bo = zext nneg i8 %i.bn to i16
  %op.rdx75 = or i16 %i.bl, %i.bo
  %i.bp = and i8 %i.k, 1
  %op.rdx7678 = or i8 %i.bp, %.pn
  %op.rdx76 = zext i8 %op.rdx7678 to i16
  %op.rdx77 = or i16 %op.rdx75, %op.rdx76
  store i16 %op.rdx77, ptr %i.a, align 2, !tbaa !93
  %i.bq = call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt(ptr nonnull align 8 poison, ptr noundef nonnull align 2 dereferenceable(2) %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !132 ; 8 uses
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !116
  %.fr = freeze i32 %i.bt                         ; 2 uses
  %i.bu = icmp slt i32 %.fr, 2
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !117 ; 9 uses
  %i.bw = load i64, ptr %i.h, align 8             ; 8 uses
  %i.bx = shl i64 %i.bw, 3
  %.sink.idx.i41 = select i1 %i.bu, i64 0, i64 %i.bx
  %.sink.i42 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sink.idx.i41 ; 8 uses
  %i.by = add i32 %i.bs, -1
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cc = and i8 %i.cb, 1
  %i.cd = add i32 %i.bs, -2
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = shl i8 %i.cg, 1
  %i.ci = and i8 %i.ch, 2
  %i.cj = or disjoint i8 %i.cc, %i.ci
  %i.ck = add i32 %i.bs, -3
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = shl i8 %i.cn, 2
  %i.cp = and i8 %i.co, 4
  %i.cq = or disjoint i8 %i.cj, %i.cp
  %i.cr = add i32 %i.bs, -4
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !16
  %i.cv = shl i8 %i.cu, 3
  %i.cw = and i8 %i.cv, 8
  %i.cx = or disjoint i8 %i.cq, %i.cw
  %i.cy = add i32 %i.bs, -5
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !16
  %i.dc = shl i8 %i.db, 4
  %i.dd = and i8 %i.dc, 16
  %i.de = or disjoint i8 %i.cx, %i.dd
  %i.df = add i32 %i.bs, -6
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !16
  %i.dj = shl i8 %i.di, 5
  %i.dk = and i8 %i.dj, 32
  %i.dl = or disjoint i8 %i.de, %i.dk
  %i.dm = add i32 %i.bs, -7
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16
  %i.dq = shl i8 %i.dp, 6
  %i.dr = and i8 %i.dq, 64
  %i.ds = or i8 %i.dl, %i.dr
  %i.dt = add i32 %i.bs, -8
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16
  %i.dx = shl i8 %i.dw, 7
  %i.dy = or i8 %i.ds, %i.dx
  %i.dz = zext i8 %i.dy to i16
  %i.ea = icmp slt i32 %.fr, 2
  br i1 %i.ea, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.split47
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !115 ; 7 uses
  %invariant.op = add i32 %i.ec, -7
  %i.ed = sext i32 %invariant.op to i64
  %i.ee = mul i64 %i.bw, %i.ed
  %.sink.i44 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ee
  %i.ef = getelementptr inbounds nuw i8, ptr %.sink.i44, i64 8
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %.reass.1 = add i32 %i.ec, -6
  %i.eh = sext i32 %.reass.1 to i64
  %i.ei = mul i64 %i.bw, %i.eh
  %.sink.i44.1 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ei
  %i.ej = getelementptr inbounds nuw i8, ptr %.sink.i44.1, i64 8
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !16
  %.reass.2 = add i32 %i.ec, -5
  %i.el = sext i32 %.reass.2 to i64
  %i.em = mul i64 %i.bw, %i.el
  %.sink.i44.2 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.em
  %i.en = getelementptr inbounds nuw i8, ptr %.sink.i44.2, i64 8
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  %.reass.3 = add i32 %i.ec, -4
  %i.ep = sext i32 %.reass.3 to i64
  %i.eq = mul i64 %i.bw, %i.ep
  %.sink.i44.3 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.eq
  %i.er = getelementptr inbounds nuw i8, ptr %.sink.i44.3, i64 8
  %i.es = load i8, ptr %i.er, align 1, !tbaa !16
  %i.et = insertelement <4 x i8> poison, i8 %i.eg, i64 0
  %i.eu = insertelement <4 x i8> %i.et, i8 %i.ek, i64 1
  %i.ev = insertelement <4 x i8> %i.eu, i8 %i.eo, i64 2
  %i.ew = insertelement <4 x i8> %i.ev, i8 %i.es, i64 3
  %i.ex = and <4 x i8> %i.ew, splat (i8 1)
  %i.ey = zext nneg <4 x i8> %i.ex to <4 x i16>
  %i.ez = shl nuw nsw <4 x i16> %i.ey, <i16 8, i16 9, i16 10, i16 11>
  %.reass.4 = add i32 %i.ec, -3
  %i.fa = sext i32 %.reass.4 to i64
  %i.fb = mul i64 %i.bw, %i.fa
  %.sink.i44.4 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.fb
  %i.fc = getelementptr inbounds nuw i8, ptr %.sink.i44.4, i64 8
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !16
  %i.fe = and i8 %i.fd, 1
  %i.ff = zext nneg i8 %i.fe to i16
  %i.fg = shl nuw nsw i16 %i.ff, 12
  %.reass.5 = add i32 %i.ec, -2
  %i.fh = sext i32 %.reass.5 to i64
  %i.fi = mul i64 %i.bw, %i.fh
  %.sink.i44.5 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.fi
  %i.fj = getelementptr inbounds nuw i8, ptr %.sink.i44.5, i64 8
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !16
  %i.fl = and i8 %i.fk, 1
  %i.fm = zext nneg i8 %i.fl to i16
  %i.fn = shl nuw nsw i16 %i.fm, 13
  %i.fo = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ez)
  %op.rdx = or disjoint i16 %i.fo, %i.fg
  %op.rdx72 = or disjoint i16 %op.rdx, %i.fn
  %.reass.6 = add i32 %i.ec, -1
  %i.fp = sext i32 %.reass.6 to i64
  %i.fq = mul i64 %i.bw, %i.fp
  %.sink.i44.6 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.fq
  %i.fr = getelementptr inbounds nuw i8, ptr %.sink.i44.6, i64 8
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !16
  %i.ft = and i8 %i.fs, 1
  br label %.split55

.preheader.split.us:                              ; preds = %.split47
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !16
  %i.fw = and i8 %i.fv, 1                         ; 4 uses
  %i.fx = insertelement <4 x i8> poison, i8 %i.fw, i64 0
  %i.fy = shufflevector <4 x i8> %i.fx, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.fz = zext nneg <4 x i8> %i.fy to <4 x i16>
  %i.ga = shl nuw nsw <4 x i16> %i.fz, <i16 8, i16 9, i16 10, i16 11>
  %.tr65 = zext nneg i8 %i.fw to i16
  %i.gb = shl nuw nsw i16 %.tr65, 12
  %.tr66 = zext nneg i8 %i.fw to i16
  %i.gc = shl nuw nsw i16 %.tr66, 13
  %i.gd = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ga)
  %op.rdx73 = or disjoint i16 %i.gd, %i.gb
  %op.rdx74 = or i16 %op.rdx73, %i.gc
  br label %.split55

.split55:                                         ; preds = %.preheader.split.preheader, %.preheader.split.us
  %.sink71.in = phi i8 [ %i.ft, %.preheader.split.preheader ], [ %i.fw, %.preheader.split.us ]
  %.sink69 = phi i16 [ %op.rdx72, %.preheader.split.preheader ], [ %op.rdx74, %.preheader.split.us ]
  %.sink71 = zext nneg i8 %.sink71.in to i16
  %i.ge = shl nuw nsw i16 %.sink71, 14
  %i.gf = or i16 %.sink69, %i.ge
  %storemerge = or i16 %i.gf, %i.dz
  store i16 %storemerge, ptr %i.b, align 2, !tbaa !93
  %i.gg = call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt(ptr nonnull align 8 poison, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br i1 %i.gg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split55
  %.pre = load i16, ptr %i.b, align 2, !tbaa !93  ; 2 uses
  %i.gh = load i16, ptr %i.a, align 2
  %.not = icmp ne i16 %i.gh, %.pre
  %or.cond.not = select i1 %i.bq, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.d, label %switch.lookup

bb.c:                                             ; preds = %.split55
  br i1 %i.bq, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre60 = load i16, ptr %i.a, align 2, !tbaa !93
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %._crit_edge
  %i.gi = phi i16 [ %.pre60, %._crit_edge ], [ %.pre, %bb.b ] ; 2 uses
  %i.gj = lshr i16 %i.gi, 13
  %i.gk = and i16 %i.gj, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gm = zext nneg i16 %i.gk to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeDecoderImpl16decodeFormatInfoERKNS_3MatERi, i64 %i.gm
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.gl, align 4, !tbaa !137
  %i.gn = lshr i16 %i.gi, 10
  %i.go = and i16 %i.gn, 7
  %i.gp = zext nneg i16 %i.go to i32
  store i32 %i.gp, ptr %2, align 4, !tbaa !28
  br label %bb.d
end_hunk_0
