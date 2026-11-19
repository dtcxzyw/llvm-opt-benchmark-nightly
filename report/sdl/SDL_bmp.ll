Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_bmp?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDL_LoadBMP_IO_REAL:bb.a
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
  %i.o = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  %i.q = xor i32 %2, 1                            ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.04365 = phi i32 [ 0, %.lr.ph ], [ %.5, %bb.v ] ; 3 uses
  %.04564 = phi ptr [ %i.p, %.lr.ph ], [ %.146, %bb.v ] ; 7 uses
  %i.r = load i8, ptr %i.a, align 1
  %.not55 = icmp eq i8 %i.r, 0
  br i1 %.not55, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.s = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #3
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.a, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = lshr i32 %i.u, %i.q
  %i.w = trunc nuw i32 %i.v to i8                 ; 2 uses
  store i8 %i.w, ptr %i.a, align 1
  %i.x = sext i32 %.04365 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.y = phi i8 [ %i.ad, %bb.g ], [ %i.w, %bb.d ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %i.x, %bb.d ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.04564, i64 %indvars.iv ; 3 uses
  %.not = icmp uge ptr %i.z, %i.i
  %i.aa = icmp ult ptr %i.z, %i.l
  %or.cond = select i1 %.not, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.b, align 1
  store i8 %i.ab, ptr %i.z, align 1
  %.pre = load i8, ptr %i.a, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ac = phi i8 [ %i.y, %bb.e ], [ %.pre, %bb.f ]
  %i.ad = add i8 %i.ac, -1                        ; 3 uses
  store i8 %i.ad, ptr %i.a, align 1
  %.not59 = icmp eq i8 %i.ad, 0
  br i1 %.not59, label %bb.h, label %bb.e, !llvm.loop !13

bb.h:                                             ; preds = %bb.g
  %i.ae = trunc nsw i64 %indvars.iv.next to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %bb.v

bb.i:                                             ; preds = %bb.b
  %i.af = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.af, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %i.a, align 1              ; 2 uses
  switch i8 %i.ag, label %bb.o [
    i8 0, label %bb.k
    i8 1, label %.loopexit
    i8 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds i8, ptr %.04564, i64 %i.n
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.ai = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.ai, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.aj = load i8, ptr %i.a, align 1
  %i.ak = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.ak, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.al = zext i8 %i.aj to i32
  %i.am = lshr i32 %i.al, %i.q
  %i.an = add nsw i32 %i.am, %.04365
  %i.ao = load i8, ptr %i.a, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = lshr i32 %i.ap, %i.q
  %i.ar = mul nsw i32 %i.aq, %i.e
  %i.as = sext i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds i8, ptr %.04564, i64 %i.at
  br label %bb.v

bb.o:                                             ; preds = %bb.j
  %i.av = zext i8 %i.ag to i32
  %i.aw = lshr i32 %i.av, %i.q                    ; 2 uses
  %i.ax = trunc nuw i32 %i.aw to i8
  store i8 %i.ax, ptr %i.a, align 1
  %i.ay = and i32 %i.aw, 1
  %3 = sext i32 %.04365 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.s ], [ %3, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.az = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.c) #3
  br i1 %i.az, label %bb.q, label %.critedge62

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.04564, i64 %indvars.iv78 ; 3 uses
  %.not56 = icmp uge ptr %i.ba, %i.i
  %i.bb = icmp ult ptr %i.ba, %i.l
  %or.cond60 = select i1 %.not56, i1 %i.bb, i1 false
  br i1 %or.cond60, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = load i8, ptr %i.c, align 1
  store i8 %i.bc, ptr %i.ba, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  %i.bd = load i8, ptr %i.a, align 1
  %i.be = add i8 %i.bd, -1                        ; 2 uses
  store i8 %i.be, ptr %i.a, align 1
  %.not57 = icmp eq i8 %i.be, 0
  br i1 %.not57, label %bb.t, label %bb.p, !llvm.loop !14

bb.t:                                             ; preds = %bb.s
  %4 = trunc nsw i64 %indvars.iv.next79 to i32    ; 2 uses
  %.not58 = icmp eq i32 %i.ay, 0
  br i1 %.not58, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.bf, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.h, %bb.k, %bb.n, %bb.u, %bb.t
  %.146 = phi ptr [ %.04564, %bb.h ], [ %.04564, %bb.u ], [ %.04564, %bb.t ], [ %i.ah, %bb.k ], [ %i.au, %bb.n ]
  %.5 = phi i32 [ %i.ae, %bb.h ], [ %4, %bb.u ], [ %4, %bb.t ], [ 0, %bb.k ], [ %i.an, %bb.n ]
  %i.bg = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #3
  br i1 %i.bg, label %bb.b, label %.loopexit

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

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre = load i32, ptr %i.f, align 4
  br label %bb.m

bb.i:                                             ; preds = %.critedge
  %i.u = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  %.pre98 = load i32, ptr %i.f, align 4           ; 5 uses
  br i1 %i.v, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not79 = icmp eq i32 %.pre98, 0
  %.mask81 = and i32 %.pre98, -268435456
  %.not80 = icmp eq i32 %.mask81, 268435456
  %or.cond88 = or i1 %.not79, %.not80
  br i1 %or.cond88, label %bb.k, label %.critedge90

bb.k:                                             ; preds = %bb.j
  %i.w = and i32 %.pre98, 65280
  %i.x = icmp eq i32 %i.w, 2048
  br i1 %i.x, label %.thread94.thread, label %bb.l

.thread94.thread:                                 ; preds = %bb.k
  store ptr %1, ptr %i.a, align 8
  br label %FreeBMPSaveState.exit

bb.l:                                             ; preds = %bb.k
  %i.y = lshr i32 %.pre98, 8
  %i.z = and i32 %i.y, 255
  br label %.critedge90

.critedge90:                                      ; preds = %bb.j, %bb.l
  %i.aa = phi i32 [ %i.z, %bb.l ], [ 0, %bb.j ]
  %i.ab = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.15, i32 noundef %i.aa) #3 ; 0 uses
  br label %bb.s

bb.m:                                             ; preds = %.critedge._crit_edge, %bb.i
  %i.ac = phi i32 [ %.pre, %.critedge._crit_edge ], [ %.pre98, %bb.i ]
  %.pre99 = load i8, ptr %i.b, align 8, !range !4
  %i.ad = trunc nuw i8 %.pre99 to i1              ; 3 uses
  switch i32 %i.ac, label %..thread_crit_edge [
    i32 390076419, label %bb.n
    i32 372645892, label %bb.o
  ]

end_hunk_0
