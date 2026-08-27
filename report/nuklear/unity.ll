Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_GetCodepointHMetrics:bb.a

bb.b:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !393
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 %i.q
  %i.s = shl nsw i32 %i.a, 2
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t ; 2 uses
  %.val40.i = load i8, ptr %i.u, align 1, !tbaa !11
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %.val41.i = load i8, ptr %i.v, align 1, !tbaa !11
  %i.w = zext i8 %.val40.i to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = zext i8 %.val41.i to i16
  %i.z = or disjoint i16 %i.x, %i.y
  %i.aa = sext i16 %i.z to i32
  store i32 %i.aa, ptr %2, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not32.i = icmp eq ptr %3, null
  br i1 %.not32.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !393
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
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !393
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.c, i64 %i.am
  %i.ao = shl nuw nsw i32 %i.m, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -4
  %.val36.i = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.as = getelementptr i8, ptr %i.aq, i64 -3
  %.val37.i = load i8, ptr %i.as, align 1, !tbaa !11
  %i.at = zext i8 %.val36.i to i16
  %i.au = shl nuw i16 %i.at, 8
  %i.av = zext i8 %.val37.i to i16
  %i.aw = or disjoint i16 %i.au, %i.av
  %i.ax = sext i16 %i.aw to i32
  store i32 %i.ax, ptr %2, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30.i = icmp eq ptr %3, null
  br i1 %.not30.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !393
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
  %.val35.sink.i = load i8, ptr %.val35.sink.in.i, align 1, !tbaa !11
  %.val34.sink.i = load i8, ptr %.val34.sink.in.i, align 1, !tbaa !11
  %i.bk = zext i8 %.val34.sink.i to i16
  %i.bl = shl nuw i16 %i.bk, 8
  %i.bm = zext i8 %.val35.sink.i to i16
  %i.bn = or disjoint i16 %i.bl, %i.bm
  %i.bo = sext i16 %i.bn to i32
  store i32 %i.bo, ptr %3, align 4, !tbaa !10
  br label %stbtt_GetGlyphHMetrics.exit

stbtt_GetGlyphHMetrics.exit:                      ; preds = %bb.d, %bb.h, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetFontVMetrics(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !392
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val19 = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val20 = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = zext i8 %.val19 to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = zext i8 %.val20 to i16
  %i.l = or disjoint i16 %i.j, %i.k
  %i.m = sext i16 %i.l to i32
  store i32 %i.m, ptr %1, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !359
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !392
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.val17 = load i8, ptr %i.t, align 1, !tbaa !11
  %i.u = getelementptr i8, ptr %i.s, i64 7
  %.val18 = load i8, ptr %i.u, align 1, !tbaa !11
  %i.v = zext i8 %.val17 to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = zext i8 %.val18 to i16
  %i.y = or disjoint i16 %i.w, %i.x
  %i.z = sext i16 %i.y to i32
  store i32 %i.z, ptr %2, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !359
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !392
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ah = getelementptr i8, ptr %i.af, i64 9
  %.val16 = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.ai = zext i8 %.val to i16
  %i.aj = shl nuw i16 %i.ai, 8
  %i.ak = zext i8 %.val16 to i16
  %i.al = or disjoint i16 %i.aj, %i.ak
  %i.am = sext i16 %i.al to i32
  store i32 %i.am, ptr %3, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_GetFontVMetricsOS2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !407  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val25.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = zext i8 %.val.i to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = zext i8 %.val25.i to i32
  %i.l = or disjoint i32 %i.j, %i.k               ; 2 uses
  %i.m = add i32 %i.d, 12
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %stbtt__find_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.n = shl i32 %indvars.iv.tr.i, 4
  %i.o = add i32 %i.m, %i.n
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 5 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = icmp eq i8 %i.r, 79
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = icmp eq i8 %i.u, 83
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = icmp eq i8 %i.aa, 50
  br i1 %i.ab, label %stbtt__find_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit.thread, label %bb.b, !llvm.loop !408

stbtt__find_table.exit:                           ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load i32, ptr %i.ac, align 1            ; 2 uses
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %stbtt__find_table.exit.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__find_table.exit
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.b, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %.val25 = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.ai = getelementptr i8, ptr %i.ag, i64 69
  %.val26 = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.aj = zext i8 %.val25 to i16
  %i.ak = shl nuw i16 %i.aj, 8
  %i.al = zext i8 %.val26 to i16
  %i.am = or disjoint i16 %i.ak, %i.al
  %i.an = sext i16 %i.am to i32
  store i32 %i.an, ptr %1, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = sext i32 %i.ae to i64
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 70
  %.val23 = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %i.ap, i64 71
  %.val24 = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.as = zext i8 %.val23 to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = zext i8 %.val24 to i16
  %i.av = or disjoint i16 %i.at, %i.au
  %i.aw = sext i16 %i.av to i32
  store i32 %i.aw, ptr %2, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %stbtt__find_table.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = sext i32 %i.ae to i64
  %i.ay = getelementptr inbounds i8, ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %.val = load i8, ptr %i.az, align 1, !tbaa !11
  %i.ba = getelementptr i8, ptr %i.ay, i64 73
  %.val22 = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bb = zext i8 %.val to i16
  %i.bc = shl nuw i16 %i.bb, 8
  %i.bd = zext i8 %.val22 to i16
  %i.be = or disjoint i16 %i.bc, %i.bd
  %i.bf = sext i16 %i.be to i32
  store i32 %i.bf, ptr %3, align 4, !tbaa !10
  br label %stbtt__find_table.exit.thread

stbtt__find_table.exit.thread:                    ; preds = %bb.f, %bb.a, %bb.k, %bb.l, %stbtt__find_table.exit
  %.0 = phi i32 [ 0, %stbtt__find_table.exit ], [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %bb.a ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetFontBoundingBox(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !409
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %.val17 = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 37
  %.val18 = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = zext i8 %.val17 to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = zext i8 %.val18 to i16
  %i.l = or disjoint i16 %i.j, %i.k
  %i.m = sext i16 %i.l to i32
  store i32 %i.m, ptr %1, align 4, !tbaa !10
  %i.n = load i32, ptr %i.c, align 4, !tbaa !409
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 38
  %.val15 = load i8, ptr %i.q, align 1, !tbaa !11
  %i.r = getelementptr i8, ptr %i.p, i64 39
  %.val16 = load i8, ptr %i.r, align 1, !tbaa !11
  %i.s = zext i8 %.val15 to i16
  %i.t = shl nuw i16 %i.s, 8
  %i.u = zext i8 %.val16 to i16
  %i.v = or disjoint i16 %i.t, %i.u
  %i.w = sext i16 %i.v to i32
  store i32 %i.w, ptr %2, align 4, !tbaa !10
  %i.x = load i32, ptr %i.c, align 4, !tbaa !409
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.val13 = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ab = getelementptr i8, ptr %i.z, i64 41
  %.val14 = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ac = zext i8 %.val13 to i16
  %i.ad = shl nuw i16 %i.ac, 8
  %i.ae = zext i8 %.val14 to i16
  %i.af = or disjoint i16 %i.ad, %i.ae
  %i.ag = sext i16 %i.af to i32
  store i32 %i.ag, ptr %3, align 4, !tbaa !10
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !409
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 42
  %.val = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.al = getelementptr i8, ptr %i.aj, i64 43
  %.val12 = load i8, ptr %i.al, align 1, !tbaa !11
  %i.am = zext i8 %.val to i16
  %i.an = shl nuw i16 %i.am, 8
  %i.ao = zext i8 %.val12 to i16
  %i.ap = or disjoint i16 %i.an, %i.ao
  %i.aq = sext i16 %i.ap to i32
  store i32 %i.aq, ptr %4, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @stbtt_ScaleForPixelHeight(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !392
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val6 = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val7 = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = zext i8 %.val6 to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = zext i8 %.val7 to i16
  %i.l = or disjoint i16 %i.j, %i.k
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.val = load i8, ptr %i.n, align 1, !tbaa !11
  %i.o = getelementptr i8, ptr %i.f, i64 7
  %.val5 = load i8, ptr %i.o, align 1, !tbaa !11
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
define float @stbtt_ScaleForMappingEmToPixels(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !409
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %.val = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 19
  %.val3 = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = zext i8 %.val to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = zext i8 %.val3 to i16
  %i.l = or disjoint i16 %i.j, %i.k
  %i.m = uitofp i16 %i.l to float
  %i.n = fdiv float %1, %i.m
  ret float %i.n
}

; Function Attrs: nounwind uwtable
define void @stbtt_FreeShape(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !370    ; 2 uses
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !385
  tail call void %.val2(ptr %.val, ptr noundef %1) #50, !inline_history !410
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @stbtt_FindSVGDoc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !411  ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %stbtt__get_svg.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !407  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.val.i.i = load i8, ptr %i.j, align 1, !tbaa !11
  %i.k = getelementptr i8, ptr %i.i, i64 5
  %.val25.i.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.l = zext i8 %.val.i.i to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = zext i8 %.val25.i.i to i32
  %i.o = or disjoint i32 %i.m, %i.n               ; 2 uses
  %i.p = add i32 %i.g, 12
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.q = shl i32 %indvars.iv.tr.i.i, 4
  %i.r = add i32 %i.p, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s ; 5 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = icmp eq i8 %i.u, 83
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 86
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = icmp eq i8 %i.aa, 71
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = icmp eq i8 %i.ad, 32
  br i1 %i.ae, label %stbtt__find_table.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %bb.c, !llvm.loop !408

stbtt__find_table.exit.i:                         ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ag = load i32, ptr %i.af, align 1            ; 2 uses
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %stbtt__find_table.exit.i
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag) ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = add i32 %i.am, %i.ah
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.h, %stbtt__find_table.exit.i, %bb.b
  %.sink.i = phi i32 [ %i.an, %bb.h ], [ 0, %stbtt__find_table.exit.i ], [ 0, %bb.b ], [ 0, %bb.g ] ; 2 uses
  store i32 %.sink.i, ptr %i.c, align 4, !tbaa !411
  br label %stbtt__get_svg.exit

stbtt__get_svg.exit:                              ; preds = %bb.a, %.sink.split.i
  %i.ao = phi i32 [ %i.d, %bb.a ], [ %.sink.i, %.sink.split.i ]
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.b, i64 %i.ap ; 3 uses
  %.val23 = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.val24 = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.as = zext i8 %.val23 to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = zext i8 %.val24 to i32
  %i.av = or disjoint i32 %i.at, %i.au            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %.not32 = icmp eq i32 %i.av, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %stbtt__get_svg.exit
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ax = mul nuw nsw i64 %indvars.iv, 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax ; 5 uses
  %.val21 = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.az = getelementptr i8, ptr %i.ay, i64 1
  %.val22 = load i8, ptr %i.az, align 1, !tbaa !11
  %i.ba = zext i8 %.val21 to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = zext i8 %.val22 to i32
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %.not = icmp slt i32 %1, %i.bd
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %.val = load i8, ptr %i.be, align 1, !tbaa !11
  %i.bf = getelementptr i8, ptr %i.ay, i64 3
  %.val20 = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bg = zext i8 %.val to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = zext i8 %.val20 to i32
  %i.bj = or disjoint i32 %i.bh, %i.bi
  %.not19 = icmp samesign ugt i32 %1, %i.bj
  br i1 %.not19, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !412

._crit_edge:                                      ; preds = %bb.j, %bb.i, %stbtt__get_svg.exit
  %.2 = phi ptr [ null, %stbtt__get_svg.exit ], [ %i.ay, %bb.i ], [ null, %bb.j ]
  ret ptr %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_GetGlyphSVG(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !411
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @stbtt_FindSVGDoc(ptr noundef nonnull %0, i32 noundef %1) ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 4, !tbaa !411
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  store ptr %i.ab, ptr %2, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ae, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_GetCodepointSVG(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !359
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !411
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %stbtt_GetGlyphSVG.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @stbtt_FindSVGDoc(ptr noundef nonnull %0, i32 noundef %i.a) ; 6 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %stbtt_GetGlyphSVG.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !411
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  store ptr %i.ac, ptr %2, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  br label %stbtt_GetGlyphSVG.exit

end_hunk_0
begin_hunk_1_@stbtt_PackFontRanges:bb.a
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

.lr.ph59.preheader:                               ; preds = %._crit_edge
  %wide.trip.count70 = zext nneg i32 %4 to i64
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph59.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59.preheader
  %n.vec = and i64 %wide.trip.count65, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.y = load i32, ptr %i.q, align 8, !tbaa !490
  %i.z = load i32, ptr %i.r, align 8, !tbaa !490
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !490
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !490
  %i.ac = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 1
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 2
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 3
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !490
  %i.ah = load i32, ptr %i.v, align 8, !tbaa !490
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !490
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !490
  %i.ak = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 1
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 2
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 3
  %i.ao = add <4 x i32> %i.af, %vec.phi           ; 2 uses
  %i.ap = add <4 x i32> %i.an, %vec.phi74         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !520

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65
  br i1 %cmp.n, label %._crit_edge60.loopexit, label %.lr.ph59.preheader75

.lr.ph59.preheader75:                             ; preds = %.lr.ph59.preheader, %middle.block
  %indvars.iv67.ph = phi i64 [ 0, %.lr.ph59.preheader ], [ %n.vec, %middle.block ]
  %.058.ph = phi i32 [ 0, %.lr.ph59.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph59

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  store i64 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  store i64 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 84
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  store i64 0, ptr %i.ay, align 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !521

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.az = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  store i64 0, ptr %i.az, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !522

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.preheader54
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.lr.ph59.preheader, label %.preheader54, !llvm.loop !523

.lr.ph59:                                         ; preds = %.lr.ph59.preheader75, %.lr.ph59
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph59 ], [ %indvars.iv67.ph, %.lr.ph59.preheader75 ] ; 2 uses
  %.058 = phi i32 [ %i.bd, %.lr.ph59 ], [ %.058.ph, %.lr.ph59.preheader75 ]
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !490
  %i.bd = add nsw i32 %i.bc, %.058                ; 2 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge60.loopexit, label %.lr.ph59, !llvm.loop !524

._crit_edge60.loopexit:                           ; preds = %.lr.ph59, %middle.block
  %.lcssa = phi i32 [ %i.ar, %middle.block ], [ %i.bd, %.lr.ph59 ]
  %i.be = sext i32 %.lcssa to i64
  %i.bf = mul nsw i64 %i.be, 24
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %bb.a, %._crit_edge60.loopexit
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.bf, %._crit_edge60.loopexit ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !472   ; 2 uses
  %.val = load ptr, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %.val51 = load ptr, ptr %i.bh, align 8, !tbaa !49
  %i.bi = tail call ptr %.val51(ptr %.val, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %.0.lcssa) #50, !inline_history !469 ; 5 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge60
  %i.bk = load ptr, ptr %0, align 8, !tbaa !472
  store ptr %i.bk, ptr %5, align 8, !tbaa !370
  %i.bl = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef %1, i32 noundef %2)
  %i.bm = call i32 @stbtt_InitFont(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %i.bl) ; 0 uses
  %i.bn = call i32 @stbtt_PackFontRangesGatherRects(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.bi)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !477
  %i.bq = tail call i32 @stbrp_pack_rects(ptr noundef %i.bp, ptr noundef nonnull %i.bi, i32 noundef %i.bn) ; 0 uses
  %i.br = call i32 @stbtt_PackFontRangesRenderIntoRects(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.bi)
  %i.bs = load ptr, ptr %0, align 8, !tbaa !472   ; 2 uses
  %.val52 = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %.val53 = load ptr, ptr %i.bt, align 8, !tbaa !385
  tail call void %.val53(ptr %.val52, ptr noundef nonnull %i.bi) #50, !inline_history !410
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge60, %bb.d
  %.048 = phi i32 [ %i.br, %bb.d ], [ 0, %._crit_edge60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i32 %.048
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_InitFont(ptr nofree noundef captures(none) initializes((8, 20), (64, 80)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.stbtt__buf, align 8         ; 28 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !359
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.f, align 8, !tbaa !407
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %.val.i.i = load i8, ptr %i.j, align 1, !tbaa !11
  %i.k = getelementptr i8, ptr %i.i, i64 5        ; 9 uses
  %.val25.i.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.l = zext i8 %.val.i.i to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = zext i8 %.val25.i.i to i32
  %i.o = or disjoint i32 %i.m, %i.n               ; 2 uses
  %i.p = add i32 %2, 12                           ; 10 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %stbtt__find_table.exit141.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.o to i64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.q = shl i32 %indvars.iv.tr.i.i, 4
  %i.r = add i32 %i.q, %i.p
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 5 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = icmp eq i8 %i.u, 99
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 109
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = icmp eq i8 %i.aa, 97
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = icmp eq i8 %i.ad, 112
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  br label %.lr.ph.i134.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.i134.i, label %bb.b, !llvm.loop !408

.lr.ph.i134.i:                                    ; preds = %bb.g, %bb.f
  %.2.i.i = phi i32 [ %i.ah, %bb.f ], [ 0, %bb.g ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %.lr.ph.i134.i
  %indvars.iv.i136.i = phi i64 [ 0, %.lr.ph.i134.i ], [ %indvars.iv.next.i138.i, %bb.m ] ; 2 uses
  %indvars.iv.tr.i137.i = trunc i64 %indvars.iv.i136.i to i32
  %i.ai = shl i32 %indvars.iv.tr.i137.i, 4
  %i.aj = add i32 %i.ai, %i.p
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 5 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = icmp eq i8 %i.am, 108
  br i1 %i.an, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = icmp eq i8 %i.ap, 111
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = icmp eq i8 %i.as, 99
  br i1 %i.at, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = icmp eq i8 %i.av, 97
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  br label %stbtt__find_table.exit141.i

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %indvars.iv.next.i138.i = add nuw nsw i64 %indvars.iv.i136.i, 1 ; 2 uses
  %exitcond.not.i139.i = icmp eq i64 %indvars.iv.next.i138.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i139.i, label %stbtt__find_table.exit141.i, label %bb.h, !llvm.loop !408

stbtt__find_table.exit141.i:                      ; preds = %bb.m, %bb.l, %bb.a
  %.2.i342.i = phi i32 [ %.2.i.i, %bb.l ], [ 0, %bb.a ], [ %.2.i.i, %bb.m ] ; 4 uses
  %.2.i140.i = phi i32 [ %i.az, %bb.l ], [ 0, %bb.a ], [ 0, %bb.m ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.2.i140.i, ptr %i.ba, align 8, !tbaa !369
  %.val.i142.i = load i8, ptr %i.j, align 1, !tbaa !11
  %.val25.i143.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.bb = zext i8 %.val.i142.i to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = zext i8 %.val25.i143.i to i32
  %i.be = or disjoint i32 %i.bc, %i.bd            ; 2 uses
  %.not.i144.i = icmp eq i32 %i.be, 0
  br i1 %.not.i144.i, label %stbtt__find_table.exit152.i, label %.lr.ph.i145.i

.lr.ph.i145.i:                                    ; preds = %stbtt__find_table.exit141.i
  %wide.trip.count.i146.i = zext nneg i32 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %.lr.ph.i145.i
  %indvars.iv.i147.i = phi i64 [ 0, %.lr.ph.i145.i ], [ %indvars.iv.next.i149.i, %bb.s ] ; 2 uses
  %indvars.iv.tr.i148.i = trunc i64 %indvars.iv.i147.i to i32
  %i.bf = shl i32 %indvars.iv.tr.i148.i, 4
  %i.bg = add i32 %i.bf, %i.p
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh ; 5 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = icmp eq i8 %i.bj, 104
  br i1 %i.bk, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bn = icmp eq i8 %i.bm, 101
  br i1 %i.bn, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = icmp eq i8 %i.bp, 97
  br i1 %i.bq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = icmp eq i8 %i.bs, 100
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  br label %stbtt__find_table.exit152.i

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next.i149.i = add nuw nsw i64 %indvars.iv.i147.i, 1 ; 2 uses
  %exitcond.not.i150.i = icmp eq i64 %indvars.iv.next.i149.i, %wide.trip.count.i146.i
  br i1 %exitcond.not.i150.i, label %stbtt__find_table.exit152.i, label %bb.n, !llvm.loop !408

stbtt__find_table.exit152.i:                      ; preds = %bb.s, %bb.r, %stbtt__find_table.exit141.i
  %i.bx = phi i32 [ %i.bw, %bb.r ], [ 0, %stbtt__find_table.exit141.i ], [ 0, %bb.s ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !409
  %.val.i153.i = load i8, ptr %i.j, align 1, !tbaa !11
  %.val25.i154.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.bz = zext i8 %.val.i153.i to i32
  %i.ca = shl nuw nsw i32 %i.bz, 8
  %i.cb = zext i8 %.val25.i154.i to i32
  %i.cc = or disjoint i32 %i.ca, %i.cb            ; 2 uses
  %.not.i155.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i155.i, label %stbtt__find_table.exit163.i, label %.lr.ph.i156.i

.lr.ph.i156.i:                                    ; preds = %stbtt__find_table.exit152.i
  %wide.trip.count.i157.i = zext nneg i32 %i.cc to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %.lr.ph.i156.i
  %indvars.iv.i158.i = phi i64 [ 0, %.lr.ph.i156.i ], [ %indvars.iv.next.i160.i, %bb.y ] ; 2 uses
  %indvars.iv.tr.i159.i = trunc i64 %indvars.iv.i158.i to i32
  %i.cd = shl i32 %indvars.iv.tr.i159.i, 4
  %i.ce = add i32 %i.cd, %i.p
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf ; 5 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = icmp eq i8 %i.ch, 103
  br i1 %i.ci, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = icmp eq i8 %i.ck, 108
  br i1 %i.cl, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = icmp eq i8 %i.cn, 121
  br i1 %i.co, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !11
  %i.cr = icmp eq i8 %i.cq, 102
  br i1 %i.cr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = tail call i32 @llvm.bswap.i32(i32 %i.ct)
  br label %stbtt__find_table.exit163.i

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %indvars.iv.next.i160.i = add nuw nsw i64 %indvars.iv.i158.i, 1 ; 2 uses
  %exitcond.not.i161.i = icmp eq i64 %indvars.iv.next.i160.i, %wide.trip.count.i157.i
  br i1 %exitcond.not.i161.i, label %stbtt__find_table.exit163.i, label %bb.t, !llvm.loop !408

stbtt__find_table.exit163.i:                      ; preds = %bb.y, %bb.x, %stbtt__find_table.exit152.i
  %.2.i162.i = phi i32 [ %i.cu, %bb.x ], [ 0, %stbtt__find_table.exit152.i ], [ 0, %bb.y ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.2.i162.i, ptr %i.cv, align 8, !tbaa !368
  %.val.i164.i = load i8, ptr %i.j, align 1, !tbaa !11
  %.val25.i165.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.cw = zext i8 %.val.i164.i to i32
  %i.cx = shl nuw nsw i32 %i.cw, 8
  %i.cy = zext i8 %.val25.i165.i to i32
  %i.cz = or disjoint i32 %i.cx, %i.cy            ; 2 uses
  %.not.i166.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i166.i, label %stbtt__find_table.exit174.i, label %.lr.ph.i167.i

.lr.ph.i167.i:                                    ; preds = %stbtt__find_table.exit163.i
  %wide.trip.count.i168.i = zext nneg i32 %i.cz to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %.lr.ph.i167.i
  %indvars.iv.i169.i = phi i64 [ 0, %.lr.ph.i167.i ], [ %indvars.iv.next.i171.i, %bb.ae ] ; 2 uses
  %indvars.iv.tr.i170.i = trunc i64 %indvars.iv.i169.i to i32
  %i.da = shl i32 %indvars.iv.tr.i170.i, 4
  %i.db = add i32 %i.da, %i.p
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc ; 5 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !11
  %i.df = icmp eq i8 %i.de, 104
  br i1 %i.df, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !11
  %i.di = icmp eq i8 %i.dh, 104
  br i1 %i.di, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !11
  %i.dl = icmp eq i8 %i.dk, 101
  br i1 %i.dl, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !11
  %i.do = icmp eq i8 %i.dn, 97
  br i1 %i.do, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dq = load i32, ptr %i.dp, align 1
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %i.dq)
  br label %stbtt__find_table.exit174.i

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %indvars.iv.next.i171.i = add nuw nsw i64 %indvars.iv.i169.i, 1 ; 2 uses
  %exitcond.not.i172.i = icmp eq i64 %indvars.iv.next.i171.i, %wide.trip.count.i168.i
  br i1 %exitcond.not.i172.i, label %stbtt__find_table.exit174.i, label %bb.z, !llvm.loop !408

stbtt__find_table.exit174.i:                      ; preds = %bb.ae, %bb.ad, %stbtt__find_table.exit163.i
  %.2.i173.i = phi i32 [ %i.dr, %bb.ad ], [ 0, %stbtt__find_table.exit163.i ], [ 0, %bb.ae ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.2.i173.i, ptr %i.ds, align 4, !tbaa !392
  %.val.i175.i = load i8, ptr %i.j, align 1, !tbaa !11
  %.val25.i176.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.dt = zext i8 %.val.i175.i to i32
  %i.du = shl nuw nsw i32 %i.dt, 8
  %i.dv = zext i8 %.val25.i176.i to i32
  %i.dw = or disjoint i32 %i.du, %i.dv            ; 2 uses
  %.not.i177.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i177.i, label %stbtt__find_table.exit185.i, label %.lr.ph.i178.i

.lr.ph.i178.i:                                    ; preds = %stbtt__find_table.exit174.i
  %wide.trip.count.i179.i = zext nneg i32 %i.dw to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ak, %.lr.ph.i178.i
  %indvars.iv.i180.i = phi i64 [ 0, %.lr.ph.i178.i ], [ %indvars.iv.next.i182.i, %bb.ak ] ; 2 uses
  %indvars.iv.tr.i181.i = trunc i64 %indvars.iv.i180.i to i32
  %i.dx = shl i32 %indvars.iv.tr.i181.i, 4
  %i.dy = add i32 %i.dx, %i.p
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %i.dz ; 5 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11
  %i.ec = icmp eq i8 %i.eb, 104
  br i1 %i.ec, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !11
  %i.ef = icmp eq i8 %i.ee, 109
  br i1 %i.ef, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !11
  %i.ei = icmp eq i8 %i.eh, 116
  br i1 %i.ei, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !11
  %i.el = icmp eq i8 %i.ek, 120
  br i1 %i.el, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.en = load i32, ptr %i.em, align 1
  %i.eo = tail call i32 @llvm.bswap.i32(i32 %i.en)
  br label %stbtt__find_table.exit185.i

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %indvars.iv.next.i182.i = add nuw nsw i64 %indvars.iv.i180.i, 1 ; 2 uses
  %exitcond.not.i183.i = icmp eq i64 %indvars.iv.next.i182.i, %wide.trip.count.i179.i
  br i1 %exitcond.not.i183.i, label %stbtt__find_table.exit185.i, label %bb.af, !llvm.loop !408

stbtt__find_table.exit185.i:                      ; preds = %bb.ak, %bb.aj, %stbtt__find_table.exit174.i
  %.2.i184.i = phi i32 [ %i.eo, %bb.aj ], [ 0, %stbtt__find_table.exit174.i ], [ 0, %bb.ak ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.2.i184.i, ptr %i.ep, align 8, !tbaa !393
  %.val.i186.i = load i8, ptr %i.j, align 1, !tbaa !11
  %.val25.i187.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.eq = zext i8 %.val.i186.i to i32
  %i.er = shl nuw nsw i32 %i.eq, 8
  %i.es = zext i8 %.val25.i187.i to i32
  %i.et = or disjoint i32 %i.er, %i.es            ; 2 uses
  %.not.i188.i = icmp eq i32 %i.et, 0
  br i1 %.not.i188.i, label %stbtt__find_table.exit196.i, label %.lr.ph.i189.i

.lr.ph.i189.i:                                    ; preds = %stbtt__find_table.exit185.i
  %wide.trip.count.i190.i = zext nneg i32 %i.et to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i189.i
  %indvars.iv.i191.i = phi i64 [ 0, %.lr.ph.i189.i ], [ %indvars.iv.next.i193.i, %bb.aq ] ; 2 uses
  %indvars.iv.tr.i192.i = trunc i64 %indvars.iv.i191.i to i32
  %i.eu = shl i32 %indvars.iv.tr.i192.i, 4
  %i.ev = add i32 %i.eu, %i.p
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew ; 5 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.ez = icmp eq i8 %i.ey, 107
  br i1 %i.ez, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fc = icmp eq i8 %i.fb, 101
  br i1 %i.fc, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !11
  %i.ff = icmp eq i8 %i.fe, 114
  br i1 %i.ff, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !11
  %i.fi = icmp eq i8 %i.fh, 110
  br i1 %i.fi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fk = load i32, ptr %i.fj, align 1
  %i.fl = tail call i32 @llvm.bswap.i32(i32 %i.fk)
  br label %stbtt__find_table.exit196.i

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %indvars.iv.next.i193.i = add nuw nsw i64 %indvars.iv.i191.i, 1 ; 2 uses
  %exitcond.not.i194.i = icmp eq i64 %indvars.iv.next.i193.i, %wide.trip.count.i190.i
  br i1 %exitcond.not.i194.i, label %stbtt__find_table.exit196.i, label %bb.al, !llvm.loop !408

stbtt__find_table.exit196.i:                      ; preds = %bb.aq, %bb.ap, %stbtt__find_table.exit185.i
  %.2.i195.i = phi i32 [ %i.fl, %bb.ap ], [ 0, %stbtt__find_table.exit185.i ], [ 0, %bb.aq ]
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.2.i195.i, ptr %i.fm, align 4, !tbaa !394
  %.val.i197.i = load i8, ptr %i.j, align 1, !tbaa !11
  %.val25.i198.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.fn = zext i8 %.val.i197.i to i32
  %i.fo = shl nuw nsw i32 %i.fn, 8
  %i.fp = zext i8 %.val25.i198.i to i32
  %i.fq = or disjoint i32 %i.fo, %i.fp            ; 2 uses
  %.not.i199.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i199.i, label %stbtt__find_table.exit207.i, label %.lr.ph.i200.i

.lr.ph.i200.i:                                    ; preds = %stbtt__find_table.exit196.i
  %wide.trip.count.i201.i = zext nneg i32 %i.fq to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aw, %.lr.ph.i200.i
  %indvars.iv.i202.i = phi i64 [ 0, %.lr.ph.i200.i ], [ %indvars.iv.next.i204.i, %bb.aw ] ; 2 uses
  %indvars.iv.tr.i203.i = trunc i64 %indvars.iv.i202.i to i32
  %i.fr = shl i32 %indvars.iv.tr.i203.i, 4
  %i.fs = add i32 %i.fr, %i.p
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ft ; 5 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !11
  %i.fw = icmp eq i8 %i.fv, 71
  br i1 %i.fw, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !11
  %i.fz = icmp eq i8 %i.fy, 80
  br i1 %i.fz, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !11
  %i.gc = icmp eq i8 %i.gb, 79
  br i1 %i.gc, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !11
  %i.gf = icmp eq i8 %i.ge, 83
  br i1 %i.gf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gh = load i32, ptr %i.gg, align 1
  %i.gi = tail call i32 @llvm.bswap.i32(i32 %i.gh)
  br label %stbtt__find_table.exit207.i

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %indvars.iv.next.i204.i = add nuw nsw i64 %indvars.iv.i202.i, 1 ; 2 uses
  %exitcond.not.i205.i = icmp eq i64 %indvars.iv.next.i204.i, %wide.trip.count.i201.i
  br i1 %exitcond.not.i205.i, label %stbtt__find_table.exit207.i, label %bb.ar, !llvm.loop !408

stbtt__find_table.exit207.i:                      ; preds = %bb.aw, %bb.av, %stbtt__find_table.exit196.i
  %.2.i206.i = phi i32 [ %i.gi, %bb.av ], [ 0, %stbtt__find_table.exit196.i ], [ 0, %bb.aw ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.2.i206.i, ptr %i.gj, align 8, !tbaa !400
  %.not.i = icmp eq i32 %.2.i342.i, 0
  %.not111.i = icmp eq i32 %i.bx, 0
  %or.cond371.i = select i1 %.not.i, i1 true, i1 %.not111.i
  %.not112.i = icmp eq i32 %.2.i173.i, 0
  %or.cond372.i = select i1 %or.cond371.i, i1 true, i1 %.not112.i
  %.not113.i = icmp eq i32 %.2.i184.i, 0
  %or.cond373.i = select i1 %or.cond372.i, i1 true, i1 %.not113.i
  br i1 %or.cond373.i, label %stbtt_InitFont_internal.exit, label %bb.ax

bb.ax:                                            ; preds = %stbtt__find_table.exit207.i
  %.not114.i = icmp eq i32 %.2.i162.i, 0
  br i1 %.not114.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not119.i = icmp eq i32 %.2.i140.i, 0
  br i1 %.not119.i, label %stbtt_InitFont_internal.exit, label %bb.cv

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i32 2, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  store i32 0, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %.val.i208.i = load i8, ptr %i.j, align 1, !tbaa !11
  %.val25.i209.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.gk = zext i8 %.val.i208.i to i32
  %i.gl = shl nuw nsw i32 %i.gk, 8
  %i.gm = zext i8 %.val25.i209.i to i32
  %i.gn = or disjoint i32 %i.gl, %i.gm            ; 2 uses
  %.not.i210.i = icmp eq i32 %i.gn, 0
  br i1 %.not.i210.i, label %.critedge.i, label %.lr.ph.i211.i

.lr.ph.i211.i:                                    ; preds = %bb.az
  %wide.trip.count.i212.i = zext nneg i32 %i.gn to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.be, %.lr.ph.i211.i
  %indvars.iv.i213.i = phi i64 [ 0, %.lr.ph.i211.i ], [ %indvars.iv.next.i215.i, %bb.be ] ; 2 uses
  %indvars.iv.tr.i214.i = trunc i64 %indvars.iv.i213.i to i32
  %i.go = shl i32 %indvars.iv.tr.i214.i, 4
  %i.gp = add i32 %i.go, %i.p
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %i.gq ; 5 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !11
  %i.gt = icmp eq i8 %i.gs, 67
  br i1 %i.gt, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !11
  %i.gw = icmp eq i8 %i.gv, 70
  br i1 %i.gw, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !11
  %i.gz = icmp eq i8 %i.gy, 70
  br i1 %i.gz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 3
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !11
  %i.hc = icmp eq i8 %i.hb, 32
  br i1 %i.hc, label %stbtt__find_table.exit218.i, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %indvars.iv.next.i215.i = add nuw nsw i64 %indvars.iv.i213.i, 1 ; 2 uses
  %exitcond.not.i216.i = icmp eq i64 %indvars.iv.next.i215.i, %wide.trip.count.i212.i
  br i1 %exitcond.not.i216.i, label %.critedge.i, label %bb.ba, !llvm.loop !408

stbtt__find_table.exit218.i:                      ; preds = %bb.bd
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.he = load i32, ptr %i.hd, align 1            ; 2 uses
  %.not115.i = icmp eq i32 %i.he, 0
  br i1 %.not115.i, label %.critedge.i, label %bb.bf

bb.bf:                                            ; preds = %stbtt__find_table.exit218.i
  %i.hf = tail call i32 @llvm.bswap.i32(i32 %i.he)
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hi = zext i32 %i.hf to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %i.hi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, i8 0, i64 32, i1 false)
  store ptr %i.hj, ptr %i.g, align 8, !tbaa !15
  store i64 2305843009213693952, ptr %.sroa.431.0..sroa_idx.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !525
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 17 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !526 ; 2 uses
  %i.hm = add nsw i32 %i.hl, 2
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !527 ; 48 uses
  %i.hp = icmp slt i32 %i.hl, -2
  %i.hq = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 %i.ho)
  %..i.i.i = select i1 %i.hp, i32 %i.ho, i32 %i.hq ; 2 uses
  %.not.i219.i = icmp slt i32 %..i.i.i, %i.ho
  br i1 %.not.i219.i, label %bb.bg, label %stbtt__buf_get8.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.hr = load ptr, ptr %3, align 8, !tbaa !528
  %i.hs = sext i32 %..i.i.i to i64
  %i.ht = getelementptr inbounds i8, ptr %i.hr, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !11
  %i.hv = zext i8 %i.hu to i32
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.bg, %bb.bf
  %.0.i.i = phi i32 [ %i.hv, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %i.hw = tail call i32 @llvm.smin.i32(i32 %.0.i.i, i32 %i.ho) ; 4 uses
  store i32 %i.hw, ptr %i.hk, align 8, !tbaa !526
  %.not.i.i.i.i = icmp slt i32 %.0.i.i, %i.ho
  br i1 %.not.i.i.i.i, label %bb.bh, label %stbtt__buf_get8.exit.i.i.i

bb.bh:                                            ; preds = %stbtt__buf_get8.exit.i
  %i.hx = load ptr, ptr %3, align 8, !tbaa !528
  %i.hy = add nsw i32 %i.hw, 1                    ; 2 uses
  store i32 %i.hy, ptr %i.hk, align 8, !tbaa !526
  %i.hz = sext i32 %i.hw to i64
  %i.ia = getelementptr inbounds i8, ptr %i.hx, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !11
  %i.ic = zext i8 %i.ib to i32
  %i.id = shl nuw nsw i32 %i.ic, 8
  br label %stbtt__buf_get8.exit.i.i.i

stbtt__buf_get8.exit.i.i.i:                       ; preds = %bb.bh, %stbtt__buf_get8.exit.i
  %i.ie = phi i32 [ %i.hy, %bb.bh ], [ %i.hw, %stbtt__buf_get8.exit.i ] ; 4 uses
  %.0.i.i.i.i = phi i32 [ %i.id, %bb.bh ], [ 0, %stbtt__buf_get8.exit.i ] ; 2 uses
  %.not.i.i.1.i.i = icmp slt i32 %i.ie, %i.ho
  br i1 %.not.i.i.1.i.i, label %bb.bi, label %stbtt__buf_get8.exit.i.1.i.i

bb.bi:                                            ; preds = %stbtt__buf_get8.exit.i.i.i
  %i.if = load ptr, ptr %3, align 8, !tbaa !528
  %i.ig = add nsw i32 %i.ie, 1                    ; 2 uses
  store i32 %i.ig, ptr %i.hk, align 8, !tbaa !526
  %i.ih = sext i32 %i.ie to i64
  %i.ii = getelementptr inbounds i8, ptr %i.if, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !11
  %i.ik = zext i8 %i.ij to i32
  %i.il = or disjoint i32 %.0.i.i.i.i, %i.ik
  br label %stbtt__buf_get8.exit.i.1.i.i

stbtt__buf_get8.exit.i.1.i.i:                     ; preds = %bb.bi, %stbtt__buf_get8.exit.i.i.i
  %i.im = phi i32 [ %i.ig, %bb.bi ], [ %i.ie, %stbtt__buf_get8.exit.i.i.i ] ; 5 uses
  %.0.i.i.1.i.i = phi i32 [ %i.il, %bb.bi ], [ %.0.i.i.i.i, %stbtt__buf_get8.exit.i.i.i ] ; 2 uses
  %.not.i220.i = icmp eq i32 %.0.i.i.1.i.i, 0
  br i1 %.not.i220.i, label %stbtt__cff_get_index.exit.i, label %bb.bj

bb.bj:                                            ; preds = %stbtt__buf_get8.exit.i.1.i.i
  %.not.i.i.i = icmp slt i32 %i.im, %i.ho
  br i1 %.not.i.i.i, label %bb.bk, label %stbtt__buf_get8.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.in = load ptr, ptr %3, align 8, !tbaa !528
  %i.io = add nsw i32 %i.im, 1
  %i.ip = sext i32 %i.im to i64
  %i.iq = getelementptr inbounds i8, ptr %i.in, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !11
  %i.is = zext i8 %i.ir to i32
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.bk, %bb.bj
  %.promoted.i = phi i32 [ %i.io, %bb.bk ], [ %i.im, %bb.bj ]
  %.0.i.i.i = phi i32 [ %i.is, %bb.bk ], [ 0, %bb.bj ] ; 6 uses
  %i.it = mul nuw nsw i32 %.0.i.i.i, %.0.i.i.1.i.i
  %i.iu = add nsw i32 %i.it, %.promoted.i         ; 2 uses
  %i.iv = icmp slt i32 %i.iu, 0
  %i.iw = tail call i32 @llvm.smin.i32(i32 %i.iu, i32 %i.ho)
  %..i.i.i.i = select i1 %i.iv, i32 %i.ho, i32 %i.iw ; 3 uses
  %.not.i13.i.i = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not.i13.i.i, label %stbtt__buf_get.exit21.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %stbtt__buf_get8.exit.i.i
  %i.ix = load ptr, ptr %3, align 8               ; 3 uses
  %xtraiter = and i32 %.0.i.i.i, 1
  %i.iy = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.iy, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.new

.lr.ph.i.i.preheader.i.new:                       ; preds = %.lr.ph.i.i.preheader.i
  %unroll_iter = and i32 %.0.i.i.i, 254
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %stbtt__buf_get8.exit.i18.i.i.1, %.lr.ph.i.i.preheader.i.new
  %i.iz = phi i32 [ %..i.i.i.i, %.lr.ph.i.i.preheader.i.new ], [ %i.jp, %stbtt__buf_get8.exit.i18.i.i.1 ] ; 4 uses
  %.056.i16.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %.0.i.i19.i.i.1, %stbtt__buf_get8.exit.i18.i.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.i.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i18.i.i.1 ]
  %i.ja = shl i32 %.056.i16.i.i, 8                ; 2 uses
  %.not.i.i17.i.i = icmp slt i32 %i.iz, %i.ho
  br i1 %.not.i.i17.i.i, label %bb.bl, label %stbtt__buf_get8.exit.i18.i.i

bb.bl:                                            ; preds = %.lr.ph.i.i.i
  %i.jb = add nsw i32 %i.iz, 1
  %i.jc = sext i32 %i.iz to i64
  %i.jd = getelementptr inbounds i8, ptr %i.ix, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !11
  %i.jf = zext i8 %i.je to i32
  %i.jg = or disjoint i32 %i.ja, %i.jf
  br label %stbtt__buf_get8.exit.i18.i.i

stbtt__buf_get8.exit.i18.i.i:                     ; preds = %bb.bl, %.lr.ph.i.i.i
  %i.jh = phi i32 [ %i.jb, %bb.bl ], [ %i.iz, %.lr.ph.i.i.i ] ; 4 uses
  %.0.i.i19.i.i = phi i32 [ %i.jg, %bb.bl ], [ %i.ja, %.lr.ph.i.i.i ]
  %i.ji = shl i32 %.0.i.i19.i.i, 8                ; 2 uses
  %.not.i.i17.i.i.1 = icmp slt i32 %i.jh, %i.ho
  br i1 %.not.i.i17.i.i.1, label %bb.bm, label %stbtt__buf_get8.exit.i18.i.i.1

bb.bm:                                            ; preds = %stbtt__buf_get8.exit.i18.i.i
  %i.jj = add nsw i32 %i.jh, 1
  %i.jk = sext i32 %i.jh to i64
  %i.jl = getelementptr inbounds i8, ptr %i.ix, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !11
  %i.jn = zext i8 %i.jm to i32
  %i.jo = or disjoint i32 %i.ji, %i.jn
  br label %stbtt__buf_get8.exit.i18.i.i.1

stbtt__buf_get8.exit.i18.i.i.1:                   ; preds = %bb.bm, %stbtt__buf_get8.exit.i18.i.i
  %i.jp = phi i32 [ %i.jj, %bb.bm ], [ %i.jh, %stbtt__buf_get8.exit.i18.i.i ] ; 3 uses
  %.0.i.i19.i.i.1 = phi i32 [ %i.jo, %bb.bm ], [ %i.ji, %stbtt__buf_get8.exit.i18.i.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !529

stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa:     ; preds = %stbtt__buf_get8.exit.i18.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit21.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader.i
  %.epil.init = phi i32 [ %..i.i.i.i, %.lr.ph.i.i.preheader.i ], [ %i.jp, %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader.i ], [ %.0.i.i19.i.i.1, %stbtt__buf_get.exit21.loopexit.i.i.unr-lcssa ]
  %lcmp.mod186 = trunc i32 %.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.jq = shl i32 %.056.i16.i.i.epil.init, 8      ; 2 uses
  %.not.i.i17.i.i.epil = icmp slt i32 %.epil.init, %i.ho
  br i1 %.not.i.i17.i.i.epil, label %bb.bn, label %stbtt__buf_get.exit21.loopexit.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.jr = add nsw i32 %.epil.init, 1
  %i.js = sext i32 %.epil.init to i64
  %i.jt = getelementptr inbounds i8, ptr %i.ix, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !11
end_hunk_1
begin_hunk_2_@stbtt_InitFont:bb.a
  %xtraiter222 = and i32 %.0.i.i305.i, 1
  %i.ss = icmp eq i32 %.0.i.i305.i, 1
  br i1 %i.ss, label %.lr.ph.i.i308.i.epil.preheader, label %.lr.ph.i.i308.preheader.i.new

.lr.ph.i.i308.preheader.i.new:                    ; preds = %.lr.ph.i.i308.preheader.i
  %unroll_iter229 = and i32 %.0.i.i305.i, 254
  br label %.lr.ph.i.i308.i

.lr.ph.i.i308.i:                                  ; preds = %stbtt__buf_get8.exit.i18.i312.i.1, %.lr.ph.i.i308.preheader.i.new
  %i.st = phi i32 [ %..i.i.i306.i, %.lr.ph.i.i308.preheader.i.new ], [ %i.tj, %stbtt__buf_get8.exit.i18.i312.i.1 ] ; 4 uses
  %.056.i16.i310.i = phi i32 [ 0, %.lr.ph.i.i308.preheader.i.new ], [ %.0.i.i19.i313.i.1, %stbtt__buf_get8.exit.i18.i312.i.1 ]
  %niter230 = phi i32 [ 0, %.lr.ph.i.i308.preheader.i.new ], [ %niter230.next.1, %stbtt__buf_get8.exit.i18.i312.i.1 ]
  %i.su = shl i32 %.056.i16.i310.i, 8             ; 2 uses
  %.not.i.i17.i311.i = icmp slt i32 %i.st, %i.ho
  br i1 %.not.i.i17.i311.i, label %bb.cp, label %stbtt__buf_get8.exit.i18.i312.i

bb.cp:                                            ; preds = %.lr.ph.i.i308.i
  %i.sv = add nsw i32 %i.st, 1
  %i.sw = sext i32 %i.st to i64
  %i.sx = getelementptr inbounds i8, ptr %i.sr, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !11
  %i.sz = zext i8 %i.sy to i32
  %i.ta = or disjoint i32 %i.su, %i.sz
  br label %stbtt__buf_get8.exit.i18.i312.i

stbtt__buf_get8.exit.i18.i312.i:                  ; preds = %bb.cp, %.lr.ph.i.i308.i
  %i.tb = phi i32 [ %i.sv, %bb.cp ], [ %i.st, %.lr.ph.i.i308.i ] ; 4 uses
  %.0.i.i19.i313.i = phi i32 [ %i.ta, %bb.cp ], [ %i.su, %.lr.ph.i.i308.i ]
  %i.tc = shl i32 %.0.i.i19.i313.i, 8             ; 2 uses
  %.not.i.i17.i311.i.1 = icmp slt i32 %i.tb, %i.ho
  br i1 %.not.i.i17.i311.i.1, label %bb.cq, label %stbtt__buf_get8.exit.i18.i312.i.1

bb.cq:                                            ; preds = %stbtt__buf_get8.exit.i18.i312.i
  %i.td = add nsw i32 %i.tb, 1
  %i.te = sext i32 %i.tb to i64
  %i.tf = getelementptr inbounds i8, ptr %i.sr, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !11
  %i.th = zext i8 %i.tg to i32
  %i.ti = or disjoint i32 %i.tc, %i.th
  br label %stbtt__buf_get8.exit.i18.i312.i.1

stbtt__buf_get8.exit.i18.i312.i.1:                ; preds = %bb.cq, %stbtt__buf_get8.exit.i18.i312.i
  %i.tj = phi i32 [ %i.td, %bb.cq ], [ %i.tb, %stbtt__buf_get8.exit.i18.i312.i ] ; 3 uses
  %.0.i.i19.i313.i.1 = phi i32 [ %i.ti, %bb.cq ], [ %i.tc, %stbtt__buf_get8.exit.i18.i312.i ] ; 3 uses
  %niter230.next.1 = add nuw nsw i32 %niter230, 2 ; 2 uses
  %niter230.ncmp.1 = icmp eq i32 %niter230.next.1, %unroll_iter229
  br i1 %niter230.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i315.i.unr-lcssa, label %.lr.ph.i.i308.i, !llvm.loop !529

stbtt__buf_get.exit21.loopexit.i315.i.unr-lcssa:  ; preds = %stbtt__buf_get8.exit.i18.i312.i.1
  %lcmp.mod225.not = icmp eq i32 %xtraiter222, 0
  br i1 %lcmp.mod225.not, label %stbtt__buf_get.exit21.loopexit.i315.i, label %.lr.ph.i.i308.i.epil.preheader

.lr.ph.i.i308.i.epil.preheader:                   ; preds = %stbtt__buf_get.exit21.loopexit.i315.i.unr-lcssa, %.lr.ph.i.i308.preheader.i
  %.epil.init224 = phi i32 [ %..i.i.i306.i, %.lr.ph.i.i308.preheader.i ], [ %i.tj, %stbtt__buf_get.exit21.loopexit.i315.i.unr-lcssa ] ; 4 uses
  %.056.i16.i310.i.epil.init = phi i32 [ 0, %.lr.ph.i.i308.preheader.i ], [ %.0.i.i19.i313.i.1, %stbtt__buf_get.exit21.loopexit.i315.i.unr-lcssa ]
  %lcmp.mod228 = trunc i32 %.0.i.i305.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %i.tk = shl i32 %.056.i16.i310.i.epil.init, 8   ; 2 uses
  %.not.i.i17.i311.i.epil = icmp slt i32 %.epil.init224, %i.ho
  br i1 %.not.i.i17.i311.i.epil, label %bb.cr, label %stbtt__buf_get.exit21.loopexit.i315.i

bb.cr:                                            ; preds = %.lr.ph.i.i308.i.epil.preheader
  %i.tl = add nsw i32 %.epil.init224, 1
  %i.tm = sext i32 %.epil.init224 to i64
  %i.tn = getelementptr inbounds i8, ptr %i.sr, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !11
  %i.tp = zext i8 %i.to to i32
  %i.tq = or disjoint i32 %i.tk, %i.tp
  br label %stbtt__buf_get.exit21.loopexit.i315.i

stbtt__buf_get.exit21.loopexit.i315.i:            ; preds = %.lr.ph.i.i308.i.epil.preheader, %bb.cr, %stbtt__buf_get.exit21.loopexit.i315.i.unr-lcssa
  %.lcssa162 = phi i32 [ %i.tj, %stbtt__buf_get.exit21.loopexit.i315.i.unr-lcssa ], [ %i.tl, %bb.cr ], [ %.epil.init224, %.lr.ph.i.i308.i.epil.preheader ]
  %.0.i.i19.i313.i.lcssa = phi i32 [ %.0.i.i19.i313.i.1, %stbtt__buf_get.exit21.loopexit.i315.i.unr-lcssa ], [ %i.tq, %bb.cr ], [ %i.tk, %.lr.ph.i.i308.i.epil.preheader ]
  %i.tr = add i32 %.0.i.i19.i313.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i316.i

stbtt__buf_get.exit21.i316.i:                     ; preds = %stbtt__buf_get.exit21.loopexit.i315.i, %stbtt__buf_get8.exit.i304.i
  %i.ts = phi i32 [ %..i.i.i306.i, %stbtt__buf_get8.exit.i304.i ], [ %.lcssa162, %stbtt__buf_get.exit21.loopexit.i315.i ]
  %.05.lcssa.i.i317.i = phi i32 [ -1, %stbtt__buf_get8.exit.i304.i ], [ %i.tr, %stbtt__buf_get.exit21.loopexit.i315.i ]
  %i.tt = add nsw i32 %.05.lcssa.i.i317.i, %i.ts  ; 2 uses
  %i.tu = icmp slt i32 %i.tt, 0
  %i.tv = tail call i32 @llvm.smin.i32(i32 %i.tt, i32 %i.ho)
  %..i.i22.i318.i = select i1 %i.tu, i32 %i.ho, i32 %i.tv ; 2 uses
  store i32 %..i.i22.i318.i, ptr %i.hk, align 8, !tbaa !526
  br label %stbtt__cff_get_index.exit325.i

stbtt__cff_get_index.exit325.i:                   ; preds = %stbtt__buf_get.exit21.i316.i, %stbtt__buf_get8.exit.i.1.i300.i
  %i.tw = phi i32 [ %..i.i22.i318.i, %stbtt__buf_get.exit21.i316.i ], [ %i.sg, %stbtt__buf_get8.exit.i.1.i300.i ] ; 2 uses
  %i.tx = sub nsw i32 %i.tw, %i.rp                ; 2 uses
  %i.ty = or i32 %i.tx, %i.rp
  %or.cond.not.i.i319.i = icmp slt i32 %i.ty, 0
  %i.tz = icmp sgt i32 %i.tw, %i.ho
  %or.cond.i320.i = or i1 %i.tz, %or.cond.not.i.i319.i ; 2 uses
  %i.ua = load ptr, ptr %3, align 8               ; 2 uses
  %i.ub = zext nneg i32 %i.rp to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.ub
  %i.ud = zext nneg i32 %i.tx to i64
  %i.ue = shl nuw nsw i64 %i.ud, 32
  %.sroa.0.0.i.i321.i = select i1 %or.cond.i320.i, ptr null, ptr %i.uc
  %.sroa.5.0.i.i322.i = select i1 %or.cond.i320.i, i64 0, i64 %i.ue
  store ptr %.sroa.0.0.i.i321.i, ptr %i.rq, align 8, !tbaa !15
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.5.0.i.i322.i, ptr %.sroa.411.0..sroa_idx.i, align 8
  call fastcc void @stbtt__dict_get_ints(ptr noundef %4, i32 noundef 17, i32 noundef 1, ptr noundef %i.b)
  call fastcc void @stbtt__dict_get_ints(ptr noundef %4, i32 noundef 262, i32 noundef 1, ptr noundef %i.a)
  call fastcc void @stbtt__dict_get_ints(ptr noundef %4, i32 noundef 292, i32 noundef 1, ptr noundef %i.c)
  call fastcc void @stbtt__dict_get_ints(ptr noundef %4, i32 noundef 293, i32 noundef 1, ptr noundef %i.d)
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ug = load i64, ptr %i.hk, align 8            ; 2 uses
  %i.uh = load ptr, ptr %4, align 8
  %i.ui = load i64, ptr %.sroa.414.0..sroa_idx.i, align 8
  %i.uj = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %i.ua, i64 %i.ug, ptr %i.uh, i64 %i.ui) ; 2 uses
  %i.uk = extractvalue { ptr, i64 } %i.uj, 0
  %i.ul = extractvalue { ptr, i64 } %i.uj, 1
  store ptr %i.uk, ptr %i.uf, align 8, !tbaa !15
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ul, ptr %.sroa.49.0..sroa_idx.i, align 8
  %i.um = load i32, ptr %i.a, align 4, !tbaa !10
  %.not116.i = icmp ne i32 %i.um, 2
  %i.un = load i32, ptr %i.b, align 4             ; 3 uses
  %i.uo = icmp eq i32 %i.un, 0
  %or.cond.i = select i1 %.not116.i, i1 true, i1 %i.uo
  br i1 %or.cond.i, label %.critedge.i, label %bb.cs

bb.cs:                                            ; preds = %stbtt__cff_get_index.exit325.i
  %i.up = lshr i64 %i.ug, 32
  %i.uq = trunc nuw i64 %i.up to i32
  %i.ur = load i32, ptr %i.c, align 4, !tbaa !10  ; 3 uses
  %.not117.i = icmp eq i32 %i.ur, 0
  br i1 %.not117.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.us = load i32, ptr %i.d, align 4, !tbaa !10  ; 5 uses
  %.not118.i = icmp eq i32 %i.us, 0
  br i1 %.not118.i, label %.critedge.i, label %stbtt__buf_range.exit.i

stbtt__buf_range.exit.i:                          ; preds = %bb.ct
  %i.ut = icmp slt i32 %i.ur, 0
  %i.uu = tail call i32 @llvm.smin.i32(i32 %i.ur, i32 %i.ho)
  %..i.i = select i1 %i.ut, i32 %i.ho, i32 %i.uu
  store i32 %..i.i, ptr %i.hk, align 8, !tbaa !526
  %i.uv = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %3) ; 2 uses
  %i.uw = extractvalue { ptr, i64 } %i.uv, 0
  %i.ux = extractvalue { ptr, i64 } %i.uv, 1
  store ptr %i.uw, ptr %i.hg, align 8, !tbaa !15
  store i64 %i.ux, ptr %.sroa.424.0..sroa_idx.i, align 8
  %i.uy = load i32, ptr %i.hn, align 4, !tbaa !527 ; 3 uses
  %i.uz = sub i32 %i.uy, %i.us                    ; 2 uses
  %i.va = or i32 %i.uz, %i.us
  %or.cond.not.i.i = icmp slt i32 %i.va, 0
  %i.vb = icmp sgt i32 %i.us, %i.uy
  %or.cond374.i = or i1 %i.vb, %or.cond.not.i.i   ; 2 uses
  %i.vc = load ptr, ptr %3, align 8
  %i.vd = zext nneg i32 %i.us to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.vd
  %i.vf = zext nneg i32 %i.uz to i64
  %i.vg = shl nuw nsw i64 %i.vf, 32
  %.sroa.0.0.i.i = select i1 %or.cond374.i, ptr null, ptr %i.ve
  %.sroa.5.0.i.i = select i1 %or.cond374.i, i64 0, i64 %i.vg
  store ptr %.sroa.0.0.i.i, ptr %i.hh, align 8, !tbaa !15
  store i64 %.sroa.5.0.i.i, ptr %.sroa.422.0..sroa_idx.i, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %stbtt__buf_range.exit.i, %bb.cs
  %i.vh = phi i32 [ %i.uy, %stbtt__buf_range.exit.i ], [ %i.uq, %bb.cs ] ; 2 uses
  %i.vi = icmp slt i32 %i.un, 0
  %i.vj = tail call i32 @llvm.smin.i32(i32 %i.un, i32 %i.vh)
  %..i329.i = select i1 %i.vi, i32 %i.vh, i32 %i.vj
  store i32 %..i329.i, ptr %i.hk, align 8, !tbaa !526
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.vl = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %3) ; 2 uses
  %i.vm = extractvalue { ptr, i64 } %i.vl, 0
  %i.vn = extractvalue { ptr, i64 } %i.vl, 1
  store ptr %i.vm, ptr %i.vk, align 8, !tbaa !15
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.vn, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ay
  %.val.i330.i = load i8, ptr %i.j, align 1, !tbaa !11
  %.val25.i331.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.vo = zext i8 %.val.i330.i to i32
  %i.vp = shl nuw nsw i32 %i.vo, 8
  %i.vq = zext i8 %.val25.i331.i to i32
  %i.vr = or disjoint i32 %i.vp, %i.vq            ; 2 uses
  %.not.i332.i = icmp eq i32 %i.vr, 0
  br i1 %.not.i332.i, label %stbtt__find_table.exit340.thread.i, label %.lr.ph.i333.i

.lr.ph.i333.i:                                    ; preds = %bb.cv
  %wide.trip.count.i334.i = zext nneg i32 %i.vr to i64
  br label %bb.cw

bb.cw:                                            ; preds = %bb.da, %.lr.ph.i333.i
  %indvars.iv.i335.i = phi i64 [ 0, %.lr.ph.i333.i ], [ %indvars.iv.next.i337.i, %bb.da ] ; 2 uses
  %indvars.iv.tr.i336.i = trunc i64 %indvars.iv.i335.i to i32
  %i.vs = shl i32 %indvars.iv.tr.i336.i, 4
  %i.vt = add i32 %i.vs, %i.p
  %i.vu = zext i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 %i.vu ; 5 uses
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !11
  %i.vx = icmp eq i8 %i.vw, 109
  br i1 %i.vx, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 1
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !11
  %i.wa = icmp eq i8 %i.vz, 97
  br i1 %i.wa, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vv, i64 2
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !11
  %i.wd = icmp eq i8 %i.wc, 120
  br i1 %i.wd, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.we = getelementptr inbounds nuw i8, ptr %i.vv, i64 3
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !11
  %i.wg = icmp eq i8 %i.wf, 112
  br i1 %i.wg, label %stbtt__find_table.exit340.i, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cw
  %indvars.iv.next.i337.i = add nuw nsw i64 %indvars.iv.i335.i, 1 ; 2 uses
  %exitcond.not.i338.i = icmp eq i64 %indvars.iv.next.i337.i, %wide.trip.count.i334.i
  br i1 %exitcond.not.i338.i, label %stbtt__find_table.exit340.thread.i, label %bb.cw, !llvm.loop !408

stbtt__find_table.exit340.i:                      ; preds = %bb.cz
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.wi = load i32, ptr %i.wh, align 1            ; 2 uses
  %.not120.i = icmp eq i32 %i.wi, 0
  br i1 %.not120.i, label %stbtt__find_table.exit340.thread.i, label %bb.db

bb.db:                                            ; preds = %stbtt__find_table.exit340.i
  %i.wj = tail call i32 @llvm.bswap.i32(i32 %i.wi)
  %i.wk = zext i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 %i.wk ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %.val129.i = load i8, ptr %i.wm, align 1, !tbaa !11
  %i.wn = getelementptr i8, ptr %i.wl, i64 5
  %.val130.i = load i8, ptr %i.wn, align 1, !tbaa !11
  %i.wo = zext i8 %.val129.i to i32
  %i.wp = shl nuw nsw i32 %i.wo, 8
  %i.wq = zext i8 %.val130.i to i32
  %i.wr = or disjoint i32 %i.wp, %i.wq
  br label %stbtt__find_table.exit340.thread.i

stbtt__find_table.exit340.thread.i:               ; preds = %bb.da, %bb.db, %stbtt__find_table.exit340.i, %bb.cv
  %.sink.i = phi i32 [ %i.wr, %bb.db ], [ 65535, %stbtt__find_table.exit340.i ], [ 65535, %bb.cv ], [ 65535, %bb.da ]
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink.i, ptr %i.ws, align 4, !tbaa !366
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 -1, ptr %i.wt, align 4, !tbaa !411
  %i.wu = zext i32 %.2.i342.i to i64
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 %i.wu ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 2
  %.val127.i = load i8, ptr %i.ww, align 1, !tbaa !11
  %i.wx = getelementptr i8, ptr %i.wv, i64 3
  %.val128.i = load i8, ptr %i.wx, align 1, !tbaa !11
  %i.wy = zext i8 %.val127.i to i32
  %i.wz = shl nuw nsw i32 %i.wy, 8
  %i.xa = zext i8 %.val128.i to i32
  %i.xb = or disjoint i32 %i.wz, %i.xa            ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.xc, align 8, !tbaa !362
  %.not406.i = icmp eq i32 %i.xb, 0
  br i1 %.not406.i, label %stbtt_InitFont_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %stbtt__find_table.exit340.thread.i
  %i.xd = add i32 %.2.i342.i, 4
  %wide.trip.count.i = zext nneg i32 %i.xb to i64
  br label %bb.dc

bb.dc:                                            ; preds = %bb.de, %.lr.ph.i
  %i.xe = phi i32 [ 0, %.lr.ph.i ], [ %i.xy, %bb.de ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.de ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.xf = shl i32 %indvars.iv.tr.i, 3
  %i.xg = add i32 %i.xd, %i.xf
  %i.xh = zext i32 %i.xg to i64
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 %i.xh ; 5 uses
  %.val125.i = load i8, ptr %i.xi, align 1, !tbaa !11
  %i.xj = getelementptr i8, ptr %i.xi, i64 1
  %.val126.i = load i8, ptr %i.xj, align 1, !tbaa !11
  %i.xk = zext i8 %.val125.i to i16
  %i.xl = shl nuw i16 %i.xk, 8
  %i.xm = zext i8 %.val126.i to i16
  %i.xn = or disjoint i16 %i.xl, %i.xm
  switch i16 %i.xn, label %bb.de [
    i16 3, label %bb.dd
    i16 0, label %.sink.split.i
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  %.val123.i = load i8, ptr %i.xo, align 1, !tbaa !11
  %i.xp = getelementptr i8, ptr %i.xi, i64 3
  %.val124.i = load i8, ptr %i.xp, align 1, !tbaa !11
  %i.xq = zext i8 %.val123.i to i16
  %i.xr = shl nuw i16 %i.xq, 8
  %i.xs = zext i8 %.val124.i to i16
  %i.xt = or disjoint i16 %i.xr, %i.xs
  switch i16 %i.xt, label %bb.de [
    i16 1, label %.sink.split.i
    i16 10, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.dd, %bb.dd, %bb.dc
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  %i.xv = load i32, ptr %i.xu, align 1
  %i.xw = tail call i32 @llvm.bswap.i32(i32 %i.xv)
  %i.xx = add i32 %i.xw, %.2.i342.i               ; 2 uses
  store i32 %i.xx, ptr %i.xc, align 8, !tbaa !362
  br label %bb.de

bb.de:                                            ; preds = %.sink.split.i, %bb.dd, %bb.dc
  %i.xy = phi i32 [ %i.xe, %bb.dd ], [ %i.xe, %bb.dc ], [ %i.xx, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.dc, !llvm.loop !530

._crit_edge.i:                                    ; preds = %bb.de
  %i.xz = icmp eq i32 %i.xy, 0
  br i1 %i.xz, label %stbtt_InitFont_internal.exit, label %bb.df

bb.df:                                            ; preds = %._crit_edge.i
  %i.ya = sext i32 %i.bx to i64
  %i.yb = getelementptr inbounds i8, ptr %1, i64 %i.ya ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 50
  %.val.i = load i8, ptr %i.yc, align 1, !tbaa !11
  %i.yd = getelementptr i8, ptr %i.yb, i64 51
  %.val122.i = load i8, ptr %i.yd, align 1, !tbaa !11
  %i.ye = zext i8 %.val.i to i32
  %i.yf = shl nuw nsw i32 %i.ye, 8
  %i.yg = zext i8 %.val122.i to i32
  %i.yh = or disjoint i32 %i.yf, %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !367
  br label %stbtt_InitFont_internal.exit

.critedge.i:                                      ; preds = %bb.be, %bb.ct, %stbtt__cff_get_index.exit325.i, %stbtt__find_table.exit218.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %stbtt_InitFont_internal.exit

stbtt_InitFont_internal.exit:                     ; preds = %stbtt__find_table.exit207.i, %bb.ay, %stbtt__find_table.exit340.thread.i, %._crit_edge.i, %bb.df, %.critedge.i
  %.1.i = phi i32 [ 0, %bb.ay ], [ 1, %bb.df ], [ 0, %stbtt__find_table.exit207.i ], [ 0, %.critedge.i ], [ 0, %._crit_edge.i ], [ 0, %stbtt__find_table.exit340.thread.i ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetFontOffsetForIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc i32 @stbtt__isfont(ptr noundef readonly %0)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %1, 0
  %i.c = sext i1 %i.b to i32
  br label %stbtt_GetFontOffsetForIndex_internal.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !11
  %i.e = icmp eq i8 %i.d, 116
  br i1 %i.e, label %bb.d, label %stbtt_GetFontOffsetForIndex_internal.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = icmp eq i8 %i.g, 116
  br i1 %i.h, label %bb.e, label %stbtt_GetFontOffsetForIndex_internal.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = icmp eq i8 %i.j, 99
  br i1 %i.k, label %bb.f, label %stbtt_GetFontOffsetForIndex_internal.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = icmp eq i8 %i.m, 102
  br i1 %i.n, label %bb.g, label %stbtt_GetFontOffsetForIndex_internal.exit

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  switch i32 %i.q, label %stbtt_GetFontOffsetForIndex_internal.exit [
    i32 65536, label %bb.h
    i32 131072, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %.not14.i = icmp slt i32 %1, %i.t
  br i1 %.not14.i, label %bb.i, label %stbtt_GetFontOffsetForIndex_internal.exit

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = shl nsw i32 %1, 2
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  br label %stbtt_GetFontOffsetForIndex_internal.exit

stbtt_GetFontOffsetForIndex_internal.exit:        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.1.i = phi i32 [ %i.c, %bb.b ], [ -1, %bb.h ], [ %i.z, %bb.i ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbtt_PackFontRange(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.stbtt_pack_range, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %4, ptr %i.a, align 4, !tbaa !492
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !491
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %5, ptr %i.c, align 8, !tbaa !490
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.d, align 8, !tbaa !509
  store float %3, ptr %7, align 8, !tbaa !485
  %i.e = call i32 @stbtt_PackFontRanges(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetScaledFontVMetrics(ptr noundef %0, i32 noundef %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #8 {
bb.a:
  %6 = alloca %struct.stbtt_fontinfo, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef %0, i32 noundef %1)
  %i.b = call i32 @stbtt_InitFont(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %i.a) ; 0 uses
  %i.c = fcmp ogt float %2, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !359  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !392
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.val6.i = load i8, ptr %i.j, align 1, !tbaa !11
  %i.k = getelementptr i8, ptr %i.i, i64 5
  %.val7.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.l = zext i8 %.val6.i to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = zext i8 %.val7.i to i16
  %i.o = or disjoint i16 %i.m, %i.n               ; 2 uses
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %.val.i = load i8, ptr %i.q, align 1, !tbaa !11
  %i.r = getelementptr i8, ptr %i.i, i64 7
  %.val5.i = load i8, ptr %i.r, align 1, !tbaa !11
  %i.s = zext i8 %.val.i to i16
  %i.t = shl nuw i16 %i.s, 8
  %i.u = zext i8 %.val5.i to i16
  %i.v = or disjoint i16 %i.t, %i.u               ; 2 uses
  %i.w = sext i16 %i.v to i32
  %i.x = sub nsw i32 %i.p, %i.w
  %i.y = sitofp i32 %i.x to float
  %i.z = fdiv float %2, %i.y
  br label %bb.d

end_hunk_2
begin_hunk_3_@stbtt_GetGlyphSDF:bb.a
bb.be:                                            ; preds = %stbtt__solve_cubic.exit
  %i.ss = fsub float 1.000000e+00, %.sroa.0.0     ; 3 uses
  %i.st = fmul float %i.ss, %i.ss                 ; 2 uses
  %i.su = fmul nnan float %.sroa.0.0, 2.000000e+00
  %i.sv = fmul float %i.su, %i.ss                 ; 2 uses
  %i.sw = fmul float %i.nk, %i.sv
  %i.sx = call float @llvm.fmuladd.f32(float %i.st, float %i.nj, float %i.sw)
  %i.sy = fmul nnan float %.sroa.0.0, %.sroa.0.0  ; 2 uses
  %i.sz = call float @llvm.fmuladd.f32(float %i.sy, float %i.nq, float %i.sx)
  %i.ta = fmul float %i.nn, %i.sv
  %i.tb = call float @llvm.fmuladd.f32(float %i.st, float %i.nm, float %i.ta)
  %i.tc = call float @llvm.fmuladd.f32(float %i.sy, float %i.nt, float %i.tb)
  %i.td = fsub float %i.sz, %i.du                 ; 2 uses
  %i.te = fsub float %i.tc, %i.dk                 ; 2 uses
  %i.tf = fmul float %i.te, %i.te
  %i.tg = call float @llvm.fmuladd.f32(float %i.td, float %i.td, float %i.tf) ; 2 uses
  %i.th = fmul float %.4, %.4
  %i.ti = fcmp olt float %i.tg, %i.th
  br i1 %i.ti, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %sqrt522 = call float @llvm.sqrt.f32(float %i.tg)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %stbtt__solve_cubic.exit
  %.5 = phi float [ %sqrt522, %bb.bf ], [ %.4, %bb.be ], [ %.4, %stbtt__solve_cubic.exit ] ; 4 uses
  %i.tj = fcmp oge float %.sroa.8.0, 0.000000e+00
  %i.tk = fcmp ole float %.sroa.8.0, 1.000000e+00
  %i.tl = and i1 %i.tj, %i.tk
  %or.cond13 = select i1 %i.sj, i1 %i.tl, i1 false
  br i1 %or.cond13, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.tm = fsub float 1.000000e+00, %.sroa.8.0     ; 3 uses
  %i.tn = fmul float %i.tm, %i.tm                 ; 2 uses
  %i.to = fmul nnan float %.sroa.8.0, 2.000000e+00
  %i.tp = fmul float %i.to, %i.tm                 ; 2 uses
  %i.tq = fmul float %i.nk, %i.tp
  %i.tr = call float @llvm.fmuladd.f32(float %i.tn, float %i.nj, float %i.tq)
  %i.ts = fmul nnan float %.sroa.8.0, %.sroa.8.0  ; 2 uses
  %i.tt = call float @llvm.fmuladd.f32(float %i.ts, float %i.nq, float %i.tr)
  %i.tu = fmul float %i.nn, %i.tp
  %i.tv = call float @llvm.fmuladd.f32(float %i.tn, float %i.nm, float %i.tu)
  %i.tw = call float @llvm.fmuladd.f32(float %i.ts, float %i.nt, float %i.tv)
  %i.tx = fsub float %i.tt, %i.du                 ; 2 uses
  %i.ty = fsub float %i.tw, %i.dk                 ; 2 uses
  %i.tz = fmul float %i.ty, %i.ty
  %i.ua = call float @llvm.fmuladd.f32(float %i.tx, float %i.tx, float %i.tz) ; 2 uses
  %i.ub = fmul float %.5, %.5
  %i.uc = fcmp olt float %i.ua, %i.ub
  br i1 %i.uc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %sqrt523 = call float @llvm.sqrt.f32(float %i.ua)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bg
  %.6 = phi float [ %sqrt523, %bb.bi ], [ %.5, %bb.bh ], [ %.5, %bb.bg ] ; 4 uses
  %i.ud = fcmp oge float %.sroa.11.0, 0.000000e+00
  %i.ue = fcmp ole float %.sroa.11.0, 1.000000e+00
  %i.uf = and i1 %i.ud, %i.ue
  %or.cond19 = select i1 %i.sk, i1 %i.uf, i1 false
  br i1 %or.cond19, label %bb.bk, label %.thread

bb.bk:                                            ; preds = %bb.bj
  %i.ug = fsub float 1.000000e+00, %.sroa.11.0    ; 3 uses
  %i.uh = fmul float %i.ug, %i.ug                 ; 2 uses
  %i.ui = fmul nnan float %.sroa.11.0, 2.000000e+00
  %i.uj = fmul float %i.ui, %i.ug                 ; 2 uses
  %i.uk = fmul float %i.nk, %i.uj
  %i.ul = call float @llvm.fmuladd.f32(float %i.uh, float %i.nj, float %i.uk)
  %i.um = fmul nnan float %.sroa.11.0, %.sroa.11.0 ; 2 uses
  %i.un = call float @llvm.fmuladd.f32(float %i.um, float %i.nq, float %i.ul)
  %i.uo = fmul float %i.nn, %i.uj
  %i.up = call float @llvm.fmuladd.f32(float %i.uh, float %i.nm, float %i.uo)
  %i.uq = call float @llvm.fmuladd.f32(float %i.um, float %i.nt, float %i.up)
  %i.ur = fsub float %i.un, %i.du                 ; 2 uses
  %i.us = fsub float %i.uq, %i.dk                 ; 2 uses
  %i.ut = fmul float %i.us, %i.us
  %i.uu = call float @llvm.fmuladd.f32(float %i.ur, float %i.ur, float %i.ut) ; 2 uses
  %i.uv = fmul float %.6, %.6
  %i.uw = fcmp olt float %i.uu, %i.uv
  br i1 %i.uw, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %bb.bk
  %sqrt524 = call float @llvm.sqrt.f32(float %i.uu)
  br label %.thread

.thread:                                          ; preds = %.lr.ph530, %bb.an, %bb.bj, %bb.bl, %bb.bk, %bb.aq, %bb.ao, %bb.ap
  %.9 = phi float [ %.0435529, %.lr.ph530 ], [ %.1436, %bb.ao ], [ %.2437, %bb.ap ], [ %.6, %bb.bj ], [ %.0435529, %bb.aq ], [ %sqrt524, %bb.bl ], [ %.6, %bb.bk ], [ %.0435529, %bb.an ] ; 3 uses
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count.i
  br i1 %exitcond541.not, label %._crit_edge, label %.lr.ph530, !llvm.loop !542

._crit_edge:                                      ; preds = %.thread
  br i1 %i.kj, label %bb.bm, label %._crit_edge.thread

bb.bm:                                            ; preds = %._crit_edge
  %i.ux = fneg float %.9
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.t, %._crit_edge, %bb.bm
  %i.uy = phi float [ %.9, %._crit_edge ], [ %i.ux, %bb.bm ], [ -9.999990e+05, %bb.t ]
  %i.uz = call float @llvm.fmuladd.f32(float %5, float %i.uy, float %i.bf) ; 3 uses
  %i.va = fcmp olt float %i.uz, 0.000000e+00
  br i1 %i.va, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.thread
  %i.vb = fcmp ogt float %i.uz, 2.550000e+02
  br i1 %i.vb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge.thread, %bb.bn, %bb.bo
  %.0438 = phi float [ %i.uz, %bb.bn ], [ 2.550000e+02, %bb.bo ], [ 0.000000e+00, %._crit_edge.thread ]
  %i.vc = fptoui float %.0438 to i8
  %i.vd = add i32 %i.dr, %i.ds
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds i8, ptr %i.au, i64 %i.ve
  store i8 %i.vc, ptr %i.vf, align 1, !tbaa !11
  %indvars.iv.next543 = add nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.vg = icmp slt i64 %indvars.iv.next543, %i.bh
  br i1 %i.vg, label %bb.q, label %._crit_edge533, !llvm.loop !543

._crit_edge533:                                   ; preds = %bb.bp
  %i.vh = add nsw i32 %.0440534, 1                ; 2 uses
  %i.vi = icmp slt i32 %i.vh, %i.al
  br i1 %i.vi, label %.preheader, label %._crit_edge535.split, !llvm.loop !544

._crit_edge535.split:                             ; preds = %._crit_edge533, %.preheader.lr.ph, %.preheader525
  %i.vj = load ptr, ptr %0, align 8, !tbaa !370   ; 2 uses
  %.val494 = load ptr, ptr %i.vj, align 8
  %i.vk = getelementptr i8, ptr %i.vj, i64 16
  %.val495 = load ptr, ptr %i.vk, align 8, !tbaa !385
  call void %.val495(ptr %.val494, ptr noundef %i.az) #50, !inline_history !410
  %i.vl = load ptr, ptr %0, align 8, !tbaa !370   ; 2 uses
  %.val492 = load ptr, ptr %i.vl, align 8
  %i.vm = getelementptr i8, ptr %i.vl, i64 16
  %.val493 = load ptr, ptr %i.vm, align 8, !tbaa !385
  call void %.val493(ptr %.val492, ptr noundef %.pre.pre) #50, !inline_history !410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  br label %bb.bq

bb.bq:                                            ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread, %stbtt_GetGlyphBitmapBoxSubpixel.exit, %bb.a, %._crit_edge535.split
  %.0 = phi ptr [ %i.au, %._crit_edge535.split ], [ null, %bb.a ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind uwtable
define ptr @stbtt_GetCodepointSDF(ptr nofree noundef readonly captures(none) %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %2)
  %i.b = tail call ptr @stbtt_GetGlyphSDF(ptr noundef %0, float noundef %1, i32 noundef %i.a, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbtt_FreeSDF(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !385
  tail call void %.val2(ptr %.val, ptr noundef %0) #50, !inline_history !410
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbtt_GetFontNameString(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !407  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val25.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = zext i8 %.val.i to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = zext i8 %.val25.i to i32
  %i.l = or disjoint i32 %i.j, %i.k               ; 2 uses
  %i.m = add i32 %i.d, 12
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %stbtt__find_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.n = shl i32 %indvars.iv.tr.i, 4
  %i.o = add i32 %i.m, %i.n
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 5 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = icmp eq i8 %i.r, 110
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = icmp eq i8 %i.u, 97
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 109
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = icmp eq i8 %i.aa, 101
  br i1 %i.ab, label %stbtt__find_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit.thread, label %bb.b, !llvm.loop !408

stbtt__find_table.exit:                           ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load i32, ptr %i.ac, align 1            ; 2 uses
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %stbtt__find_table.exit.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__find_table.exit
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.val51 = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.ai = getelementptr i8, ptr %i.ag, i64 3
  %.val52 = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.aj = zext i8 %.val51 to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = zext i8 %.val52 to i32
  %i.am = or disjoint i32 %i.ak, %i.al            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.val49 = load i8, ptr %i.an, align 1, !tbaa !11
  %i.ao = getelementptr i8, ptr %i.ag, i64 5
  %.val50 = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.ap = zext i8 %.val49 to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = zext i8 %.val50 to i32
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = add i32 %i.as, %i.ae
  %.not62 = icmp eq i32 %i.am, 0
  br i1 %.not62, label %stbtt__find_table.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.au = add i32 %i.ae, 6
  %wide.trip.count = zext nneg i32 %i.am to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.av = trunc i64 %indvars.iv to i32
  %i.aw = mul i32 %i.av, 12
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ay ; 12 uses
  %.val47 = load i8, ptr %i.az, align 1, !tbaa !11
  %i.ba = getelementptr i8, ptr %i.az, i64 1
  %.val48 = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bb = zext i8 %.val47 to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = zext i8 %.val48 to i32
  %i.be = or disjoint i32 %i.bc, %i.bd
  %i.bf = icmp eq i32 %2, %i.be
  br i1 %i.bf, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %.val45 = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bh = getelementptr i8, ptr %i.az, i64 3
  %.val46 = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bi = zext i8 %.val45 to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = zext i8 %.val46 to i32
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %i.bm = icmp eq i32 %3, %i.bl
  br i1 %i.bm, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.val43 = load i8, ptr %i.bn, align 1, !tbaa !11
  %i.bo = getelementptr i8, ptr %i.az, i64 5
  %.val44 = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bp = zext i8 %.val43 to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = zext i8 %.val44 to i32
  %i.bs = or disjoint i32 %i.bq, %i.br
  %i.bt = icmp eq i32 %4, %i.bs
  br i1 %i.bt, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 6
  %.val41 = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bv = getelementptr i8, ptr %i.az, i64 7
  %.val42 = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bw = zext i8 %.val41 to i32
  %i.bx = shl nuw nsw i32 %i.bw, 8
  %i.by = zext i8 %.val42 to i32
  %i.bz = or disjoint i32 %i.bx, %i.by
  %i.ca = icmp eq i32 %5, %i.bz
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val39 = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cc = getelementptr i8, ptr %i.az, i64 9
  %.val40 = load i8, ptr %i.cc, align 1, !tbaa !11
  %i.cd = zext i8 %.val39 to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = zext i8 %.val40 to i32
  %i.cg = or disjoint i32 %i.ce, %i.cf
  store i32 %i.cg, ptr %1, align 4, !tbaa !10
  %i.ch = sext i32 %i.at to i64
  %i.ci = getelementptr inbounds i8, ptr %i.b, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.az, i64 10
  %.val = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.ck = getelementptr i8, ptr %i.az, i64 11
  %.val38 = load i8, ptr %i.ck, align 1, !tbaa !11
  %i.cl = zext i8 %.val to i64
  %i.cm = shl nuw nsw i64 %i.cl, 8
  %i.cn = zext i8 %.val38 to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  br label %stbtt__find_table.exit.thread

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %stbtt__find_table.exit.thread, label %bb.h, !llvm.loop !545

stbtt__find_table.exit.thread:                    ; preds = %bb.f, %bb.m, %bb.g, %bb.a, %bb.l, %stbtt__find_table.exit
  %.2 = phi ptr [ %i.cp, %bb.l ], [ null, %stbtt__find_table.exit ], [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.m ], [ null, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @stbtt_BakeFontBitmap(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %struct.stbtt_fontinfo, align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store ptr null, ptr %9, align 8, !tbaa !370
  %i.e = call i32 @stbtt_InitFont(ptr noundef nonnull %9, ptr noundef %0, i32 noundef %1)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %stbtt_BakeFontBitmap_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul nsw i32 %5, %4
  %i.g = sext i32 %i.f to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !359  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !392
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.val6.i.i = load i8, ptr %i.n, align 1, !tbaa !11
  %i.o = getelementptr i8, ptr %i.m, i64 5
  %.val7.i.i = load i8, ptr %i.o, align 1, !tbaa !11
  %i.p = zext i8 %.val6.i.i to i16
  %i.q = shl nuw i16 %i.p, 8
  %i.r = zext i8 %.val7.i.i to i16
  %i.s = or disjoint i16 %i.q, %i.r
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %.val.i.i = load i8, ptr %i.u, align 1, !tbaa !11
  %i.v = getelementptr i8, ptr %i.m, i64 7
  %.val5.i.i = load i8, ptr %i.v, align 1, !tbaa !11
  %i.w = zext i8 %.val.i.i to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = zext i8 %.val5.i.i to i16
  %i.z = or disjoint i16 %i.x, %i.y
  %i.aa = sext i16 %i.z to i32
  %i.ab = sub nsw i32 %i.t, %i.aa
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fdiv float %2, %i.ac                    ; 4 uses
  %i.ae = icmp sgt i32 %7, 0
  br i1 %i.ae, label %.lr.ph.i, label %stbtt_BakeFontBitmap_internal.exit

.lr.ph.i:                                         ; preds = %bb.b
end_hunk_3
begin_hunk_4_@stbtt_BakeFontBitmap:bb.a
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %i.bd = getelementptr i8, ptr %i.bb, i64 -3
  %.val40.i.sink.in.i = select i1 %i.au, ptr %i.ax, ptr %i.bc
  %.val41.i.sink.in.i = select i1 %i.au, ptr %i.ay, ptr %i.bd
  %.val41.i.sink.i = load i8, ptr %.val41.i.sink.in.i, align 1, !tbaa !11
  %.val40.i.sink.i = load i8, ptr %.val40.i.sink.in.i, align 1, !tbaa !11
  %i.be = zext i8 %.val40.i.sink.i to i16
  %i.bf = shl nuw i16 %i.be, 8
  %i.bg = zext i8 %.val41.i.sink.i to i16
  %i.bh = or disjoint i16 %i.bf, %i.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.bi = call i32 @stbtt_GetGlyphBox(ptr noundef nonnull readonly %9, i32 noundef %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i, label %stbtt_GetGlyphBitmapBox.exit.i, label %bb.c

bb.c:                                             ; preds = %stbtt_GetGlyphHMetrics.exit.i
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bk = load i32, ptr %i.d, align 4, !tbaa !10
  %i.bl = sub nsw i32 0, %i.bk
  %i.bm = insertelement <2 x i32> poison, i32 %i.bj, i64 0
  %i.bn = insertelement <2 x i32> %i.bm, i32 %i.bl, i64 1
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.am, <2 x float> zeroinitializer)
  %i.bq = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bp)
  %i.br = fptosi <2 x float> %i.bq to <2 x i32>
  %i.bs = load i32, ptr %i.c, align 4, !tbaa !10
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bu = sub nsw i32 0, %i.bt
  %i.bv = insertelement <2 x i32> poison, i32 %i.bs, i64 0
  %i.bw = insertelement <2 x i32> %i.bv, i32 %i.bu, i64 1
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.am, <2 x float> zeroinitializer)
  %i.bz = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.by)
  %i.ca = fptosi <2 x float> %i.bz to <2 x i32>
  br label %stbtt_GetGlyphBitmapBox.exit.i

stbtt_GetGlyphBitmapBox.exit.i:                   ; preds = %bb.c, %stbtt_GetGlyphHMetrics.exit.i
  %i.cb = phi <2 x i32> [ %i.br, %bb.c ], [ zeroinitializer, %stbtt_GetGlyphHMetrics.exit.i ] ; 3 uses
  %i.cc = phi <2 x i32> [ %i.ca, %bb.c ], [ zeroinitializer, %stbtt_GetGlyphHMetrics.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
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

bb.d:                                             ; preds = %stbtt_GetGlyphBitmapBox.exit.i
  %i.cj = sub nsw i32 0, %i.an
  br label %stbtt_BakeFontBitmap_internal.exit

bb.e:                                             ; preds = %stbtt_GetGlyphBitmapBox.exit.i
  %spec.select.i = select i1 %.not74.i, i32 %.06797.i, i32 1 ; 3 uses
  %i.ck = sext i32 %spec.select.i to i64
  %i.cl = getelementptr inbounds i8, ptr %3, i64 %i.ck
  %i.cm = mul nsw i32 %spec.select77.i, %4
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef nonnull readonly %9, ptr noundef %i.co, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef %4, float noundef %i.ad, float noundef %i.ad, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %i.ap)
  %i.cp = trunc i32 %spec.select.i to i16
  %i.cq = getelementptr inbounds nuw [20 x i8], ptr %8, i64 %indvars.iv.i ; 6 uses
  store i16 %i.cp, ptr %i.cq, align 4, !tbaa !546
  %i.cr = trunc i32 %spec.select77.i to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !547
  %i.ct = add nsw i32 %spec.select.i, %i.cd       ; 2 uses
  %i.cu = trunc i32 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i16 %i.cu, ptr %i.cv, align 4, !tbaa !548
  %i.cw = trunc i32 %i.ch to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !549
  %i.cy = sitofp i16 %i.bh to float
  %i.cz = fmul float %i.ad, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store float %i.cz, ptr %i.da, align 4, !tbaa !470
  %i.db = sitofp <2 x i32> %i.cb to <2 x float>
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store <2 x float> %i.db, ptr %i.dc, align 4, !tbaa !8
  %i.dd = add nsw i32 %i.ct, 1
  %spec.select78.i = call i32 @llvm.smax.i32(i32 %.06499.i, i32 %i.ci) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt_BakeFontBitmap_internal.exit, label %stbtt_GetGlyphHMetrics.exit.i, !llvm.loop !550

stbtt_BakeFontBitmap_internal.exit:               ; preds = %bb.e, %bb.a, %bb.b, %bb.d
  %.272.i = phi i32 [ %i.cj, %bb.d ], [ -1, %bb.a ], [ 1, %bb.b ], [ %spec.select78.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  ret i32 %.272.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetNumberOfFonts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc i32 @stbtt__isfont(ptr noundef readonly %0)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %stbtt_GetNumberOfFonts_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !11
  %i.c = icmp eq i8 %i.b, 116
  br i1 %i.c, label %bb.c, label %stbtt_GetNumberOfFonts_internal.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %i.f = icmp eq i8 %i.e, 116
  br i1 %i.f, label %bb.d, label %stbtt_GetNumberOfFonts_internal.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  %i.i = icmp eq i8 %i.h, 99
  br i1 %i.i, label %bb.e, label %stbtt_GetNumberOfFonts_internal.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = icmp eq i8 %i.k, 102
  br i1 %i.l, label %bb.f, label %stbtt_GetNumberOfFonts_internal.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %stbtt_GetNumberOfFonts_internal.exit [
    i32 65536, label %bb.g
    i32 131072, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  br label %stbtt_GetNumberOfFonts_internal.exit

stbtt_GetNumberOfFonts_internal.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.r, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbtt_FindMatchingFont(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef readonly %0, i32 noundef 0) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %stbtt_FindMatchingFont_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #51
  %i.d = trunc i64 %i.c to i32                    ; 6 uses
  %.not39.i.i = icmp eq i32 %2, 0                 ; 2 uses
  %i.e = and i32 %2, 7
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.f = phi i32 [ %i.a, %.lr.ph.i ], [ %i.bf, %.loopexit.i ] ; 8 uses
  %.01127.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %.loopexit.i ]
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 3 uses
  %i.i = tail call fastcc i32 @stbtt__isfont(ptr noundef readonly %i.h)
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.val.i49.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !11
  %.phi.trans.insert69.i.i = getelementptr i8, ptr %i.h, i64 5
  %.val25.i50.pre.i.i = load i8, ptr %.phi.trans.insert69.i.i, align 1, !tbaa !11
  %.pre.i.i = zext i8 %.val.i49.pre.i.i to i32
  %.pre71.i.i = shl nuw nsw i32 %.pre.i.i, 8
  %.pre73.i.i = zext i8 %.val25.i50.pre.i.i to i32
  %.pre75.i.i = or disjoint i32 %.pre71.i.i, %.pre73.i.i ; 3 uses
  %.pre77.i.i = add nuw i32 %i.f, 12              ; 2 uses
  %.not.i51.i.old.i = icmp eq i32 %.pre75.i.i, 0  ; 2 uses
  br i1 %.not39.i.i, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i51.i.old.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %wide.trip.count.i.i.i = zext nneg i32 %.pre75.i.i to i64 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.j ] ; 2 uses
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.j = shl i32 %indvars.iv.tr.i.i.i, 4
  %i.k = add i32 %i.j, %.pre77.i.i
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 5 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = icmp eq i8 %i.n, 104
  br i1 %i.o, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = icmp eq i8 %i.q, 101
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11
  %i.u = icmp eq i8 %i.t, 97
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = icmp eq i8 %i.w, 100
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = zext i32 %i.aa to i64
  br label %stbtt__find_table.exit.i.i

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %stbtt__find_table.exit.i.i, label %bb.e, !llvm.loop !408

stbtt__find_table.exit.i.i:                       ; preds = %bb.j, %bb.i
  %.2.i.i.i = phi i64 [ %i.ab, %bb.i ], [ 0, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.2.i.i.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 45
  %.val48.i.i = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.ae = and i8 %.val48.i.i, 7
  %i.af = zext nneg i8 %i.ae to i32
  %.not40.i.not.i = icmp eq i32 %i.e, %i.af
  br i1 %.not40.i.not.i, label %.lr.ph.i52.i.i, label %.loopexit.i

._crit_edge.i.i:                                  ; preds = %bb.c
  br i1 %.not.i51.i.old.i, label %.loopexit.i, label %._crit_edge.i.i..lr.ph.i52.i.i_crit_edge

._crit_edge.i.i..lr.ph.i52.i.i_crit_edge:         ; preds = %._crit_edge.i.i
  %.pre = zext nneg i32 %.pre75.i.i to i64
  br label %.lr.ph.i52.i.i

.lr.ph.i52.i.i:                                   ; preds = %._crit_edge.i.i..lr.ph.i52.i.i_crit_edge, %stbtt__find_table.exit.i.i
  %wide.trip.count.i53.i.i.pre-phi = phi i64 [ %.pre, %._crit_edge.i.i..lr.ph.i52.i.i_crit_edge ], [ %wide.trip.count.i.i.i, %stbtt__find_table.exit.i.i ]
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i52.i.i
  %indvars.iv.i54.i.i = phi i64 [ 0, %.lr.ph.i52.i.i ], [ %indvars.iv.next.i56.i.i, %bb.o ] ; 2 uses
  %indvars.iv.tr.i55.i.i = trunc i64 %indvars.iv.i54.i.i to i32
  %i.ag = shl i32 %indvars.iv.tr.i55.i.i, 4
  %i.ah = add i32 %i.ag, %.pre77.i.i
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 5 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = icmp eq i8 %i.ak, 110
  br i1 %i.al, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11
  %i.ao = icmp eq i8 %i.an, 97
  br i1 %i.ao, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.ar = icmp eq i8 %i.aq, 109
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = icmp eq i8 %i.at, 101
  br i1 %i.au, label %stbtt__find_table.exit59.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i56.i.i = add nuw nsw i64 %indvars.iv.i54.i.i, 1 ; 2 uses
  %exitcond.not.i57.i.i = icmp eq i64 %indvars.iv.next.i56.i.i, %wide.trip.count.i53.i.i.pre-phi
  br i1 %exitcond.not.i57.i.i, label %.loopexit.i, label %bb.k, !llvm.loop !408

stbtt__find_table.exit59.i.i:                     ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aw = load i32, ptr %i.av, align 1            ; 2 uses
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw) ; 6 uses
  %.not41.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not41.i.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %stbtt__find_table.exit59.i.i
  br i1 %.not39.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 16, i32 noundef -1)
  %.not45.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not45.i.i, label %bb.r, label %stbtt_FindMatchingFont_internal.exit

bb.r:                                             ; preds = %bb.q
  %i.az = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 1, i32 noundef -1)
  %.not46.i.i = icmp eq i32 %i.az, 0
  br i1 %.not46.i.i, label %bb.s, label %stbtt_FindMatchingFont_internal.exit

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 3, i32 noundef -1)
  %.not47.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not47.i.i, label %.loopexit.i, label %stbtt_FindMatchingFont_internal.exit

bb.t:                                             ; preds = %bb.p
  %i.bb = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 16, i32 noundef 17)
  %.not42.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not42.i.i, label %bb.u, label %stbtt_FindMatchingFont_internal.exit

bb.u:                                             ; preds = %bb.t
  %i.bc = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 1, i32 noundef 2)
  %.not43.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not43.i.i, label %bb.v, label %stbtt_FindMatchingFont_internal.exit

bb.v:                                             ; preds = %bb.u
  %i.bd = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 3, i32 noundef -1)
  %.not44.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not44.i.i, label %.loopexit.i, label %stbtt_FindMatchingFont_internal.exit

.loopexit.i:                                      ; preds = %bb.o, %bb.v, %bb.s, %stbtt__find_table.exit59.i.i, %._crit_edge.i.i, %stbtt__find_table.exit.i.i, %bb.d, %bb.b
  %i.be = add nuw nsw i32 %.01127.i, 1            ; 2 uses
  %i.bf = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef readonly %0, i32 noundef %i.be) ; 3 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %stbtt_FindMatchingFont_internal.exit, label %bb.b

stbtt_FindMatchingFont_internal.exit:             ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %.loopexit.i, %bb.a
  %.lcssa26.i = phi i32 [ %i.a, %bb.a ], [ %i.bf, %.loopexit.i ], [ %i.f, %bb.v ], [ %i.f, %bb.u ], [ %i.f, %bb.t ], [ %i.f, %bb.s ], [ %i.f, %bb.r ], [ %i.f, %bb.q ]
  ret i32 %.lcssa26.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt_CompareUTF8toUTF16_bigendian(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call fastcc i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3)
  %i.b = icmp eq i32 %1, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_default_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_default_glyph_ranges.ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_chinese_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_chinese_glyph_ranges.ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_cyrillic_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_cyrillic_glyph_ranges.ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_korean_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_korean_glyph_ranges.ranges
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @nk_font_find_glyph(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !551  ; 2 uses
  %.not38 = icmp eq ptr %i.b, null
  br i1 %.not38, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !558  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.029 = phi i32 [ 0, %bb.c ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.028 = phi ptr [ %i.f, %bb.c ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.028, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !559  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %._crit_edge, label %nk_range_count.exit

nk_range_count.exit:                              ; preds = %bb.d
  %wcslen.i = tail call i64 @wcslen(ptr nonnull readonly %i.h)
  %i.i = shl i64 %wcslen.i, 2
  %i.j = add i64 %i.i, 4
  %i.k = ashr exact i64 %i.j, 2
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %nk_range_count.exit
  %wide.trip.count = and i64 %i.l, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.149 = phi i32 [ %.029, %.lr.ph.preheader ], [ %i.y, %bb.f ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10   ; 2 uses
  %.not40 = icmp ult i32 %1, %i.p
  %.not41 = icmp ugt i32 %1, %i.r
  %or.cond = select i1 %.not40, i1 true, i1 %.not41
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = add i32 %.149, %1
  %i.t = sub i32 %i.s, %i.p
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.u
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.w = add i32 %.149, 1
  %i.x = sub i32 %i.w, %i.p
  %i.y = add i32 %i.x, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !562

._crit_edge:                                      ; preds = %bb.f, %bb.d, %nk_range_count.exit
  %.1.lcssa = phi i32 [ %.029, %nk_range_count.exit ], [ %.029, %bb.d ], [ %i.y, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !563 ; 2 uses
  %.not39 = icmp eq ptr %i.aa, %i.f
  br i1 %.not39, label %.loopexit, label %bb.d, !llvm.loop !564

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.a, %bb.b
  %.3 = phi ptr [ %i.v, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %._crit_edge ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_font_config(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.nk_font_config) align 8 captures(none) initializes((0, 88)) %0, float noundef %1) local_unnamed_addr #4 {
.loopexit46.i.i.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
end_hunk_4
