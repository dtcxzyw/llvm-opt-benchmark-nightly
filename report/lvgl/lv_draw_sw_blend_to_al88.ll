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
  %i.bg = add i64 %indvars.iv292, %n.vec351
  br label %vector.body354

vector.body354:                                   ; preds = %vector.ph350, %vector.body354
  %index355 = phi i64 [ 0, %vector.ph350 ], [ %index.next358, %vector.body354 ] ; 2 uses
  %i.bh = add nuw i64 %indvars.iv292, %index355   ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <16 x i8> %interleaved.vec356, ptr %i.bi, align 1, !tbaa !15
  store <16 x i8> %interleaved.vec356, ptr %i.bk, align 1, !tbaa !15
  %index.next358 = add nuw i64 %index355, 16      ; 2 uses
  %i.bl = icmp eq i64 %index.next358, %n.vec351
  br i1 %i.bl, label %middle.block359, label %vector.body354, !llvm.loop !38

middle.block359:                                  ; preds = %vector.body354
  br i1 %cmp.n360, label %._crit_edge254.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block359
  br i1 %min.epilog.iters.check, label %.lr.ph253.us.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec351, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bm = add i64 %indvars.iv292, %n.vec362
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %indvars.iv292
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index365 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next367, %vec.epilog.vector.body ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %index365
  store <8 x i8> %interleaved.vec366, ptr %i.bo, align 1, !tbaa !15
  %index.next367 = add nuw i64 %index365, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next367, %n.vec362
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n368, label %._crit_edge254.us, label %.lr.ph253.us.preheader

.lr.ph253.us.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv294.ph = phi i64 [ %indvars.iv292, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph253.us

.preheader228.lr.ph.split:                        ; preds = %.preheader228.lr.ph
  %i.bq = icmp sgt i32 %i.b, 0
  br i1 %i.bq, label %.preheader228.preheader, label %.loopexit

.preheader228.preheader:                          ; preds = %.preheader228.lr.ph.split
  %wide.trip.count286 = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check338 = icmp ult i32 %i.b, 8
  %n.vec340 = and i64 %wide.trip.count286, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.u, i64 0 ; 2 uses
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  %i.br = icmp eq i64 %n.vec340, 8
  %interleaved.vec.1 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  %cmp.n = icmp eq i64 %n.vec340, %wide.trip.count286
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.preheader, %._crit_edge254
  %.0174256 = phi ptr [ %i.bu, %._crit_edge254 ], [ %i.v, %.preheader228.preheader ] ; 4 uses
  %.0176255 = phi i32 [ %i.bv, %._crit_edge254 ], [ 0, %.preheader228.preheader ]
  br i1 %min.iters.check338, label %scalar.ph337.preheader, label %vector.body341

vector.body341:                                   ; preds = %.preheader228
  store <16 x i8> %interleaved.vec, ptr %.0174256, align 1, !tbaa !15
  br i1 %i.br, label %middle.block344, label %vector.body341.1

vector.body341.1:                                 ; preds = %vector.body341
  %i.bs = getelementptr inbounds nuw i8, ptr %.0174256, i64 16
  store <16 x i8> %interleaved.vec.1, ptr %i.bs, align 1, !tbaa !15
  br label %middle.block344

middle.block344:                                  ; preds = %vector.body341.1, %vector.body341
  br i1 %cmp.n, label %._crit_edge254, label %scalar.ph337.preheader

scalar.ph337.preheader:                           ; preds = %.preheader228, %middle.block344
  %indvars.iv283.ph = phi i64 [ 0, %.preheader228 ], [ %n.vec340, %middle.block344 ]
  br label %scalar.ph337

scalar.ph337:                                     ; preds = %scalar.ph337.preheader, %scalar.ph337
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph337 ], [ %indvars.iv283.ph, %scalar.ph337.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.0174256, i64 %indvars.iv283 ; 2 uses
  store i8 %i.u, ptr %i.bt, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 -1, ptr %.sroa.20.0..sroa_idx89, align 1, !tbaa !15
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge254, label %scalar.ph337, !llvm.loop !40

._crit_edge254:                                   ; preds = %scalar.ph337, %middle.block344
  %i.bu = getelementptr inbounds nuw i8, ptr %.0174256, i64 %i.y
  %i.bv = add nuw nsw i32 %.0176255, 1            ; 2 uses
  %exitcond288.not = icmp eq i32 %i.bv, %i.d
  br i1 %exitcond288.not, label %.loopexit, label %.preheader228, !llvm.loop !37

bb.d:                                             ; preds = %bb.a
  %i.bw = icmp ult i8 %.fr257, -3
  %or.cond5 = and i1 %i.q, %i.bw
  br i1 %or.cond5, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload18 = load i24, ptr %i.bx, align 4
  %i.by = call zeroext i8 @lv_color_luminance(i24 %.0.copyload18) #6
  %i.bz = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.ca = icmp sgt i32 %i.d, 0
  br i1 %i.ca, label %.preheader229.lr.ph, label %.loopexit

.preheader229.lr.ph:                              ; preds = %bb.e
  %i.cb = icmp sgt i32 %i.b, 0
  %.sroa.421.0.insert.shift = shl nuw i16 %i.r, 8
  %.sroa.020.0.insert.ext = zext i8 %i.by to i16  ; 3 uses
  %.sroa.020.0.insert.insert = or disjoint i16 %.sroa.421.0.insert.shift, %.sroa.020.0.insert.ext ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ce = xor i16 %i.r, 255                       ; 2 uses
  %narrow.i = mul nuw i16 %i.r, 255
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 5
  %narrow.i.i = mul nuw i16 %.sroa.020.0.insert.ext, %i.r
  %i.cg = zext i32 %i.l to i64                    ; 2 uses
  br i1 %i.cb, label %.preheader229.lr.ph.split, label %.loopexit

.preheader229.lr.ph.split:                        ; preds = %.preheader229.lr.ph
  %i.ch = icmp ult i8 %.fr257, 3
  %wide.trip.count280 = zext nneg i32 %i.b to i64 ; 4 uses
  br i1 %i.ch, label %.preheader229.us.preheader, label %.preheader229

.preheader229.us.preheader:                       ; preds = %.preheader229.lr.ph.split
  %min.iters.check = icmp ult i32 %i.b, 9
  %i.ci = and i64 %wide.trip.count280, 7          ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = select i1 %i.cj, i64 8, i64 %i.ci
  %n.vec = sub nsw i64 %wide.trip.count280, %i.ck ; 2 uses
  br label %.preheader229.us

.preheader229.us:                                 ; preds = %.preheader229.us.preheader, %._crit_edge245.split.us.us
  %.0173247.us = phi ptr [ %i.em, %._crit_edge245.split.us.us ], [ %i.bz, %.preheader229.us.preheader ] ; 10 uses
  %.1177246.us = phi i32 [ %i.en, %._crit_edge245.split.us.us ], [ 0, %.preheader229.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader229.us, %pred.store.continue336
  %index = phi i64 [ %index.next, %pred.store.continue336 ], [ 0, %.preheader229.us ] ; 9 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 10
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 7
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 9
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 11
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 15
  %i.di = load i8, ptr %i.da, align 1, !tbaa !20
  %i.dj = load i8, ptr %i.db, align 1, !tbaa !20
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !20
  %i.dl = load i8, ptr %i.dd, align 1, !tbaa !20
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !20
  %i.dn = load i8, ptr %i.df, align 1, !tbaa !20
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !20
  %i.dp = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dq = insertelement <8 x i8> poison, i8 %i.di, i64 0
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 1
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 2
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 3
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 4
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 5
  %i.dw = insertelement <8 x i8> %i.dv, i8 %i.do, i64 6
  %i.dx = insertelement <8 x i8> %i.dw, i8 %i.dp, i64 7
  %i.dy = icmp ult <8 x i8> %i.dx, splat (i8 3)   ; 8 uses
  %i.dz = extractelement <8 x i1> %i.dy, i64 0
  br i1 %i.dz, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 %.sroa.020.0.insert.insert, ptr %i.cl, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ea = extractelement <8 x i1> %i.dy, i64 1
  br i1 %i.ea, label %pred.store.if323, label %pred.store.continue324

pred.store.if323:                                 ; preds = %pred.store.continue
  store i16 %.sroa.020.0.insert.insert, ptr %i.cn, align 1
  br label %pred.store.continue324

pred.store.continue324:                           ; preds = %pred.store.if323, %pred.store.continue
  %i.eb = extractelement <8 x i1> %i.dy, i64 2
  br i1 %i.eb, label %pred.store.if325, label %pred.store.continue326

pred.store.if325:                                 ; preds = %pred.store.continue324
  store i16 %.sroa.020.0.insert.insert, ptr %i.cp, align 1
  br label %pred.store.continue326

end_hunk_0
