Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audiocvt?download=true
inline.NumInlined: 31
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@ConvertAudio:bb.a
.lr.ph.preheader223:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader223, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader223 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader223 ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv.prol
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = fmul float %10, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.prol
  store float %i.aj, ptr %i.ak, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !9

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader223
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader223 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.q
  br i1 %i.y, label %.lr.ph173.preheader, label %.loopexit

.lr.ph173.preheader:                              ; preds = %.preheader
  %wide.trip.count179 = zext nneg i32 %i.w to i64 ; 3 uses
  %min.iters.check208 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check208, label %.lr.ph173.preheader222, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph173.preheader
  %n.vec210 = and i64 %wide.trip.count179, 2147483640 ; 3 uses
  %broadcast.splatinsert211 = insertelement <4 x float> poison, float %10, i64 0
  %broadcast.splat212 = shufflevector <4 x float> %broadcast.splatinsert211, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph209
  %index214 = phi i64 [ 0, %vector.ph209 ], [ %index.next217, %vector.body213 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index214 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %i.an, align 4
  %wide.load216 = load <4 x float>, ptr %i.ao, align 4
  %i.ap = fmul <4 x float> %broadcast.splat212, %wide.load215
  %i.aq = fmul <4 x float> %broadcast.splat212, %wide.load216
  store <4 x float> %i.ap, ptr %i.an, align 4
  store <4 x float> %i.aq, ptr %i.ao, align 4
  %index.next217 = add nuw i64 %index214, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next217, %n.vec210
  br i1 %i.ar, label %middle.block218, label %vector.body213, !llvm.loop !11

middle.block218:                                  ; preds = %vector.body213
  %cmp.n219 = icmp eq i64 %n.vec210, %wide.trip.count179
  br i1 %cmp.n219, label %.loopexit, label %.lr.ph173.preheader222

.lr.ph173.preheader222:                           ; preds = %.lr.ph173.preheader, %middle.block218
  %indvars.iv176.ph = phi i64 [ 0, %.lr.ph173.preheader ], [ %n.vec210, %middle.block218 ]
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader222, %.lr.ph173
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %.lr.ph173 ], [ %indvars.iv176.ph, %.lr.ph173.preheader222 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv176 ; 2 uses
  %i.at = load float, ptr %i.as, align 4
  %i.au = fmul float %10, %i.at
  store float %i.au, ptr %i.as, align 4
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %.loopexit, label %.lr.ph173, !llvm.loop !12

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fmul float %10, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store float %i.ax, ptr %i.ay, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv.next
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fmul float %10, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next
  store float %i.bb, ptr %i.bc, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv.next.1
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = fmul float %10, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.1
  store float %i.bf, ptr %i.bg, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv.next.2
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = fmul float %10, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.2
  store float %i.bj, ptr %i.bk, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph173, %middle.block, %middle.block218, %.preheader169, %.preheader, %bb.p
  %.3 = phi ptr [ %.2, %bb.p ], [ %i.u, %.preheader ], [ %i.u, %.preheader169 ], [ %i.u, %middle.block218 ], [ %i.u, %middle.block ], [ %i.u, %.lr.ph173 ], [ %i.u, %.lr.ph ], [ %i.u, %.lr.ph.prol.loopexit ] ; 2 uses
  br i1 %i.p, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.bl = sext i32 %3 to i64
  %i.bm = getelementptr [64 x i8], ptr @channel_converters, i64 %i.bl
  %i.bn = sext i32 %7 to i64
  %i.bo = getelementptr [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -72
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = select i1 %i.q, ptr %spec.select159, ptr %5 ; 2 uses
  tail call void %i.bq(ptr noundef %i.br, ptr noundef %.3, i32 noundef %0) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.4 = phi ptr [ %i.br, %bb.r ], [ %.3, %.loopexit ] ; 2 uses
  br i1 %i.q, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = mul nsw i32 %7, %0
  tail call void @ConvertAudioFromFloat(ptr noundef %5, ptr noundef %.4, i32 noundef %i.bs, i32 noundef %6) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.5 = phi ptr [ %5, %bb.t ], [ %.4, %bb.s ]
  %.not154 = icmp eq ptr %i.o, null
  br i1 %.not154, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @SwizzleAudio(i32 noundef %0, ptr noundef %5, ptr noundef %.5, i32 noundef %7, ptr noundef %i.o, i32 noundef %6)
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %bb.i, %bb.j, %bb.h, %bb.v, %bb.u, %bb.a
  ret void
}

declare zeroext i1 @SDL_AudioChannelMapsEqual(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @SwizzleAudio(i32 noundef range(i32 1, 0) %0, ptr nofree noundef writeonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 13 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, -1                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.d, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.d, %.lr.ph ] ; 6 uses
  %trunc = trunc i32 %5 to i8
  switch i8 %trunc, label %.loopexit390 [
    i8 8, label %bb.b
    i8 16, label %bb.s
    i8 32, label %bb.aj
  ]

bb.b:                                             ; preds = %._crit_edge
  %.not377 = icmp eq ptr %2, %1
  br i1 %.not377, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.lcssa, label %bb.d, label %.preheader392

.preheader392:                                    ; preds = %bb.c
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.preheader391.lr.ph, label %.loopexit390

.preheader391.lr.ph:                              ; preds = %.preheader392
  %i.f = sext i32 %3 to i64                       ; 2 uses
  br i1 %i.a, label %.preheader391.preheader, label %.loopexit390

.preheader391.preheader:                          ; preds = %.preheader391.lr.ph
  %wide.trip.count577 = zext nneg i32 %3 to i64   ; 2 uses
  %xtraiter722 = and i64 %wide.trip.count577, 3   ; 3 uses
  %i.g = add nsw i32 %3, -1
  %i.h = icmp ult i32 %i.g, 3
  %unroll_iter726 = and i64 %wide.trip.count577, 2147483644
  %lcmp.mod724.not = icmp eq i64 %xtraiter722, 0
  %lcmp.mod725 = icmp ne i64 %xtraiter722, 0
  br label %.preheader391

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @SDL_GetSilenceValueForFormat_REAL(i32 noundef %5) #10
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %.preheader389.lr.ph, label %.loopexit390

.preheader389.lr.ph:                              ; preds = %bb.d
  %i.k = trunc i32 %i.i to i8                     ; 3 uses
  %6 = zext i32 %3 to i64                         ; 4 uses
  br i1 %i.a, label %.preheader389.preheader, label %.loopexit390

.preheader389.preheader:                          ; preds = %.preheader389.lr.ph
  %xtraiter729 = and i64 %6, 1
  %i.l = icmp eq i32 %3, 1
  %unroll_iter733 = and i64 %6, 2147483646
  %lcmp.mod731.not = icmp eq i64 %xtraiter729, 0
  %lcmp.mod732 = trunc i32 %3 to i1
  br label %.preheader389

.preheader389:                                    ; preds = %.preheader389.preheader, %._crit_edge485
  %.0332488 = phi i32 [ %i.u, %._crit_edge485 ], [ 0, %.preheader389.preheader ]
  %.0333487 = phi ptr [ %i.v, %._crit_edge485 ], [ %2, %.preheader389.preheader ] ; 4 uses
  %.0337486 = phi ptr [ %i.w, %._crit_edge485 ], [ %1, %.preheader389.preheader ] ; 4 uses
  br i1 %i.l, label %.epil.preheader728, label %.preheader389.new

._crit_edge485.unr-lcssa:                         ; preds = %bb.i
  br i1 %lcmp.mod731.not, label %._crit_edge485, label %.epil.preheader728

.epil.preheader728:                               ; preds = %._crit_edge485.unr-lcssa, %.preheader389
  %indvars.iv580.epil.init = phi i64 [ 0, %.preheader389 ], [ %indvars.iv.next581.1, %._crit_edge485.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod732)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv580.epil.init
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %._crit_edge485.epilog-lcssa, label %bb.e

bb.e:                                             ; preds = %.epil.preheader728
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds i8, ptr %.0333487, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  br label %._crit_edge485.epilog-lcssa

._crit_edge485.epilog-lcssa:                      ; preds = %bb.e, %.epil.preheader728
  %i.s = phi i8 [ %i.r, %bb.e ], [ %i.k, %.epil.preheader728 ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0337486, i64 %indvars.iv580.epil.init
  store i8 %i.s, ptr %i.t, align 1
  br label %._crit_edge485

._crit_edge485:                                   ; preds = %._crit_edge485.unr-lcssa, %._crit_edge485.epilog-lcssa
  %i.u = add nuw nsw i32 %.0332488, 1             ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0333487, i64 %6
  %i.w = getelementptr inbounds nuw i8, ptr %.0337486, i64 %6
  %exitcond585.not = icmp eq i32 %i.u, %0
  br i1 %exitcond585.not, label %.loopexit390, label %.preheader389, !llvm.loop !15

.preheader389.new:                                ; preds = %.preheader389, %bb.i
  %indvars.iv580 = phi i64 [ %indvars.iv.next581.1, %bb.i ], [ 0, %.preheader389 ] ; 4 uses
  %niter734 = phi i64 [ %niter734.next.1, %bb.i ], [ 0, %.preheader389 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv580
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader389.new
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds i8, ptr %.0333487, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  br label %bb.g

bb.g:                                             ; preds = %.preheader389.new, %bb.f
  %i.ad = phi i8 [ %i.ac, %bb.f ], [ %i.k, %.preheader389.new ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0337486, i64 %indvars.iv580
  store i8 %i.ad, ptr %i.ae, align 1
  %indvars.iv.next581 = or disjoint i64 %indvars.iv580, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next581
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds i8, ptr %.0333487, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = phi i8 [ %i.ak, %bb.h ], [ %i.k, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0337486, i64 %indvars.iv.next581
  store i8 %i.al, ptr %i.am, align 1
  %indvars.iv.next581.1 = add nuw nsw i64 %indvars.iv580, 2 ; 2 uses
  %niter734.next.1 = add i64 %niter734, 2         ; 2 uses
  %niter734.ncmp.1 = icmp eq i64 %niter734.next.1, %unroll_iter733
  br i1 %niter734.ncmp.1, label %._crit_edge485.unr-lcssa, label %.preheader389.new, !llvm.loop !16

.preheader391:                                    ; preds = %.preheader391.preheader, %._crit_edge479
  %.0330482 = phi i32 [ %i.at, %._crit_edge479 ], [ 0, %.preheader391.preheader ]
  %.1334481 = phi ptr [ %i.au, %._crit_edge479 ], [ %2, %.preheader391.preheader ] ; 6 uses
  %.1338480 = phi ptr [ %i.av, %._crit_edge479 ], [ %1, %.preheader391.preheader ] ; 6 uses
  br i1 %i.h, label %.epil.preheader721, label %.preheader391.new

._crit_edge479.unr-lcssa:                         ; preds = %.preheader391.new
  br i1 %lcmp.mod724.not, label %._crit_edge479, label %.epil.preheader721

.epil.preheader721:                               ; preds = %._crit_edge479.unr-lcssa, %.preheader391
  %indvars.iv574.epil.init = phi i64 [ 0, %.preheader391 ], [ %indvars.iv.next575.3, %._crit_edge479.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod725)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader721
  %indvars.iv574.epil = phi i64 [ %indvars.iv574.epil.init, %.epil.preheader721 ], [ %indvars.iv.next575.epil, %bb.j ] ; 3 uses
  %epil.iter723 = phi i64 [ 0, %.epil.preheader721 ], [ %epil.iter723.next, %bb.j ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv574.epil
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %.1334481, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.1338480, i64 %indvars.iv574.epil
  store i8 %i.ar, ptr %i.as, align 1
  %indvars.iv.next575.epil = add nuw nsw i64 %indvars.iv574.epil, 1
  %epil.iter723.next = add i64 %epil.iter723, 1   ; 2 uses
  %epil.iter723.cmp.not = icmp eq i64 %epil.iter723.next, %xtraiter722
  br i1 %epil.iter723.cmp.not, label %._crit_edge479, label %bb.j, !llvm.loop !17

._crit_edge479:                                   ; preds = %bb.j, %._crit_edge479.unr-lcssa
  %i.at = add nuw nsw i32 %.0330482, 1            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1334481, i64 %i.f
  %i.av = getelementptr inbounds nuw i8, ptr %.1338480, i64 %i.f
  %exitcond579.not = icmp eq i32 %i.at, %0
  br i1 %exitcond579.not, label %.loopexit390, label %.preheader391, !llvm.loop !18

.preheader391.new:                                ; preds = %.preheader391, %.preheader391.new
  %indvars.iv574 = phi i64 [ %indvars.iv.next575.3, %.preheader391.new ], [ 0, %.preheader391 ] ; 6 uses
  %niter727 = phi i64 [ %niter727.next.3, %.preheader391.new ], [ 0, %.preheader391 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv574
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %.1334481, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.1338480, i64 %indvars.iv574
  store i8 %i.ba, ptr %i.bb, align 1
  %indvars.iv.next575 = or disjoint i64 %indvars.iv574, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next575
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %.1334481, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.1338480, i64 %indvars.iv.next575
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next575.1 = or disjoint i64 %indvars.iv574, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next575.1
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %.1334481, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.1338480, i64 %indvars.iv.next575.1
  store i8 %i.bm, ptr %i.bn, align 1
  %indvars.iv.next575.2 = or disjoint i64 %indvars.iv574, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next575.2
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %.1334481, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.1338480, i64 %indvars.iv.next575.2
  store i8 %i.bs, ptr %i.bt, align 1
  %indvars.iv.next575.3 = add nuw nsw i64 %indvars.iv574, 4 ; 2 uses
  %niter727.next.3 = add i64 %niter727, 4         ; 2 uses
  %niter727.ncmp.3 = icmp eq i64 %niter727.next.3, %unroll_iter726
  br i1 %niter727.ncmp.3, label %._crit_edge479.unr-lcssa, label %.preheader391.new, !llvm.loop !19

bb.k:                                             ; preds = %bb.b
  %i.bu = sext i32 %3 to i64                      ; 5 uses
  %i.bv = shl nsw i64 %i.bu, 2                    ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 128                 ; 2 uses
  br i1 %i.bw, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.bx = alloca i8, i64 %i.bv, align 16
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.bv) #10 ; 2 uses
  %.not378 = icmp eq ptr %i.by, null
  br i1 %.not378, label %.loopexit390, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %i.bz = phi ptr [ %i.bx, %.thread ], [ %i.by, %bb.l ] ; 11 uses
  br i1 %.lcssa, label %bb.n, label %.preheader387

.preheader387:                                    ; preds = %bb.m
  %i.ca = icmp sgt i32 %0, 0
  br i1 %i.ca, label %.preheader386.lr.ph, label %.loopexit

.preheader386.lr.ph:                              ; preds = %.preheader387
  %i.cb = zext i32 %3 to i64                      ; 3 uses
  %xtraiter735 = and i64 %i.cb, 3                 ; 3 uses
  %i.cc = add nsw i32 %3, -1
  %i.cd = icmp ult i32 %i.cc, 3
  %unroll_iter739 = and i64 %i.cb, 2147483644
  %lcmp.mod737.not = icmp eq i64 %xtraiter735, 0
  %lcmp.mod738 = icmp ne i64 %xtraiter735, 0
  br label %.preheader386

bb.n:                                             ; preds = %bb.m
  %i.ce = tail call i32 @SDL_GetSilenceValueForFormat_REAL(i32 noundef %5) #10
  %i.cf = icmp sgt i32 %0, 0
  br i1 %i.cf, label %.preheader384.lr.ph, label %.loopexit

.preheader384.lr.ph:                              ; preds = %bb.n
  %i.cg = trunc i32 %i.ce to i8                   ; 3 uses
  %i.ch = zext i32 %3 to i64                      ; 3 uses
  %xtraiter741 = and i64 %i.ch, 1
  %i.ci = icmp eq i32 %3, 1
  %unroll_iter745 = and i64 %i.ch, 2147483646
  %lcmp.mod743.not = icmp eq i64 %xtraiter741, 0
  %lcmp.mod744 = trunc i32 %3 to i1
  br label %.preheader384

.preheader384:                                    ; preds = %.preheader384.lr.ph, %._crit_edge501
  %.0328504 = phi i32 [ 0, %.preheader384.lr.ph ], [ %i.dh, %._crit_edge501 ]
  %.2335503 = phi ptr [ %2, %.preheader384.lr.ph ], [ %i.di, %._crit_edge501 ] ; 4 uses
  %.2339502 = phi ptr [ %1, %.preheader384.lr.ph ], [ %i.dj, %._crit_edge501 ] ; 2 uses
  br i1 %i.a, label %.lr.ph498.preheader, label %._crit_edge501

.lr.ph498.preheader:                              ; preds = %.preheader384
  br i1 %i.ci, label %.lr.ph498.epil.preheader, label %.lr.ph498

.lr.ph500.preheader.unr-lcssa:                    ; preds = %bb.r
  br i1 %lcmp.mod743.not, label %.lr.ph500.preheader, label %.lr.ph498.epil.preheader

.lr.ph498.epil.preheader:                         ; preds = %.lr.ph500.preheader.unr-lcssa, %.lr.ph498.preheader
  %indvars.iv595.epil.init = phi i64 [ 0, %.lr.ph498.preheader ], [ %indvars.iv.next596.1, %.lr.ph500.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod744)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv595.epil.init
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %.lr.ph500.preheader.epilog-lcssa, label %bb.o

bb.o:                                             ; preds = %.lr.ph498.epil.preheader
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds i8, ptr %.2335503, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  br label %.lr.ph500.preheader.epilog-lcssa

.lr.ph500.preheader.epilog-lcssa:                 ; preds = %bb.o, %.lr.ph498.epil.preheader
  %i.cp = phi i8 [ %i.co, %bb.o ], [ %i.cg, %.lr.ph498.epil.preheader ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv595.epil.init
  store i8 %i.cp, ptr %i.cq, align 1
  br label %.lr.ph500.preheader

.lr.ph500.preheader:                              ; preds = %.lr.ph500.preheader.unr-lcssa, %.lr.ph500.preheader.epilog-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2339502, ptr nonnull align 1 %i.bz, i64 %i.ch, i1 false)
  br label %._crit_edge501

.lr.ph498:                                        ; preds = %.lr.ph498.preheader, %bb.r
  %indvars.iv595 = phi i64 [ %indvars.iv.next596.1, %bb.r ], [ 0, %.lr.ph498.preheader ] ; 4 uses
  %niter746 = phi i64 [ %niter746.next.1, %bb.r ], [ 0, %.lr.ph498.preheader ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv595
  %i.cs = load i32, ptr %i.cr, align 4            ; 2 uses
  %i.ct = icmp eq i32 %i.cs, -1
  br i1 %i.ct, label %.lr.ph498.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph498
  %i.cu = sext i32 %i.cs to i64
  %i.cv = getelementptr inbounds i8, ptr %.2335503, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  br label %.lr.ph498.1

.lr.ph498.1:                                      ; preds = %.lr.ph498, %bb.p
  %i.cx = phi i8 [ %i.cw, %bb.p ], [ %i.cg, %.lr.ph498 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv595
  store i8 %i.cx, ptr %i.cy, align 1
  %indvars.iv.next596 = or disjoint i64 %indvars.iv595, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next596
  %i.da = load i32, ptr %i.cz, align 4            ; 2 uses
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph498.1
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds i8, ptr %.2335503, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph498.1
  %i.df = phi i8 [ %i.de, %bb.q ], [ %i.cg, %.lr.ph498.1 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv.next596
  store i8 %i.df, ptr %i.dg, align 1
  %indvars.iv.next596.1 = add nuw nsw i64 %indvars.iv595, 2 ; 2 uses
  %niter746.next.1 = add i64 %niter746, 2         ; 2 uses
  %niter746.ncmp.1 = icmp eq i64 %niter746.next.1, %unroll_iter745
  br i1 %niter746.ncmp.1, label %.lr.ph500.preheader.unr-lcssa, label %.lr.ph498, !llvm.loop !20

._crit_edge501:                                   ; preds = %.preheader384, %.lr.ph500.preheader
  %i.dh = add nuw nsw i32 %.0328504, 1            ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.2335503, i64 %i.bu
  %i.dj = getelementptr i8, ptr %.2339502, i64 %i.bu
  %exitcond603.not = icmp eq i32 %i.dh, %0
  br i1 %exitcond603.not, label %.loopexit, label %.preheader384, !llvm.loop !21

.preheader386:                                    ; preds = %.preheader386.lr.ph, %._crit_edge493
  %.0325496 = phi i32 [ 0, %.preheader386.lr.ph ], [ %i.eo, %._crit_edge493 ]
  %.3336495 = phi ptr [ %2, %.preheader386.lr.ph ], [ %i.ep, %._crit_edge493 ] ; 6 uses
  %.3340494 = phi ptr [ %1, %.preheader386.lr.ph ], [ %i.eq, %._crit_edge493 ] ; 2 uses
  br i1 %i.a, label %.lr.ph490.preheader, label %._crit_edge493

.lr.ph490.preheader:                              ; preds = %.preheader386
  br i1 %i.cd, label %.lr.ph490.epil.preheader, label %.lr.ph490

.lr.ph492.preheader.unr-lcssa:                    ; preds = %.lr.ph490
  br i1 %lcmp.mod737.not, label %.lr.ph492.preheader, label %.lr.ph490.epil.preheader

.lr.ph490.epil.preheader:                         ; preds = %.lr.ph492.preheader.unr-lcssa, %.lr.ph490.preheader
  %indvars.iv586.epil.init = phi i64 [ 0, %.lr.ph490.preheader ], [ %indvars.iv.next587.3, %.lr.ph492.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod738)
  br label %.lr.ph490.epil

.lr.ph490.epil:                                   ; preds = %.lr.ph490.epil, %.lr.ph490.epil.preheader
  %indvars.iv586.epil = phi i64 [ %indvars.iv.next587.epil, %.lr.ph490.epil ], [ %indvars.iv586.epil.init, %.lr.ph490.epil.preheader ] ; 3 uses
  %epil.iter736 = phi i64 [ %epil.iter736.next, %.lr.ph490.epil ], [ 0, %.lr.ph490.epil.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv586.epil
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %.3336495, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv586.epil
  store i8 %i.do, ptr %i.dp, align 1
  %indvars.iv.next587.epil = add nuw nsw i64 %indvars.iv586.epil, 1
  %epil.iter736.next = add i64 %epil.iter736, 1   ; 2 uses
  %epil.iter736.cmp.not = icmp eq i64 %epil.iter736.next, %xtraiter735
  br i1 %epil.iter736.cmp.not, label %.lr.ph492.preheader, label %.lr.ph490.epil, !llvm.loop !22

.lr.ph492.preheader:                              ; preds = %.lr.ph490.epil, %.lr.ph492.preheader.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.3340494, ptr nonnull align 1 %i.bz, i64 %i.cb, i1 false)
  br label %._crit_edge493

.lr.ph490:                                        ; preds = %.lr.ph490.preheader, %.lr.ph490
  %indvars.iv586 = phi i64 [ %indvars.iv.next587.3, %.lr.ph490 ], [ 0, %.lr.ph490.preheader ] ; 6 uses
  %niter740 = phi i64 [ %niter740.next.3, %.lr.ph490 ], [ 0, %.lr.ph490.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv586
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %.3336495, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv586
  store i8 %i.du, ptr %i.dv, align 1
  %indvars.iv.next587 = or disjoint i64 %indvars.iv586, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next587
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %.3336495, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv.next587
  store i8 %i.ea, ptr %i.eb, align 1
  %indvars.iv.next587.1 = or disjoint i64 %indvars.iv586, 2 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next587.1
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %.3336495, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv.next587.1
  store i8 %i.eg, ptr %i.eh, align 1
  %indvars.iv.next587.2 = or disjoint i64 %indvars.iv586, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next587.2
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %.3336495, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv.next587.2
  store i8 %i.em, ptr %i.en, align 1
  %indvars.iv.next587.3 = add nuw nsw i64 %indvars.iv586, 4 ; 2 uses
  %niter740.next.3 = add i64 %niter740, 4         ; 2 uses
  %niter740.ncmp.3 = icmp eq i64 %niter740.next.3, %unroll_iter739
  br i1 %niter740.ncmp.3, label %.lr.ph492.preheader.unr-lcssa, label %.lr.ph490, !llvm.loop !23

._crit_edge493:                                   ; preds = %.preheader386, %.lr.ph492.preheader
  %i.eo = add nuw nsw i32 %.0325496, 1            ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %.3336495, i64 %i.bu
  %i.eq = getelementptr i8, ptr %.3340494, i64 %i.bu
  %exitcond594.not = icmp eq i32 %i.eo, %0
  br i1 %exitcond594.not, label %.loopexit, label %.preheader386, !llvm.loop !24

.loopexit:                                        ; preds = %._crit_edge493, %._crit_edge501, %.preheader387, %bb.n
  br i1 %i.bw, label %.loopexit390, label %.loopexit390.sink.split

bb.s:                                             ; preds = %._crit_edge
  %.not375 = icmp eq ptr %2, %1
  br i1 %.not375, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.lcssa, label %bb.u, label %.preheader404

.preheader404:                                    ; preds = %bb.t
  %i.er = icmp sgt i32 %0, 0
  br i1 %i.er, label %.preheader403.lr.ph, label %.loopexit390

.preheader403.lr.ph:                              ; preds = %.preheader404
  %i.es = sext i32 %3 to i64                      ; 2 uses
  br i1 %i.a, label %.preheader403.preheader, label %.loopexit390

.preheader403.preheader:                          ; preds = %.preheader403.lr.ph
  %wide.trip.count547 = zext nneg i32 %3 to i64   ; 2 uses
  %xtraiter696 = and i64 %wide.trip.count547, 3   ; 3 uses
  %i.et = icmp ult i32 %3, 4
  %unroll_iter700 = and i64 %wide.trip.count547, 2147483644
  %lcmp.mod698.not = icmp eq i64 %xtraiter696, 0
  %lcmp.mod699 = icmp ne i64 %xtraiter696, 0
  br label %.preheader403

bb.u:                                             ; preds = %bb.t
  %i.eu = tail call i32 @SDL_GetSilenceValueForFormat_REAL(i32 noundef %5) #10
  %i.ev = icmp sgt i32 %0, 0
  br i1 %i.ev, label %.preheader401.lr.ph, label %.loopexit390

.preheader401.lr.ph:                              ; preds = %bb.u
  %i.ew = trunc i32 %i.eu to i16                  ; 3 uses
  %7 = zext i32 %3 to i64                         ; 4 uses
  br i1 %i.a, label %.preheader401.preheader, label %.loopexit390

.preheader401.preheader:                          ; preds = %.preheader401.lr.ph
  %xtraiter703 = and i64 %7, 1
  %i.ex = icmp eq i32 %3, 1
  %unroll_iter707 = and i64 %7, 2147483646
  %lcmp.mod705.not = icmp eq i64 %xtraiter703, 0
  %lcmp.mod706 = trunc i32 %3 to i1
  br label %.preheader401

.preheader401:                                    ; preds = %.preheader401.preheader, %._crit_edge457
  %.0314460 = phi i32 [ %i.fg, %._crit_edge457 ], [ 0, %.preheader401.preheader ]
  %.0315459 = phi ptr [ %i.fh, %._crit_edge457 ], [ %2, %.preheader401.preheader ] ; 4 uses
  %.0319458 = phi ptr [ %i.fi, %._crit_edge457 ], [ %1, %.preheader401.preheader ] ; 4 uses
  br i1 %i.ex, label %.epil.preheader702, label %.preheader401.new

._crit_edge457.unr-lcssa:                         ; preds = %bb.z
  br i1 %lcmp.mod705.not, label %._crit_edge457, label %.epil.preheader702

.epil.preheader702:                               ; preds = %._crit_edge457.unr-lcssa, %.preheader401
  %indvars.iv550.epil.init = phi i64 [ 0, %.preheader401 ], [ %indvars.iv.next551.1, %._crit_edge457.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod706)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv550.epil.init
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = icmp eq i32 %i.ez, -1
  br i1 %i.fa, label %._crit_edge457.epilog-lcssa, label %bb.v

bb.v:                                             ; preds = %.epil.preheader702
  %i.fb = sext i32 %i.ez to i64
  %i.fc = getelementptr inbounds [2 x i8], ptr %.0315459, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2
  br label %._crit_edge457.epilog-lcssa

._crit_edge457.epilog-lcssa:                      ; preds = %bb.v, %.epil.preheader702
  %i.fe = phi i16 [ %i.fd, %bb.v ], [ %i.ew, %.epil.preheader702 ]
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.0319458, i64 %indvars.iv550.epil.init
  store i16 %i.fe, ptr %i.ff, align 2
  br label %._crit_edge457

._crit_edge457:                                   ; preds = %._crit_edge457.unr-lcssa, %._crit_edge457.epilog-lcssa
  %i.fg = add nuw nsw i32 %.0314460, 1            ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %.0315459, i64 %7
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.0319458, i64 %7
  %exitcond555.not = icmp eq i32 %i.fg, %0
  br i1 %exitcond555.not, label %.loopexit390, label %.preheader401, !llvm.loop !25

.preheader401.new:                                ; preds = %.preheader401, %bb.z
  %indvars.iv550 = phi i64 [ %indvars.iv.next551.1, %bb.z ], [ 0, %.preheader401 ] ; 4 uses
  %niter708 = phi i64 [ %niter708.next.1, %bb.z ], [ 0, %.preheader401 ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv550
  %i.fk = load i32, ptr %i.fj, align 4            ; 2 uses
  %i.fl = icmp eq i32 %i.fk, -1
  br i1 %i.fl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader401.new
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds [2 x i8], ptr %.0315459, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2
  br label %bb.x

bb.x:                                             ; preds = %.preheader401.new, %bb.w
  %i.fp = phi i16 [ %i.fo, %bb.w ], [ %i.ew, %.preheader401.new ]
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %.0319458, i64 %indvars.iv550
  store i16 %i.fp, ptr %i.fq, align 2
  %indvars.iv.next551 = or disjoint i64 %indvars.iv550, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next551
  %i.fs = load i32, ptr %i.fr, align 4            ; 2 uses
  %i.ft = icmp eq i32 %i.fs, -1
  br i1 %i.ft, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fu = sext i32 %i.fs to i64
  %i.fv = getelementptr inbounds [2 x i8], ptr %.0315459, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fx = phi i16 [ %i.fw, %bb.y ], [ %i.ew, %bb.x ]
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.0319458, i64 %indvars.iv.next551
  store i16 %i.fx, ptr %i.fy, align 2
  %indvars.iv.next551.1 = add nuw nsw i64 %indvars.iv550, 2 ; 2 uses
  %niter708.next.1 = add i64 %niter708, 2         ; 2 uses
  %niter708.ncmp.1 = icmp eq i64 %niter708.next.1, %unroll_iter707
  br i1 %niter708.ncmp.1, label %._crit_edge457.unr-lcssa, label %.preheader401.new, !llvm.loop !26

.preheader403:                                    ; preds = %.preheader403.preheader, %._crit_edge451
  %.0312454 = phi i32 [ %i.gf, %._crit_edge451 ], [ 0, %.preheader403.preheader ]
  %.1316453 = phi ptr [ %i.gg, %._crit_edge451 ], [ %2, %.preheader403.preheader ] ; 6 uses
  %.1320452 = phi ptr [ %i.gh, %._crit_edge451 ], [ %1, %.preheader403.preheader ] ; 6 uses
  br i1 %i.et, label %.epil.preheader695, label %.preheader403.new

._crit_edge451.unr-lcssa:                         ; preds = %.preheader403.new
  br i1 %lcmp.mod698.not, label %._crit_edge451, label %.epil.preheader695

.epil.preheader695:                               ; preds = %._crit_edge451.unr-lcssa, %.preheader403
  %indvars.iv544.epil.init = phi i64 [ 0, %.preheader403 ], [ %indvars.iv.next545.3, %._crit_edge451.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod699)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader695
  %indvars.iv544.epil = phi i64 [ %indvars.iv544.epil.init, %.epil.preheader695 ], [ %indvars.iv.next545.epil, %bb.aa ] ; 3 uses
  %epil.iter697 = phi i64 [ 0, %.epil.preheader695 ], [ %epil.iter697.next, %bb.aa ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv544.epil
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [2 x i8], ptr %.1316453, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %.1320452, i64 %indvars.iv544.epil
  store i16 %i.gd, ptr %i.ge, align 2
  %indvars.iv.next545.epil = add nuw nsw i64 %indvars.iv544.epil, 1
  %epil.iter697.next = add i64 %epil.iter697, 1   ; 2 uses
  %epil.iter697.cmp.not = icmp eq i64 %epil.iter697.next, %xtraiter696
  br i1 %epil.iter697.cmp.not, label %._crit_edge451, label %bb.aa, !llvm.loop !27

._crit_edge451:                                   ; preds = %bb.aa, %._crit_edge451.unr-lcssa
  %i.gf = add nuw nsw i32 %.0312454, 1            ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %.1316453, i64 %i.es
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.1320452, i64 %i.es
  %exitcond549.not = icmp eq i32 %i.gf, %0
  br i1 %exitcond549.not, label %.loopexit390, label %.preheader403, !llvm.loop !28

.preheader403.new:                                ; preds = %.preheader403, %.preheader403.new
  %indvars.iv544 = phi i64 [ %indvars.iv.next545.3, %.preheader403.new ], [ 0, %.preheader403 ] ; 6 uses
  %niter701 = phi i64 [ %niter701.next.3, %.preheader403.new ], [ 0, %.preheader403 ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv544
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [2 x i8], ptr %.1316453, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %.1320452, i64 %indvars.iv544
  store i16 %i.gm, ptr %i.gn, align 2
  %indvars.iv.next545 = or disjoint i64 %indvars.iv544, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next545
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [2 x i8], ptr %.1316453, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %.1320452, i64 %indvars.iv.next545
  store i16 %i.gs, ptr %i.gt, align 2
  %indvars.iv.next545.1 = or disjoint i64 %indvars.iv544, 2 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next545.1
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [2 x i8], ptr %.1316453, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 2
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.1320452, i64 %indvars.iv.next545.1
  store i16 %i.gy, ptr %i.gz, align 2
  %indvars.iv.next545.2 = or disjoint i64 %indvars.iv544, 3 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next545.2
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [2 x i8], ptr %.1316453, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.1320452, i64 %indvars.iv.next545.2
  store i16 %i.he, ptr %i.hf, align 2
  %indvars.iv.next545.3 = add nuw nsw i64 %indvars.iv544, 4 ; 2 uses
  %niter701.next.3 = add i64 %niter701, 4         ; 2 uses
  %niter701.ncmp.3 = icmp eq i64 %niter701.next.3, %unroll_iter700
  br i1 %niter701.ncmp.3, label %._crit_edge451.unr-lcssa, label %.preheader403.new, !llvm.loop !29

bb.ab:                                            ; preds = %bb.s
  %i.hg = sext i32 %3 to i64                      ; 5 uses
  %i.hh = shl nsw i64 %i.hg, 2                    ; 3 uses
  %i.hi = icmp ult i64 %i.hh, 128                 ; 2 uses
  br i1 %i.hi, label %.thread380, label %bb.ac

.thread380:                                       ; preds = %bb.ab
  %i.hj = alloca i8, i64 %i.hh, align 16
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hk = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.hh) #10 ; 2 uses
  %.not376 = icmp eq ptr %i.hk, null
  br i1 %.not376, label %.loopexit390, label %bb.ad

bb.ad:                                            ; preds = %.thread380, %bb.ac
  %i.hl = phi ptr [ %i.hj, %.thread380 ], [ %i.hk, %bb.ac ] ; 11 uses
  br i1 %.lcssa, label %bb.ae, label %.preheader399

.preheader399:                                    ; preds = %bb.ad
  %i.hm = icmp sgt i32 %0, 0
  br i1 %i.hm, label %.preheader398.lr.ph, label %.loopexit396

.preheader398.lr.ph:                              ; preds = %.preheader399
  %i.hn = zext i32 %3 to i64                      ; 3 uses
  %i.ho = shl nuw nsw i64 %i.hn, 1
  %xtraiter709 = and i64 %i.hn, 3                 ; 3 uses
  %i.hp = icmp ult i32 %3, 4
  %unroll_iter713 = and i64 %i.hn, 2147483644
  %lcmp.mod711.not = icmp eq i64 %xtraiter709, 0
  %lcmp.mod712 = icmp ne i64 %xtraiter709, 0
  br label %.preheader398

bb.ae:                                            ; preds = %bb.ad
  %i.hq = tail call i32 @SDL_GetSilenceValueForFormat_REAL(i32 noundef %5) #10
  %i.hr = icmp sgt i32 %0, 0
  br i1 %i.hr, label %.preheader395.lr.ph, label %.loopexit396

.preheader395.lr.ph:                              ; preds = %bb.ae
  %i.hs = trunc i32 %i.hq to i16                  ; 3 uses
  %i.ht = zext i32 %3 to i64                      ; 3 uses
  %i.hu = shl nuw nsw i64 %i.ht, 1
  %xtraiter715 = and i64 %i.ht, 1
  %i.hv = icmp eq i32 %3, 1
  %unroll_iter719 = and i64 %i.ht, 2147483646
  %lcmp.mod717.not = icmp eq i64 %xtraiter715, 0
  %lcmp.mod718 = trunc i32 %3 to i1
  br label %.preheader395

.preheader395:                                    ; preds = %.preheader395.lr.ph, %._crit_edge473
  %.0310476 = phi i32 [ 0, %.preheader395.lr.ph ], [ %i.iu, %._crit_edge473 ]
  %.2317475 = phi ptr [ %2, %.preheader395.lr.ph ], [ %i.iv, %._crit_edge473 ] ; 4 uses
  %.2321474 = phi ptr [ %1, %.preheader395.lr.ph ], [ %i.iw, %._crit_edge473 ] ; 2 uses
  br i1 %i.a, label %.lr.ph470.preheader, label %._crit_edge473

.lr.ph470.preheader:                              ; preds = %.preheader395
  br i1 %i.hv, label %.lr.ph470.epil.preheader, label %.lr.ph470

.lr.ph472.preheader.unr-lcssa:                    ; preds = %bb.ai
  br i1 %lcmp.mod717.not, label %.lr.ph472.preheader, label %.lr.ph470.epil.preheader

.lr.ph470.epil.preheader:                         ; preds = %.lr.ph472.preheader.unr-lcssa, %.lr.ph470.preheader
  %indvars.iv565.epil.init = phi i64 [ 0, %.lr.ph470.preheader ], [ %indvars.iv.next566.1, %.lr.ph472.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod718)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv565.epil.init
  %i.hx = load i32, ptr %i.hw, align 4            ; 2 uses
  %i.hy = icmp eq i32 %i.hx, -1
  br i1 %i.hy, label %.lr.ph472.preheader.epilog-lcssa, label %bb.af

bb.af:                                            ; preds = %.lr.ph470.epil.preheader
  %i.hz = sext i32 %i.hx to i64
  %i.ia = getelementptr inbounds [2 x i8], ptr %.2317475, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2
  br label %.lr.ph472.preheader.epilog-lcssa

.lr.ph472.preheader.epilog-lcssa:                 ; preds = %bb.af, %.lr.ph470.epil.preheader
  %i.ic = phi i16 [ %i.ib, %bb.af ], [ %i.hs, %.lr.ph470.epil.preheader ]
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv565.epil.init
  store i16 %i.ic, ptr %i.id, align 2
  br label %.lr.ph472.preheader

.lr.ph472.preheader:                              ; preds = %.lr.ph472.preheader.unr-lcssa, %.lr.ph472.preheader.epilog-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.2321474, ptr nonnull align 2 %i.hl, i64 %i.hu, i1 false)
  br label %._crit_edge473

.lr.ph470:                                        ; preds = %.lr.ph470.preheader, %bb.ai
  %indvars.iv565 = phi i64 [ %indvars.iv.next566.1, %bb.ai ], [ 0, %.lr.ph470.preheader ] ; 4 uses
  %niter720 = phi i64 [ %niter720.next.1, %bb.ai ], [ 0, %.lr.ph470.preheader ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv565
  %i.if = load i32, ptr %i.ie, align 4            ; 2 uses
  %i.ig = icmp eq i32 %i.if, -1
  br i1 %i.ig, label %.lr.ph470.1, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph470
  %i.ih = sext i32 %i.if to i64
  %i.ii = getelementptr inbounds [2 x i8], ptr %.2317475, i64 %i.ih
  %i.ij = load i16, ptr %i.ii, align 2
  br label %.lr.ph470.1

.lr.ph470.1:                                      ; preds = %.lr.ph470, %bb.ag
  %i.ik = phi i16 [ %i.ij, %bb.ag ], [ %i.hs, %.lr.ph470 ]
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv565
  store i16 %i.ik, ptr %i.il, align 2
  %indvars.iv.next566 = or disjoint i64 %indvars.iv565, 1 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next566
  %i.in = load i32, ptr %i.im, align 4            ; 2 uses
  %i.io = icmp eq i32 %i.in, -1
  br i1 %i.io, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph470.1
  %i.ip = sext i32 %i.in to i64
  %i.iq = getelementptr inbounds [2 x i8], ptr %.2317475, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph470.1
  %i.is = phi i16 [ %i.ir, %bb.ah ], [ %i.hs, %.lr.ph470.1 ]
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv.next566
  store i16 %i.is, ptr %i.it, align 2
  %indvars.iv.next566.1 = add nuw nsw i64 %indvars.iv565, 2 ; 2 uses
  %niter720.next.1 = add i64 %niter720, 2         ; 2 uses
  %niter720.ncmp.1 = icmp eq i64 %niter720.next.1, %unroll_iter719
  br i1 %niter720.ncmp.1, label %.lr.ph472.preheader.unr-lcssa, label %.lr.ph470, !llvm.loop !30

._crit_edge473:                                   ; preds = %.preheader395, %.lr.ph472.preheader
  %i.iu = add nuw nsw i32 %.0310476, 1            ; 2 uses
  %i.iv = getelementptr inbounds [2 x i8], ptr %.2317475, i64 %i.hg
  %i.iw = getelementptr [2 x i8], ptr %.2321474, i64 %i.hg
  %exitcond573.not = icmp eq i32 %i.iu, %0
  br i1 %exitcond573.not, label %.loopexit396, label %.preheader395, !llvm.loop !31

.preheader398:                                    ; preds = %.preheader398.lr.ph, %._crit_edge465
  %.0307468 = phi i32 [ 0, %.preheader398.lr.ph ], [ %i.kb, %._crit_edge465 ]
  %.3318467 = phi ptr [ %2, %.preheader398.lr.ph ], [ %i.kc, %._crit_edge465 ] ; 6 uses
  %.3322466 = phi ptr [ %1, %.preheader398.lr.ph ], [ %i.kd, %._crit_edge465 ] ; 2 uses
  br i1 %i.a, label %.lr.ph462.preheader, label %._crit_edge465

.lr.ph462.preheader:                              ; preds = %.preheader398
  br i1 %i.hp, label %.lr.ph462.epil.preheader, label %.lr.ph462

.lr.ph464.preheader.unr-lcssa:                    ; preds = %.lr.ph462
  br i1 %lcmp.mod711.not, label %.lr.ph464.preheader, label %.lr.ph462.epil.preheader

.lr.ph462.epil.preheader:                         ; preds = %.lr.ph464.preheader.unr-lcssa, %.lr.ph462.preheader
  %indvars.iv556.epil.init = phi i64 [ 0, %.lr.ph462.preheader ], [ %indvars.iv.next557.3, %.lr.ph464.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod712)
  br label %.lr.ph462.epil

.lr.ph462.epil:                                   ; preds = %.lr.ph462.epil, %.lr.ph462.epil.preheader
  %indvars.iv556.epil = phi i64 [ %indvars.iv.next557.epil, %.lr.ph462.epil ], [ %indvars.iv556.epil.init, %.lr.ph462.epil.preheader ] ; 3 uses
  %epil.iter710 = phi i64 [ %epil.iter710.next, %.lr.ph462.epil ], [ 0, %.lr.ph462.epil.preheader ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv556.epil
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [2 x i8], ptr %.3318467, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv556.epil
  store i16 %i.jb, ptr %i.jc, align 2
  %indvars.iv.next557.epil = add nuw nsw i64 %indvars.iv556.epil, 1
  %epil.iter710.next = add i64 %epil.iter710, 1   ; 2 uses
  %epil.iter710.cmp.not = icmp eq i64 %epil.iter710.next, %xtraiter709
  br i1 %epil.iter710.cmp.not, label %.lr.ph464.preheader, label %.lr.ph462.epil, !llvm.loop !32

.lr.ph464.preheader:                              ; preds = %.lr.ph462.epil, %.lr.ph464.preheader.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.3322466, ptr nonnull align 2 %i.hl, i64 %i.ho, i1 false)
  br label %._crit_edge465

.lr.ph462:                                        ; preds = %.lr.ph462.preheader, %.lr.ph462
  %indvars.iv556 = phi i64 [ %indvars.iv.next557.3, %.lr.ph462 ], [ 0, %.lr.ph462.preheader ] ; 6 uses
  %niter714 = phi i64 [ %niter714.next.3, %.lr.ph462 ], [ 0, %.lr.ph462.preheader ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv556
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [2 x i8], ptr %.3318467, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv556
  store i16 %i.jh, ptr %i.ji, align 2
  %indvars.iv.next557 = or disjoint i64 %indvars.iv556, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next557
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [2 x i8], ptr %.3318467, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv.next557
  store i16 %i.jn, ptr %i.jo, align 2
  %indvars.iv.next557.1 = or disjoint i64 %indvars.iv556, 2 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next557.1
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [2 x i8], ptr %.3318467, i64 %i.jr
  %i.jt = load i16, ptr %i.js, align 2
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv.next557.1
  store i16 %i.jt, ptr %i.ju, align 2
  %indvars.iv.next557.2 = or disjoint i64 %indvars.iv556, 3 ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next557.2
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [2 x i8], ptr %.3318467, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv.next557.2
  store i16 %i.jz, ptr %i.ka, align 2
  %indvars.iv.next557.3 = add nuw nsw i64 %indvars.iv556, 4 ; 2 uses
  %niter714.next.3 = add i64 %niter714, 4         ; 2 uses
  %niter714.ncmp.3 = icmp eq i64 %niter714.next.3, %unroll_iter713
  br i1 %niter714.ncmp.3, label %.lr.ph464.preheader.unr-lcssa, label %.lr.ph462, !llvm.loop !33

._crit_edge465:                                   ; preds = %.preheader398, %.lr.ph464.preheader
  %i.kb = add nuw nsw i32 %.0307468, 1            ; 2 uses
  %i.kc = getelementptr inbounds [2 x i8], ptr %.3318467, i64 %i.hg
  %i.kd = getelementptr [2 x i8], ptr %.3322466, i64 %i.hg
  %exitcond564.not = icmp eq i32 %i.kb, %0
  br i1 %exitcond564.not, label %.loopexit396, label %.preheader398, !llvm.loop !34

.loopexit396:                                     ; preds = %._crit_edge465, %._crit_edge473, %.preheader399, %bb.ae
  br i1 %i.hi, label %.loopexit390, label %.loopexit390.sink.split

bb.aj:                                            ; preds = %._crit_edge
  %.not = icmp eq ptr %2, %1
  br i1 %.not, label %bb.as, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.lcssa, label %bb.al, label %.preheader416

.preheader416:                                    ; preds = %bb.ak
  %i.ke = icmp sgt i32 %0, 0
  br i1 %i.ke, label %.preheader415.lr.ph, label %.loopexit390

.preheader415.lr.ph:                              ; preds = %.preheader416
  %i.kf = sext i32 %3 to i64                      ; 2 uses
  br i1 %i.a, label %.preheader415.preheader, label %.loopexit390

.preheader415.preheader:                          ; preds = %.preheader415.lr.ph
  %wide.trip.count517 = zext nneg i32 %3 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count517, 3      ; 3 uses
  %i.kg = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count517, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod675 = icmp ne i64 %xtraiter, 0
  br label %.preheader415

bb.al:                                            ; preds = %bb.ak
  %i.kh = tail call i32 @SDL_GetSilenceValueForFormat_REAL(i32 noundef %5) #10 ; 3 uses
  %i.ki = icmp sgt i32 %0, 0
  br i1 %i.ki, label %.preheader413.lr.ph, label %.loopexit390

.preheader413.lr.ph:                              ; preds = %bb.al
  %8 = zext i32 %3 to i64                         ; 4 uses
  br i1 %i.a, label %.preheader413.preheader, label %.loopexit390

.preheader413.preheader:                          ; preds = %.preheader413.lr.ph
  %xtraiter677 = and i64 %8, 1
  %i.kj = icmp eq i32 %3, 1
  %unroll_iter681 = and i64 %8, 2147483646
  %lcmp.mod679.not = icmp eq i64 %xtraiter677, 0
  %lcmp.mod680 = trunc i32 %3 to i1
  br label %.preheader413

.preheader413:                                    ; preds = %.preheader413.preheader, %._crit_edge429
  %.0299432 = phi i32 [ %i.ks, %._crit_edge429 ], [ 0, %.preheader413.preheader ]
  %.0300431 = phi ptr [ %i.kt, %._crit_edge429 ], [ %2, %.preheader413.preheader ] ; 4 uses
  %.0301430 = phi ptr [ %i.ku, %._crit_edge429 ], [ %1, %.preheader413.preheader ] ; 4 uses
  br i1 %i.kj, label %.epil.preheader676, label %.preheader413.new

._crit_edge429.unr-lcssa:                         ; preds = %bb.aq
  br i1 %lcmp.mod679.not, label %._crit_edge429, label %.epil.preheader676

.epil.preheader676:                               ; preds = %._crit_edge429.unr-lcssa, %.preheader413
  %indvars.iv520.epil.init = phi i64 [ 0, %.preheader413 ], [ %indvars.iv.next521.1, %._crit_edge429.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod680)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv520.epil.init
  %i.kl = load i32, ptr %i.kk, align 4            ; 2 uses
  %i.km = icmp eq i32 %i.kl, -1
  br i1 %i.km, label %._crit_edge429.epilog-lcssa, label %bb.am

bb.am:                                            ; preds = %.epil.preheader676
  %i.kn = sext i32 %i.kl to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %.0300431, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4
  br label %._crit_edge429.epilog-lcssa

._crit_edge429.epilog-lcssa:                      ; preds = %bb.am, %.epil.preheader676
  %i.kq = phi i32 [ %i.kp, %bb.am ], [ %i.kh, %.epil.preheader676 ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.0301430, i64 %indvars.iv520.epil.init
  store i32 %i.kq, ptr %i.kr, align 4
  br label %._crit_edge429

._crit_edge429:                                   ; preds = %._crit_edge429.unr-lcssa, %._crit_edge429.epilog-lcssa
  %i.ks = add nuw nsw i32 %.0299432, 1            ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0300431, i64 %8
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.0301430, i64 %8
  %exitcond525.not = icmp eq i32 %i.ks, %0
  br i1 %exitcond525.not, label %.loopexit390, label %.preheader413, !llvm.loop !35

.preheader413.new:                                ; preds = %.preheader413, %bb.aq
  %indvars.iv520 = phi i64 [ %indvars.iv.next521.1, %bb.aq ], [ 0, %.preheader413 ] ; 4 uses
  %niter682 = phi i64 [ %niter682.next.1, %bb.aq ], [ 0, %.preheader413 ]
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv520
  %i.kw = load i32, ptr %i.kv, align 4            ; 2 uses
  %i.kx = icmp eq i32 %i.kw, -1
  br i1 %i.kx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.preheader413.new
  %i.ky = sext i32 %i.kw to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %.0300431, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader413.new, %bb.an
  %i.lb = phi i32 [ %i.la, %bb.an ], [ %i.kh, %.preheader413.new ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.0301430, i64 %indvars.iv520
  store i32 %i.lb, ptr %i.lc, align 4
  %indvars.iv.next521 = or disjoint i64 %indvars.iv520, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next521
  %i.le = load i32, ptr %i.ld, align 4            ; 2 uses
  %i.lf = icmp eq i32 %i.le, -1
  br i1 %i.lf, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lg = sext i32 %i.le to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %.0300431, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.lj = phi i32 [ %i.li, %bb.ap ], [ %i.kh, %bb.ao ]
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.0301430, i64 %indvars.iv.next521
  store i32 %i.lj, ptr %i.lk, align 4
  %indvars.iv.next521.1 = add nuw nsw i64 %indvars.iv520, 2 ; 2 uses
  %niter682.next.1 = add i64 %niter682, 2         ; 2 uses
  %niter682.ncmp.1 = icmp eq i64 %niter682.next.1, %unroll_iter681
  br i1 %niter682.ncmp.1, label %._crit_edge429.unr-lcssa, label %.preheader413.new, !llvm.loop !36

.preheader415:                                    ; preds = %.preheader415.preheader, %._crit_edge423
  %.0297426 = phi i32 [ %i.lr, %._crit_edge423 ], [ 0, %.preheader415.preheader ]
  %.1425 = phi ptr [ %i.ls, %._crit_edge423 ], [ %2, %.preheader415.preheader ] ; 6 uses
  %.1302424 = phi ptr [ %i.lt, %._crit_edge423 ], [ %1, %.preheader415.preheader ] ; 6 uses
  br i1 %i.kg, label %.epil.preheader, label %.preheader415.new

._crit_edge423.unr-lcssa:                         ; preds = %.preheader415.new
  br i1 %lcmp.mod.not, label %._crit_edge423, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge423.unr-lcssa, %.preheader415
  %indvars.iv514.epil.init = phi i64 [ 0, %.preheader415 ], [ %indvars.iv.next515.3, %._crit_edge423.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod675)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.epil.preheader
  %indvars.iv514.epil = phi i64 [ %indvars.iv514.epil.init, %.epil.preheader ], [ %indvars.iv.next515.epil, %bb.ar ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ar ]
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv514.epil
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %.1425, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.1302424, i64 %indvars.iv514.epil
  store i32 %i.lp, ptr %i.lq, align 4
  %indvars.iv.next515.epil = add nuw nsw i64 %indvars.iv514.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge423, label %bb.ar, !llvm.loop !37

._crit_edge423:                                   ; preds = %bb.ar, %._crit_edge423.unr-lcssa
  %i.lr = add nuw nsw i32 %.0297426, 1            ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.1425, i64 %i.kf
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.1302424, i64 %i.kf
  %exitcond519.not = icmp eq i32 %i.lr, %0
  br i1 %exitcond519.not, label %.loopexit390, label %.preheader415, !llvm.loop !38

.preheader415.new:                                ; preds = %.preheader415, %.preheader415.new
  %indvars.iv514 = phi i64 [ %indvars.iv.next515.3, %.preheader415.new ], [ 0, %.preheader415 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader415.new ], [ 0, %.preheader415 ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv514
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %.1425, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.1302424, i64 %indvars.iv514
  store i32 %i.ly, ptr %i.lz, align 4
  %indvars.iv.next515 = or disjoint i64 %indvars.iv514, 1 ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next515
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %.1425, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.1302424, i64 %indvars.iv.next515
  store i32 %i.me, ptr %i.mf, align 4
  %indvars.iv.next515.1 = or disjoint i64 %indvars.iv514, 2 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next515.1
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %.1425, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.1302424, i64 %indvars.iv.next515.1
  store i32 %i.mk, ptr %i.ml, align 4
  %indvars.iv.next515.2 = or disjoint i64 %indvars.iv514, 3 ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next515.2
  %i.mn = load i32, ptr %i.mm, align 4
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %.1425, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.1302424, i64 %indvars.iv.next515.2
  store i32 %i.mq, ptr %i.mr, align 4
  %indvars.iv.next515.3 = add nuw nsw i64 %indvars.iv514, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge423.unr-lcssa, label %.preheader415.new, !llvm.loop !39

bb.as:                                            ; preds = %bb.aj
  %i.ms = sext i32 %3 to i64                      ; 5 uses
  %i.mt = shl nsw i64 %i.ms, 2                    ; 3 uses
  %i.mu = icmp ult i64 %i.mt, 128                 ; 2 uses
  br i1 %i.mu, label %.thread382, label %bb.at

.thread382:                                       ; preds = %bb.as
  %i.mv = alloca i8, i64 %i.mt, align 16
  br label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.mw = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.mt) #10 ; 2 uses
  %.not374 = icmp eq ptr %i.mw, null
  br i1 %.not374, label %.loopexit390, label %bb.au

bb.au:                                            ; preds = %.thread382, %bb.at
  %i.mx = phi ptr [ %i.mv, %.thread382 ], [ %i.mw, %bb.at ] ; 11 uses
  br i1 %.lcssa, label %bb.av, label %.preheader411

.preheader411:                                    ; preds = %bb.au
  %i.my = icmp sgt i32 %0, 0
  br i1 %i.my, label %.preheader410.lr.ph, label %.loopexit408

.preheader410.lr.ph:                              ; preds = %.preheader411
  %i.mz = zext i32 %3 to i64                      ; 3 uses
  %i.na = shl nuw nsw i64 %i.mz, 2
  %xtraiter683 = and i64 %i.mz, 3                 ; 3 uses
  %i.nb = icmp ult i32 %3, 4
  %unroll_iter687 = and i64 %i.mz, 2147483644
  %lcmp.mod685.not = icmp eq i64 %xtraiter683, 0
  %lcmp.mod686 = icmp ne i64 %xtraiter683, 0
  br label %.preheader410

bb.av:                                            ; preds = %bb.au
  %i.nc = tail call i32 @SDL_GetSilenceValueForFormat_REAL(i32 noundef %5) #10 ; 3 uses
  %i.nd = icmp sgt i32 %0, 0
  br i1 %i.nd, label %.preheader407.lr.ph, label %.loopexit408

.preheader407.lr.ph:                              ; preds = %bb.av
  %i.ne = zext i32 %3 to i64                      ; 3 uses
  %i.nf = shl nuw nsw i64 %i.ne, 2
  %xtraiter689 = and i64 %i.ne, 1
  %i.ng = icmp eq i32 %3, 1
  %unroll_iter693 = and i64 %i.ne, 2147483646
  %lcmp.mod691.not = icmp eq i64 %xtraiter689, 0
  %lcmp.mod692 = trunc i32 %3 to i1
  br label %.preheader407

.preheader407:                                    ; preds = %.preheader407.lr.ph, %._crit_edge445
  %.0295448 = phi i32 [ 0, %.preheader407.lr.ph ], [ %i.of, %._crit_edge445 ]
  %.2447 = phi ptr [ %2, %.preheader407.lr.ph ], [ %i.og, %._crit_edge445 ] ; 4 uses
  %.2303446 = phi ptr [ %1, %.preheader407.lr.ph ], [ %i.oh, %._crit_edge445 ] ; 2 uses
  br i1 %i.a, label %.lr.ph442.preheader, label %._crit_edge445

.lr.ph442.preheader:                              ; preds = %.preheader407
  br i1 %i.ng, label %.lr.ph442.epil.preheader, label %.lr.ph442

.lr.ph444.preheader.unr-lcssa:                    ; preds = %bb.az
  br i1 %lcmp.mod691.not, label %.lr.ph444.preheader, label %.lr.ph442.epil.preheader

.lr.ph442.epil.preheader:                         ; preds = %.lr.ph444.preheader.unr-lcssa, %.lr.ph442.preheader
  %indvars.iv535.epil.init = phi i64 [ 0, %.lr.ph442.preheader ], [ %indvars.iv.next536.1, %.lr.ph444.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod692)
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv535.epil.init
  %i.ni = load i32, ptr %i.nh, align 4            ; 2 uses
  %i.nj = icmp eq i32 %i.ni, -1
  br i1 %i.nj, label %.lr.ph444.preheader.epilog-lcssa, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph442.epil.preheader
  %i.nk = sext i32 %i.ni to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %.2447, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4
  br label %.lr.ph444.preheader.epilog-lcssa

.lr.ph444.preheader.epilog-lcssa:                 ; preds = %bb.aw, %.lr.ph442.epil.preheader
  %i.nn = phi i32 [ %i.nm, %bb.aw ], [ %i.nc, %.lr.ph442.epil.preheader ]
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv535.epil.init
  store i32 %i.nn, ptr %i.no, align 4
  br label %.lr.ph444.preheader

.lr.ph444.preheader:                              ; preds = %.lr.ph444.preheader.unr-lcssa, %.lr.ph444.preheader.epilog-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.2303446, ptr nonnull align 4 %i.mx, i64 %i.nf, i1 false)
  br label %._crit_edge445
end_hunk_0
