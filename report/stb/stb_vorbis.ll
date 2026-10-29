Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@is_whole_packet_present:bb.a
  %i.q = icmp ugt ptr %.1, %i.p
  br i1 %i.q, label %.critedge.sink.split, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = icmp eq i32 %.056.lcssa, %i.g
  %i.s = icmp eq i32 %.056.lcssa, -1
  %i.t = or i1 %i.s, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.157 = phi i1 [ %i.t, %bb.c ], [ true, %bb.a ]
  %.2 = phi ptr [ %.1, %bb.c ], [ %i.d, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1272
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge90, %bb.d
  %.258 = phi i1 [ %.157, %bb.d ], [ %i.aw, %._crit_edge90 ]
  %.154 = phi i1 [ %.not, %bb.d ], [ true, %._crit_edge90 ]
  %.3 = phi ptr [ %.2, %bb.d ], [ %.5, %._crit_edge90 ] ; 6 uses
  br i1 %.258, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.3, i64 26 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !71   ; 3 uses
  %.not70 = icmp ult ptr %i.w, %i.x
  br i1 %.not70, label %bb.g, label %.critedge.sink.split

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %.3, align 1
  %i.z = load i32, ptr @ogg_page_header, align 1
  %i.aa = icmp ne i32 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  %.not71 = icmp eq i32 %i.ab, 0
  br i1 %.not71, label %bb.h, label %.critedge.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !50
  %.not72 = icmp eq i8 %i.ad, 0
  br i1 %.not72, label %bb.i, label %.critedge.sink.split

bb.i:                                             ; preds = %bb.h
  br i1 %.154, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !132
  %.not75 = icmp eq i32 %i.ae, 0
  br i1 %.not75, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.3, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !50
  %i.ah = and i8 %i.ag, 1
  %.not76 = icmp eq i8 %i.ah, 0
  br i1 %.not76, label %bb.m, label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.3, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !50
  %i.ak = and i8 %i.aj, 1
  %.not74 = icmp eq i8 %i.ak, 0
  br i1 %.not74, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.k
  %i.al = load i8, ptr %i.w, align 1, !tbaa !50   ; 4 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 27 ; 2 uses
  %i.ao = zext i8 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = icmp ugt ptr %i.ap, %i.x
  br i1 %i.aq, label %.critedge.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.m
  %.not96 = icmp eq i8 %i.al, 0
  br i1 %.not96, label %._crit_edge90, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext i8 %i.al to i64
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %bb.n
  %indvars.iv99 = phi i64 [ 0, %.lr.ph89.preheader ], [ %indvars.iv.next100, %bb.n ] ; 3 uses
  %.488 = phi ptr [ %i.ap, %.lr.ph89.preheader ], [ %i.au, %bb.n ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv99
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !50  ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.488, i64 %i.at ; 3 uses
  %.not77 = icmp eq i8 %i.as, -1
  br i1 %.not77, label %bb.n, label %._crit_edge90.loopexit.split.loop.exit

bb.n:                                             ; preds = %.lr.ph89
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond102.not, label %._crit_edge90, label %.lr.ph89, !llvm.loop !307

._crit_edge90.loopexit.split.loop.exit:           ; preds = %.lr.ph89
  %i.av = trunc nuw nsw i64 %indvars.iv99 to i32
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %bb.n, %._crit_edge90.loopexit.split.loop.exit, %.preheader
  %.359.lcssa = phi i32 [ 0, %.preheader ], [ %i.av, %._crit_edge90.loopexit.split.loop.exit ], [ %i.am, %bb.n ]
  %.5 = phi ptr [ %i.ap, %.preheader ], [ %i.au, %._crit_edge90.loopexit.split.loop.exit ], [ %i.au, %bb.n ] ; 2 uses
  %i.aw = icmp eq i32 %.359.lcssa, %i.am
  %i.ax = icmp ugt ptr %.5, %i.x
  br i1 %i.ax, label %.critedge.sink.split, label %bb.e, !llvm.loop !308

.critedge.sink.split:                             ; preds = %._crit_edge90, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %._crit_edge
  %.sink = phi i32 [ 1, %._crit_edge ], [ 1, %bb.f ], [ 21, %bb.g ], [ 21, %bb.h ], [ 21, %bb.l ], [ 1, %bb.m ], [ 21, %bb.k ], [ 1, %._crit_edge90 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.sink, ptr %i.ay, align 4, !tbaa !39
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.sink.split
  %.263 = phi i32 [ 0, %.critedge.sink.split ], [ 1, %bb.e ]
  ret i32 %.263
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @start_decoder(ptr nofree noundef initializes((1765, 1766)) %0) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [6 x i8], align 4                 ; 20 uses
  %1 = alloca [250 x %struct.stbv__floor_ordering], align 16 ; 16 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1765
  store i8 1, ptr %i.c, align 1, !tbaa !77
  %i.d = tail call i32 @capture_pattern(ptr noundef %0)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %start_page.exit.thread, label %start_page.exit

start_page.exit.thread:                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 30, ptr %i.e, align 4, !tbaa !39
  br label %.critedge

start_page.exit:                                  ; preds = %bb.a
  %i.f = tail call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %start_page.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1763
  %i.h = load i8, ptr %i.g, align 1, !tbaa !78
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = and i32 %i.i, 2
  %.not1077 = icmp eq i32 %i.j, 0
  br i1 %.not1077, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.k, align 4, !tbaa !39
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.l = and i32 %i.i, 4
  %.not1078 = icmp eq i32 %i.l, 0
  br i1 %.not1078, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.m, align 4, !tbaa !39
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 1
  %.not1079 = icmp eq i32 %i.n, 0
  br i1 %.not1079, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.o, align 4, !tbaa !39
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.q = load i32, ptr %i.p, align 8, !tbaa !79
  %.not1080 = icmp eq i32 %i.q, 1
  br i1 %.not1080, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.r, align 4, !tbaa !39
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1508
  %i.t = load i8, ptr %i.s, align 4, !tbaa !50
  switch i8 %i.t, label %bb.o [
    i8 30, label %bb.p
    i8 64, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = call i32 @getn(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 6)
  %i.v = icmp ne i32 %i.u, 0
  %i.w = load <4 x i8>, ptr %i.a, align 4
  %.fr1951 = freeze <4 x i8> %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = load i8, ptr %i.x, align 4
  %i.z = icmp eq i8 %i.y, 101
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 97
  %.fr1951.scalar = bitcast <4 x i8> %.fr1951 to i32
  %i.ad = icmp eq i32 %.fr1951.scalar, 1752394086
  %op.rdx = select i1 %i.ad, i1 %i.v, i1 false
  %i.ae = select i1 %op.rdx, i1 %i.z, i1 false
  %op.rdx1950 = select i1 %i.ae, i1 %i.ac, i1 false
  br i1 %op.rdx1950, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.af = tail call zeroext i8 @get8(ptr noundef nonnull %0)
  %i.ag = icmp eq i8 %i.af, 100
  br i1 %i.ag, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call zeroext i8 @get8(ptr noundef nonnull %0)
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 38, ptr %i.aj, align 4, !tbaa !39
  br label %.critedge

bb.o:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.ak, align 4, !tbaa !39
  br label %.critedge

bb.p:                                             ; preds = %bb.j
  %i.al = tail call zeroext i8 @get8(ptr noundef nonnull %0)
  %.not1082 = icmp eq i8 %i.al, 1
  br i1 %.not1082, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.am, align 4, !tbaa !39
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.an = call i32 @getn(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 6)
  %.not1083 = icmp eq i32 %i.an, 0
  br i1 %.not1083, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 10, ptr %i.ao, align 4, !tbaa !39
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ap = load i32, ptr %i.a, align 4
  %i.aq = xor i32 %i.ap, 1651666806
  %i.ar = getelementptr i8, ptr %i.a, i64 4
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = zext i16 %i.as to i32
  %i.au = xor i32 %i.at, 29545
  %i.av = or i32 %i.aq, %i.au
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %.not1246 = icmp eq i32 %i.ax, 0
  br i1 %.not1246, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.ay, align 4, !tbaa !39
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.az = tail call i32 @get32(ptr noundef nonnull %0)
  %.not1085 = icmp eq i32 %i.az, 0
  br i1 %.not1085, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.ba, align 4, !tbaa !39
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.bb = tail call zeroext i8 @get8(ptr noundef nonnull %0) ; 3 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !102
  %.not1086 = icmp eq i8 %i.bb, 0
  br i1 %.not1086, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.be, align 4, !tbaa !39
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.bf = icmp ugt i8 %i.bb, 16
  br i1 %i.bf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 5, ptr %i.bg, align 4, !tbaa !39
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.bh = tail call i32 @get32(ptr noundef nonnull %0) ; 2 uses
  store i32 %i.bh, ptr %0, align 8, !tbaa !134
  %.not1087 = icmp eq i32 %i.bh, 0
  br i1 %.not1087, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.bi, align 4, !tbaa !39
  br label %.critedge

bb.ad:                                            ; preds = %bb.ab
  %i.bj = tail call i32 @get32(ptr noundef nonnull %0) ; 0 uses
  %i.bk = tail call i32 @get32(ptr noundef nonnull %0) ; 0 uses
  %i.bl = tail call i32 @get32(ptr noundef nonnull %0) ; 0 uses
  %i.bm = tail call zeroext i8 @get8(ptr noundef nonnull %0) ; 2 uses
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = and i32 %i.bn, 15                       ; 3 uses
  %i.bp = lshr i32 %i.bn, 4                       ; 2 uses
  %i.bq = shl nuw nsw i32 1, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !107
  %i.bs = shl nuw nsw i32 1, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 6 uses
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !108
  %i.bu = add nsw i32 %i.bo, -14
  %or.cond42 = icmp ult i32 %i.bu, -8
  br i1 %or.cond42, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.bv, align 4, !tbaa !39
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  %i.bw = add i8 %i.bm, 32
  %or.cond44 = icmp sgt i8 %i.bw, -1
  br i1 %or.cond44, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.bx, align 4, !tbaa !39
  br label %.critedge

bb.ah:                                            ; preds = %bb.af
  %i.by = icmp samesign ugt i32 %i.bo, %i.bp
  br i1 %i.by, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.bz, align 4, !tbaa !39
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah
  %i.ca = tail call zeroext i8 @get8(ptr noundef nonnull %0)
  %i.cb = and i8 %i.ca, 1
  %.not1088 = icmp eq i8 %i.cb, 0
  br i1 %.not1088, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 34, ptr %i.cc, align 4, !tbaa !39
  br label %.critedge

bb.al:                                            ; preds = %bb.aj
  %i.cd = tail call i32 @start_page(ptr noundef nonnull %0)
  %.not1089 = icmp eq i32 %i.cd, 0
  br i1 %.not1089, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = tail call i32 @start_packet(ptr noundef nonnull %0)
  %.not1090 = icmp eq i32 %i.ce, 0
  br i1 %.not1090, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cf = tail call i32 @next_segment(ptr noundef nonnull %0)
  %.not1091 = icmp eq i32 %i.cf, 0
  br i1 %.not1091, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cg = tail call range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 17 uses
  store i32 0, ptr %i.ch, align 8, !tbaa !84
  %.not1092 = icmp eq i32 %i.cg, 3
  br i1 %.not1092, label %.preheader1272.preheader, label %bb.ap

.preheader1272.preheader:                         ; preds = %bb.ao
  %i.ci = tail call range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  store i32 0, ptr %i.ch, align 8, !tbaa !84
  %i.cj = trunc i32 %i.ci to i8
  store i8 %i.cj, ptr %i.a, align 4, !tbaa !50
  %i.ck = tail call range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  store i32 0, ptr %i.ch, align 8, !tbaa !84
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !50
  %i.cn = tail call range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  store i32 0, ptr %i.ch, align 8, !tbaa !84
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.co, ptr %i.cp, align 2, !tbaa !50
  %i.cq = tail call range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
  store i32 0, ptr %i.ch, align 8, !tbaa !84
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !50
  %i.ct = tail call range(i32 -1, 256) i32 @get8_packet_raw(ptr noundef nonnull %0)
end_hunk_0
