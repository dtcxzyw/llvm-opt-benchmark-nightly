Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stb_truetype?download=true
inline.NumInlined: 427
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv26stbtt_GetCodepointHMetricsEPKNS_14stbtt_fontinfoEiPiS3_:bb.a
  %.val41.i = load i8, ptr %i.v, align 1, !tbaa !14
  %i.w = zext i8 %.val40.i to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = zext i8 %.val41.i to i16
  %i.z = or disjoint i16 %i.x, %i.y
  %i.aa = sext i16 %i.z to i32
  store i32 %i.aa, ptr %2, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not32.i = icmp eq ptr %3, null
  br i1 %.not32.i, label %_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !55
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.c, i64 %i.ad
  %i.af = shl nsw i32 %i.a, 2
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = getelementptr i8, ptr %i.ah, i64 3
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !55
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.c, i64 %i.am
  %i.ao = shl nuw nsw i32 %i.m, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -4
  %.val36.i = load i8, ptr %i.ar, align 1, !tbaa !14
  %i.as = getelementptr i8, ptr %i.aq, i64 -3
  %.val37.i = load i8, ptr %i.as, align 1, !tbaa !14
  %i.at = zext i8 %.val36.i to i16
  %i.au = shl nuw i16 %i.at, 8
  %i.av = zext i8 %.val37.i to i16
  %i.aw = or disjoint i16 %i.au, %i.av
  %i.ax = sext i16 %i.aw to i32
  store i32 %i.ax, ptr %2, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30.i = icmp eq ptr %3, null
  br i1 %.not30.i, label %_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !55
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.c, i64 %i.ba
  %i.bc = shl nuw nsw i32 %i.m, 2
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %i.bf = sub nsw i32 %i.a, %i.m
  %i.bg = shl nsw i32 %i.bf, 1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.e
  %.val34.sink.in.i = phi ptr [ %i.bi, %bb.i ], [ %i.ai, %bb.e ]
  %.val35.sink.in.i = phi ptr [ %i.bj, %bb.i ], [ %i.aj, %bb.e ]
  %.val35.sink.i = load i8, ptr %.val35.sink.in.i, align 1, !tbaa !14
  %.val34.sink.i = load i8, ptr %.val34.sink.in.i, align 1, !tbaa !14
  %i.bk = zext i8 %.val34.sink.i to i16
  %i.bl = shl nuw i16 %i.bk, 8
  %i.bm = zext i8 %.val35.sink.i to i16
  %i.bn = or disjoint i16 %i.bl, %i.bm
  %i.bo = sext i16 %i.bn to i32
  store i32 %i.bo, ptr %3, align 4, !tbaa !18
  br label %_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit

_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit: ; preds = %bb.d, %bb.h, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv21stbtt_GetFontVMetricsEPKNS_14stbtt_fontinfoEPiS3_S3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val19 = load i8, ptr %i.g, align 1, !tbaa !14
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val20 = load i8, ptr %i.h, align 1, !tbaa !14
  %i.i = zext i8 %.val19 to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = zext i8 %.val20 to i16
  %i.l = or disjoint i16 %i.j, %i.k
  %i.m = sext i16 %i.l to i32
  store i32 %i.m, ptr %1, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !54
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.val17 = load i8, ptr %i.t, align 1, !tbaa !14
  %i.u = getelementptr i8, ptr %i.s, i64 7
  %.val18 = load i8, ptr %i.u, align 1, !tbaa !14
  %i.v = zext i8 %.val17 to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = zext i8 %.val18 to i16
  %i.y = or disjoint i16 %i.w, %i.x
  %i.z = sext i16 %i.y to i32
  store i32 %i.z, ptr %2, align 4, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !54
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ah = getelementptr i8, ptr %i.af, i64 9
  %.val16 = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.ai = zext i8 %.val to i16
  %i.aj = shl nuw i16 %i.ai, 8
  %i.ak = zext i8 %.val16 to i16
  %i.al = or disjoint i16 %i.aj, %i.ak
  %i.am = sext i16 %i.al to i32
  store i32 %i.am, ptr %3, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2cv24stbtt_GetFontVMetricsOS2EPKNS_14stbtt_fontinfoEPiS3_S3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !69   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.f, 12                         ; 3 uses
  %.not37.i = icmp ult i32 %i.g, %i.d
  br i1 %.not37.i, label %bb.c, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.val.i = load i8, ptr %i.j, align 1, !tbaa !14
  %i.k = getelementptr i8, ptr %i.i, i64 5
  %.val39.i = load i8, ptr %i.k, align 1, !tbaa !14
  %i.l = zext i8 %.val.i to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = zext i8 %.val39.i to i32
  %i.o = or disjoint i32 %i.m, %i.n               ; 3 uses
  %i.p = shl nuw nsw i32 %i.o, 4
  %i.q = add i32 %i.p, %i.g
  %.not38.i = icmp ult i32 %i.q, %i.d
  %i.r = icmp ne i32 %i.o, 0
  %or.cond.i = and i1 %i.r, %.not38.i
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.s = shl i32 %indvars.iv.tr.i, 4
  %i.t = add i32 %i.s, %i.g
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 79
  br i1 %i.x, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 83
  br i1 %i.aa, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp eq i8 %i.af, 50
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ai = load i32, ptr %i.ah, align 1            ; 2 uses
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai) ; 4 uses
  %i.ak = icmp uge i32 %i.aj, %i.d
  %.not = icmp eq i32 %i.ai, 0
  %or.cond = or i1 %i.ak, %.not
  br i1 %or.cond, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread, label %bb.d, !llvm.loop !71

bb.j:                                             ; preds = %bb.h
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds i8, ptr %i.b, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 68
  %.val26 = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ao = getelementptr i8, ptr %i.am, i64 69
  %.val27 = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.ap = zext i8 %.val26 to i16
  %i.aq = shl nuw i16 %i.ap, 8
  %i.ar = zext i8 %.val27 to i16
  %i.as = or disjoint i16 %i.aq, %i.ar
  %i.at = sext i16 %i.as to i32
  store i32 %i.at, ptr %1, align 4, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = sext i32 %i.aj to i64
  %i.av = getelementptr inbounds i8, ptr %i.b, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 70
  %.val24 = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.ax = getelementptr i8, ptr %i.av, i64 71
  %.val25 = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.ay = zext i8 %.val24 to i16
  %i.az = shl nuw i16 %i.ay, 8
  %i.ba = zext i8 %.val25 to i16
  %i.bb = or disjoint i16 %i.az, %i.ba
  %i.bc = sext i16 %i.bb to i32
  store i32 %i.bc, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = sext i32 %i.aj to i64
  %i.be = getelementptr inbounds i8, ptr %i.b, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %.val = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bg = getelementptr i8, ptr %i.be, i64 73
  %.val23 = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bh = zext i8 %.val to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = zext i8 %.val23 to i16
  %i.bk = or disjoint i16 %i.bi, %i.bj
  %i.bl = sext i16 %i.bk to i32
  store i32 %i.bl, ptr %3, align 4, !tbaa !18
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread:   ; preds = %bb.i, %bb.h, %bb.c, %bb.b, %bb.a, %bb.n, %bb.o
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.o ], [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv24stbtt_GetFontBoundingBoxEPKNS_14stbtt_fontinfoEPiS3_S3_S3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !72
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.val17 = load i8, ptr %i.g, align 1, !tbaa !14
  %i.h = getelementptr i8, ptr %i.f, i64 37
  %.val18 = load i8, ptr %i.h, align 1, !tbaa !14
  %i.i = zext i8 %.val17 to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = zext i8 %.val18 to i16
  %i.l = or disjoint i16 %i.j, %i.k
  %i.m = sext i16 %i.l to i32
  store i32 %i.m, ptr %1, align 4, !tbaa !18
  %i.n = load i32, ptr %i.c, align 8, !tbaa !72
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 38
  %.val15 = load i8, ptr %i.q, align 1, !tbaa !14
  %i.r = getelementptr i8, ptr %i.p, i64 39
  %.val16 = load i8, ptr %i.r, align 1, !tbaa !14
  %i.s = zext i8 %.val15 to i16
  %i.t = shl nuw i16 %i.s, 8
  %i.u = zext i8 %.val16 to i16
  %i.v = or disjoint i16 %i.t, %i.u
  %i.w = sext i16 %i.v to i32
  store i32 %i.w, ptr %2, align 4, !tbaa !18
  %i.x = load i32, ptr %i.c, align 8, !tbaa !72
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.val13 = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ab = getelementptr i8, ptr %i.z, i64 41
  %.val14 = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ac = zext i8 %.val13 to i16
  %i.ad = shl nuw i16 %i.ac, 8
  %i.ae = zext i8 %.val14 to i16
  %i.af = or disjoint i16 %i.ad, %i.ae
  %i.ag = sext i16 %i.af to i32
  store i32 %i.ag, ptr %3, align 4, !tbaa !18
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !72
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 42
  %.val = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.al = getelementptr i8, ptr %i.aj, i64 43
  %.val12 = load i8, ptr %i.al, align 1, !tbaa !14
  %i.am = zext i8 %.val to i16
  %i.an = shl nuw i16 %i.am, 8
  %i.ao = zext i8 %.val12 to i16
  %i.ap = or disjoint i16 %i.an, %i.ao
  %i.aq = sext i16 %i.ap to i32
  store i32 %i.aq, ptr %4, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZN2cv25stbtt_ScaleForPixelHeightEPKNS_14stbtt_fontinfoEf(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val6 = load i8, ptr %i.g, align 1, !tbaa !14
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val7 = load i8, ptr %i.h, align 1, !tbaa !14
  %i.i = zext i8 %.val6 to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = zext i8 %.val7 to i16
  %i.l = or disjoint i16 %i.j, %i.k
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.val = load i8, ptr %i.n, align 1, !tbaa !14
  %i.o = getelementptr i8, ptr %i.f, i64 7
  %.val5 = load i8, ptr %i.o, align 1, !tbaa !14
  %i.p = zext i8 %.val to i16
  %i.q = shl nuw i16 %i.p, 8
  %i.r = zext i8 %.val5 to i16
  %i.s = or disjoint i16 %i.q, %i.r
  %i.t = sext i16 %i.s to i32
  %i.u = sub nsw i32 %i.m, %i.t
  %i.v = sitofp i32 %i.u to float
  %i.w = fdiv float %1, %i.v
  ret float %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZN2cv31stbtt_ScaleForPixelHeightNoDescEPKNS_14stbtt_fontinfoEf(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@_ZN2cv27stbtt_GetScaledFontVMetricsEPKhifPfS2_S2_:bb.a
  %i.t = shl nuw i16 %i.s, 8
  %i.u = zext i8 %.val5.i to i16
  %i.v = or disjoint i16 %i.t, %i.u               ; 2 uses
  %i.w = sext i16 %i.v to i32
  %i.x = sub nsw i32 %i.p, %i.w
  %i.y = sitofp i32 %i.x to float
  %i.z = fdiv float %2, %i.y
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = fneg float %2
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !72
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 18
  %.val.i11 = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.ai = getelementptr i8, ptr %i.ag, i64 19
  %.val3.i = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.aj = zext i8 %.val.i11 to i16
  %i.ak = shl nuw i16 %i.aj, 8
  %i.al = zext i8 %.val3.i to i16
  %i.am = or disjoint i16 %i.ak, %i.al
  %i.an = uitofp i16 %i.am to float
  %i.ao = fdiv float %i.aa, %i.an
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !54
  %.phi.trans.insert15 = sext i32 %.pre to i64    ; 2 uses
  %.phi.trans.insert16 = getelementptr inbounds i8, ptr %i.ac, i64 %.phi.trans.insert15 ; 4 uses
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert16, i64 4
  %.val19.i.pre = load i8, ptr %.phi.trans.insert17, align 1, !tbaa !14
  %.phi.trans.insert19 = getelementptr i8, ptr %.phi.trans.insert16, i64 5
  %.val20.i.pre = load i8, ptr %.phi.trans.insert19, align 1, !tbaa !14
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert16, i64 6
  %.val17.i.pre = load i8, ptr %.phi.trans.insert21, align 1, !tbaa !14
  %.phi.trans.insert23 = getelementptr i8, ptr %.phi.trans.insert16, i64 7
  %.val18.i.pre = load i8, ptr %.phi.trans.insert23, align 1, !tbaa !14
  %.pre25 = zext i8 %.val19.i.pre to i16
  %.pre27 = shl nuw i16 %.pre25, 8
  %.pre29 = zext i8 %.val20.i.pre to i16
  %.pre31 = or disjoint i16 %.pre27, %.pre29
  %.pre33 = zext i8 %.val17.i.pre to i16
  %.pre35 = shl nuw i16 %.pre33, 8
  %.pre37 = zext i8 %.val18.i.pre to i16
  %.pre39 = or disjoint i16 %.pre35, %.pre37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi40 = phi i16 [ %.pre39, %bb.c ], [ %i.v, %bb.b ]
  %.pre-phi32 = phi i16 [ %.pre31, %bb.c ], [ %i.o, %bb.b ]
  %.pre-phi = phi i64 [ %.phi.trans.insert15, %bb.c ], [ %i.h, %bb.b ]
  %i.ap = phi ptr [ %i.ac, %bb.c ], [ %i.e, %bb.b ]
  %i.aq = phi float [ %i.ao, %bb.c ], [ %i.z, %bb.b ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %.pre-phi ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val.i12 = load i8, ptr %i.as, align 1, !tbaa !14
  %i.at = getelementptr i8, ptr %i.ar, i64 9
  %.val16.i = load i8, ptr %i.at, align 1, !tbaa !14
  %i.au = zext i8 %.val.i12 to i16
  %i.av = shl nuw i16 %i.au, 8
  %i.aw = zext i8 %.val16.i to i16
  %i.ax = or disjoint i16 %i.av, %i.aw
  %i.ay = sitofp i16 %.pre-phi32 to float
  %i.az = fmul float %i.aq, %i.ay
  store float %i.az, ptr %3, align 4, !tbaa !76
  %i.ba = sitofp i16 %.pre-phi40 to float
  %i.bb = fmul float %i.aq, %i.ba
  store float %i.bb, ptr %4, align 4, !tbaa !76
  %i.bc = sitofp i16 %i.ax to float
  %i.bd = fmul float %i.aq, %i.bc
  store float %i.bd, ptr %5, align 4, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv19stbtt_GetPackedQuadEPKNS_16stbtt_packedcharEiiiPfS3_PNS_18stbtt_aligned_quadEi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %6, i32 noundef %7) local_unnamed_addr #12 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [28 x i8], ptr %0, i64 %i.a ; 9 uses
  %.not = icmp eq i32 %7, 0
  %i.c = load float, ptr %4, align 4, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !191 ; 2 uses
  %i.f = fadd float %i.c, %i.e                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %5, align 4, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !192 ; 2 uses
  %i.j = fadd float %i.g, %i.i
  %i.k = insertelement <2 x float> poison, float %i.f, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = fadd <2 x float> %i.l, splat (float 5.000000e-01)
  %i.n = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.m)
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = sitofp <2 x i32> %i.o to <2 x float>     ; 2 uses
  store <2 x float> %i.p, ptr %6, align 4, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !76
  %i.t = fadd <2 x float> %i.s, %i.p              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fsub float %i.u, %i.e
  store float %i.v, ptr %i.r, align 4, !tbaa !193
  %i.w = extractelement <2 x float> %i.t, i64 1
  %i.x = fsub float %i.w, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store float %i.f, ptr %6, align 4, !tbaa !195
  %i.y = load float, ptr %5, align 4, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !192
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ab, ptr %i.ac, align 4, !tbaa !196
  %i.ad = load float, ptr %4, align 4, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.af = load float, ptr %i.ae, align 4, !tbaa !197
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.ag, ptr %i.ah, align 4, !tbaa !193
  %i.ai = load float, ptr %5, align 4, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !178
  %i.al = fadd float %i.ai, %i.ak
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ %i.al, %bb.c ], [ %i.x, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %.sink, ptr %i.am, align 4, !tbaa !198
  %i.an = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %2, i64 1
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = fdiv <2 x float> splat (float 1.000000e+00), %i.ap ; 2 uses
  %i.as = load <2 x i16>, ptr %i.b, align 4, !tbaa !41
  %i.at = uitofp <2 x i16> %i.as to <2 x float>
  %i.au = fmul <2 x float> %i.ar, %i.at
  store <2 x float> %i.au, ptr %i.aq, align 4, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ax = load <2 x i16>, ptr %i.av, align 4, !tbaa !41
  %i.ay = uitofp <2 x i16> %i.ax to <2 x float>
  %i.az = fmul <2 x float> %i.ar, %i.ay
  store <2 x float> %i.az, ptr %i.aw, align 4, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !199
  %i.bc = load float, ptr %4, align 4, !tbaa !76
  %i.bd = fadd float %i.bb, %i.bc
  store float %i.bd, ptr %4, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN2cv23stbtt_GetFontNameStringEPKNS_14stbtt_fontinfoEPiiiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.d, 12                         ; 3 uses
  %.not37.i = icmp ult i32 %i.g, %i.f
  br i1 %.not37.i, label %bb.c, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.val.i = load i8, ptr %i.j, align 1, !tbaa !14
  %i.k = getelementptr i8, ptr %i.i, i64 5
  %.val39.i = load i8, ptr %i.k, align 1, !tbaa !14
  %i.l = zext i8 %.val.i to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = zext i8 %.val39.i to i32
  %i.o = or disjoint i32 %i.m, %i.n               ; 3 uses
  %i.p = shl nuw nsw i32 %i.o, 4
  %i.q = add i32 %i.p, %i.g
  %.not38.i = icmp ult i32 %i.q, %i.f
  %i.r = icmp ne i32 %i.o, 0
  %or.cond.i = and i1 %i.r, %.not38.i
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.s = shl i32 %indvars.iv.tr.i, 4
  %i.t = add i32 %i.s, %i.g
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 110
  br i1 %i.x, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 97
  br i1 %i.aa, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 109
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp eq i8 %i.af, 101
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ai = load i32, ptr %i.ah, align 1            ; 2 uses
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai) ; 4 uses
  %i.ak = icmp uge i32 %i.aj, %i.f
  %.not = icmp eq i32 %i.ai, 0
  %or.cond = or i1 %i.ak, %.not
  br i1 %or.cond, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread, label %bb.d, !llvm.loop !71

bb.j:                                             ; preds = %bb.h
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %.val52 = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ao = getelementptr i8, ptr %i.am, i64 3
  %.val53 = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.ap = zext i8 %.val52 to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = zext i8 %.val53 to i32
  %i.as = or disjoint i32 %i.aq, %i.ar            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.val50 = load i8, ptr %i.at, align 1, !tbaa !14
  %i.au = getelementptr i8, ptr %i.am, i64 5
  %.val51 = load i8, ptr %i.au, align 1, !tbaa !14
  %i.av = zext i8 %.val50 to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = zext i8 %.val51 to i32
  %i.ay = or disjoint i32 %i.aw, %i.ax
  %i.az = add i32 %i.ay, %i.aj
  %.not63 = icmp eq i32 %i.as, 0
  br i1 %.not63, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ba = add i32 %i.aj, 6
  %wide.trip.count = zext nneg i32 %i.as to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.bb = trunc i64 %indvars.iv to i32
  %i.bc = mul i32 %i.bb, 12
  %i.bd = add i32 %i.ba, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.be ; 12 uses
  %.val48 = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bg = getelementptr i8, ptr %i.bf, i64 1
  %.val49 = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bh = zext i8 %.val48 to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = zext i8 %.val49 to i32
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = icmp eq i32 %2, %i.bk
  br i1 %i.bl, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %.val46 = load i8, ptr %i.bm, align 1, !tbaa !14
  %i.bn = getelementptr i8, ptr %i.bf, i64 3
  %.val47 = load i8, ptr %i.bn, align 1, !tbaa !14
  %i.bo = zext i8 %.val46 to i32
  %i.bp = shl nuw nsw i32 %i.bo, 8
  %i.bq = zext i8 %.val47 to i32
  %i.br = or disjoint i32 %i.bp, %i.bq
  %i.bs = icmp eq i32 %3, %i.br
  br i1 %i.bs, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.val44 = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.bu = getelementptr i8, ptr %i.bf, i64 5
  %.val45 = load i8, ptr %i.bu, align 1, !tbaa !14
  %i.bv = zext i8 %.val44 to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = zext i8 %.val45 to i32
  %i.by = or disjoint i32 %i.bw, %i.bx
  %i.bz = icmp eq i32 %4, %i.by
  br i1 %i.bz, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  %.val42 = load i8, ptr %i.ca, align 1, !tbaa !14
  %i.cb = getelementptr i8, ptr %i.bf, i64 7
  %.val43 = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cc = zext i8 %.val42 to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = zext i8 %.val43 to i32
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = icmp eq i32 %5, %i.cf
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val40 = load i8, ptr %i.ch, align 1, !tbaa !14
  %i.ci = getelementptr i8, ptr %i.bf, i64 9
  %.val41 = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.cj = zext i8 %.val40 to i32
  %i.ck = shl nuw nsw i32 %i.cj, 8
  %i.cl = zext i8 %.val41 to i32
  %i.cm = or disjoint i32 %i.ck, %i.cl
  store i32 %i.cm, ptr %1, align 4, !tbaa !18
  %i.cn = sext i32 %i.az to i64
  %i.co = getelementptr inbounds i8, ptr %i.b, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %.val = load i8, ptr %i.cp, align 1, !tbaa !14
  %i.cq = getelementptr i8, ptr %i.bf, i64 11
  %.val39 = load i8, ptr %i.cq, align 1, !tbaa !14
  %i.cr = zext i8 %.val to i64
  %i.cs = shl nuw nsw i64 %i.cr, 8
  %i.ct = zext i8 %.val39 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread, label %bb.k, !llvm.loop !200

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread:   ; preds = %bb.i, %bb.p, %bb.j, %bb.h, %bb.c, %bb.b, %bb.a, %bb.o
  %.2 = phi ptr [ %i.cv, %bb.o ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.p ], [ null, %bb.i ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i32 -2147483647, -2147483648) i32 @_ZN2cv20stbtt_BakeFontBitmapEPKhifPhiiiiPNS_15stbtt_bakedcharE(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"struct.cv::stbtt_fontinfo", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.e = call fastcc noundef range(i32 0, 2) i32 @_ZN2cvL23stbtt_InitFont_internalEPNS_14stbtt_fontinfoEPhji(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 536870912, i32 noundef %1)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN2cvL29stbtt_BakeFontBitmap_internalEPhifS0_iiiiPNS_15stbtt_bakedcharE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul nsw i32 %5, %4
  %i.g = sext i32 %i.f to i64
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.val6.i.i = load i8, ptr %i.n, align 1, !tbaa !14
  %i.o = getelementptr i8, ptr %i.m, i64 5
  %.val7.i.i = load i8, ptr %i.o, align 1, !tbaa !14
  %i.p = zext i8 %.val6.i.i to i16
  %i.q = shl nuw i16 %i.p, 8
  %i.r = zext i8 %.val7.i.i to i16
  %i.s = or disjoint i16 %i.q, %i.r
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %.val.i.i = load i8, ptr %i.u, align 1, !tbaa !14
  %i.v = getelementptr i8, ptr %i.m, i64 7
  %.val5.i.i = load i8, ptr %i.v, align 1, !tbaa !14
  %i.w = zext i8 %.val.i.i to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = zext i8 %.val5.i.i to i16
  %i.z = or disjoint i16 %i.x, %i.y
  %i.aa = sext i16 %i.z to i32
  %i.ab = sub nsw i32 %i.t, %i.aa
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fdiv float %2, %i.ac                    ; 4 uses
  %i.ae = icmp sgt i32 %7, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZN2cvL29stbtt_BakeFontBitmap_internalEPhifS0_iiiiPNS_15stbtt_bakedcharE.exit

end_hunk_1
begin_hunk_2_@_ZN2cv20stbtt_BakeFontBitmapEPKhifPhiiiiPNS_15stbtt_bakedcharE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.bi = call noundef i32 @_ZN2cv17stbtt_GetGlyphBoxEPKNS_14stbtt_fontinfoEiPiS3_S3_S3_(ptr noundef nonnull readonly %9, i32 noundef %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %_ZN2cv31stbtt_GetGlyphBitmapBoxSubpixelEPKNS_14stbtt_fontinfoEiffffPiS3_S3_S3_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit.i
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !18
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !18
  %i.bl = load i32, ptr %i.d, align 4, !tbaa !18
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !18
  %i.bn = sub nsw i32 0, %i.bl
  %i.bo = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %i.bn, i64 1
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.am, <2 x float> zeroinitializer)
  %i.bs = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.br)
  %i.bt = fptosi <2 x float> %i.bs to <2 x i32>
  %i.bu = sub nsw i32 0, %i.bj
  %i.bv = insertelement <2 x i32> poison, i32 %i.bk, i64 0
  %i.bw = insertelement <2 x i32> %i.bv, i32 %i.bu, i64 1
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.am, <2 x float> zeroinitializer)
  %i.bz = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.by)
  %i.ca = fptosi <2 x float> %i.bz to <2 x i32>
  br label %_ZN2cv31stbtt_GetGlyphBitmapBoxSubpixelEPKNS_14stbtt_fontinfoEiffffPiS3_S3_S3_.exit.i

_ZN2cv31stbtt_GetGlyphBitmapBoxSubpixelEPKNS_14stbtt_fontinfoEiffffPiS3_S3_S3_.exit.i: ; preds = %bb.c, %_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit.i
  %i.cb = phi <2 x i32> [ %i.bt, %bb.c ], [ zeroinitializer, %_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit.i ] ; 3 uses
  %i.cc = phi <2 x i32> [ %i.ca, %bb.c ], [ zeroinitializer, %_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %foldExtExtBinop = sub nsw <2 x i32> %i.cc, %i.cb
  %i.cd = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop14 = sub nsw <2 x i32> %i.cc, %i.cb
  %i.ce = extractelement <2 x i32> %foldExtExtBinop14, i64 1 ; 2 uses
  %i.cf = add i32 %.06797.i, 1
  %i.cg = add i32 %i.cf, %i.cd
  %.not74.i = icmp slt i32 %i.cg, %4              ; 2 uses
  %spec.select77.i = select i1 %.not74.i, i32 %.06598.i, i32 %.06499.i ; 4 uses
  %i.ch = add nsw i32 %spec.select77.i, %i.ce     ; 2 uses
  %i.ci = add nsw i32 %i.ch, 1                    ; 2 uses
  %.not75.i = icmp slt i32 %i.ci, %5
  br i1 %.not75.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2cv31stbtt_GetGlyphBitmapBoxSubpixelEPKNS_14stbtt_fontinfoEiffffPiS3_S3_S3_.exit.i
  %i.cj = sub nsw i32 0, %i.an
  br label %_ZN2cvL29stbtt_BakeFontBitmap_internalEPhifS0_iiiiPNS_15stbtt_bakedcharE.exit

bb.e:                                             ; preds = %_ZN2cv31stbtt_GetGlyphBitmapBoxSubpixelEPKNS_14stbtt_fontinfoEiffffPiS3_S3_S3_.exit.i
  %spec.select.i = select i1 %.not74.i, i32 %.06797.i, i32 1 ; 3 uses
  %i.ck = sext i32 %spec.select.i to i64
  %i.cl = getelementptr inbounds i8, ptr %3, i64 %i.ck
  %i.cm = mul nsw i32 %spec.select77.i, %4
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  call void @_ZN2cv29stbtt_MakeGlyphBitmapSubpixelEPKNS_14stbtt_fontinfoEPhiiiffffi(ptr noundef nonnull readonly %9, ptr noundef %i.co, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef %4, float noundef %i.ad, float noundef %i.ad, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %i.ap)
  %i.cp = trunc i32 %spec.select.i to i16
  %i.cq = getelementptr inbounds nuw [20 x i8], ptr %8, i64 %indvars.iv.i ; 6 uses
  store i16 %i.cp, ptr %i.cq, align 4, !tbaa !201
  %i.cr = trunc i32 %spec.select77.i to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !202
  %i.ct = add nsw i32 %spec.select.i, %i.cd       ; 2 uses
  %i.cu = trunc i32 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i16 %i.cu, ptr %i.cv, align 4, !tbaa !203
  %i.cw = trunc i32 %i.ch to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !204
  %i.cy = sitofp i16 %i.bh to float
  %i.cz = fmul float %i.ad, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store float %i.cz, ptr %i.da, align 4, !tbaa !122
  %i.db = sitofp <2 x i32> %i.cb to <2 x float>
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store <2 x float> %i.db, ptr %i.dc, align 4, !tbaa !76
  %i.dd = add nsw i32 %i.ct, 1
  %spec.select78.i = call i32 @llvm.smax.i32(i32 %.06499.i, i32 %i.ci) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cvL29stbtt_BakeFontBitmap_internalEPhifS0_iiiiPNS_15stbtt_bakedcharE.exit, label %_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit.i, !llvm.loop !205

_ZN2cvL29stbtt_BakeFontBitmap_internalEPhifS0_iiiiPNS_15stbtt_bakedcharE.exit: ; preds = %bb.e, %bb.a, %bb.b, %bb.d
  %.272.i = phi i32 [ %i.cj, %bb.d ], [ -1, %bb.a ], [ 1, %bb.b ], [ %spec.select78.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret i32 %.272.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN2cv22stbtt_GetNumberOfFontsEPKh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN2cvL13stbtt__isfontEPh(ptr noundef readonly %0)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %_ZN2cvL31stbtt_GetNumberOfFonts_internalEPh.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 116
  br i1 %i.c, label %bb.c, label %_ZN2cvL31stbtt_GetNumberOfFonts_internalEPh.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = icmp eq i8 %i.e, 116
  br i1 %i.f, label %bb.d, label %_ZN2cvL31stbtt_GetNumberOfFonts_internalEPh.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = icmp eq i8 %i.h, 99
  br i1 %i.i, label %bb.e, label %_ZN2cvL31stbtt_GetNumberOfFonts_internalEPh.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = icmp eq i8 %i.k, 102
  br i1 %i.l, label %bb.f, label %_ZN2cvL31stbtt_GetNumberOfFonts_internalEPh.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %_ZN2cvL31stbtt_GetNumberOfFonts_internalEPh.exit [
    i32 65536, label %bb.g
    i32 131072, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  br label %_ZN2cvL31stbtt_GetNumberOfFonts_internalEPh.exit

_ZN2cvL31stbtt_GetNumberOfFonts_internalEPh.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.r, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN2cvL23stbtt_InitFont_internalEPNS_14stbtt_fontinfoEPhji(ptr nofree noundef captures(address_is_null) initializes((0, 568)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"struct.cv::stbtt__buf", align 8   ; 28 uses
  %5 = alloca %"struct.cv::stbtt__buf", align 8   ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %0, i8 0, i64 568, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %i.f, align 4, !tbaa !69
  %i.g = zext i32 %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.j, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.not.i = icmp eq ptr %1, null                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %3, 12                           ; 25 uses
  %.not37.i = icmp ult i32 %i.l, %2               ; 9 uses
  br i1 %.not37.i, label %bb.c, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread

bb.c:                                             ; preds = %bb.b
  %i.m = zext i32 %3 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.val.i = load i8, ptr %i.o, align 1, !tbaa !14
  %i.p = getelementptr i8, ptr %i.n, i64 5
  %.val39.i = load i8, ptr %i.p, align 1, !tbaa !14
  %i.q = zext i8 %.val.i to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = zext i8 %.val39.i to i32
  %i.t = or disjoint i32 %i.r, %i.s               ; 3 uses
  %i.u = shl nuw nsw i32 %i.t, 4
  %i.v = add i32 %i.u, %i.l
  %.not38.i = icmp ult i32 %i.v, %2
  %i.w = icmp ne i32 %i.t, 0
  %or.cond.i = and i1 %i.w, %.not38.i
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread.thread

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.x = shl i32 %indvars.iv.tr.i, 4
  %i.y = add i32 %i.x, %i.l
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = icmp eq i8 %i.ab, 99
  br i1 %i.ac, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = icmp eq i8 %i.ae, 109
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = icmp eq i8 %i.ah, 97
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = icmp eq i8 %i.ak, 112
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an) ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %2
  %i.aq = select i1 %i.ap, i32 %i.ao, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread.thread

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread.thread, label %bb.d, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread.thread: ; preds = %bb.i, %bb.h, %bb.c
  %.3.i485918 = phi i32 [ 0, %bb.c ], [ %i.aq, %bb.h ], [ 0, %bb.i ] ; 3 uses
  %i.ar = zext i32 %3 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.val.i193 = load i8, ptr %i.at, align 1, !tbaa !14
  %i.au = getelementptr i8, ptr %i.as, i64 5
  %.val39.i194 = load i8, ptr %i.au, align 1, !tbaa !14
  %i.av = zext i8 %.val.i193 to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = zext i8 %.val39.i194 to i32
  %i.ay = or disjoint i32 %i.aw, %i.ax            ; 3 uses
  %i.az = shl nuw nsw i32 %i.ay, 4
  %i.ba = add i32 %i.az, %i.l
  %.not38.i195 = icmp ult i32 %i.ba, %2
  %i.bb = icmp ne i32 %i.ay, 0
  %or.cond.i196 = and i1 %i.bb, %.not38.i195
  br i1 %or.cond.i196, label %.lr.ph.i197, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread

.lr.ph.i197:                                      ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread.thread
  %wide.trip.count.i198 = zext nneg i32 %i.ay to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %.lr.ph.i197
  %indvars.iv.i199 = phi i64 [ 0, %.lr.ph.i197 ], [ %indvars.iv.next.i201, %bb.o ] ; 2 uses
  %indvars.iv.tr.i200 = trunc i64 %indvars.iv.i199 to i32
  %i.bc = shl i32 %indvars.iv.tr.i200, 4
  %i.bd = add i32 %i.bc, %i.l
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be ; 5 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = icmp eq i8 %i.bg, 108
  br i1 %i.bh, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = icmp eq i8 %i.bj, 111
  br i1 %i.bk, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = icmp eq i8 %i.bm, 99
  br i1 %i.bn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = icmp eq i8 %i.bp, 97
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bs = load i32, ptr %i.br, align 1
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.bs) ; 2 uses
  %i.bu = icmp ult i32 %i.bt, %2
  %i.bv = select i1 %i.bu, i32 %i.bt, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i199, 1 ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %indvars.iv.next.i201, %wide.trip.count.i198
  br i1 %exitcond.not.i202, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203, label %bb.j, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread: ; preds = %bb.b, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread.thread, %bb.n
  %.3.i485917 = phi i32 [ %.3.i485918, %bb.n ], [ %.3.i485918, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread.thread ], [ 0, %bb.b ]
  %.3.i192.ph = phi i32 [ %i.bv, %bb.n ], [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.thread.thread ], [ 0, %bb.b ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.3.i192.ph, ptr %i.bw, align 4, !tbaa !23
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496: ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !206
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 0, ptr %i.ca, align 4, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bx, i8 0, i64 28, i1 false)
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit343

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203:       ; preds = %bb.o, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread
  %.3.i485916 = phi i32 [ %.3.i485917, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread ], [ %.3.i485918, %bb.o ] ; 4 uses
  %.3.i192493 = phi i32 [ %.3.i192.ph, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread ], [ 0, %bb.o ] ; 4 uses
  br i1 %.not37.i, label %bb.p, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit217.thread

bb.p:                                             ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203
  %i.cb = zext i32 %3 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.val.i207 = load i8, ptr %i.cd, align 1, !tbaa !14
  %i.ce = getelementptr i8, ptr %i.cc, i64 5
  %.val39.i208 = load i8, ptr %i.ce, align 1, !tbaa !14
  %i.cf = zext i8 %.val.i207 to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = zext i8 %.val39.i208 to i32
  %i.ci = or disjoint i32 %i.cg, %i.ch            ; 3 uses
  %i.cj = shl nuw nsw i32 %i.ci, 4
  %i.ck = add i32 %i.cj, %i.l
  %.not38.i209 = icmp ult i32 %i.ck, %2
  %i.cl = icmp ne i32 %i.ci, 0
  %or.cond.i210 = and i1 %i.cl, %.not38.i209
  br i1 %or.cond.i210, label %.lr.ph.i211, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit217.thread

.lr.ph.i211:                                      ; preds = %bb.p
  %wide.trip.count.i212 = zext nneg i32 %i.ci to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %.lr.ph.i211
  %indvars.iv.i213 = phi i64 [ 0, %.lr.ph.i211 ], [ %indvars.iv.next.i215, %bb.v ] ; 2 uses
  %indvars.iv.tr.i214 = trunc i64 %indvars.iv.i213 to i32
  %i.cm = shl i32 %indvars.iv.tr.i214, 4
  %i.cn = add i32 %i.cm, %i.l
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %i.co ; 5 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !14
  %i.cr = icmp eq i8 %i.cq, 104
  br i1 %i.cr, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !14
  %i.cu = icmp eq i8 %i.ct, 101
  br i1 %i.cu, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = icmp eq i8 %i.cw, 97
  br i1 %i.cx, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  %i.da = icmp eq i8 %i.cz, 100
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dc = load i32, ptr %i.db, align 1
  %i.dd = tail call i32 @llvm.bswap.i32(i32 %i.dc) ; 2 uses
  %i.de = icmp ult i32 %i.dd, %2
  %i.df = select i1 %i.de, i32 %i.dd, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit217.thread

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %indvars.iv.next.i215 = add nuw nsw i64 %indvars.iv.i213, 1 ; 2 uses
  %exitcond.not.i216 = icmp eq i64 %indvars.iv.next.i215, %wide.trip.count.i212
  br i1 %exitcond.not.i216, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit217.thread, label %bb.q, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit217.thread: ; preds = %bb.v, %bb.u, %bb.p, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203
  %.sink = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203 ], [ %i.df, %bb.u ], [ 0, %bb.p ], [ 0, %bb.v ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store i32 %.sink, ptr %i.dg, align 8, !tbaa !72
  br i1 %.not37.i, label %bb.w, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit231.thread

bb.w:                                             ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit217.thread
  %i.dh = zext i32 %3 to i64
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %.val.i221 = load i8, ptr %i.dj, align 1, !tbaa !14
  %i.dk = getelementptr i8, ptr %i.di, i64 5
  %.val39.i222 = load i8, ptr %i.dk, align 1, !tbaa !14
  %i.dl = zext i8 %.val.i221 to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = zext i8 %.val39.i222 to i32
  %i.do = or disjoint i32 %i.dm, %i.dn            ; 3 uses
  %i.dp = shl nuw nsw i32 %i.do, 4
  %i.dq = add i32 %i.dp, %i.l
  %.not38.i223 = icmp ult i32 %i.dq, %2
  %i.dr = icmp ne i32 %i.do, 0
  %or.cond.i224 = and i1 %i.dr, %.not38.i223
  br i1 %or.cond.i224, label %.lr.ph.i225, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit231.thread

.lr.ph.i225:                                      ; preds = %bb.w
  %wide.trip.count.i226 = zext nneg i32 %i.do to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph.i225
  %indvars.iv.i227 = phi i64 [ 0, %.lr.ph.i225 ], [ %indvars.iv.next.i229, %bb.ac ] ; 2 uses
  %indvars.iv.tr.i228 = trunc i64 %indvars.iv.i227 to i32
  %i.ds = shl i32 %indvars.iv.tr.i228, 4
  %i.dt = add i32 %i.ds, %i.l
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.du ; 5 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !14
  %i.dx = icmp eq i8 %i.dw, 103
  br i1 %i.dx, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !14
  %i.ea = icmp eq i8 %i.dz, 108
  br i1 %i.ea, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !14
  %i.ed = icmp eq i8 %i.ec, 121
  br i1 %i.ed, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !14
  %i.eg = icmp eq i8 %i.ef, 102
  br i1 %i.eg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ei = load i32, ptr %i.eh, align 1
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei) ; 2 uses
  %i.ek = icmp ult i32 %i.ej, %2
  %i.el = select i1 %i.ek, i32 %i.ej, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit231.thread

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %indvars.iv.next.i229 = add nuw nsw i64 %indvars.iv.i227, 1 ; 2 uses
  %exitcond.not.i230 = icmp eq i64 %indvars.iv.next.i229, %wide.trip.count.i226
  br i1 %exitcond.not.i230, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit231.thread, label %bb.x, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit231.thread: ; preds = %bb.ac, %bb.ab, %bb.w, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit217.thread
  %.sink954 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit217.thread ], [ %i.el, %bb.ab ], [ 0, %bb.w ], [ 0, %bb.ac ] ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sink954, ptr %i.em, align 4, !tbaa !22
  br i1 %.not37.i, label %bb.ad, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit245.thread

bb.ad:                                            ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit231.thread
  %i.en = zext i32 %3 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %.val.i235 = load i8, ptr %i.ep, align 1, !tbaa !14
  %i.eq = getelementptr i8, ptr %i.eo, i64 5
  %.val39.i236 = load i8, ptr %i.eq, align 1, !tbaa !14
  %i.er = zext i8 %.val.i235 to i32
  %i.es = shl nuw nsw i32 %i.er, 8
  %i.et = zext i8 %.val39.i236 to i32
  %i.eu = or disjoint i32 %i.es, %i.et            ; 3 uses
  %i.ev = shl nuw nsw i32 %i.eu, 4
  %i.ew = add i32 %i.ev, %i.l
  %.not38.i237 = icmp ult i32 %i.ew, %2
  %i.ex = icmp ne i32 %i.eu, 0
  %or.cond.i238 = and i1 %i.ex, %.not38.i237
  br i1 %or.cond.i238, label %.lr.ph.i239, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit245.thread

.lr.ph.i239:                                      ; preds = %bb.ad
  %wide.trip.count.i240 = zext nneg i32 %i.eu to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %.lr.ph.i239
  %indvars.iv.i241 = phi i64 [ 0, %.lr.ph.i239 ], [ %indvars.iv.next.i243, %bb.aj ] ; 2 uses
  %indvars.iv.tr.i242 = trunc i64 %indvars.iv.i241 to i32
  %i.ey = shl i32 %indvars.iv.tr.i242, 4
  %i.ez = add i32 %i.ey, %i.l
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %i.fa ; 5 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !14
  %i.fd = icmp eq i8 %i.fc, 104
  br i1 %i.fd, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !14
  %i.fg = icmp eq i8 %i.ff, 104
  br i1 %i.fg, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !14
  %i.fj = icmp eq i8 %i.fi, 101
  br i1 %i.fj, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 3
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !14
  %i.fm = icmp eq i8 %i.fl, 97
  br i1 %i.fm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fo = load i32, ptr %i.fn, align 1
  %i.fp = tail call i32 @llvm.bswap.i32(i32 %i.fo) ; 2 uses
  %i.fq = icmp ult i32 %i.fp, %2
  %i.fr = select i1 %i.fq, i32 %i.fp, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit245.thread

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %indvars.iv.next.i243 = add nuw nsw i64 %indvars.iv.i241, 1 ; 2 uses
  %exitcond.not.i244 = icmp eq i64 %indvars.iv.next.i243, %wide.trip.count.i240
  br i1 %exitcond.not.i244, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit245.thread, label %bb.ae, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit245.thread: ; preds = %bb.aj, %bb.ai, %bb.ad, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit231.thread
  %.sink956 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit231.thread ], [ %i.fr, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.aj ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sink956, ptr %i.fs, align 8, !tbaa !54
  br i1 %.not37.i, label %bb.ak, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit259.thread

bb.ak:                                            ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit245.thread
  %i.ft = zext i32 %3 to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %.val.i249 = load i8, ptr %i.fv, align 1, !tbaa !14
  %i.fw = getelementptr i8, ptr %i.fu, i64 5
  %.val39.i250 = load i8, ptr %i.fw, align 1, !tbaa !14
  %i.fx = zext i8 %.val.i249 to i32
  %i.fy = shl nuw nsw i32 %i.fx, 8
  %i.fz = zext i8 %.val39.i250 to i32
  %i.ga = or disjoint i32 %i.fy, %i.fz            ; 3 uses
  %i.gb = shl nuw nsw i32 %i.ga, 4
  %i.gc = add i32 %i.gb, %i.l
  %.not38.i251 = icmp ult i32 %i.gc, %2
  %i.gd = icmp ne i32 %i.ga, 0
  %or.cond.i252 = and i1 %i.gd, %.not38.i251
  br i1 %or.cond.i252, label %.lr.ph.i253, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit259.thread

.lr.ph.i253:                                      ; preds = %bb.ak
  %wide.trip.count.i254 = zext nneg i32 %i.ga to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i253
  %indvars.iv.i255 = phi i64 [ 0, %.lr.ph.i253 ], [ %indvars.iv.next.i257, %bb.aq ] ; 2 uses
  %indvars.iv.tr.i256 = trunc i64 %indvars.iv.i255 to i32
  %i.ge = shl i32 %indvars.iv.tr.i256, 4
  %i.gf = add i32 %i.ge, %i.l
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 %i.gg ; 5 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !14
  %i.gj = icmp eq i8 %i.gi, 104
  br i1 %i.gj, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !14
  %i.gm = icmp eq i8 %i.gl, 109
  br i1 %i.gm, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !14
  %i.gp = icmp eq i8 %i.go, 116
  br i1 %i.gp, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 3
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !14
  %i.gs = icmp eq i8 %i.gr, 120
  br i1 %i.gs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gu = load i32, ptr %i.gt, align 1
  %i.gv = tail call i32 @llvm.bswap.i32(i32 %i.gu) ; 2 uses
  %i.gw = icmp ult i32 %i.gv, %2
  %i.gx = select i1 %i.gw, i32 %i.gv, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit259.thread

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %indvars.iv.next.i257 = add nuw nsw i64 %indvars.iv.i255, 1 ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %indvars.iv.next.i257, %wide.trip.count.i254
  br i1 %exitcond.not.i258, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit259.thread, label %bb.al, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit259.thread: ; preds = %bb.aq, %bb.ap, %bb.ak, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit245.thread
  %.sink958 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit245.thread ], [ %i.gx, %bb.ap ], [ 0, %bb.ak ], [ 0, %bb.aq ] ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sink958, ptr %i.gy, align 4, !tbaa !55
  br i1 %.not37.i, label %bb.ar, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread.critedge

bb.ar:                                            ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit259.thread
  %i.gz = zext i32 %3 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %.val.i263 = load i8, ptr %i.hb, align 1, !tbaa !14
  %i.hc = getelementptr i8, ptr %i.ha, i64 5
  %.val39.i264 = load i8, ptr %i.hc, align 1, !tbaa !14
  %i.hd = zext i8 %.val.i263 to i32
  %i.he = shl nuw nsw i32 %i.hd, 8
  %i.hf = zext i8 %.val39.i264 to i32
  %i.hg = or disjoint i32 %i.he, %i.hf            ; 3 uses
  %i.hh = shl nuw nsw i32 %i.hg, 4
  %i.hi = add i32 %i.hh, %i.l
  %.not38.i265 = icmp ult i32 %i.hi, %2
  %i.hj = icmp ne i32 %i.hg, 0
  %or.cond.i266 = and i1 %i.hj, %.not38.i265
  br i1 %or.cond.i266, label %.lr.ph.i267, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit273.thread

.lr.ph.i267:                                      ; preds = %bb.ar
  %wide.trip.count.i268 = zext nneg i32 %i.hg to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.ax, %.lr.ph.i267
  %indvars.iv.i269 = phi i64 [ 0, %.lr.ph.i267 ], [ %indvars.iv.next.i271, %bb.ax ] ; 2 uses
  %indvars.iv.tr.i270 = trunc i64 %indvars.iv.i269 to i32
  %i.hk = shl i32 %indvars.iv.tr.i270, 4
  %i.hl = add i32 %i.hk, %i.l
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %i.hm ; 5 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !14
  %i.hp = icmp eq i8 %i.ho, 107
  br i1 %i.hp, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !14
  %i.hs = icmp eq i8 %i.hr, 101
  br i1 %i.hs, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !14
  %i.hv = icmp eq i8 %i.hu, 114
  br i1 %i.hv, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !14
  %i.hy = icmp eq i8 %i.hx, 110
  br i1 %i.hy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.ia = load i32, ptr %i.hz, align 1
  %i.ib = tail call i32 @llvm.bswap.i32(i32 %i.ia) ; 2 uses
  %i.ic = icmp ult i32 %i.ib, %2
  %i.id = select i1 %i.ic, i32 %i.ib, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit273.thread

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %indvars.iv.next.i271 = add nuw nsw i64 %indvars.iv.i269, 1 ; 2 uses
  %exitcond.not.i272 = icmp eq i64 %indvars.iv.next.i271, %wide.trip.count.i268
  br i1 %exitcond.not.i272, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit273.thread, label %bb.as, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit273.thread: ; preds = %bb.ax, %bb.aw, %bb.ar
  %.sink960 = phi i32 [ 0, %bb.ar ], [ %i.id, %bb.aw ], [ 0, %bb.ax ]
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sink960, ptr %i.ie, align 8, !tbaa !56
  %i.if = zext i32 %3 to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %.val.i277 = load i8, ptr %i.ih, align 1, !tbaa !14
  %i.ii = getelementptr i8, ptr %i.ig, i64 5
  %.val39.i278 = load i8, ptr %i.ii, align 1, !tbaa !14
  %i.ij = zext i8 %.val.i277 to i32
  %i.ik = shl nuw nsw i32 %i.ij, 8
  %i.il = zext i8 %.val39.i278 to i32
  %i.im = or disjoint i32 %i.ik, %i.il            ; 3 uses
  %i.in = shl nuw nsw i32 %i.im, 4
  %i.io = add i32 %i.in, %i.l
  %.not38.i279 = icmp ult i32 %i.io, %2
  %i.ip = icmp ne i32 %i.im, 0
  %or.cond.i280 = and i1 %i.ip, %.not38.i279
  br i1 %or.cond.i280, label %.lr.ph.i281, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread

.lr.ph.i281:                                      ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit273.thread
  %wide.trip.count.i282 = zext nneg i32 %i.im to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bd, %.lr.ph.i281
  %indvars.iv.i283 = phi i64 [ 0, %.lr.ph.i281 ], [ %indvars.iv.next.i285, %bb.bd ] ; 2 uses
  %indvars.iv.tr.i284 = trunc i64 %indvars.iv.i283 to i32
  %i.iq = shl i32 %indvars.iv.tr.i284, 4
  %i.ir = add i32 %i.iq, %i.l
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 %i.is ; 5 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !14
  %i.iv = icmp eq i8 %i.iu, 71
  br i1 %i.iv, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !14
  %i.iy = icmp eq i8 %i.ix, 80
  br i1 %i.iy, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !14
  %i.jb = icmp eq i8 %i.ja, 79
  br i1 %i.jb, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 3
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !14
  %i.je = icmp eq i8 %i.jd, 83
  br i1 %i.je, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.jf = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jg = load i32, ptr %i.jf, align 1
  %i.jh = tail call i32 @llvm.bswap.i32(i32 %i.jg) ; 2 uses
  %i.ji = icmp ult i32 %i.jh, %2
  %i.jj = select i1 %i.ji, i32 %i.jh, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %indvars.iv.next.i285 = add nuw nsw i64 %indvars.iv.i283, 1 ; 2 uses
  %exitcond.not.i286 = icmp eq i64 %indvars.iv.next.i285, %wide.trip.count.i282
  br i1 %exitcond.not.i286, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread, label %bb.ay, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread.critedge: ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit259.thread
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.jk, align 8, !tbaa !56
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread: ; preds = %bb.bd, %bb.bc, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit273.thread, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread.critedge
  %.sink962 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread.critedge ], [ %i.jj, %bb.bc ], [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit273.thread ], [ 0, %bb.bd ]
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sink962, ptr %i.jl, align 4, !tbaa !62
  br i1 %.not37.i, label %bb.be, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread.critedge

bb.be:                                            ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread
  %i.jm = zext i32 %3 to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %.val.i291 = load i8, ptr %i.jo, align 1, !tbaa !14
  %i.jp = getelementptr i8, ptr %i.jn, i64 5
  %.val39.i292 = load i8, ptr %i.jp, align 1, !tbaa !14
  %i.jq = zext i8 %.val.i291 to i32
  %i.jr = shl nuw nsw i32 %i.jq, 8
  %i.js = zext i8 %.val39.i292 to i32
  %i.jt = or disjoint i32 %i.jr, %i.js            ; 3 uses
  %i.ju = shl nuw nsw i32 %i.jt, 4
  %i.jv = add i32 %i.ju, %i.l
  %.not38.i293 = icmp ult i32 %i.jv, %2
  %i.jw = icmp ne i32 %i.jt, 0
  %or.cond.i294 = and i1 %i.jw, %.not38.i293
  br i1 %or.cond.i294, label %.lr.ph.i295, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit301.thread

.lr.ph.i295:                                      ; preds = %bb.be
  %wide.trip.count.i296 = zext nneg i32 %i.jt to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bk, %.lr.ph.i295
  %indvars.iv.i297 = phi i64 [ 0, %.lr.ph.i295 ], [ %indvars.iv.next.i299, %bb.bk ] ; 2 uses
  %indvars.iv.tr.i298 = trunc i64 %indvars.iv.i297 to i32
  %i.jx = shl i32 %indvars.iv.tr.i298, 4
  %i.jy = add i32 %i.jx, %i.l
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 %i.jz ; 5 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !14
  %i.kc = icmp eq i8 %i.kb, 97
  br i1 %i.kc, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !14
  %i.kf = icmp eq i8 %i.ke, 118
  br i1 %i.kf, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !14
  %i.ki = icmp eq i8 %i.kh, 97
  br i1 %i.ki, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 3
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !14
  %i.kl = icmp eq i8 %i.kk, 114
  br i1 %i.kl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kn = load i32, ptr %i.km, align 1
  %i.ko = tail call i32 @llvm.bswap.i32(i32 %i.kn) ; 2 uses
  %i.kp = icmp ult i32 %i.ko, %2
  %i.kq = select i1 %i.kp, i32 %i.ko, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit301.thread

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %indvars.iv.next.i299 = add nuw nsw i64 %indvars.iv.i297, 1 ; 2 uses
  %exitcond.not.i300 = icmp eq i64 %indvars.iv.next.i299, %wide.trip.count.i296
  br i1 %exitcond.not.i300, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit301.thread, label %bb.bf, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit301.thread: ; preds = %bb.bk, %bb.bj, %bb.be
  %.sink964 = phi i32 [ 0, %bb.be ], [ %i.kq, %bb.bj ], [ 0, %bb.bk ]
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sink964, ptr %i.kr, align 4, !tbaa !207
  %i.ks = zext i32 %3 to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %.val.i305 = load i8, ptr %i.ku, align 1, !tbaa !14
  %i.kv = getelementptr i8, ptr %i.kt, i64 5
  %.val39.i306 = load i8, ptr %i.kv, align 1, !tbaa !14
  %i.kw = zext i8 %.val.i305 to i32
  %i.kx = shl nuw nsw i32 %i.kw, 8
  %i.ky = zext i8 %.val39.i306 to i32
  %i.kz = or disjoint i32 %i.kx, %i.ky            ; 3 uses
  %i.la = shl nuw nsw i32 %i.kz, 4
  %i.lb = add i32 %i.la, %i.l
  %.not38.i307 = icmp ult i32 %i.lb, %2
  %i.lc = icmp ne i32 %i.kz, 0
  %or.cond.i308 = and i1 %i.lc, %.not38.i307
  br i1 %or.cond.i308, label %.lr.ph.i309, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread

.lr.ph.i309:                                      ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit301.thread
  %wide.trip.count.i310 = zext nneg i32 %i.kz to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bq, %.lr.ph.i309
  %indvars.iv.i311 = phi i64 [ 0, %.lr.ph.i309 ], [ %indvars.iv.next.i313, %bb.bq ] ; 2 uses
  %indvars.iv.tr.i312 = trunc i64 %indvars.iv.i311 to i32
  %i.ld = shl i32 %indvars.iv.tr.i312, 4
  %i.le = add i32 %i.ld, %i.l
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %i.lf ; 5 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !14
  %i.li = icmp eq i8 %i.lh, 102
  br i1 %i.li, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !14
  %i.ll = icmp eq i8 %i.lk, 118
  br i1 %i.ll, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !14
  %i.lo = icmp eq i8 %i.ln, 97
  br i1 %i.lo, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lg, i64 3
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !14
  %i.lr = icmp eq i8 %i.lq, 114
  br i1 %i.lr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lt = load i32, ptr %i.ls, align 1
  %i.lu = tail call i32 @llvm.bswap.i32(i32 %i.lt) ; 2 uses
  %i.lv = icmp ult i32 %i.lu, %2
  %i.lw = select i1 %i.lv, i32 %i.lu, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %indvars.iv.next.i313 = add nuw nsw i64 %indvars.iv.i311, 1 ; 2 uses
  %exitcond.not.i314 = icmp eq i64 %indvars.iv.next.i313, %wide.trip.count.i310
  br i1 %exitcond.not.i314, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread, label %bb.bl, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread.critedge: ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit287.thread
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.lx, align 4, !tbaa !207
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread: ; preds = %bb.bq, %bb.bp, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit301.thread, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread.critedge
  %.sink966 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread.critedge ], [ %i.lw, %bb.bp ], [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit301.thread ], [ 0, %bb.bq ]
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  store i32 %.sink966, ptr %i.ly, align 8, !tbaa !206
  br i1 %.not37.i, label %bb.br, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread

bb.br:                                            ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread
  %i.lz = zext i32 %3 to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %.val.i319 = load i8, ptr %i.mb, align 1, !tbaa !14
  %i.mc = getelementptr i8, ptr %i.ma, i64 5
  %.val39.i320 = load i8, ptr %i.mc, align 1, !tbaa !14
  %i.md = zext i8 %.val.i319 to i32
  %i.me = shl nuw nsw i32 %i.md, 8
  %i.mf = zext i8 %.val39.i320 to i32
  %i.mg = or disjoint i32 %i.me, %i.mf            ; 3 uses
  %i.mh = shl nuw nsw i32 %i.mg, 4
  %i.mi = add i32 %i.mh, %i.l
  %.not38.i321 = icmp ult i32 %i.mi, %2
  %i.mj = icmp ne i32 %i.mg, 0
  %or.cond.i322 = and i1 %i.mj, %.not38.i321
  br i1 %or.cond.i322, label %.lr.ph.i323, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread

.lr.ph.i323:                                      ; preds = %bb.br
  %wide.trip.count.i324 = zext nneg i32 %i.mg to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bx, %.lr.ph.i323
  %indvars.iv.i325 = phi i64 [ 0, %.lr.ph.i323 ], [ %indvars.iv.next.i327, %bb.bx ] ; 2 uses
  %indvars.iv.tr.i326 = trunc i64 %indvars.iv.i325 to i32
  %i.mk = shl i32 %indvars.iv.tr.i326, 4
  %i.ml = add i32 %i.mk, %i.l
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 %i.mm ; 5 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !14
  %i.mp = icmp eq i8 %i.mo, 103
  br i1 %i.mp, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !14
  %i.ms = icmp eq i8 %i.mr, 118
  br i1 %i.ms, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 2
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !14
  %i.mv = icmp eq i8 %i.mu, 97
  br i1 %i.mv, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 3
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !14
  %i.my = icmp eq i8 %i.mx, 114
  br i1 %i.my, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.na = load i32, ptr %i.mz, align 1
  %i.nb = tail call i32 @llvm.bswap.i32(i32 %i.na) ; 2 uses
  %i.nc = icmp ult i32 %i.nb, %2
  %i.nd = select i1 %i.nc, i32 %i.nb, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread

bb.bx:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %indvars.iv.next.i327 = add nuw nsw i64 %indvars.iv.i325, 1 ; 2 uses
  %exitcond.not.i328 = icmp eq i64 %indvars.iv.next.i327, %wide.trip.count.i324
  br i1 %exitcond.not.i328, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread, label %bb.bs, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread: ; preds = %bb.bx, %bb.bw, %bb.br, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread
  %.sink968 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit315.thread ], [ %i.nd, %bb.bw ], [ 0, %bb.br ], [ 0, %bb.bx ]
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  store i32 %.sink968, ptr %i.ne, align 4, !tbaa !37
  br i1 %.not37.i, label %bb.by, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit343

bb.by:                                            ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread
  %i.nf = zext i32 %3 to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 %i.nf ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %.val.i333 = load i8, ptr %i.nh, align 1, !tbaa !14
  %i.ni = getelementptr i8, ptr %i.ng, i64 5
  %.val39.i334 = load i8, ptr %i.ni, align 1, !tbaa !14
  %i.nj = zext i8 %.val.i333 to i32
  %i.nk = shl nuw nsw i32 %i.nj, 8
  %i.nl = zext i8 %.val39.i334 to i32
  %i.nm = or disjoint i32 %i.nk, %i.nl            ; 3 uses
  %i.nn = shl nuw nsw i32 %i.nm, 4
  %i.no = add i32 %i.nn, %i.l
  %.not38.i335 = icmp ult i32 %i.no, %2
  %i.np = icmp ne i32 %i.nm, 0
  %or.cond.i336 = and i1 %i.np, %.not38.i335
  br i1 %or.cond.i336, label %.lr.ph.i337, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit343

.lr.ph.i337:                                      ; preds = %bb.by
  %wide.trip.count.i338 = zext nneg i32 %i.nm to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ce, %.lr.ph.i337
  %indvars.iv.i339 = phi i64 [ 0, %.lr.ph.i337 ], [ %indvars.iv.next.i341, %bb.ce ] ; 2 uses
  %indvars.iv.tr.i340 = trunc i64 %indvars.iv.i339 to i32
  %i.nq = shl i32 %indvars.iv.tr.i340, 4
  %i.nr = add i32 %i.nq, %i.l
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ns ; 5 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !14
  %i.nv = icmp eq i8 %i.nu, 72
  br i1 %i.nv, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !14
  %i.ny = icmp eq i8 %i.nx, 86
  br i1 %i.ny, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 2
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !14
  %i.ob = icmp eq i8 %i.oa, 65
  br i1 %i.ob, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nt, i64 3
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !14
  %i.oe = icmp eq i8 %i.od, 82
  br i1 %i.oe, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.of = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.og = load i32, ptr %i.of, align 1
  %i.oh = tail call i32 @llvm.bswap.i32(i32 %i.og) ; 2 uses
  %i.oi = icmp ult i32 %i.oh, %2
  %i.oj = select i1 %i.oi, i32 %i.oh, i32 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit343

bb.ce:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %indvars.iv.next.i341 = add nuw nsw i64 %indvars.iv.i339, 1 ; 2 uses
  %exitcond.not.i342 = icmp eq i64 %indvars.iv.next.i341, %wide.trip.count.i338
  br i1 %exitcond.not.i342, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit343, label %bb.bz, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit343:       ; preds = %bb.ce, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread, %bb.by, %bb.cd
  %i.ok = phi ptr [ %i.ca, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ %i.ne, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ %i.ne, %bb.by ], [ %i.ne, %bb.cd ], [ %i.ne, %bb.ce ] ; 2 uses
  %.3.i234545561599618657676715 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ %.sink956, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ %.sink956, %bb.by ], [ %.sink956, %bb.cd ], [ %.sink956, %bb.ce ]
  %i.ol = phi ptr [ %i.by, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ %i.dg, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ %i.dg, %bb.by ], [ %i.dg, %bb.cd ], [ %i.dg, %bb.ce ]
  %.3.i206507518543563597620655678713 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ %.sink, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ %.sink, %bb.by ], [ %.sink, %bb.cd ], [ %.sink, %bb.ce ]
  %.3.i486492505520541565595622653680711 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ %.3.i485916, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ %.3.i485916, %bb.by ], [ %.3.i485916, %bb.cd ], [ %.3.i485916, %bb.ce ] ; 4 uses
  %.3.i192494503522539567593624651682709 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ %.3.i192493, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ %.3.i192493, %bb.by ], [ %.3.i192493, %bb.cd ], [ %.3.i192493, %bb.ce ]
  %.3.i220524537569591626649684707 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ %.sink954, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ %.sink954, %bb.by ], [ %.sink954, %bb.cd ], [ %.sink954, %bb.ce ]
  %.3.i248571589628647686705 = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ %.sink958, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ %.sink958, %bb.by ], [ %.sink958, %bb.cd ], [ %.sink958, %bb.ce ]
  %i.om = phi ptr [ %i.bz, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ %i.ly, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ %i.ly, %bb.by ], [ %i.ly, %bb.cd ], [ %i.ly, %bb.ce ] ; 2 uses
  %i.on = phi i32 [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit203.thread496 ], [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit329.thread ], [ 0, %bb.by ], [ %i.oj, %bb.cd ], [ 0, %bb.ce ] ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.on, ptr %i.oo, align 8, !tbaa !208
  %.not = icmp eq i32 %.3.i486492505520541565595622653680711, 0
  %.not161 = icmp eq i32 %.3.i206507518543563597620655678713, 0
  %or.cond756 = select i1 %.not, i1 true, i1 %.not161
  %.not162 = icmp eq i32 %.3.i234545561599618657676715, 0
  %or.cond757 = select i1 %or.cond756, i1 true, i1 %.not162
  %.not163 = icmp eq i32 %.3.i248571589628647686705, 0
  %or.cond758 = select i1 %or.cond757, i1 true, i1 %.not163
  br i1 %or.cond758, label %._crit_edge.thread, label %bb.cf

bb.cf:                                            ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit343
  %.not164 = icmp eq i32 %.3.i220524537569591626649684707, 0
  br i1 %.not164, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not169 = icmp eq i32 %.3.i192494503522539567593624651682709, 0
  br i1 %.not169, label %._crit_edge.thread, label %bb.ei

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 2, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !18
  br i1 %.not.i, label %.critedge, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.op = add i32 %3, 12                          ; 3 uses
  %.not37.i345 = icmp ult i32 %i.op, %2
  br i1 %.not37.i345, label %bb.cj, label %.critedge

bb.cj:                                            ; preds = %bb.ci
  %i.oq = zext i32 %3 to i64
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %i.oq ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %.val.i347 = load i8, ptr %i.os, align 1, !tbaa !14
  %i.ot = getelementptr i8, ptr %i.or, i64 5
  %.val39.i348 = load i8, ptr %i.ot, align 1, !tbaa !14
  %i.ou = zext i8 %.val.i347 to i32
  %i.ov = shl nuw nsw i32 %i.ou, 8
  %i.ow = zext i8 %.val39.i348 to i32
  %i.ox = or disjoint i32 %i.ov, %i.ow            ; 3 uses
  %i.oy = shl nuw nsw i32 %i.ox, 4
  %i.oz = add i32 %i.oy, %i.op
  %.not38.i349 = icmp ult i32 %i.oz, %2
  %i.pa = icmp ne i32 %i.ox, 0
  %or.cond.i350 = and i1 %i.pa, %.not38.i349
  br i1 %or.cond.i350, label %.lr.ph.i351, label %.critedge

.lr.ph.i351:                                      ; preds = %bb.cj
  %wide.trip.count.i352 = zext nneg i32 %i.ox to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cp, %.lr.ph.i351
  %indvars.iv.i353 = phi i64 [ 0, %.lr.ph.i351 ], [ %indvars.iv.next.i355, %bb.cp ] ; 2 uses
  %indvars.iv.tr.i354 = trunc i64 %indvars.iv.i353 to i32
  %i.pb = shl i32 %indvars.iv.tr.i354, 4
  %i.pc = add i32 %i.pb, %i.op
  %i.pd = zext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 %i.pd ; 5 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !14
  %i.pg = icmp eq i8 %i.pf, 67
  br i1 %i.pg, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !14
  %i.pj = icmp eq i8 %i.pi, 70
  br i1 %i.pj, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !14
  %i.pm = icmp eq i8 %i.pl, 70
  br i1 %i.pm, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pe, i64 3
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !14
  %i.pp = icmp eq i8 %i.po, 32
  br i1 %i.pp, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pr = load i32, ptr %i.pq, align 1            ; 2 uses
  %i.ps = tail call i32 @llvm.bswap.i32(i32 %i.pr) ; 3 uses
  %i.pt = icmp uge i32 %i.ps, %2
  %.not165 = icmp eq i32 %i.pr, 0
  %or.cond759 = or i1 %i.pt, %.not165
  br i1 %or.cond759, label %.critedge, label %bb.cq

bb.cp:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %indvars.iv.next.i355 = add nuw nsw i64 %indvars.iv.i353, 1 ; 2 uses
  %exitcond.not.i356 = icmp eq i64 %indvars.iv.next.i355, %wide.trip.count.i352
  br i1 %exitcond.not.i356, label %.critedge, label %bb.ck, !llvm.loop !71

bb.cq:                                            ; preds = %bb.co
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.pw = zext i32 %i.ps to i64
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 %i.pw
  %i.py = sub nuw i32 %2, %i.ps
  %i.pz = zext i32 %i.py to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %i.pz, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pu, i8 0, i64 32, i1 false)
  store ptr %i.px, ptr %i.k, align 8, !tbaa !119
  store i64 %.sroa.4.8.insert.shift.i, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !209
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 17 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !210 ; 2 uses
  %i.qc = add nsw i32 %i.qb, 2
  %i.qd = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !211 ; 48 uses
  %i.qf = icmp slt i32 %i.qb, -2
  %i.qg = tail call i32 @llvm.smin.i32(i32 %i.qc, i32 %i.qe)
  %..i.i = select i1 %i.qf, i32 %i.qe, i32 %i.qg  ; 2 uses
  %.not.i358 = icmp slt i32 %..i.i, %i.qe
  br i1 %.not.i358, label %bb.cr, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit

bb.cr:                                            ; preds = %bb.cq
  %i.qh = load ptr, ptr %4, align 8, !tbaa !212
  %i.qi = sext i32 %..i.i to i64
  %i.qj = getelementptr inbounds i8, ptr %i.qh, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !14
  %i.ql = zext i8 %i.qk to i32
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit:  ; preds = %bb.cq, %bb.cr
  %.0.i = phi i32 [ %i.ql, %bb.cr ], [ 0, %bb.cq ] ; 2 uses
  %i.qm = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 %i.qe) ; 4 uses
  store i32 %i.qm, ptr %i.qa, align 8, !tbaa !210
  %.not.i.i.i = icmp slt i32 %.0.i, %i.qe
  br i1 %.not.i.i.i, label %bb.cs, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i

bb.cs:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit
  %i.qn = load ptr, ptr %4, align 8, !tbaa !212
  %i.qo = add nsw i32 %i.qm, 1                    ; 2 uses
  store i32 %i.qo, ptr %i.qa, align 8, !tbaa !210
  %i.qp = sext i32 %i.qm to i64
  %i.qq = getelementptr inbounds i8, ptr %i.qn, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !14
  %i.qs = zext i8 %i.qr to i32
  %i.qt = shl nuw nsw i32 %i.qs, 8
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i: ; preds = %bb.cs, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit
  %i.qu = phi i32 [ %i.qo, %bb.cs ], [ %i.qm, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.qt, %bb.cs ], [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit ] ; 2 uses
  %.not.i.i.1.i = icmp slt i32 %i.qu, %i.qe
  br i1 %.not.i.i.1.i, label %bb.ct, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i

bb.ct:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i
  %i.qv = load ptr, ptr %4, align 8, !tbaa !212
  %i.qw = add nsw i32 %i.qu, 1                    ; 2 uses
  store i32 %i.qw, ptr %i.qa, align 8, !tbaa !210
  %i.qx = sext i32 %i.qu to i64
  %i.qy = getelementptr inbounds i8, ptr %i.qv, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !14
  %i.ra = zext i8 %i.qz to i32
  %i.rb = or disjoint i32 %.0.i.i.i, %i.ra
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i: ; preds = %bb.ct, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i
  %i.rc = phi i32 [ %i.qw, %bb.ct ], [ %i.qu, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i ] ; 5 uses
  %.0.i.i.1.i = phi i32 [ %i.rb, %bb.ct ], [ %.0.i.i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i ] ; 2 uses
  %.not.i359 = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not.i359, label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i
  %.not.i.i = icmp slt i32 %i.rc, %i.qe
  br i1 %.not.i.i, label %bb.cv, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i

bb.cv:                                            ; preds = %bb.cu
  %i.rd = load ptr, ptr %4, align 8, !tbaa !212
  %i.re = add nsw i32 %i.rc, 1
  %i.rf = sext i32 %i.rc to i64
  %i.rg = getelementptr inbounds i8, ptr %i.rd, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !14
  %i.ri = zext i8 %i.rh to i32
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i: ; preds = %bb.cv, %bb.cu
  %.promoted = phi i32 [ %i.re, %bb.cv ], [ %i.rc, %bb.cu ]
  %.0.i.i = phi i32 [ %i.ri, %bb.cv ], [ 0, %bb.cu ] ; 6 uses
  %i.rj = mul nuw nsw i32 %.0.i.i, %.0.i.i.1.i
  %i.rk = add nsw i32 %i.rj, %.promoted           ; 2 uses
  %i.rl = icmp slt i32 %i.rk, 0
  %i.rm = tail call i32 @llvm.smin.i32(i32 %i.rk, i32 %i.qe)
  %..i.i.i = select i1 %i.rl, i32 %i.qe, i32 %i.rm ; 3 uses
  %.not.i13.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i13.i, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %i.rn = load ptr, ptr %4, align 8               ; 3 uses
  %xtraiter = and i32 %.0.i.i, 1
  %i.ro = icmp eq i32 %.0.i.i, 1
  br i1 %i.ro, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %.0.i.i, 254
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1, %.lr.ph.i.i.preheader.new
  %i.rp = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.sf, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1 ] ; 4 uses
  %.056.i16.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %.0.i.i19.i.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1 ]
  %i.rq = shl i32 %.056.i16.i, 8                  ; 2 uses
  %.not.i.i17.i = icmp slt i32 %i.rp, %i.qe
  br i1 %.not.i.i17.i, label %bb.cw, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i

bb.cw:                                            ; preds = %.lr.ph.i.i
  %i.rr = add nsw i32 %i.rp, 1
  %i.rs = sext i32 %i.rp to i64
  %i.rt = getelementptr inbounds i8, ptr %i.rn, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !14
  %i.rv = zext i8 %i.ru to i32
  %i.rw = or disjoint i32 %i.rq, %i.rv
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i: ; preds = %bb.cw, %.lr.ph.i.i
  %i.rx = phi i32 [ %i.rr, %bb.cw ], [ %i.rp, %.lr.ph.i.i ] ; 4 uses
  %.0.i.i19.i = phi i32 [ %i.rw, %bb.cw ], [ %i.rq, %.lr.ph.i.i ]
  %i.ry = shl i32 %.0.i.i19.i, 8                  ; 2 uses
  %.not.i.i17.i.1 = icmp slt i32 %i.rx, %i.qe
  br i1 %.not.i.i17.i.1, label %bb.cx, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1

bb.cx:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i
  %i.rz = add nsw i32 %i.rx, 1
  %i.sa = sext i32 %i.rx to i64
  %i.sb = getelementptr inbounds i8, ptr %i.rn, i64 %i.sa
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !14
  %i.sd = zext i8 %i.sc to i32
  %i.se = or disjoint i32 %i.ry, %i.sd
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1: ; preds = %bb.cx, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i
  %i.sf = phi i32 [ %i.rz, %bb.cx ], [ %i.rx, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i ] ; 3 uses
  %.0.i.i19.i.1 = phi i32 [ %i.se, %bb.cx ], [ %i.ry, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !213

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader ], [ %i.sf, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.0.i.i19.i.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ]
  %lcmp.mod1061 = trunc i32 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod1061)
  %i.sg = shl i32 %.056.i16.i.epil.init, 8        ; 2 uses
  %.not.i.i17.i.epil = icmp slt i32 %.epil.init, %i.qe
  br i1 %.not.i.i17.i.epil, label %bb.cy, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i

end_hunk_2
begin_hunk_3_@_ZN2cvL23stbtt_InitFont_internalEPNS_14stbtt_fontinfoEPhji:bb.a
  %i.abs = add nsw i32 %i.abq, 1
  %i.abt = sext i32 %i.abq to i64
  %i.abu = getelementptr inbounds i8, ptr %i.abo, i64 %i.abt
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !14
  %i.abw = zext i8 %i.abv to i32
  %i.abx = or disjoint i32 %i.abr, %i.abw
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452: ; preds = %bb.ec, %.lr.ph.i.i448
  %i.aby = phi i32 [ %i.abs, %bb.ec ], [ %i.abq, %.lr.ph.i.i448 ] ; 4 uses
  %.0.i.i19.i453 = phi i32 [ %i.abx, %bb.ec ], [ %i.abr, %.lr.ph.i.i448 ]
  %i.abz = shl i32 %.0.i.i19.i453, 8              ; 2 uses
  %.not.i.i17.i451.1 = icmp slt i32 %i.aby, %i.qe
  br i1 %.not.i.i17.i451.1, label %bb.ed, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1

bb.ed:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452
  %i.aca = add nsw i32 %i.aby, 1
  %i.acb = sext i32 %i.aby to i64
  %i.acc = getelementptr inbounds i8, ptr %i.abo, i64 %i.acb
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !14
  %i.ace = zext i8 %i.acd to i32
  %i.acf = or disjoint i32 %i.abz, %i.ace
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1: ; preds = %bb.ed, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452
  %i.acg = phi i32 [ %i.aca, %bb.ed ], [ %i.aby, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452 ] ; 3 uses
  %.0.i.i19.i453.1 = phi i32 [ %i.acf, %bb.ed ], [ %i.abz, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452 ] ; 3 uses
  %niter1105.next.1 = add nuw nsw i32 %niter1105, 2 ; 2 uses
  %niter1105.ncmp.1 = icmp eq i32 %niter1105.next.1, %unroll_iter1104
  br i1 %niter1105.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa, label %.lr.ph.i.i448, !llvm.loop !213

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1
  %lcmp.mod1100.not = icmp eq i32 %xtraiter1097, 0
  br i1 %lcmp.mod1100.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455, label %.lr.ph.i.i448.epil.preheader

.lr.ph.i.i448.epil.preheader:                     ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa, %.lr.ph.i.i448.preheader
  %.epil.init1099 = phi i32 [ %..i.i.i446, %.lr.ph.i.i448.preheader ], [ %i.acg, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa ] ; 4 uses
  %.056.i16.i450.epil.init = phi i32 [ 0, %.lr.ph.i.i448.preheader ], [ %.0.i.i19.i453.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa ]
  %lcmp.mod1103 = trunc i32 %.0.i.i445 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1103)
  %i.ach = shl i32 %.056.i16.i450.epil.init, 8    ; 2 uses
  %.not.i.i17.i451.epil = icmp slt i32 %.epil.init1099, %i.qe
  br i1 %.not.i.i17.i451.epil, label %bb.ee, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455

bb.ee:                                            ; preds = %.lr.ph.i.i448.epil.preheader
  %i.aci = add nsw i32 %.epil.init1099, 1
  %i.acj = sext i32 %.epil.init1099 to i64
  %i.ack = getelementptr inbounds i8, ptr %i.abo, i64 %i.acj
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !14
  %i.acm = zext i8 %i.acl to i32
  %i.acn = or disjoint i32 %i.ach, %i.acm
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455: ; preds = %.lr.ph.i.i448.epil.preheader, %bb.ee, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa
  %.lcssa1029 = phi i32 [ %i.acg, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa ], [ %i.aci, %bb.ee ], [ %.epil.init1099, %.lr.ph.i.i448.epil.preheader ]
  %.0.i.i19.i453.lcssa = phi i32 [ %.0.i.i19.i453.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa ], [ %i.acn, %bb.ee ], [ %i.ach, %.lr.ph.i.i448.epil.preheader ]
  %i.aco = add i32 %.0.i.i19.i453.lcssa, -1
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i456

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i456: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444
  %i.acp = phi i32 [ %..i.i.i446, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444 ], [ %.lcssa1029, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455 ]
  %.05.lcssa.i.i457 = phi i32 [ -1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444 ], [ %i.aco, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455 ]
  %i.acq = add nsw i32 %.05.lcssa.i.i457, %i.acp  ; 2 uses
  %i.acr = icmp slt i32 %i.acq, 0
  %i.acs = tail call i32 @llvm.smin.i32(i32 %i.acq, i32 %i.qe)
  %..i.i22.i458 = select i1 %i.acr, i32 %i.qe, i32 %i.acs ; 2 uses
  store i32 %..i.i22.i458, ptr %i.qa, align 8, !tbaa !210
  br label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit465

_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit465: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i456, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i440
  %i.act = phi i32 [ %..i.i22.i458, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i456 ], [ %i.abd, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i440 ] ; 2 uses
  %i.acu = sub nsw i32 %i.act, %i.aan             ; 2 uses
  %i.acv = or i32 %i.acu, %i.aan
  %or.cond.not.i.i459 = icmp slt i32 %i.acv, 0
  %i.acw = icmp sgt i32 %i.act, %i.qe
  %or.cond.i460 = or i1 %i.acw, %or.cond.not.i.i459 ; 2 uses
  %i.acx = load ptr, ptr %4, align 8              ; 2 uses
  %i.acy = zext nneg i32 %i.aan to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acx, i64 %i.acy
  %i.ada = zext i32 %i.acu to i64
  %i.adb = shl nuw i64 %i.ada, 32
  %.sroa.0.0.i.i461 = select i1 %or.cond.i460, ptr null, ptr %i.acz
  %.sroa.5.0.i.i462 = select i1 %or.cond.i460, i64 0, i64 %i.adb
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %.sroa.0.0.i.i461, ptr %i.adc, align 8, !tbaa !119
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %.sroa.5.0.i.i462, ptr %.sroa.414.0..sroa_idx, align 8
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %5, i32 noundef 17, i32 noundef 1, ptr noundef %i.b)
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %5, i32 noundef 262, i32 noundef 1, ptr noundef %i.a)
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %5, i32 noundef 292, i32 noundef 1, ptr noundef %i.c)
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %5, i32 noundef 293, i32 noundef 1, ptr noundef %i.d)
  %.sroa.210.0.copyload = load i64, ptr %i.qa, align 8 ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %5, align 8, !tbaa !119
  %.sroa.2.0.copyload = load i64, ptr %.sroa.419.0..sroa_idx, align 8
  %i.add = tail call fastcc { ptr, i64 } @_ZN2cvL16stbtt__get_subrsENS_10stbtt__bufES0_(ptr %i.acx, i64 %.sroa.210.0.copyload, ptr %.sroa.08.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.ade = extractvalue { ptr, i64 } %i.add, 0
  %i.adf = extractvalue { ptr, i64 } %i.add, 1
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.ade, ptr %i.adg, align 8, !tbaa !119
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.adf, ptr %.sroa.412.0..sroa_idx, align 8
  %i.adh = load i32, ptr %i.a, align 4, !tbaa !18
  %.not166 = icmp ne i32 %i.adh, 2
  %i.adi = load i32, ptr %i.b, align 4            ; 3 uses
  %i.adj = icmp eq i32 %i.adi, 0
  %or.cond = select i1 %.not166, i1 true, i1 %i.adj
  br i1 %or.cond, label %.critedge, label %bb.ef

bb.ef:                                            ; preds = %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit465
  %i.adk = lshr i64 %.sroa.210.0.copyload, 32
  %i.adl = trunc nuw i64 %i.adk to i32
  %i.adm = load i32, ptr %i.c, align 4, !tbaa !18 ; 3 uses
  %.not167 = icmp eq i32 %i.adm, 0
  br i1 %.not167, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.adn = load i32, ptr %i.d, align 4, !tbaa !18 ; 5 uses
  %.not168 = icmp eq i32 %i.adn, 0
  br i1 %.not168, label %.critedge, label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit

_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit: ; preds = %bb.eg
  %i.ado = icmp slt i32 %i.adm, 0
  %i.adp = tail call i32 @llvm.smin.i32(i32 %i.adm, i32 %i.qe)
  %..i = select i1 %i.ado, i32 %i.qe, i32 %i.adp
  store i32 %..i, ptr %i.qa, align 8, !tbaa !210
  %i.adq = call fastcc { ptr, i64 } @_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE(ptr noundef %4) ; 2 uses
  %i.adr = extractvalue { ptr, i64 } %i.adq, 0
  %i.ads = extractvalue { ptr, i64 } %i.adq, 1
  store ptr %i.adr, ptr %i.pu, align 8, !tbaa !119
  store i64 %i.ads, ptr %.sroa.429.0..sroa_idx, align 8
  %i.adt = load i32, ptr %i.qd, align 4, !tbaa !211 ; 3 uses
  %i.adu = sub i32 %i.adt, %i.adn                 ; 2 uses
  %i.adv = or i32 %i.adu, %i.adn
  %or.cond.not.i = icmp slt i32 %i.adv, 0
  %i.adw = icmp sgt i32 %i.adn, %i.adt
  %or.cond760 = or i1 %i.adw, %or.cond.not.i      ; 2 uses
  %i.adx = load ptr, ptr %4, align 8
  %i.ady = zext nneg i32 %i.adn to i64
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.ady
  %i.aea = zext i32 %i.adu to i64
  %i.aeb = shl nuw i64 %i.aea, 32
  %.sroa.0.0.i = select i1 %or.cond760, ptr null, ptr %i.adz
  %.sroa.5.0.i = select i1 %or.cond760, i64 0, i64 %i.aeb
  store ptr %.sroa.0.0.i, ptr %i.pv, align 8, !tbaa !119
  store i64 %.sroa.5.0.i, ptr %.sroa.427.0..sroa_idx, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit, %bb.ef
  %i.aec = phi i32 [ %i.adt, %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit ], [ %i.adl, %bb.ef ] ; 2 uses
  %i.aed = icmp slt i32 %i.adi, 0
  %i.aee = tail call i32 @llvm.smin.i32(i32 %i.adi, i32 %i.aec)
  %..i469 = select i1 %i.aed, i32 %i.aec, i32 %i.aee
  store i32 %..i469, ptr %i.qa, align 8, !tbaa !210
  %i.aef = call fastcc { ptr, i64 } @_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE(ptr noundef %4) ; 2 uses
  %i.aeg = extractvalue { ptr, i64 } %i.aef, 0
  %i.aeh = extractvalue { ptr, i64 } %i.aef, 1
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.aeg, ptr %i.aei, align 8, !tbaa !119
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %i.aeh, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.cg
  br i1 %.not.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aej = add i32 %3, 12                         ; 3 uses
  %.not37.i471 = icmp ult i32 %i.aej, %2
  br i1 %.not37.i471, label %bb.ek, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread

bb.ek:                                            ; preds = %bb.ej
  %i.aek = zext i32 %3 to i64
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 %i.aek ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  %.val.i473 = load i8, ptr %i.aem, align 1, !tbaa !14
  %i.aen = getelementptr i8, ptr %i.ael, i64 5
  %.val39.i474 = load i8, ptr %i.aen, align 1, !tbaa !14
  %i.aeo = zext i8 %.val.i473 to i32
  %i.aep = shl nuw nsw i32 %i.aeo, 8
  %i.aeq = zext i8 %.val39.i474 to i32
  %i.aer = or disjoint i32 %i.aep, %i.aeq         ; 3 uses
  %i.aes = shl nuw nsw i32 %i.aer, 4
  %i.aet = add i32 %i.aes, %i.aej
  %.not38.i475 = icmp ult i32 %i.aet, %2
  %i.aeu = icmp ne i32 %i.aer, 0
  %or.cond.i476 = and i1 %i.aeu, %.not38.i475
  br i1 %or.cond.i476, label %.lr.ph.i477, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread

.lr.ph.i477:                                      ; preds = %bb.ek
  %wide.trip.count.i478 = zext nneg i32 %i.aer to i64
  br label %bb.el

bb.el:                                            ; preds = %bb.eq, %.lr.ph.i477
  %indvars.iv.i479 = phi i64 [ 0, %.lr.ph.i477 ], [ %indvars.iv.next.i481, %bb.eq ] ; 2 uses
  %indvars.iv.tr.i480 = trunc i64 %indvars.iv.i479 to i32
  %i.aev = shl i32 %indvars.iv.tr.i480, 4
  %i.aew = add i32 %i.aev, %i.aej
  %i.aex = zext i32 %i.aew to i64
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 %i.aex ; 5 uses
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !14
  %i.afa = icmp eq i8 %i.aez, 109
  br i1 %i.afa, label %bb.em, label %bb.eq

bb.em:                                            ; preds = %bb.el
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aey, i64 1
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !14
  %i.afd = icmp eq i8 %i.afc, 97
  br i1 %i.afd, label %bb.en, label %bb.eq

bb.en:                                            ; preds = %bb.em
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aey, i64 2
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !14
  %i.afg = icmp eq i8 %i.aff, 120
  br i1 %i.afg, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aey, i64 3
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !14
  %i.afj = icmp eq i8 %i.afi, 112
  br i1 %i.afj, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afl = load i32, ptr %i.afk, align 1          ; 2 uses
  %i.afm = tail call i32 @llvm.bswap.i32(i32 %i.afl) ; 2 uses
  %i.afn = icmp uge i32 %i.afm, %2
  %.not170 = icmp eq i32 %i.afl, 0
  %or.cond761 = or i1 %i.afn, %.not170
  br i1 %or.cond761, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread, label %bb.er

bb.eq:                                            ; preds = %bb.eo, %bb.en, %bb.em, %bb.el
  %indvars.iv.next.i481 = add nuw nsw i64 %indvars.iv.i479, 1 ; 2 uses
  %exitcond.not.i482 = icmp eq i64 %indvars.iv.next.i481, %wide.trip.count.i478
  br i1 %exitcond.not.i482, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread, label %bb.el, !llvm.loop !71

bb.er:                                            ; preds = %bb.ep
  %i.afo = zext i32 %i.afm to i64
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 %i.afo ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 4
  %.val188 = load i8, ptr %i.afq, align 1, !tbaa !14
  %i.afr = getelementptr i8, ptr %i.afp, i64 5
  %.val189 = load i8, ptr %i.afr, align 1, !tbaa !14
  %i.afs = zext i8 %.val188 to i32
  %i.aft = shl nuw nsw i32 %i.afs, 8
  %i.afu = zext i8 %.val189 to i32
  %i.afv = or disjoint i32 %i.aft, %i.afu
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread: ; preds = %bb.eq, %bb.ei, %bb.ej, %bb.ek, %bb.ep, %bb.er
  %.sink970 = phi i32 [ %i.afv, %bb.er ], [ 65535, %bb.ei ], [ 65535, %bb.ep ], [ 65535, %bb.ek ], [ 65535, %bb.ej ], [ 65535, %bb.eq ]
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink970, ptr %i.afw, align 8, !tbaa !20
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 -1, ptr %i.afx, align 8, !tbaa !214
  %i.afy = zext i32 %.3.i486492505520541565595622653680711 to i64
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 2
  %.val186 = load i8, ptr %i.aga, align 1, !tbaa !14
  %i.agb = getelementptr i8, ptr %i.afz, i64 3
  %.val187 = load i8, ptr %i.agb, align 1, !tbaa !14
  %i.agc = zext i8 %.val186 to i32
  %i.agd = shl nuw nsw i32 %i.agc, 8
  %i.age = zext i8 %.val187 to i32
  %i.agf = or disjoint i32 %i.agd, %i.age         ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 0, ptr %i.agg, align 4, !tbaa !13
  %.not801 = icmp eq i32 %i.agf, 0
  br i1 %.not801, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread
  %i.agh = add i32 %.3.i486492505520541565595622653680711, 4
  %wide.trip.count = zext nneg i32 %i.agf to i64
  br label %bb.es

bb.es:                                            ; preds = %.lr.ph, %bb.eu
  %i.agi = phi i32 [ 0, %.lr.ph ], [ %i.ahc, %bb.eu ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.eu ] ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.agj = shl i32 %indvars.iv.tr, 3
  %i.agk = add i32 %i.agh, %i.agj
  %i.agl = zext i32 %i.agk to i64
  %i.agm = getelementptr inbounds nuw i8, ptr %1, i64 %i.agl ; 5 uses
  %.val184 = load i8, ptr %i.agm, align 1, !tbaa !14
  %i.agn = getelementptr i8, ptr %i.agm, i64 1
  %.val185 = load i8, ptr %i.agn, align 1, !tbaa !14
  %i.ago = zext i8 %.val184 to i16
  %i.agp = shl nuw i16 %i.ago, 8
  %i.agq = zext i8 %.val185 to i16
  %i.agr = or disjoint i16 %i.agp, %i.agq
  switch i16 %i.agr, label %bb.eu [
    i16 3, label %bb.et
    i16 0, label %.sink.split
  ]

bb.et:                                            ; preds = %bb.es
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agm, i64 2
  %.val182 = load i8, ptr %i.ags, align 1, !tbaa !14
  %i.agt = getelementptr i8, ptr %i.agm, i64 3
  %.val183 = load i8, ptr %i.agt, align 1, !tbaa !14
  %i.agu = zext i8 %.val182 to i16
  %i.agv = shl nuw i16 %i.agu, 8
  %i.agw = zext i8 %.val183 to i16
  %i.agx = or disjoint i16 %i.agv, %i.agw
  switch i16 %i.agx, label %bb.eu [
    i16 1, label %.sink.split
    i16 10, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.es, %bb.et, %bb.et
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agm, i64 4
  %i.agz = load i32, ptr %i.agy, align 1
  %i.aha = tail call i32 @llvm.bswap.i32(i32 %i.agz)
  %i.ahb = add i32 %i.aha, %.3.i486492505520541565595622653680711 ; 2 uses
  store i32 %i.ahb, ptr %i.agg, align 4, !tbaa !13
  br label %bb.eu

bb.eu:                                            ; preds = %.sink.split, %bb.et, %bb.es
  %i.ahc = phi i32 [ %i.agi, %bb.et ], [ %i.agi, %bb.es ], [ %i.ahb, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.es, !llvm.loop !215

._crit_edge:                                      ; preds = %bb.eu
  %i.ahd = icmp eq i32 %i.ahc, 0
  br i1 %i.ahd, label %._crit_edge.thread, label %bb.ev

bb.ev:                                            ; preds = %._crit_edge
  %i.ahe = load i32, ptr %i.ol, align 8, !tbaa !72
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds i8, ptr %1, i64 %i.ahf ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 50
  %.val = load i8, ptr %i.ahh, align 1, !tbaa !14
  %i.ahi = getelementptr i8, ptr %i.ahg, i64 51
  %.val181 = load i8, ptr %i.ahi, align 1, !tbaa !14
  %i.ahj = zext i8 %.val to i32
  %i.ahk = shl nuw nsw i32 %i.ahj, 8
  %i.ahl = zext i8 %.val181 to i32
  %i.ahm = or disjoint i32 %i.ahk, %i.ahl
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.ahm, ptr %i.ahn, align 8, !tbaa !21
  %i.aho = load i32, ptr %i.om, align 8, !tbaa !206
  %.not171 = icmp eq i32 %i.aho, 0
  %i.ahp = load i32, ptr %i.ok, align 4, !tbaa !37
  %.not172 = icmp eq i32 %i.ahp, 0                ; 2 uses
  %.not173 = icmp eq i32 %i.on, 0                 ; 2 uses
  br i1 %.not171, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %or.cond991 = select i1 %.not172, i1 %.not173, i1 false
  br i1 %or.cond991, label %._crit_edge.thread, label %.thread

bb.ex:                                            ; preds = %bb.ev
  %or.cond992 = select i1 %.not172, i1 true, i1 %.not173
  br i1 %or.cond992, label %.thread, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ahq = tail call fastcc noundef i32 @_ZN2cvL16stbtt__read_fvarEPNS_14stbtt_fontinfoE(ptr noundef nonnull %0)
  %.not177 = icmp eq i32 %i.ahq, 0
  br i1 %.not177, label %.thread, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ahr = tail call fastcc noundef i32 @_ZN2cvL16stbtt__read_gvarEPNS_14stbtt_fontinfoE(ptr noundef nonnull %0)
  %.not178 = icmp eq i32 %i.ahr, 0
  br i1 %.not178, label %.thread, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ahs = tail call noundef i32 @_ZN2cv17stbtt_SetInstanceEPNS_14stbtt_fontinfoEPKiii(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 1)
  %.not179 = icmp eq i32 %i.ahs, 0
  br i1 %.not179, label %.thread, label %._crit_edge.thread

.thread:                                          ; preds = %bb.ew, %bb.fa, %bb.ez, %bb.ey, %bb.ex
  store i32 0, ptr %i.ok, align 4, !tbaa !37
  store i32 0, ptr %i.om, align 8, !tbaa !206
  br label %._crit_edge.thread

.critedge:                                        ; preds = %bb.cp, %bb.co, %bb.cj, %bb.ci, %bb.ch, %bb.eg, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ew, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread, %bb.fa, %._crit_edge, %.critedge, %bb.cg, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit343, %.thread
  %.1 = phi i32 [ 0, %bb.cg ], [ 0, %._crit_edge ], [ 0, %.thread ], [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit343 ], [ 0, %.critedge ], [ 1, %bb.ew ], [ 1, %bb.fa ], [ 0, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2cv15stbtt_InitFont2EPNS_14stbtt_fontinfoEPKhji(ptr nofree noundef captures(address_is_null) initializes((0, 568)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN2cvL23stbtt_InitFont_internalEPNS_14stbtt_fontinfoEPhji(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_ZN2cv16stbtt_CreateFontEPKhji(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(568) ptr @malloc(i64 noundef 568) #21 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef range(i32 0, 2) i32 @_ZN2cvL23stbtt_InitFont_internalEPNS_14stbtt_fontinfoEPhji(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.08 = phi ptr [ %i.a, %bb.b ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.08
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2cv17stbtt_ReleaseFontEPPNS_14stbtt_fontinfoE(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !216    ; 2 uses
  %.not5 = icmp eq ptr %i.a, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #22
  store ptr null, ptr %0, align 8, !tbaa !216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 536870912, 536870900) i32 @_ZN2cv22stbtt_FindMatchingFontEPKhPKci(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2cv27stbtt_GetFontOffsetForIndexEPKhi(ptr noundef readonly %0, i32 noundef 0) ; 3 uses
  %i.b = icmp ugt i32 %i.a, 536870911
  br i1 %i.b, label %_ZN2cvL31stbtt_FindMatchingFont_internalEPhjPci.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #23
  %i.d = trunc i64 %i.c to i32                    ; 6 uses
  %.not41.i.i = icmp eq i32 %2, 0                 ; 2 uses
  %.not.i51.i.i = icmp eq ptr %0, null            ; 2 uses
  %i.e = and i32 %2, 7
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.f = phi i32 [ %i.a, %.lr.ph.i ], [ %i.ce, %.loopexit.i ] ; 11 uses
  %.01430.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cd, %.loopexit.i ]
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 5 uses
  %i.i = tail call fastcc noundef i32 @_ZN2cvL13stbtt__isfontEPh(ptr noundef readonly %i.h)
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not41.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i51.i.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw nsw i32 %i.f, 12                 ; 2 uses
  %.not37.i.i.i = icmp samesign ult i32 %i.f, 536870900
  br i1 %.not37.i.i.i, label %bb.f, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.val.i.i.i = load i8, ptr %i.k, align 1, !tbaa !14
  %i.l = getelementptr i8, ptr %i.h, i64 5
  %.val39.i.i.i = load i8, ptr %i.l, align 1, !tbaa !14
  %i.m = zext i8 %.val.i.i.i to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = zext i8 %.val39.i.i.i to i32
  %i.p = or disjoint i32 %i.n, %i.o               ; 3 uses
  %i.q = shl nuw nsw i32 %i.p, 4
  %i.r = add nuw nsw i32 %i.q, %i.j
  %.not38.i.i.i = icmp samesign ult i32 %i.r, 536870912
  %i.s = icmp ne i32 %i.p, 0
  %or.cond.i.i.i = and i1 %i.s, %.not38.i.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %wide.trip.count.i.i.i = zext nneg i32 %i.p to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 2 uses
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.t = shl i32 %indvars.iv.tr.i.i.i, 4
  %i.u = add i32 %i.t, %i.j
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 5 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = icmp eq i8 %i.x, 104
  br i1 %i.y, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = icmp eq i8 %i.aa, 101
  br i1 %i.ab, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = icmp eq i8 %i.ad, 97
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = icmp eq i8 %i.ag, 100
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = load i32, ptr %i.ai, align 1, !tbaa !14
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = zext i32 %i.al to i64
  %i.an = icmp ult i8 %i.aj, 32
  %i.ao = select i1 %i.an, i64 %i.am, i64 0
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.i.i

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.i.i, label %bb.g, !llvm.loop !71

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.i.i:      ; preds = %bb.l, %bb.k, %bb.f, %bb.e, %bb.d
  %.3.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.ao, %bb.k ], [ 0, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.3.i.i.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 45
  %.val50.i.i = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.ar = and i8 %.val50.i.i, 7
  %i.as = zext nneg i8 %i.ar to i32
  %.not42.i.i = icmp eq i32 %i.e, %i.as
  br i1 %.not42.i.i, label %.thread.i.i, label %.loopexit.i

bb.m:                                             ; preds = %bb.c
  br i1 %.not.i51.i.i, label %.loopexit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.m, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.i.i
  %i.at = add nuw nsw i32 %i.f, 12                ; 2 uses
  %.not37.i52.i.i = icmp samesign ult i32 %i.f, 536870900
  br i1 %.not37.i52.i.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %.thread.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.val.i54.i.i = load i8, ptr %i.au, align 1, !tbaa !14
  %i.av = getelementptr i8, ptr %i.h, i64 5
  %.val39.i55.i.i = load i8, ptr %i.av, align 1, !tbaa !14
  %i.aw = zext i8 %.val.i54.i.i to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8
  %i.ay = zext i8 %.val39.i55.i.i to i32
  %i.az = or disjoint i32 %i.ax, %i.ay            ; 3 uses
  %i.ba = shl nuw nsw i32 %i.az, 4
  %i.bb = add nuw nsw i32 %i.ba, %i.at
  %.not38.i56.i.i = icmp samesign ult i32 %i.bb, 536870912
  %i.bc = icmp ne i32 %i.az, 0
  %or.cond.i57.i.i = and i1 %i.bc, %.not38.i56.i.i
  br i1 %or.cond.i57.i.i, label %.lr.ph.i58.i.i, label %.loopexit.i

.lr.ph.i58.i.i:                                   ; preds = %bb.n
  %wide.trip.count.i59.i.i = zext nneg i32 %i.az to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %.lr.ph.i58.i.i
  %indvars.iv.i60.i.i = phi i64 [ 0, %.lr.ph.i58.i.i ], [ %indvars.iv.next.i62.i.i, %bb.t ] ; 2 uses
  %indvars.iv.tr.i61.i.i = trunc i64 %indvars.iv.i60.i.i to i32
  %i.bd = shl i32 %indvars.iv.tr.i61.i.i, 4
  %i.be = add i32 %i.bd, %i.at
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf ; 5 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = icmp eq i8 %i.bh, 110
  br i1 %i.bi, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = icmp eq i8 %i.bk, 97
  br i1 %i.bl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !14
  %i.bo = icmp eq i8 %i.bn, 109
  br i1 %i.bo, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = icmp eq i8 %i.bq, 101
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = load i32, ptr %i.bs, align 1, !tbaa !14 ; 2 uses
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bu) ; 6 uses
  %i.bw = icmp ugt i8 %i.bt, 31
  %.not43.i.i = icmp eq i32 %i.bu, 0
  %or.cond.i.i = or i1 %i.bw, %.not43.i.i
  br i1 %or.cond.i.i, label %.loopexit.i, label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %indvars.iv.next.i62.i.i = add nuw nsw i64 %indvars.iv.i60.i.i, 1 ; 2 uses
  %exitcond.not.i63.i.i = icmp eq i64 %indvars.iv.next.i62.i.i, %wide.trip.count.i59.i.i
  br i1 %exitcond.not.i63.i.i, label %.loopexit.i, label %bb.o, !llvm.loop !71

bb.u:                                             ; preds = %bb.s
  br i1 %.not41.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = tail call fastcc noundef i32 @_ZN2cvL16stbtt__matchpairEPhjS0_iii(ptr noundef nonnull readonly %0, i32 noundef %i.bv, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 16, i32 noundef -1)
  %.not47.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not47.i.i, label %bb.w, label %_ZN2cvL31stbtt_FindMatchingFont_internalEPhjPci.exit

bb.w:                                             ; preds = %bb.v
  %i.by = tail call fastcc noundef i32 @_ZN2cvL16stbtt__matchpairEPhjS0_iii(ptr noundef nonnull readonly %0, i32 noundef %i.bv, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 1, i32 noundef -1)
  %.not48.i.i = icmp eq i32 %i.by, 0
  br i1 %.not48.i.i, label %bb.x, label %_ZN2cvL31stbtt_FindMatchingFont_internalEPhjPci.exit

bb.x:                                             ; preds = %bb.w
  %i.bz = tail call fastcc noundef i32 @_ZN2cvL16stbtt__matchpairEPhjS0_iii(ptr noundef nonnull readonly %0, i32 noundef %i.bv, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 3, i32 noundef -1)
  %.not49.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not49.i.i, label %.loopexit.i, label %_ZN2cvL31stbtt_FindMatchingFont_internalEPhjPci.exit

bb.y:                                             ; preds = %bb.u
  %i.ca = tail call fastcc noundef i32 @_ZN2cvL16stbtt__matchpairEPhjS0_iii(ptr noundef nonnull readonly %0, i32 noundef %i.bv, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 16, i32 noundef 17)
  %.not44.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not44.i.i, label %bb.z, label %_ZN2cvL31stbtt_FindMatchingFont_internalEPhjPci.exit

bb.z:                                             ; preds = %bb.y
  %i.cb = tail call fastcc noundef i32 @_ZN2cvL16stbtt__matchpairEPhjS0_iii(ptr noundef nonnull readonly %0, i32 noundef %i.bv, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 1, i32 noundef 2)
  %.not45.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not45.i.i, label %bb.aa, label %_ZN2cvL31stbtt_FindMatchingFont_internalEPhjPci.exit

bb.aa:                                            ; preds = %bb.z
  %i.cc = tail call fastcc noundef i32 @_ZN2cvL16stbtt__matchpairEPhjS0_iii(ptr noundef nonnull readonly %0, i32 noundef %i.bv, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 3, i32 noundef -1)
  %.not46.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not46.i.i, label %.loopexit.i, label %_ZN2cvL31stbtt_FindMatchingFont_internalEPhjPci.exit

.loopexit.i:                                      ; preds = %bb.t, %bb.aa, %bb.x, %bb.s, %bb.n, %.thread.i.i, %bb.m, %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit.i.i, %bb.b
  %i.cd = add nuw nsw i32 %.01430.i, 1            ; 2 uses
  %i.ce = tail call noundef i32 @_ZN2cv27stbtt_GetFontOffsetForIndexEPKhi(ptr noundef readonly %0, i32 noundef %i.cd) ; 3 uses
  %i.cf = icmp ugt i32 %i.ce, 536870911
  br i1 %i.cf, label %_ZN2cvL31stbtt_FindMatchingFont_internalEPhjPci.exit, label %bb.b, !llvm.loop !218

_ZN2cvL31stbtt_FindMatchingFont_internalEPhjPci.exit: ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %.loopexit.i, %bb.a
  %.lcssa29.i = phi i32 [ %i.a, %bb.a ], [ %i.ce, %.loopexit.i ], [ %i.f, %bb.aa ], [ %i.f, %bb.z ], [ %i.f, %bb.y ], [ %i.f, %bb.x ], [ %i.f, %bb.w ], [ %i.f, %bb.v ]
  ret i32 %.lcssa29.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2cv34stbtt_CompareUTF8toUTF16_bigendianEPKciS1_i(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN2cvL42stbtt__CompareUTF8toUTF16_bigendian_prefixEPhiS0_i(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3)
  %i.b = icmp eq i32 %1, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @_ZN2cv17stbtt_GetInstanceEPKNS_14stbtt_fontinfoEPNS_14stbtt_axisinfoEi(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !219  ; 2 uses
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %. = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %2) ; 4 uses
  %i.c = icmp sgt i32 %., 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = zext nneg i32 %. to i64
  %i.f = mul nuw nsw i64 %i.e, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %1, ptr nonnull align 8 %i.d, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.c ], [ %., %bb.d ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN2cv15stbtt_GetWeightEPKNS_14stbtt_fontinfoE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !219  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !220

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !221
  %.not = icmp eq i32 %i.f, 2003265652
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !223
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %.2 = phi i32 [ %i.h, %.thread ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2cv17stbtt_SetInstanceEPNS_14stbtt_fontinfoEPKiii(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 7 uses
  %i.d = icmp eq ptr %0, null
  %i.e = icmp slt i32 %2, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0
  %i.g = icmp ne ptr %1, null
  %or.cond3 = or i1 %i.g, %i.f
  br i1 %or.cond3, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !219  ; 7 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.k = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.k, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not145 = icmp eq i32 %2, 0
  %.not = icmp eq i32 %3, 0
  %.in.v = select i1 %.not, i64 16, i64 8         ; 3 uses
  br i1 %.not145, label %.lr.ph74.split.split.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph74
  %wide.trip.count106 = zext nneg i32 %i.i to i64
  %wide.trip.count101 = zext nneg i32 %2 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.j
  %indvars.iv103 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next104, %bb.j ] ; 4 uses
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %i.l, i64 %indvars.iv103 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !221  ; 2 uses
end_hunk_3
