Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_bmp?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDL_LoadBMP_IO_REAL:bb.a
  %i.gv = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %i.gv, label %.lr.ph234, label %._crit_edge

.lr.ph234:                                        ; preds = %bb.cc
  %i.gw = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.gx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.not181 = icmp eq i32 %spec.select, 0
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph234, %bb.ck
  %i.gy = phi i32 [ %i.gk, %.lr.ph234 ], [ %i.hq, %bb.ck ]
  %.1145233 = phi ptr [ %.0144, %.lr.ph234 ], [ %.2146, %bb.ck ] ; 3 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = call i64 @SDL_ReadIO_REAL(ptr noundef nonnull %0, ptr noundef %.1145233, i64 noundef %i.gz) #3
  %i.hb = load i32, ptr %i.gj, align 8
  %i.hc = sext i32 %i.hb to i64
  %.not179 = icmp eq i64 %i.ha, %i.hc
  br i1 %.not179, label %bb.ce, label %.thread207

bb.ce:                                            ; preds = %bb.cd
  %i.hd = load i16, ptr %i.j, align 2
  %i.he = icmp eq i16 %i.hd, 8
  br i1 %i.he, label %bb.cf, label %.loopexit

bb.cf:                                            ; preds = %bb.ce
  %i.hf = load ptr, ptr %i.gw, align 8
  %.not180 = icmp ne ptr %i.hf, null
  %i.hg = load i32, ptr %i.l, align 4             ; 2 uses
  %i.hh = icmp ult i32 %i.hg, 256
  %or.cond187 = select i1 %.not180, i1 %i.hh, i1 false
  br i1 %or.cond187, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.cf
  %i.hi = load i32, ptr %i.gx, align 8            ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph230.preheader, label %.loopexit

.lr.ph230.preheader:                              ; preds = %.preheader
  %i.hk = trunc nuw i32 %i.hg to i8
  %wide.trip.count = zext nneg i32 %i.hi to i64
  br label %.lr.ph230

bb.cg:                                            ; preds = %.lr.ph230
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph230, !llvm.loop !8

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %bb.cg
  %indvars.iv243 = phi i64 [ 0, %.lr.ph230.preheader ], [ %indvars.iv.next244, %bb.cg ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.1145233, i64 %indvars.iv243
  %i.hm = load i8, ptr %i.hl, align 1
  %.not182 = icmp ult i8 %i.hm, %i.hk
  br i1 %.not182, label %bb.cg, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph230
  %i.hn = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10) #3 ; 0 uses
  br label %.thread207

.loopexit:                                        ; preds = %bb.cg, %.preheader, %bb.cf, %bb.ce
  br i1 %.not181, label %bb.ck, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #3
  br label %.lr.ph232

bb.ci:                                            ; preds = %.lr.ph232
  %i.ho = add nuw nsw i32 %.3152231, 1            ; 2 uses
  %exitcond246.not = icmp eq i32 %i.ho, %spec.select
  br i1 %exitcond246.not, label %.thread199, label %.lr.ph232, !llvm.loop !9

.thread199:                                       ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #3
  br label %bb.ck

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %bb.ci
  %.3152231 = phi i32 [ %i.ho, %bb.ci ], [ 0, %.lr.ph232.preheader ]
  %i.hp = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.o) #3
  br i1 %i.hp, label %bb.ci, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #3
  br label %.thread207

bb.ck:                                            ; preds = %.thread199, %.loopexit
  %i.hq = load i32, ptr %i.gj, align 8            ; 3 uses
  %i.hr = sext i32 %i.hq to i64                   ; 2 uses
  %i.hs = sub nsw i64 0, %i.hr
  %.pn = select i1 %i.ck, i64 %i.hr, i64 %i.hs
  %.2146 = getelementptr inbounds i8, ptr %.1145233, i64 %.pn ; 3 uses
  %i.ht = icmp uge ptr %.2146, %i.gg
  %i.hu = icmp ult ptr %.2146, %i.gn
  %i.hv = select i1 %i.ht, i1 %i.hu, i1 false
  br i1 %i.hv, label %bb.cd, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.ck, %bb.cc
  %i.hw = phi i32 [ %i.gk, %bb.cc ], [ %i.hq, %bb.ck ]
  br i1 %.0142, label %bb.cl, label %CorrectAlphaChannel.exit

bb.cl:                                            ; preds = %._crit_edge
  %i.hx = load ptr, ptr %i.gf, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 3 ; 3 uses
  %i.hz = load i32, ptr %i.gh, align 4
  %i.ia = mul nsw i32 %i.hw, %i.hz                ; 2 uses
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds i8, ptr %i.hy, i64 %i.ib ; 2 uses
  %i.id = icmp sgt i32 %i.ia, 0
  br i1 %i.id, label %.lr.ph.i, label %CorrectAlphaChannel.exit

bb.cm:                                            ; preds = %.lr.ph.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.017.i, i64 4 ; 2 uses
  %i.if = icmp ult ptr %i.ie, %i.ic
  br i1 %i.if, label %.lr.ph.i, label %.critedge.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %bb.cl, %bb.cm
  %.017.i = phi ptr [ %i.ie, %bb.cm ], [ %i.hy, %bb.cl ] ; 2 uses
  %i.ig = load i8, ptr %.017.i, align 1
  %.not.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i, label %bb.cm, label %CorrectAlphaChannel.exit

.critedge.i:                                      ; preds = %bb.cm, %.critedge.i
  %.118.i = phi ptr [ %i.ih, %.critedge.i ], [ %i.hy, %bb.cm ] ; 2 uses
  store i8 -1, ptr %.118.i, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.118.i, i64 4 ; 2 uses
  %i.ii = icmp ult ptr %i.ih, %i.ic
  br i1 %i.ii, label %.critedge.i, label %CorrectAlphaChannel.exit, !llvm.loop !12

.thread207:                                       ; preds = %bb.bt, %bb.bw, %bb.bv, %bb.bu, %bb.bp, %bb.br, %bb.bq, %bb.cd, %bb.cj, %bb.ch, %bb.by, %bb.bg, %bb.bi, %bb.bn, %bb.be, %bb.ap, %bb.al, %bb.am, %bb.af, %bb.ag, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ai, %bb.ak, %bb.s, %bb.ae, %bb.ao, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %.thread, %bb.aw, %bb.bb, %bb.cb, %bb.au, %bb.ar, %bb.b
  %.0147.ph212 = phi ptr [ %i.da, %bb.bg ], [ null, %bb.b ], [ null, %bb.ar ], [ null, %bb.au ], [ %i.da, %bb.cb ], [ null, %bb.bb ], [ null, %bb.aw ], [ null, %.thread ], [ null, %bb.e ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.ao ], [ null, %bb.ae ], [ null, %bb.s ], [ null, %bb.ak ], [ null, %bb.ai ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.am ], [ null, %bb.al ], [ null, %bb.ap ], [ %i.da, %bb.be ], [ %i.da, %bb.bn ], [ %i.da, %bb.bi ], [ %i.da, %bb.cd ], [ %i.da, %bb.bp ], [ %i.da, %bb.by ], [ %i.da, %bb.cj ], [ %i.da, %bb.ch ], [ %i.da, %bb.bq ], [ %i.da, %bb.br ], [ %i.da, %bb.bu ], [ %i.da, %bb.bv ], [ %i.da, %bb.bw ], [ %i.da, %bb.bt ]
  %i.ij = call i64 @SDL_SeekIO_REAL(ptr noundef nonnull %0, i64 noundef %i.r, i32 noundef 0) #3 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %.thread213, %.thread207
  %.0147.ph211 = phi ptr [ %.0147.ph212, %.thread207 ], [ null, %.thread213 ]
  call void @SDL_DestroySurface_REAL(ptr noundef %.0147.ph211) #3
  br label %CorrectAlphaChannel.exit

CorrectAlphaChannel.exit:                         ; preds = %.lr.ph.i, %.critedge.i, %bb.ca, %._crit_edge, %bb.cl, %bb.cn
  %.1148 = phi ptr [ null, %bb.cn ], [ %i.da, %._crit_edge ], [ %i.da, %bb.cl ], [ %i.da, %.critedge.i ], [ %i.da, %bb.ca ], [ %i.da, %.lr.ph.i ]
  %or.cond5 = and i1 %1, %i.p
  br i1 %or.cond5, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %CorrectAlphaChannel.exit
  %i.ik = call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %0) #3 ; 0 uses
  br label %bb.cp

bb.cp:                                            ; preds = %CorrectAlphaChannel.exit, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  ret ptr %.1148
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @SDL_ClearError_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_ReadU16LE_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_ReadU32LE_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_ReadS32LE_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SDL_strcmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetError_REAL() local_unnamed_addr #2

declare i32 @SDL_GetPixelFormatForMasks_REAL(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SDL_CreateSurface_REAL(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SDL_CreateSurfacePalette_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_ReadU8_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @readRlePixels(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 19 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = mul nsw i32 %i.g, %i.e
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k ; 3 uses
  %i.m = sext i32 %i.e to i64
  %i.n = sub nsw i64 0, %i.m                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %3 = sub nuw nsw i32 2, %2                      ; 4 uses
  %i.o = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.o, label %.lr.ph.a, label %.loopexit

.lr.ph.a:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.a, %bb.v
  %.04365 = phi i32 [ %.5, %bb.v ], [ 0, %.lr.ph.a ] ; 3 uses
  %.04564 = phi ptr [ %.146, %bb.v ], [ %i.p, %.lr.ph.a ] ; 7 uses
  %i.q = load i8, ptr %i.a, align 1
  %.not55.a = icmp eq i8 %i.q, 0
  br i1 %.not55.a, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.r = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #3
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.a, align 1
  %i.t = zext i8 %i.s to i32
  %4 = udiv i32 %i.t, %3
  %i.u = trunc nuw i32 %4 to i8                   ; 2 uses
  store i8 %i.u, ptr %i.a, align 1
  %i.v = sext i32 %.04365 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.w = phi i8 [ %i.ab, %bb.g ], [ %i.u, %bb.d ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %i.v, %bb.d ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.04564, i64 %indvars.iv ; 3 uses
  %.not = icmp uge ptr %i.x, %i.i
  %i.y = icmp ult ptr %i.x, %i.l
  %or.cond = select i1 %.not, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %i.b, align 1
  store i8 %i.z, ptr %i.x, align 1
  %.pre = load i8, ptr %i.a, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = phi i8 [ %i.w, %bb.e ], [ %.pre, %bb.f ]
  %i.ab = add i8 %i.aa, -1                        ; 3 uses
  store i8 %i.ab, ptr %i.a, align 1
  %.not59 = icmp eq i8 %i.ab, 0
  br i1 %.not59, label %bb.h, label %bb.e, !llvm.loop !13

bb.h:                                             ; preds = %bb.g
  %i.ac = trunc nsw i64 %indvars.iv.next to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %bb.v

bb.i:                                             ; preds = %bb.b
  %i.ad = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.ad, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ae = load i8, ptr %i.a, align 1              ; 2 uses
  switch i8 %i.ae, label %bb.o [
    i8 0, label %bb.k
    i8 1, label %.loopexit
    i8 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds i8, ptr %.04564, i64 %i.n
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.ag = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.ag, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr %i.a, align 1
  %i.ai = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.ai, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.aj = zext i8 %i.ah to i32
  %5 = udiv i32 %i.aj, %3
  %i.ak = add nsw i32 %5, %.04365
  %i.al = load i8, ptr %i.a, align 1
  %i.am = zext i8 %i.al to i32
  %6 = udiv i32 %i.am, %3
  %i.an = mul nsw i32 %6, %i.e
  %i.ao = sext i32 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %.04564, i64 %i.ap
  br label %bb.v

bb.o:                                             ; preds = %bb.j
  %i.ar = zext i8 %i.ae to i32
  %7 = udiv i32 %i.ar, %3                         ; 2 uses
  %i.as = trunc nuw i32 %7 to i8
  store i8 %i.as, ptr %i.a, align 1
  %i.at = and i32 %7, 1
  %i.au = sext i32 %.04365 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.s ], [ %i.au, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.av = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.c) #3
  br i1 %i.av, label %bb.q, label %.critedge62

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.04564, i64 %indvars.iv78 ; 3 uses
  %.not56.a = icmp uge ptr %i.aw, %i.i
  %i.ax = icmp ult ptr %i.aw, %i.l
  %or.cond60 = select i1 %.not56.a, i1 %i.ax, i1 false
  br i1 %or.cond60, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = load i8, ptr %i.c, align 1
  store i8 %i.ay, ptr %i.aw, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  %i.az = load i8, ptr %i.a, align 1
  %i.ba = add i8 %i.az, -1                        ; 2 uses
  store i8 %i.ba, ptr %i.a, align 1
  %.not57.a = icmp eq i8 %i.ba, 0
  br i1 %.not57.a, label %bb.t, label %bb.p, !llvm.loop !14

bb.t:                                             ; preds = %bb.s
  %i.bb = trunc nsw i64 %indvars.iv.next79 to i32 ; 2 uses
  %.not58 = icmp eq i32 %i.at, 0
  br i1 %.not58, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.bc, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.h, %bb.k, %bb.n, %bb.u, %bb.t
  %.146 = phi ptr [ %.04564, %bb.h ], [ %.04564, %bb.u ], [ %.04564, %bb.t ], [ %i.af, %bb.k ], [ %i.aq, %bb.n ]
  %.5 = phi i32 [ %i.ac, %bb.h ], [ %i.bb, %bb.u ], [ %i.bb, %bb.t ], [ 0, %bb.k ], [ %i.ak, %bb.n ]
  %i.bd = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.bd, label %bb.b, label %.loopexit

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %.loopexit

.critedge62:                                      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.i, %bb.j, %bb.l, %bb.m, %bb.u, %bb.a, %.critedge62, %.critedge
  %.552 = phi i1 [ false, %.critedge ], [ false, %.critedge62 ], [ false, %bb.a ], [ false, %bb.i ], [ true, %bb.j ], [ false, %bb.v ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %.552
}

declare void @SDL_DestroySurface_REAL(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_CloseIO_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_LoadBMP_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_IOFromFile_REAL(ptr noundef %0, ptr noundef nonnull @.str.11) #3 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @SDL_LoadBMP_IO_REAL(ptr noundef nonnull %i.a, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @SDL_IOFromFile_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SaveBMP_IO_REAL(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.BMPSaveState, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.a = call fastcc zeroext i1 @InitBMPSaveState(ptr noundef %3, ptr noundef %0)
  br i1 %i.a, label %bb.b, label %FreeBMPSaveState.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = call fastcc zeroext i1 @SDL_SaveBMP_IO_Internal(ptr noundef %3, ptr noundef %1, i1 noundef zeroext %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.in = phi i1 [ %i.c, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %3, align 8
  %.not4.i = icmp eq ptr %i.e, %i.f
  %or.cond = select i1 %.not.i, i1 true, i1 %.not4.i
  br i1 %or.cond, label %FreeBMPSaveState.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @SDL_DestroySurface_REAL(ptr noundef nonnull %i.e) #3
  br label %FreeBMPSaveState.exit

FreeBMPSaveState.exit:                            ; preds = %bb.f, %bb.e, %bb.a
  %.05 = phi i1 [ false, %bb.a ], [ %.0.in, %bb.e ], [ %.0.in, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  ret i1 %.05
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @InitBMPSaveState(ptr nofree noundef nonnull captures(none) initializes((0, 18)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  store i8 0, ptr %i.c, align 1
  %i.d = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %1) #3
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #3
  br label %FreeBMPSaveState.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %.mask = and i32 %i.g, -268435456
  %.not70 = icmp eq i32 %.mask, 268435456
  %i.h = and i32 %i.g, 63488
  %i.i = icmp ne i32 %i.h, 0
  %or.cond97 = and i1 %.not70, %i.i
  br i1 %or.cond97, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i32 %i.g, 24
  %i.k = and i32 %i.j, 15                         ; 2 uses
  %.off = add nsw i32 %i.k, -4
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = lshr i32 %i.g, 20
  %i.m = and i32 %i.l, 15
  switch i32 %i.m, label %.thread101 [
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 7, label %bb.h
    i32 8, label %bb.h
  ]

bb.f:                                             ; preds = %bb.d
  %.off92 = add nsw i32 %i.k, -7
  %switch93 = icmp ult i32 %.off92, 5
  br i1 %switch93, label %bb.g, label %.thread101

bb.g:                                             ; preds = %bb.f
  %i.n = lshr i32 %i.g, 20
  %i.o = and i32 %i.n, 15
  switch i32 %i.o, label %.thread101 [
    i32 3, label %bb.h
    i32 2, label %bb.h
    i32 6, label %bb.h
    i32 5, label %bb.h
  ]

.thread101:                                       ; preds = %bb.e, %bb.f, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 1024
  %.not77 = icmp eq i32 %i.r, 0
  br i1 %.not77, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.e, %bb.e, %bb.e, %bb.e, %.thread101
  store i8 1, ptr %i.b, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.h, %.thread101
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %.not78 = icmp eq ptr %i.t, null
  br i1 %.not78, label %.critedge._crit_edge, label %bb.i

end_hunk_0
