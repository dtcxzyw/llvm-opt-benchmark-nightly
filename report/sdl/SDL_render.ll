Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render?download=true
inline.NumInlined: 131
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_RenderPoints_REAL:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = tail call fastcc zeroext i1 @RenderPointsWithRects(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.t = tail call fastcc zeroext i1 @QueueCmdDrawPoints(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.e, %bb.c, %SDL_ObjectValid.exit.thread18
  %.014 = phi i1 [ false, %bb.c ], [ false, %SDL_ObjectValid.exit.thread18 ], [ true, %bb.f ], [ %i.i, %bb.e ], [ %i.s, %bb.i ], [ %i.t, %bb.j ]
  ret i1 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @RenderPointsWithRects(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  %i.c = shl nuw nsw i64 %i.b, 4                  ; 2 uses
  %i.d = icmp samesign ult i32 %2, 8              ; 2 uses
  br i1 %i.d, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.e = alloca i8, i64 %i.c, align 16
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.c) #14 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %.thread
  %i.g = phi ptr [ %i.e, %.thread ], [ %i.f, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load <2 x float>, ptr %i.j, align 4      ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat43 = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.l = shufflevector <4 x float> %broadcast.splat, <4 x float> %broadcast.splat43, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.vec = load <8 x float>, ptr %i.m, align 4 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.n = fmul <4 x float> %broadcast.splat, %strided.vec
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %index
  %i.p = fmul <4 x float> %broadcast.splat43, %strided.vec44
  %i.q = shufflevector <4 x float> %i.n, <4 x float> %i.p, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.q, <8 x float> %i.l, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.o, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader45 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.u = load <2 x float>, ptr %i.s, align 4
  %i.v = fmul <2 x float> %i.k, %i.u
  store <2 x float> %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store <2 x float> %i.k, ptr %i.w, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.x = call fastcc zeroext i1 @QueueCmdFillRects(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef %2) ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @SDL_free_REAL(ptr noundef nonnull %i.g) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.c, %bb.a
  %.034 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ %i.x, %._crit_edge ], [ %i.x, %bb.d ]
  ret i1 %.034
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @QueueCmdDrawPoints(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 5, ptr noundef null) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 %i.c(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef %2) #14
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0.shrunk = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.0.shrunk
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderLine_REAL(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [2 x %struct.SDL_FPoint], align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store float %1, ptr %5, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %4, ptr %i.c, align 4
  %i.d = call zeroext i1 @SDL_RenderLines_REAL(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderLines_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread316, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread316

SDL_ObjectValid.exit.thread316:                   ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.aq

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.aq

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79) #14
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %2, 2
  br i1 %i.j, label %bb.aq, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.n = load i32, ptr %i.m, align 4
  %.not313 = icmp eq i32 %i.n, 0
  br i1 %.not313, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.p = load i32, ptr %i.o, align 8
  switch i32 %i.p, label %bb.am [
    i32 2, label %bb.i
    i32 0, label %bb.al
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 6 uses
  %i.s = shl nsw i32 %2, 3                        ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.v = icmp samesign ult i32 %i.s, 32           ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = alloca i8, i64 %i.u, align 16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.u) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = phi ptr [ %i.w, %bb.j ], [ %i.x, %bb.k ] ; 9 uses
  %i.z = add nsw i32 %2, -1                       ; 2 uses
  %i.aa = mul nsw i32 %i.z, 12
  %i.ab = mul nuw nsw i32 %2, 6
  %i.ac = add nuw nsw i32 %i.aa, %i.ab            ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  %i.af = icmp samesign ult i32 %i.ac, 32         ; 2 uses
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = alloca i8, i64 %i.ae, align 16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ah = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ae) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = phi ptr [ %i.ag, %bb.m ], [ %i.ah, %bb.n ] ; 11 uses
  %i.aj = icmp ne ptr %i.y, null
  %i.ak = icmp ne ptr %i.ai, null
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.p, label %QueueCmdGeometry.exit

bb.p:                                             ; preds = %bb.o
  %i.al = shl nsw i32 %2, 2
  %i.am = load float, ptr %1, align 4
  %i.an = zext nneg i32 %i.z to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp oeq float %i.am, %i.ap
  br i1 %i.aq, label %bb.q, label %.lr.ph.preheader

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load float, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.au = load float, ptr %i.at, align 4
  %i.av = fcmp oeq float %i.as, %i.au
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p, %bb.q
  %i.aw = phi i1 [ false, %bb.p ], [ %i.av, %bb.q ]
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.ax = extractelement <2 x float> %i.r, i64 0  ; 2 uses
  %i.ay = extractelement <2 x float> %i.r, i64 1  ; 2 uses
  %.sroa.0.0.copyload.peel = load float, ptr %1, align 4
  %.sroa.15.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.15.0.copyload.peel = load float, ptr %.sroa.15.0..sroa_idx.peel, align 4
  %i.az = fmul float %i.ax, %.sroa.0.0.copyload.peel ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store float %i.az, ptr %i.y, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.bc = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %.sroa.15.0.copyload.peel, i64 1 ; 2 uses
  %i.be = fmul <2 x float> %i.r, %i.bd            ; 2 uses
  %i.bf = fadd <2 x float> %i.r, %i.bd
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  store <4 x float> %i.bg, ptr %i.ba, align 4
  %i.bh = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.bi = fadd float %i.ay, %i.bh                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store float %i.bi, ptr %i.bb, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  store float %i.az, ptr %i.bj, align 4
  store float %i.bi, ptr %i.bk, align 4
  br i1 %i.aw, label %.lr.ph.preheader.peel.newph, label %bb.r

bb.r:                                             ; preds = %.lr.ph.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.ai, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 1, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 2, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 0, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 2, ptr %i.bo, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 3, ptr %i.bp, align 4
  br label %.lr.ph.preheader.peel.newph

.lr.ph.preheader.peel.newph:                      ; preds = %.lr.ph.preheader, %bb.r
  %.3296.peel = phi ptr [ %i.bq, %bb.r ], [ %i.ai, %.lr.ph.preheader ]
  %.3.peel = phi i32 [ 6, %bb.r ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.peel.newph, %.thread
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.peel.newph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.sroa.025.0326 = phi float [ %i.az, %.lr.ph.preheader.peel.newph ], [ %i.bs, %.thread ] ; 3 uses
  %.sroa.9.0325 = phi float [ %i.bh, %.lr.ph.preheader.peel.newph ], [ %i.ca, %.thread ] ; 2 uses
  %.0324 = phi i32 [ 0, %.lr.ph.preheader.peel.newph ], [ %.pre, %.thread ] ; 29 uses
  %.0291323 = phi i32 [ %.3.peel, %.lr.ph.preheader.peel.newph ], [ %.3, %.thread ] ; 7 uses
  %.0293322 = phi ptr [ %.3296.peel, %.lr.ph.preheader.peel.newph ], [ %.3296, %.thread ] ; 63 uses
  %.pn = phi ptr [ %i.y, %.lr.ph.preheader.peel.newph ], [ %.0297321, %.thread ] ; 5 uses
  %.0297321 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load float, ptr %i.br, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 4
  %i.bs = fmul float %i.ax, %.sroa.0.0.copyload   ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn, i64 36
  store float %i.bs, ptr %.0297321, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn, i64 52
  %i.bv = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %.sroa.15.0.copyload, i64 1 ; 2 uses
  %i.bx = fmul <2 x float> %i.r, %i.bw            ; 2 uses
  %i.by = fadd <2 x float> %i.r, %i.bw
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  store <4 x float> %i.bz, ptr %i.bt, align 4
  %i.ca = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.cb = fadd float %i.ay, %i.ca                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.pn, i64 56
  store float %i.cb, ptr %i.bu, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn, i64 60
  store float %i.bs, ptr %i.cc, align 4
  store float %i.cb, ptr %i.cd, align 4
  %.pre = add nuw nsw i32 %.0324, 4               ; 11 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0293322, i64 4
  store i32 %.pre, ptr %.0293322, align 4
  %i.cf = add nuw nsw i32 %.0324, 5               ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0293322, i64 8
  store i32 %i.cf, ptr %i.ce, align 4
  %i.ch = add nuw nsw i32 %.0324, 6               ; 12 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0293322, i64 12
  store i32 %i.ch, ptr %i.cg, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.0293322, i64 16
  store i32 %.pre, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0293322, i64 20
  store i32 %i.ch, ptr %i.cj, align 4
  %i.cl = add nuw nsw i32 %.0324, 7               ; 11 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0293322, i64 24 ; 8 uses
  store i32 %i.cl, ptr %i.ck, align 4
  %i.cn = fcmp oeq float %.sroa.9.0325, %i.ca
  br i1 %i.cn, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph
  %i.co = fcmp olt float %.sroa.025.0326, %i.bs
  %i.cp = getelementptr inbounds nuw i8, ptr %.0293322, i64 36 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0293322, i64 40 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0293322, i64 44 ; 2 uses
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cs = or disjoint i32 %.0324, 1               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0293322, i64 28
  store i32 %i.cs, ptr %i.cm, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.0293322, i64 32
  store i32 %.pre, ptr %i.ct, align 4
  store i32 %i.cl, ptr %i.cu, align 4
  store i32 %i.cs, ptr %i.cp, align 4
  store i32 %i.cl, ptr %i.cq, align 4
  %i.cv = or disjoint i32 %.0324, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %.0293322, i64 48
  store i32 %i.cv, ptr %i.cr, align 4
  %i.cx = add nsw i32 %.0291323, 12
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %.0293322, i64 28
  store i32 %i.cf, ptr %i.cm, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.0293322, i64 32
  store i32 %.0324, ptr %i.cy, align 4
  %i.da = or disjoint i32 %.0324, 3               ; 2 uses
  store i32 %i.da, ptr %i.cz, align 4
  store i32 %i.cf, ptr %i.cp, align 4
  store i32 %i.da, ptr %i.cq, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %.0293322, i64 48
  store i32 %i.ch, ptr %i.cr, align 4
  %i.dc = add nsw i32 %.0291323, 12
  br label %.thread

bb.v:                                             ; preds = %.lr.ph
  %i.dd = fcmp oeq float %.sroa.025.0326, %i.bs
  %i.de = fcmp olt float %.sroa.9.0325, %i.ca     ; 2 uses
  br i1 %i.dd, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %.0293322, i64 32 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0293322, i64 36 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0293322, i64 40 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0293322, i64 44 ; 2 uses
  br i1 %i.de, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = or disjoint i32 %.0324, 2               ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0293322, i64 28
  store i32 %i.dj, ptr %i.cm, align 4
  store i32 %i.cf, ptr %i.dk, align 4
  store i32 %.pre, ptr %i.df, align 4
  store i32 %i.dj, ptr %i.dg, align 4
  store i32 %.pre, ptr %i.dh, align 4
  %i.dl = or disjoint i32 %.0324, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %.0293322, i64 48
  store i32 %i.dl, ptr %i.di, align 4
  %i.dn = add nsw i32 %.0291323, 12
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %.0293322, i64 28
  store i32 %i.ch, ptr %i.cm, align 4
  %i.dp = or disjoint i32 %.0324, 1
  store i32 %i.dp, ptr %i.do, align 4
  store i32 %.0324, ptr %i.df, align 4
  store i32 %i.ch, ptr %i.dg, align 4
  store i32 %.0324, ptr %i.dh, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.0293322, i64 48
  store i32 %i.cl, ptr %i.di, align 4
  %i.dr = add nsw i32 %.0291323, 12
  br label %.thread

bb.z:                                             ; preds = %bb.v
  %i.ds = fcmp olt float %.sroa.025.0326, %i.bs   ; 2 uses
  br i1 %i.de, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  br i1 %i.ds, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dt = or disjoint i32 %.0324, 1               ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0293322, i64 28
  store i32 %i.dt, ptr %i.cm, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.0293322, i64 32
  store i32 %i.cf, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.0293322, i64 36
end_hunk_0
