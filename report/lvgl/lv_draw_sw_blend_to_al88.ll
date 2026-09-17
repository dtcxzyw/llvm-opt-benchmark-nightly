Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_al88?download=true
inline.NumInlined: 113
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_color_mix_alpha_cache_t = type { %struct.lv_color16a_t, %struct.lv_color16a_t, %struct.lv_color16a_t, i8, i8 }
%struct.lv_color16a_t = type { i8, i8 }

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blend_color_to_al88(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.lv_color_mix_alpha_cache_t, align 2 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !52   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.f = load i8, ptr %i.e, align 1, !tbaa !53
  %.fr257 = freeze i8 %i.f                        ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @lv_memset(ptr noundef nonnull %1, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 7 uses
  call void @lv_memset(ptr noundef nonnull %i.m, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  call void @lv_memset(ptr noundef nonnull %i.n, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 7 uses
  store i8 -1, ptr %i.o, align 2, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 7 uses
  store i8 -1, ptr %i.p, align 1, !tbaa !14
  %i.q = icmp eq ptr %i.h, null                   ; 2 uses
  %i.r = zext i8 %.fr257 to i16                   ; 5 uses
  %i.s = icmp ugt i8 %.fr257, -4                  ; 2 uses
  %or.cond = and i1 %i.q, %i.s
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload40 = load i24, ptr %i.t, align 4
  %i.u = call zeroext i8 @lv_color_luminance(i24 %.0.copyload40) #6 ; 21 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.w = icmp sgt i32 %i.d, 0
  br i1 %i.w, label %.preheader228.lr.ph, label %.loopexit

.preheader228.lr.ph:                              ; preds = %bb.b
  %i.x = icmp sgt i32 %i.b, 16
  %i.y = zext i32 %i.l to i64                     ; 2 uses
  br i1 %i.x, label %.preheader228.us.preheader, label %.preheader228.lr.ph.split

.preheader228.us.preheader:                       ; preds = %.preheader228.lr.ph
  %i.z = add nsw i32 %i.b, -16
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = zext nneg i32 %i.b to i64               ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.aa, i64 16)
  %i.ac = add nsw i64 %umax, -1
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 17
  %umax346 = call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.ab) ; 3 uses
  %i.af = add i64 %umax346, -16
  %i.ag = sub i64 %i.af, %i.ad                    ; 4 uses
  %min.iters.check348 = icmp ult i64 %i.ag, 4
  %min.iters.check349 = icmp ult i64 %i.ag, 16
  %i.ah = and i64 %umax346, 15                    ; 3 uses
  %n.vec351 = sub nuw i64 %i.ag, %i.ah            ; 3 uses
  %broadcast.splatinsert352 = insertelement <8 x i8> poison, i8 %i.u, i64 0
  %interleaved.vec356 = shufflevector <8 x i8> %broadcast.splatinsert352, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15> ; 2 uses
  %cmp.n360 = icmp eq i64 %i.ah, 0
  %min.epilog.iters.check = icmp samesign ult i64 %i.ah, 4
  %i.ai = and i64 %umax346, 3                     ; 2 uses
  %n.vec362 = sub i64 %i.ag, %i.ai                ; 2 uses
  %broadcast.splatinsert363 = insertelement <4 x i8> poison, i8 %i.u, i64 0
  %interleaved.vec366 = shufflevector <4 x i8> %broadcast.splatinsert363, <4 x i8> splat (i8 -1), <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  %cmp.n368 = icmp eq i64 %i.ai, 0
  br label %.preheader228.us

.preheader228.us:                                 ; preds = %.preheader228.us.preheader, %._crit_edge254.us
  %.0174256.us = phi ptr [ %i.bc, %._crit_edge254.us ], [ %i.v, %.preheader228.us.preheader ] ; 6 uses
  %.0176255.us = phi i32 [ %i.bd, %._crit_edge254.us ], [ 0, %.preheader228.us.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader228.us, %bb.c
  %indvars.iv292 = phi i64 [ 16, %.preheader228.us ], [ %indvars.iv.next293, %bb.c ] ; 6 uses
  %indvars.iv289 = phi i64 [ 0, %.preheader228.us ], [ %indvars.iv.next290, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %indvars.iv289 ; 32 uses
  store i8 %i.u, ptr %i.aj, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 -1, ptr %.sroa.20.0..sroa_idx.us, align 1, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.u, ptr %i.ak, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx59.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  store i8 -1, ptr %.sroa.20.0..sroa_idx59.us, align 1, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i8 %i.u, ptr %i.al, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx61.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 5
  store i8 -1, ptr %.sroa.20.0..sroa_idx61.us, align 1, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  store i8 %i.u, ptr %i.am, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx63.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 7
  store i8 -1, ptr %.sroa.20.0..sroa_idx63.us, align 1, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i8 %i.u, ptr %i.an, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx65.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 9
  store i8 -1, ptr %.sroa.20.0..sroa_idx65.us, align 1, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  store i8 %i.u, ptr %i.ao, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx67.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  store i8 -1, ptr %.sroa.20.0..sroa_idx67.us, align 1, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i8 %i.u, ptr %i.ap, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx69.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 13
  store i8 -1, ptr %.sroa.20.0..sroa_idx69.us, align 1, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  store i8 %i.u, ptr %i.aq, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx71.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 15
  store i8 -1, ptr %.sroa.20.0..sroa_idx71.us, align 1, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i8 %i.u, ptr %i.ar, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx73.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 17
  store i8 -1, ptr %.sroa.20.0..sroa_idx73.us, align 1, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  store i8 %i.u, ptr %i.as, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx75.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 19
  store i8 -1, ptr %.sroa.20.0..sroa_idx75.us, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i8 %i.u, ptr %i.at, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx77.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 21
  store i8 -1, ptr %.sroa.20.0..sroa_idx77.us, align 1, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 22
  store i8 %i.u, ptr %i.au, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx79.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 23
  store i8 -1, ptr %.sroa.20.0..sroa_idx79.us, align 1, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 %i.u, ptr %i.av, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx81.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  store i8 -1, ptr %.sroa.20.0..sroa_idx81.us, align 1, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 26
  store i8 %i.u, ptr %i.aw, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx83.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 27
  store i8 -1, ptr %.sroa.20.0..sroa_idx83.us, align 1, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  store i8 %i.u, ptr %i.ax, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx85.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 29
  store i8 -1, ptr %.sroa.20.0..sroa_idx85.us, align 1, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 30
  store i8 %i.u, ptr %i.ay, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx87.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 31
  store i8 -1, ptr %.sroa.20.0..sroa_idx87.us, align 1, !tbaa !15
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 16 ; 3 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next290, %i.aa
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 16
  br i1 %i.az, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !35

.lr.ph253.us:                                     ; preds = %.lr.ph253.us.preheader, %.lr.ph253.us
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %.lr.ph253.us ], [ %indvars.iv294.ph, %.lr.ph253.us.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %indvars.iv294 ; 2 uses
  store i8 %i.u, ptr %i.ba, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx89.us = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 -1, ptr %.sroa.20.0..sroa_idx89.us, align 1, !tbaa !15
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next295, %i.ab
  br i1 %i.bb, label %.lr.ph253.us, label %._crit_edge254.us, !llvm.loop !36

._crit_edge254.us:                                ; preds = %.lr.ph253.us, %middle.block359, %vec.epilog.middle.block, %..preheader_crit_edge.us
  %i.bc = getelementptr inbounds nuw i8, ptr %.0174256.us, i64 %i.y
  %i.bd = add nuw nsw i32 %.0176255.us, 1         ; 2 uses
  %exitcond297.not = icmp eq i32 %i.bd, %i.d
  br i1 %exitcond297.not, label %.loopexit, label %.preheader228.us, !llvm.loop !37

..preheader_crit_edge.us:                         ; preds = %bb.c
  %i.be = trunc nuw nsw i64 %indvars.iv.next290 to i32
  %i.bf = icmp sgt i32 %i.b, %i.be
  br i1 %i.bf, label %iter.check, label %._crit_edge254.us

iter.check:                                       ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check348, label %.lr.ph253.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check349, label %vec.epilog.ph, label %vector.ph350

vector.ph350:                                     ; preds = %vector.main.loop.iter.check
  %2 = add i64 %indvars.iv292, %n.vec351
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph350
  %index355 = phi i64 [ 0, %vector.ph350 ], [ %index.next358, %vector.body354 ] ; 2 uses
  %i.bg = add nuw i64 %indvars.iv292, %index355   ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <16 x i8> %interleaved.vec356, ptr %i.bh, align 1, !tbaa !15
  store <16 x i8> %interleaved.vec356, ptr %i.bj, align 1, !tbaa !15
  %index.next358 = add nuw i64 %index355, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next358, %n.vec351
  br i1 %i.bk, label %middle.block359, label %vector.body354, !llvm.loop !38

middle.block359:                                  ; preds = %vector.body354
  br i1 %cmp.n360, label %._crit_edge254.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block359
  br i1 %min.epilog.iters.check, label %.lr.ph253.us.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec351, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %3 = add i64 %indvars.iv292, %n.vec362
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %indvars.iv292
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index365 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next367, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %index365
  store <8 x i8> %interleaved.vec366, ptr %i.bm, align 1, !tbaa !15
  %index.next367 = add nuw i64 %index365, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next367, %n.vec362
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n368, label %._crit_edge254.us, label %.lr.ph253.us.preheader

.lr.ph253.us.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv294.ph = phi i64 [ %indvars.iv292, %iter.check ], [ %2, %vec.epilog.iter.check ], [ %3, %vec.epilog.middle.block ]
  br label %.lr.ph253.us

.preheader228.lr.ph.split:                        ; preds = %.preheader228.lr.ph
  %i.bo = icmp sgt i32 %i.b, 0
  br i1 %i.bo, label %.preheader228.preheader, label %.loopexit

.preheader228.preheader:                          ; preds = %.preheader228.lr.ph.split
  %wide.trip.count286 = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check338 = icmp ult i32 %i.b, 8
  %n.vec340 = and i64 %wide.trip.count286, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.u, i64 0 ; 2 uses
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  %i.bp = icmp eq i64 %n.vec340, 8
  %interleaved.vec.1 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  %cmp.n = icmp eq i64 %n.vec340, %wide.trip.count286
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.preheader, %._crit_edge254
  %.0174256 = phi ptr [ %i.bs, %._crit_edge254 ], [ %i.v, %.preheader228.preheader ] ; 4 uses
  %.0176255 = phi i32 [ %i.bt, %._crit_edge254 ], [ 0, %.preheader228.preheader ]
  br i1 %min.iters.check338, label %scalar.ph337.preheader, label %vector.body341

vector.body341:                                   ; preds = %.preheader228
  store <16 x i8> %interleaved.vec, ptr %.0174256, align 1, !tbaa !15
  br i1 %i.bp, label %middle.block344, label %vector.body341.1

vector.body341.1:                                 ; preds = %vector.body341
  %i.bq = getelementptr inbounds nuw i8, ptr %.0174256, i64 16
  store <16 x i8> %interleaved.vec.1, ptr %i.bq, align 1, !tbaa !15
  br label %middle.block344

middle.block344:                                  ; preds = %vector.body341.1, %vector.body341
  br i1 %cmp.n, label %._crit_edge254, label %scalar.ph337.preheader

scalar.ph337.preheader:                           ; preds = %.preheader228, %middle.block344
  %indvars.iv283.ph = phi i64 [ 0, %.preheader228 ], [ %n.vec340, %middle.block344 ]
  br label %scalar.ph337

scalar.ph337:                                     ; preds = %scalar.ph337.preheader, %scalar.ph337
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph337 ], [ %indvars.iv283.ph, %scalar.ph337.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.0174256, i64 %indvars.iv283 ; 2 uses
  store i8 %i.u, ptr %i.br, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 -1, ptr %.sroa.20.0..sroa_idx89, align 1, !tbaa !15
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge254, label %scalar.ph337, !llvm.loop !40

._crit_edge254:                                   ; preds = %scalar.ph337, %middle.block344
  %i.bs = getelementptr inbounds nuw i8, ptr %.0174256, i64 %i.y
  %i.bt = add nuw nsw i32 %.0176255, 1            ; 2 uses
  %exitcond288.not = icmp eq i32 %i.bt, %i.d
  br i1 %exitcond288.not, label %.loopexit, label %.preheader228, !llvm.loop !37

bb.d:                                             ; preds = %bb.a
  %i.bu = icmp ult i8 %.fr257, -3
  %or.cond5 = and i1 %i.q, %i.bu
  br i1 %or.cond5, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload18 = load i24, ptr %i.bv, align 4
  %i.bw = call zeroext i8 @lv_color_luminance(i24 %.0.copyload18) #6
  %i.bx = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.by = icmp sgt i32 %i.d, 0
  br i1 %i.by, label %.preheader229.lr.ph, label %.loopexit

.preheader229.lr.ph:                              ; preds = %bb.e
  %i.bz = icmp sgt i32 %i.b, 0
  %.sroa.421.0.insert.shift = shl nuw i16 %i.r, 8
  %.sroa.020.0.insert.ext = zext i8 %i.bw to i16  ; 3 uses
  %.sroa.020.0.insert.insert = or disjoint i16 %.sroa.421.0.insert.shift, %.sroa.020.0.insert.ext ; 12 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cc = xor i16 %i.r, 255                       ; 2 uses
  %narrow.i = mul nuw i16 %i.r, 255
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 5
  %narrow.i.i = mul nuw i16 %.sroa.020.0.insert.ext, %i.r
  %i.ce = zext i32 %i.l to i64                    ; 2 uses
  br i1 %i.bz, label %.preheader229.lr.ph.split, label %.loopexit

.preheader229.lr.ph.split:                        ; preds = %.preheader229.lr.ph
  %i.cf = icmp ult i8 %.fr257, 3
  %wide.trip.count280 = zext nneg i32 %i.b to i64 ; 4 uses
  br i1 %i.cf, label %.preheader229.us.preheader, label %.preheader229

.preheader229.us.preheader:                       ; preds = %.preheader229.lr.ph.split
  %min.iters.check = icmp ult i32 %i.b, 9
  %i.cg = and i64 %wide.trip.count280, 7          ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  %i.ci = select i1 %i.ch, i64 8, i64 %i.cg
  %n.vec = sub nsw i64 %wide.trip.count280, %i.ci ; 2 uses
  br label %.preheader229.us

.preheader229.us:                                 ; preds = %.preheader229.us.preheader, %._crit_edge245.split.us.us
  %.0173247.us = phi ptr [ %i.ek, %._crit_edge245.split.us.us ], [ %i.bx, %.preheader229.us.preheader ] ; 10 uses
  %.1177246.us = phi i32 [ %i.el, %._crit_edge245.split.us.us ], [ 0, %.preheader229.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader229.us, %pred.store.continue336
  %index = phi i64 [ %index.next, %pred.store.continue336 ], [ 0, %.preheader229.us ] ; 9 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 5
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 11
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 13
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 15
  %i.dg = load i8, ptr %i.cy, align 1, !tbaa !20
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !20
  %i.di = load i8, ptr %i.da, align 1, !tbaa !20
  %i.dj = load i8, ptr %i.db, align 1, !tbaa !20
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !20
  %i.dl = load i8, ptr %i.dd, align 1, !tbaa !20
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !20
  %i.dn = load i8, ptr %i.df, align 1, !tbaa !20
  %i.do = insertelement <8 x i8> poison, i8 %i.dg, i64 0
  %i.dp = insertelement <8 x i8> %i.do, i8 %i.dh, i64 1
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.di, i64 2
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 3
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 4
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 5
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 6
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 7
  %i.dw = icmp ult <8 x i8> %i.dv, splat (i8 3)   ; 8 uses
  %i.dx = extractelement <8 x i1> %i.dw, i64 0
  br i1 %i.dx, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 %.sroa.020.0.insert.insert, ptr %i.cj, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.dy = extractelement <8 x i1> %i.dw, i64 1
  br i1 %i.dy, label %pred.store.if323, label %pred.store.continue324

pred.store.if323:                                 ; preds = %pred.store.continue
  store i16 %.sroa.020.0.insert.insert, ptr %i.cl, align 1
  br label %pred.store.continue324

pred.store.continue324:                           ; preds = %pred.store.if323, %pred.store.continue
  %i.dz = extractelement <8 x i1> %i.dw, i64 2
  br i1 %i.dz, label %pred.store.if325, label %pred.store.continue326

pred.store.if325:                                 ; preds = %pred.store.continue324
  store i16 %.sroa.020.0.insert.insert, ptr %i.cn, align 1
  br label %pred.store.continue326

pred.store.continue326:                           ; preds = %pred.store.if325, %pred.store.continue324
  %i.ea = extractelement <8 x i1> %i.dw, i64 3
  br i1 %i.ea, label %pred.store.if327, label %pred.store.continue328

pred.store.if327:                                 ; preds = %pred.store.continue326
  store i16 %.sroa.020.0.insert.insert, ptr %i.cp, align 1
  br label %pred.store.continue328

pred.store.continue328:                           ; preds = %pred.store.if327, %pred.store.continue326
  %i.eb = extractelement <8 x i1> %i.dw, i64 4
  br i1 %i.eb, label %pred.store.if329, label %pred.store.continue330

pred.store.if329:                                 ; preds = %pred.store.continue328
  store i16 %.sroa.020.0.insert.insert, ptr %i.cr, align 1
  br label %pred.store.continue330

pred.store.continue330:                           ; preds = %pred.store.if329, %pred.store.continue328
  %i.ec = extractelement <8 x i1> %i.dw, i64 5
  br i1 %i.ec, label %pred.store.if331, label %pred.store.continue332

pred.store.if331:                                 ; preds = %pred.store.continue330
  store i16 %.sroa.020.0.insert.insert, ptr %i.ct, align 1
  br label %pred.store.continue332

pred.store.continue332:                           ; preds = %pred.store.if331, %pred.store.continue330
  %i.ed = extractelement <8 x i1> %i.dw, i64 6
  br i1 %i.ed, label %pred.store.if333, label %pred.store.continue334

pred.store.if333:                                 ; preds = %pred.store.continue332
  store i16 %.sroa.020.0.insert.insert, ptr %i.cv, align 1
  br label %pred.store.continue334

end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_al88:bb.a

bb.dc:                                            ; preds = %bb.cy
  %i.uu = load i8, ptr %i.ui, align 1, !tbaa !34
  %i.uv = zext i8 %i.uu to i16
  %i.uw = sub nsw i16 %i.uv, %.sroa.0.0.insert.ext.i12
  %i.ux = call i16 @llvm.abs.i16(i16 %i.uw, i1 true)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cz
  %.sroa.0.0.i.i13 = phi i16 [ %spec.select24.i.i33, %bb.cz ], [ %spec.select2223.i.i32, %bb.da ], [ %i.ut, %bb.db ], [ %i.ux, %bb.dc ] ; 3 uses
  %.sroa.0.0.insert.insert.i.i14 = add nuw nsw i16 %.sroa.0.0.i.i13, %.sroa.4.0.insert.shift.i11 ; 4 uses
  %i.uy = icmp ugt i16 %.sroa.4.0.i10, 252
  br i1 %i.uy, label %.sink.split.i.i.i22, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ui, i64 1
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !20  ; 4 uses
  %i.vb = icmp ult i8 %i.va, 3
  br i1 %i.vb, label %.sink.split.i.i.i22, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vc = icmp samesign ult i16 %.sroa.4.0.i10, 3
  br i1 %i.vc, label %blend_non_normal_pixel.exit.i24, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vd = icmp eq i8 %i.va, -1
  br i1 %i.vd, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ve = load i16, ptr %i.ui, align 1            ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i.i28 = and i16 %i.ve, -256
  %narrow.i.i.i.i29 = mul nuw i16 %.sroa.0.0.i.i13, %.sroa.4.0.i10
  %i.vf = and i16 %i.ve, 255
  %i.vg = xor i16 %.sroa.4.0.i10, 255
  %narrow5.i.i.i.i30 = mul nuw i16 %i.vf, %i.vg
  %i.vh = add i16 %narrow5.i.i.i.i30, %narrow.i.i.i.i29
  %i.vi = lshr i16 %i.vh, 8
  %.sroa.03.0.insert.insert.i.i.i.i31 = or disjoint i16 %i.vi, %.sroa.4.0.extract.shift.i.i.i.i28
  br label %.sink.split.i.i.i22

bb.di:                                            ; preds = %bb.dg
  %i.vj = load i8, ptr %i.ku, align 1, !tbaa !21
  %.not.i.i.i15 = icmp eq i8 %i.va, %i.vj
  %i.vk = load i8, ptr %i.kv, align 1
  %i.vl = zext i8 %i.vk to i16
  %.not54.i.i.i16 = icmp eq i16 %.sroa.4.0.i10, %i.vl
  %or.cond233.i = select i1 %.not.i.i.i15, i1 %.not54.i.i.i16, i1 false
  br i1 %or.cond233.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vm = xor i16 %.sroa.4.0.i10, 255
  %i.vn = xor i8 %i.va, -1
  %i.vo = zext i8 %i.vn to i16
  %i.vp = mul nuw i16 %i.vm, %i.vo
  %i.vq = xor i16 %i.vp, -1
  %i.vr = lshr i16 %i.vq, 8                       ; 2 uses
  %i.vs = trunc nuw i16 %i.vr to i8
  store i8 %i.vs, ptr %i.kl, align 2, !tbaa !13
  %narrow.i.i210.i = mul nuw i16 %.sroa.4.0.i10, 255
  %i.vt = udiv i16 %narrow.i.i210.i, %i.vr
  %i.vu = trunc i16 %i.vt to i8
  store i8 %i.vu, ptr %i.km, align 1, !tbaa !14
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.vv = load i16, ptr %i.ui, align 1            ; 4 uses
  %i.vw = load i16, ptr %i.kj, align 2
  %i.vx = icmp eq i16 %i.vv, %i.vw
  %i.vy = load i16, ptr %4, align 2
  %i.vz = icmp eq i16 %.sroa.0.0.insert.insert.i.i14, %i.vy
  %or.cond235.i = select i1 %i.vx, i1 %i.vz, i1 false
  br i1 %or.cond235.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store i16 %.sroa.0.0.insert.insert.i.i14, ptr %4, align 2
  store i16 %i.vv, ptr %i.kj, align 2
  %i.wa = load i8, ptr %i.km, align 1, !tbaa !14
  %.sroa.6.0.insert.ext44.i.i.i17 = zext i8 %i.wa to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i56.i.i.i18 = and i16 %i.vv, -256
  %narrow.i57.i.i.i19 = mul nuw i16 %.sroa.0.0.i.i13, %.sroa.6.0.insert.ext44.i.i.i17
  %i.wb = and i16 %i.vv, 255
  %i.wc = xor i16 %.sroa.6.0.insert.ext44.i.i.i17, 255
  %narrow5.i58.i.i.i20 = mul nuw i16 %i.wc, %i.wb
  %i.wd = add i16 %narrow5.i58.i.i.i20, %narrow.i57.i.i.i19
  %i.we = lshr i16 %i.wd, 8
  %.sroa.03.0.insert.insert.i59.i.i.i21 = or disjoint i16 %i.we, %.sroa.4.0.extract.shift.i56.i.i.i18
  store i16 %.sroa.03.0.insert.insert.i59.i.i.i21, ptr %i.kk, align 2
  %i.wf = load i8, ptr %i.kl, align 2, !tbaa !13
  store i8 %i.wf, ptr %i.kw, align 1, !tbaa !22
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.wg = load i16, ptr %i.kk, align 2
  br label %.sink.split.i.i.i22

.sink.split.i.i.i22:                              ; preds = %bb.dm, %bb.dh, %bb.de, %bb.dd
  %.sink.i.i.i23 = phi i16 [ %i.wg, %bb.dm ], [ %.sroa.03.0.insert.insert.i.i.i.i31, %bb.dh ], [ %.sroa.0.0.insert.insert.i.i14, %bb.de ], [ %.sroa.0.0.insert.insert.i.i14, %bb.dd ]
  store i16 %.sink.i.i.i23, ptr %i.ui, align 1
  br label %blend_non_normal_pixel.exit.i24

blend_non_normal_pixel.exit.i24:                  ; preds = %.sink.split.i.i.i22, %bb.df, %bb.cy
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i9, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, %wide.trip.count.i8
  br i1 %exitcond.not.i26, label %._crit_edge.i27, label %bb.cv, !llvm.loop !76

._crit_edge.i27:                                  ; preds = %blend_non_normal_pixel.exit.i24
  %i.wh = getelementptr inbounds i8, ptr %.2143251.i, i64 %i.kx
  %.3144.i = select i1 %i.tr, ptr null, ptr %i.wh
  %i.wi = getelementptr inbounds nuw i8, ptr %.4253.i, i64 %i.ky
  %i.wj = getelementptr inbounds nuw i8, ptr %.4140252.i, i64 %i.kz
  %i.wk = add nuw nsw i32 %.4149250.i, 1          ; 2 uses
  %exitcond282.not.i = icmp eq i32 %i.wk, %i.jv
  br i1 %exitcond282.not.i, label %argb8888_image_blend.exit, label %.preheader246.i, !llvm.loop !77

argb8888_image_blend.exit:                        ; preds = %._crit_edge.i27, %._crit_edge255.i, %._crit_edge261.i, %._crit_edge267.i, %._crit_edge272.i, %.preheader247.i, %.preheader246.lr.ph.i, %.preheader236.i, %.preheader.lr.ph.i41, %.preheader238.i, %.preheader237.lr.ph.i, %.preheader241.i, %.preheader240.lr.ph.i, %bb.ck, %.preheader243.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.jv

bb.dn:                                            ; preds = %bb.a
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !24 ; 14 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !25 ; 12 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.wq = load i8, ptr %i.wp, align 8, !tbaa !26
  %.fr243.i = freeze i8 %i.wq                     ; 6 uses
  %i.wr = load ptr, ptr %0, align 8, !tbaa !27    ; 8 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !28 ; 5 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !29 ; 8 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !30 ; 5 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !31 ; 5 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @lv_memset(ptr noundef nonnull %3, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.xc = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.xc, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.xd = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 9 uses
  call void @lv_memset(ptr noundef nonnull %i.xd, i8 noundef zeroext 0, i64 noundef 2) #6
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !33
  %i.xg = icmp eq i32 %i.xf, 0
  br i1 %i.xg, label %bb.do, label %.preheader209.i

.preheader209.i:                                  ; preds = %bb.dn
  %i.xh = icmp sgt i32 %i.wo, 0
  br i1 %i.xh, label %.preheader208.lr.ph.i, label %l8_image_blend.exit

.preheader208.lr.ph.i:                            ; preds = %.preheader209.i
  %i.xi = icmp sgt i32 %i.wm, 0
  %i.xj = zext i8 %.fr243.i to i16                ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.xl = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.xm = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.xn = sext i32 %i.xb to i64
  %i.xo = zext i32 %i.wt to i64
  %i.xp = zext i32 %i.wx to i64
  br i1 %i.xi, label %.preheader208.preheader.i, label %l8_image_blend.exit

.preheader208.preheader.i:                        ; preds = %.preheader208.lr.ph.i
  %wide.trip.count.i58 = zext nneg i32 %i.wm to i64
  br label %.preheader208.i

bb.do:                                            ; preds = %bb.dn
  %i.xq = icmp eq ptr %i.wz, null                 ; 2 uses
  %i.xr = zext i8 %.fr243.i to i16                ; 5 uses
  %i.xs = icmp ugt i8 %.fr243.i, -4               ; 2 uses
  %or.cond.i84 = and i1 %i.xs, %i.xq
  br i1 %or.cond.i84, label %.preheader198.i110, label %bb.dp

.preheader198.i110:                               ; preds = %bb.do
  %i.xt = icmp sgt i32 %i.wo, 0
  br i1 %i.xt, label %.preheader.lr.ph.i111, label %l8_image_blend.exit

.preheader.lr.ph.i111:                            ; preds = %.preheader198.i110
  %i.xu = icmp sgt i32 %i.wm, 0
  %i.xv = zext i32 %i.wt to i64                   ; 2 uses
  %i.xw = zext i32 %i.wx to i64                   ; 2 uses
  br i1 %i.xu, label %.preheader.preheader.i112, label %l8_image_blend.exit

.preheader.preheader.i112:                        ; preds = %.preheader.lr.ph.i111
  %wide.trip.count278.i = zext nneg i32 %i.wm to i64 ; 10 uses
  %i.xx = add nsw i32 %i.wo, -1
  %i.xy = zext i32 %i.xx to i64                   ; 2 uses
  %i.xz = mul nuw i64 %i.xv, %i.xy
  %i.ya = shl nuw nsw i64 %wide.trip.count278.i, 1
  %i.yb = getelementptr i8, ptr %i.wr, i64 %i.xz
  %scevgep583 = getelementptr i8, ptr %i.yb, i64 %i.ya
  %i.yc = mul nuw i64 %i.xw, %i.xy
  %i.yd = getelementptr i8, ptr %i.wv, i64 %i.yc
  %scevgep584 = getelementptr i8, ptr %i.yd, i64 %wide.trip.count278.i
  %min.iters.check589 = icmp ult i32 %i.wm, 4
  %bound0585 = icmp ult ptr %i.wr, %scevgep584
  %bound1586 = icmp ult ptr %i.wv, %scevgep583
  %found.conflict587 = and i1 %bound0585, %bound1586
  %min.iters.check590 = icmp ult i32 %i.wm, 16
  %i.ye = and i64 %wide.trip.count278.i, 12
  %n.vec592 = and i64 %wide.trip.count278.i, 2147483632 ; 4 uses
  %cmp.n600 = icmp eq i64 %n.vec592, %wide.trip.count278.i
  %min.epilog.iters.check = icmp eq i64 %i.ye, 0
  %n.vec601 = and i64 %wide.trip.count278.i, 2147483644 ; 3 uses
  %cmp.n606 = icmp eq i64 %n.vec601, %wide.trip.count278.i
  %xtraiter659 = and i64 %wide.trip.count278.i, 3 ; 2 uses
  %lcmp.mod660.not = icmp eq i64 %xtraiter659, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge238.i, %.preheader.preheader.i112
  %.0241.i = phi ptr [ %i.zk, %._crit_edge238.i ], [ %i.wr, %.preheader.preheader.i112 ] ; 9 uses
  %.0125240.i = phi ptr [ %i.zl, %._crit_edge238.i ], [ %i.wv, %.preheader.preheader.i112 ] ; 8 uses
  %.0130239.i = phi i32 [ %i.zm, %._crit_edge238.i ], [ 0, %.preheader.preheader.i112 ]
  %brmerge = select i1 %min.iters.check589, i1 true, i1 %found.conflict587
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check590, label %vec.epilog.ph, label %vector.body593

vector.body593:                                   ; preds = %vector.main.loop.iter.check, %vector.body593
  %index594 = phi i64 [ %index.next598, %vector.body593 ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.0125240.i, i64 %index594 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %wide.load = load <8 x i8>, ptr %i.yf, align 1, !tbaa !15, !alias.scope !121
  %wide.load595 = load <8 x i8>, ptr %i.yg, align 1, !tbaa !15, !alias.scope !121
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %.0241.i, i64 %index594
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %.0241.i, i64 %index594
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %interleaved.vec596 = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec596, ptr %i.yh, align 1, !tbaa !15, !alias.scope !122, !noalias !121
  %interleaved.vec597 = shufflevector <8 x i8> %wide.load595, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec597, ptr %i.yj, align 1, !tbaa !15, !alias.scope !122, !noalias !121
  %index.next598 = add nuw i64 %index594, 16      ; 2 uses
  %i.yk = icmp eq i64 %index.next598, %n.vec592
  br i1 %i.yk, label %middle.block599, label %vector.body593, !llvm.loop !81

middle.block599:                                  ; preds = %vector.body593
  br i1 %cmp.n600, label %._crit_edge238.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block599
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec592, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index602 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next605, %vec.epilog.vector.body ] ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.0125240.i, i64 %index602
  %wide.load603 = load <4 x i8>, ptr %i.yl, align 1, !tbaa !15, !alias.scope !121
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %.0241.i, i64 %index602
  %interleaved.vec604 = shufflevector <4 x i8> %wide.load603, <4 x i8> splat (i8 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec604, ptr %i.ym, align 1, !tbaa !15, !alias.scope !122, !noalias !121
  %index.next605 = add nuw i64 %index602, 4       ; 2 uses
  %i.yn = icmp eq i64 %index.next605, %n.vec601
  br i1 %i.yn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n606, label %._crit_edge238.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv275.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec601, %vec.epilog.middle.block ], [ %n.vec592, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod660.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv275.i.prol = phi i64 [ %indvars.iv.next276.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv275.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.yo = getelementptr inbounds nuw i8, ptr %.0125240.i, i64 %indvars.iv275.i.prol
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !15
  %i.yq = getelementptr inbounds nuw [2 x i8], ptr %.0241.i, i64 %indvars.iv275.i.prol ; 2 uses
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !34
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 1
  store i8 -1, ptr %i.yr, align 1, !tbaa !20
  %indvars.iv.next276.i.prol = add nuw nsw i64 %indvars.iv275.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter659
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !83

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv275.i.unr = phi i64 [ %indvars.iv275.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next276.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ys = sub nsw i64 %indvars.iv275.i.ph, %wide.trip.count278.i
  %i.yt = icmp ugt i64 %i.ys, -4
  br i1 %i.yt, label %._crit_edge238.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv275.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.0125240.i, i64 %indvars.iv275.i
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !15
  %i.yw = getelementptr inbounds nuw [2 x i8], ptr %.0241.i, i64 %indvars.iv275.i ; 2 uses
  store i8 %i.yv, ptr %i.yw, align 1, !tbaa !34
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 1
  store i8 -1, ptr %i.yx, align 1, !tbaa !20
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.0125240.i, i64 %indvars.iv.next276.i
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !15
  %i.za = getelementptr inbounds nuw [2 x i8], ptr %.0241.i, i64 %indvars.iv.next276.i ; 2 uses
  store i8 %i.yz, ptr %i.za, align 1, !tbaa !34
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 1
  store i8 -1, ptr %i.zb, align 1, !tbaa !20
  %indvars.iv.next276.i.1 = add nuw nsw i64 %indvars.iv275.i, 2 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.0125240.i, i64 %indvars.iv.next276.i.1
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !15
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %.0241.i, i64 %indvars.iv.next276.i.1 ; 2 uses
  store i8 %i.zd, ptr %i.ze, align 1, !tbaa !34
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  store i8 -1, ptr %i.zf, align 1, !tbaa !20
  %indvars.iv.next276.i.2 = add nuw nsw i64 %indvars.iv275.i, 3 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.0125240.i, i64 %indvars.iv.next276.i.2
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !15
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %.0241.i, i64 %indvars.iv.next276.i.2 ; 2 uses
  store i8 %i.zh, ptr %i.zi, align 1, !tbaa !34
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 1
  store i8 -1, ptr %i.zj, align 1, !tbaa !20
  %indvars.iv.next276.i.3 = add nuw nsw i64 %indvars.iv275.i, 4 ; 2 uses
  %exitcond279.not.i.3 = icmp eq i64 %indvars.iv.next276.i.3, %wide.trip.count278.i
  br i1 %exitcond279.not.i.3, label %._crit_edge238.i, label %vec.epilog.scalar.ph, !llvm.loop !84

._crit_edge238.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block599
  %i.zk = getelementptr inbounds nuw i8, ptr %.0241.i, i64 %i.xv
  %i.zl = getelementptr inbounds nuw i8, ptr %.0125240.i, i64 %i.xw
  %i.zm = add nuw nsw i32 %.0130239.i, 1          ; 2 uses
  %exitcond280.not.i = icmp eq i32 %i.zm, %i.wo
  br i1 %exitcond280.not.i, label %l8_image_blend.exit, label %iter.check, !llvm.loop !85

bb.dp:                                            ; preds = %bb.do
  %i.zn = icmp ult i8 %.fr243.i, -3               ; 2 uses
  %or.cond5.i85 = and i1 %i.zn, %i.xq
  br i1 %or.cond5.i85, label %.preheader200.i, label %bb.dy

.preheader200.i:                                  ; preds = %bb.dp
  %i.zo = icmp sgt i32 %i.wo, 0
  br i1 %i.zo, label %.preheader199.lr.ph.i, label %l8_image_blend.exit

.preheader199.lr.ph.i:                            ; preds = %.preheader200.i
  %i.zp = icmp sgt i32 %i.wm, 0
  %.sroa.417.0.insert.shift.i = shl nuw i16 %i.xr, 8 ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.zr = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.zs = xor i16 %i.xr, 255                      ; 2 uses
  %narrow.i.i92 = mul nuw i16 %i.xr, 255
  %i.zt = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.zu = zext i32 %i.wt to i64                   ; 2 uses
  %i.zv = zext i32 %i.wx to i64                   ; 2 uses
  br i1 %i.zp, label %.preheader199.lr.ph.split.i, label %l8_image_blend.exit

.preheader199.lr.ph.split.i:                      ; preds = %.preheader199.lr.ph.i
  %i.zw = icmp ult i8 %.fr243.i, 3
  %wide.trip.count272.i = zext nneg i32 %i.wm to i64 ; 3 uses
  br i1 %i.zw, label %.preheader199.us.i.preheader, label %.preheader199.i93

.preheader199.us.i.preheader:                     ; preds = %.preheader199.lr.ph.split.i
  %xtraiter656 = and i64 %wide.trip.count272.i, 1
  %i.zx = icmp eq i32 %i.wm, 1
  %unroll_iter = and i64 %wide.trip.count272.i, 2147483646
  %lcmp.mod657.not = icmp eq i64 %xtraiter656, 0
  %lcmp.mod658 = trunc i32 %i.wm to i1
  br label %.preheader199.us.i

.preheader199.us.i:                               ; preds = %.preheader199.us.i.preheader, %._crit_edge229.split.us.us.i
  %.1233.us.i = phi ptr [ %i.aaq, %._crit_edge229.split.us.us.i ], [ %i.wr, %.preheader199.us.i.preheader ] ; 4 uses
  %.1126231.us.i = phi ptr [ %i.aar, %._crit_edge229.split.us.us.i ], [ %i.wv, %.preheader199.us.i.preheader ] ; 4 uses
  %.1131230.us.i = phi i32 [ %i.aas, %._crit_edge229.split.us.us.i ], [ 0, %.preheader199.us.i.preheader ]
  br i1 %i.zx, label %.epil.preheader, label %.preheader199.us.i.new

.preheader199.us.i.new:                           ; preds = %.preheader199.us.i, %lv_color_16a_16a_mix.exit.us.us.i108.1
  %indvars.iv269.i = phi i64 [ %indvars.iv.next270.i.1, %lv_color_16a_16a_mix.exit.us.us.i108.1 ], [ 0, %.preheader199.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %lv_color_16a_16a_mix.exit.us.us.i108.1 ], [ 0, %.preheader199.us.i ]
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %.1233.us.i, i64 %indvars.iv269.i ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 1
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !20
  %i.aab = icmp ult i8 %i.aaa, 3
  br i1 %i.aab, label %.sink.split.i.us.us.i109, label %lv_color_16a_16a_mix.exit.us.us.i108

.sink.split.i.us.us.i109:                         ; preds = %.preheader199.us.i.new
  %i.aac = getelementptr inbounds nuw i8, ptr %.1126231.us.i, i64 %indvars.iv269.i
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !15
  %.sroa.016.0.insert.ext.us.us.i = zext i8 %i.aad to i16
  %.sroa.016.0.insert.insert.us.us.i = or disjoint i16 %.sroa.417.0.insert.shift.i, %.sroa.016.0.insert.ext.us.us.i
  store i16 %.sroa.016.0.insert.insert.us.us.i, ptr %i.zy, align 1
  br label %lv_color_16a_16a_mix.exit.us.us.i108

lv_color_16a_16a_mix.exit.us.us.i108:             ; preds = %.sink.split.i.us.us.i109, %.preheader199.us.i.new
  %indvars.iv.next270.i = or disjoint i64 %indvars.iv269.i, 1 ; 2 uses
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %.1233.us.i, i64 %indvars.iv.next270.i ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 1
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !20
  %i.aah = icmp ult i8 %i.aag, 3
  br i1 %i.aah, label %.sink.split.i.us.us.i109.1, label %lv_color_16a_16a_mix.exit.us.us.i108.1

.sink.split.i.us.us.i109.1:                       ; preds = %lv_color_16a_16a_mix.exit.us.us.i108
  %i.aai = getelementptr inbounds nuw i8, ptr %.1126231.us.i, i64 %indvars.iv.next270.i
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !15
  %.sroa.016.0.insert.ext.us.us.i.1 = zext i8 %i.aaj to i16
  %.sroa.016.0.insert.insert.us.us.i.1 = or disjoint i16 %.sroa.417.0.insert.shift.i, %.sroa.016.0.insert.ext.us.us.i.1
  store i16 %.sroa.016.0.insert.insert.us.us.i.1, ptr %i.aae, align 1
  br label %lv_color_16a_16a_mix.exit.us.us.i108.1

lv_color_16a_16a_mix.exit.us.us.i108.1:           ; preds = %.sink.split.i.us.us.i109.1, %lv_color_16a_16a_mix.exit.us.us.i108
  %indvars.iv.next270.i.1 = add nuw nsw i64 %indvars.iv269.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge229.split.us.us.i.unr-lcssa, label %.preheader199.us.i.new, !llvm.loop !86

._crit_edge229.split.us.us.i.unr-lcssa:           ; preds = %lv_color_16a_16a_mix.exit.us.us.i108.1
  br i1 %lcmp.mod657.not, label %._crit_edge229.split.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge229.split.us.us.i.unr-lcssa, %.preheader199.us.i
  %indvars.iv269.i.epil.init = phi i64 [ 0, %.preheader199.us.i ], [ %indvars.iv.next270.i.1, %._crit_edge229.split.us.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod658)
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %.1233.us.i, i64 %indvars.iv269.i.epil.init ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 1
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !20
  %i.aan = icmp ult i8 %i.aam, 3
  br i1 %i.aan, label %.sink.split.i.us.us.i109.epil, label %._crit_edge229.split.us.us.i

.sink.split.i.us.us.i109.epil:                    ; preds = %.epil.preheader
  %i.aao = getelementptr inbounds nuw i8, ptr %.1126231.us.i, i64 %indvars.iv269.i.epil.init
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !15
  %.sroa.016.0.insert.ext.us.us.i.epil = zext i8 %i.aap to i16
  %.sroa.016.0.insert.insert.us.us.i.epil = or disjoint i16 %.sroa.417.0.insert.shift.i, %.sroa.016.0.insert.ext.us.us.i.epil
  store i16 %.sroa.016.0.insert.insert.us.us.i.epil, ptr %i.aak, align 1
  br label %._crit_edge229.split.us.us.i

._crit_edge229.split.us.us.i:                     ; preds = %.epil.preheader, %.sink.split.i.us.us.i109.epil, %._crit_edge229.split.us.us.i.unr-lcssa
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1233.us.i, i64 %i.zu
  %i.aar = getelementptr inbounds nuw i8, ptr %.1126231.us.i, i64 %i.zv
  %i.aas = add nuw nsw i32 %.1131230.us.i, 1      ; 2 uses
  %exitcond274.not.i = icmp eq i32 %i.aas, %i.wo
  br i1 %exitcond274.not.i, label %l8_image_blend.exit, label %.preheader199.us.i, !llvm.loop !87

.preheader199.i93:                                ; preds = %.preheader199.lr.ph.split.i, %._crit_edge229.split.i
  %i.aat = phi i8 [ %i.ace, %._crit_edge229.split.i ], [ -1, %.preheader199.lr.ph.split.i ]
  %i.aau = phi i8 [ %i.acf, %._crit_edge229.split.i ], [ -1, %.preheader199.lr.ph.split.i ]
  %.1233.i = phi ptr [ %i.acg, %._crit_edge229.split.i ], [ %i.wr, %.preheader199.lr.ph.split.i ] ; 2 uses
  %.1126231.i = phi ptr [ %i.ach, %._crit_edge229.split.i ], [ %i.wv, %.preheader199.lr.ph.split.i ] ; 2 uses
  %.1131230.i = phi i32 [ %i.aci, %._crit_edge229.split.i ], [ 0, %.preheader199.lr.ph.split.i ]
  br label %bb.dq

bb.dq:                                            ; preds = %.sink.split.i.i102, %.preheader199.i93
  %i.aav = phi i8 [ %i.aat, %.preheader199.i93 ], [ %i.ace, %.sink.split.i.i102 ] ; 3 uses
  %i.aaw = phi i8 [ %i.aau, %.preheader199.i93 ], [ %i.acf, %.sink.split.i.i102 ] ; 3 uses
  %indvars.iv263.i = phi i64 [ 0, %.preheader199.i93 ], [ %indvars.iv.next264.i, %.sink.split.i.i102 ] ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.1126231.i, i64 %indvars.iv263.i
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !15
  %i.aaz = getelementptr inbounds nuw [2 x i8], ptr %.1233.i, i64 %indvars.iv263.i ; 4 uses
  %.sroa.016.0.insert.ext.i = zext i8 %i.aay to i16 ; 3 uses
  %.sroa.016.0.insert.insert.i = or disjoint i16 %.sroa.417.0.insert.shift.i, %.sroa.016.0.insert.ext.i ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !20 ; 4 uses
  %i.abc = icmp ult i8 %i.abb, 3
  br i1 %i.abc, label %.sink.split.i.i102, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.abd = icmp eq i8 %i.abb, -1
  br i1 %i.abd, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.abe = load i16, ptr %i.aaz, align 1          ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i104 = and i16 %i.abe, -256
  %narrow.i.i.i105 = mul nuw i16 %.sroa.016.0.insert.ext.i, %i.xr
  %i.abf = and i16 %i.abe, 255
  %narrow5.i.i.i106 = mul nuw i16 %i.abf, %i.zs
end_hunk_1
