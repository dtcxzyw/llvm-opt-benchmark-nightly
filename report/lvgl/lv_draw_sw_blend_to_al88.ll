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
  %.fr257 = freeze i8 %i.f                        ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 3 uses
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
  %i.q = icmp eq ptr %i.h, null                   ; 3 uses
  %i.r = icmp ugt i8 %.fr257, -4                  ; 2 uses
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload40 = load i24, ptr %i.s, align 4
  %i.t = call zeroext i8 @lv_color_luminance(i24 %.0.copyload40) #6 ; 21 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.v = icmp sgt i32 %i.d, 0
  br i1 %i.v, label %.preheader228.lr.ph, label %.loopexit

.preheader228.lr.ph:                              ; preds = %bb.b
  %i.w = icmp sgt i32 %i.b, 16
  %i.x = zext i32 %i.l to i64                     ; 2 uses
  br i1 %i.w, label %.preheader228.us.preheader, label %.preheader228.lr.ph.split

.preheader228.us.preheader:                       ; preds = %.preheader228.lr.ph
  %i.y = add nsw i32 %i.b, -16
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = zext nneg i32 %i.b to i64               ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.z, i64 16)
  %i.ab = add nsw i64 %umax, -1
  %i.ac = and i64 %i.ab, -16                      ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 17
  %umax345 = call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.aa) ; 3 uses
  %i.ae = add i64 %umax345, -16
  %i.af = sub i64 %i.ae, %i.ac                    ; 4 uses
  %min.iters.check347 = icmp ult i64 %i.af, 4
  %min.iters.check348 = icmp ult i64 %i.af, 16
  %i.ag = and i64 %umax345, 15                    ; 3 uses
  %n.vec350 = sub nuw i64 %i.af, %i.ag            ; 3 uses
  %broadcast.splatinsert351 = insertelement <8 x i8> poison, i8 %i.t, i64 0
  %interleaved.vec355 = shufflevector <8 x i8> %broadcast.splatinsert351, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15> ; 2 uses
  %cmp.n359 = icmp eq i64 %i.ag, 0
  %min.epilog.iters.check = icmp samesign ult i64 %i.ag, 4
  %i.ah = and i64 %umax345, 3                     ; 2 uses
  %n.vec360 = sub i64 %i.af, %i.ah                ; 2 uses
  %broadcast.splatinsert361 = insertelement <4 x i8> poison, i8 %i.t, i64 0
  %interleaved.vec364 = shufflevector <4 x i8> %broadcast.splatinsert361, <4 x i8> splat (i8 -1), <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  %cmp.n366 = icmp eq i64 %i.ah, 0
  br label %.preheader228.us

.preheader228.us:                                 ; preds = %.preheader228.us.preheader, %._crit_edge254.us
  %.0174256.us = phi ptr [ %i.bb, %._crit_edge254.us ], [ %i.u, %.preheader228.us.preheader ] ; 6 uses
  %.0176255.us = phi i32 [ %i.bc, %._crit_edge254.us ], [ 0, %.preheader228.us.preheader ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader228.us, %bb.c
  %indvars.iv289 = phi i64 [ 0, %.preheader228.us ], [ %indvars.iv.next290, %bb.c ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %indvars.iv289 ; 32 uses
  store i8 %i.t, ptr %i.ai, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 -1, ptr %.sroa.20.0..sroa_idx.us, align 1, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx59.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store i8 -1, ptr %.sroa.20.0..sroa_idx59.us, align 1, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i8 %i.t, ptr %i.ak, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx61.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  store i8 -1, ptr %.sroa.20.0..sroa_idx61.us, align 1, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  store i8 %i.t, ptr %i.al, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx63.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 7
  store i8 -1, ptr %.sroa.20.0..sroa_idx63.us, align 1, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 %i.t, ptr %i.am, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx65.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  store i8 -1, ptr %.sroa.20.0..sroa_idx65.us, align 1, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  store i8 %i.t, ptr %i.an, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx67.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  store i8 -1, ptr %.sroa.20.0..sroa_idx67.us, align 1, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i8 %i.t, ptr %i.ao, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx69.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 13
  store i8 -1, ptr %.sroa.20.0..sroa_idx69.us, align 1, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 14
  store i8 %i.t, ptr %i.ap, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx71.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 15
  store i8 -1, ptr %.sroa.20.0..sroa_idx71.us, align 1, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i8 %i.t, ptr %i.aq, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx73.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  store i8 -1, ptr %.sroa.20.0..sroa_idx73.us, align 1, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 18
  store i8 %i.t, ptr %i.ar, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx75.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 19
  store i8 -1, ptr %.sroa.20.0..sroa_idx75.us, align 1, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i8 %i.t, ptr %i.as, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx77.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 21
  store i8 -1, ptr %.sroa.20.0..sroa_idx77.us, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 22
  store i8 %i.t, ptr %i.at, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx79.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 23
  store i8 -1, ptr %.sroa.20.0..sroa_idx79.us, align 1, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i8 %i.t, ptr %i.au, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx81.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 25
  store i8 -1, ptr %.sroa.20.0..sroa_idx81.us, align 1, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 26
  store i8 %i.t, ptr %i.av, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx83.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 27
  store i8 -1, ptr %.sroa.20.0..sroa_idx83.us, align 1, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i8 %i.t, ptr %i.aw, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx85.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 29
  store i8 -1, ptr %.sroa.20.0..sroa_idx85.us, align 1, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 30
  store i8 %i.t, ptr %i.ax, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx87.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 31
  store i8 -1, ptr %.sroa.20.0..sroa_idx87.us, align 1, !tbaa !15
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 16 ; 8 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next290, %i.z
  br i1 %i.ay, label %bb.c, label %..preheader_crit_edge.us, !llvm.loop !35

.lr.ph253.us:                                     ; preds = %.lr.ph253.us.preheader, %.lr.ph253.us
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %.lr.ph253.us ], [ %indvars.iv294.ph, %.lr.ph253.us.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %indvars.iv294 ; 2 uses
  store i8 %i.t, ptr %i.az, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx89.us = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 -1, ptr %.sroa.20.0..sroa_idx89.us, align 1, !tbaa !15
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next295, %i.aa
  br i1 %i.ba, label %.lr.ph253.us, label %._crit_edge254.us, !llvm.loop !36

._crit_edge254.us:                                ; preds = %.lr.ph253.us, %middle.block358, %vec.epilog.middle.block, %..preheader_crit_edge.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.0174256.us, i64 %i.x
  %i.bc = add nuw nsw i32 %.0176255.us, 1         ; 2 uses
  %exitcond297.not = icmp eq i32 %i.bc, %i.d
  br i1 %exitcond297.not, label %.loopexit, label %.preheader228.us, !llvm.loop !37

..preheader_crit_edge.us:                         ; preds = %bb.c
  %i.bd = trunc nuw nsw i64 %indvars.iv.next290 to i32
  %i.be = icmp sgt i32 %i.b, %i.bd
  br i1 %i.be, label %iter.check, label %._crit_edge254.us

iter.check:                                       ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check347, label %.lr.ph253.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check348, label %vec.epilog.ph, label %vector.ph349

vector.ph349:                                     ; preds = %vector.main.loop.iter.check
  %i.bf = add i64 %indvars.iv.next290, %n.vec350
  br label %vector.body353

vector.body353:                                   ; preds = %vector.ph349, %vector.body353
  %index354 = phi i64 [ 0, %vector.ph349 ], [ %index.next357, %vector.body353 ] ; 2 uses
  %i.bg = add nuw i64 %indvars.iv.next290, %index354 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <16 x i8> %interleaved.vec355, ptr %i.bh, align 1, !tbaa !15
  store <16 x i8> %interleaved.vec355, ptr %i.bj, align 1, !tbaa !15
  %index.next357 = add nuw i64 %index354, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.bk, label %middle.block358, label %vector.body353, !llvm.loop !38

middle.block358:                                  ; preds = %vector.body353
  br i1 %cmp.n359, label %._crit_edge254.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block358
  br i1 %min.epilog.iters.check, label %.lr.ph253.us.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec350, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bl = add i64 %indvars.iv.next290, %n.vec360
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.0174256.us, i64 %indvars.iv.next290
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index363 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next365, %vec.epilog.vector.body ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %index363
  store <8 x i8> %interleaved.vec364, ptr %i.bn, align 1, !tbaa !15
  %index.next365 = add nuw i64 %index363, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next365, %n.vec360
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n366, label %._crit_edge254.us, label %.lr.ph253.us.preheader

.lr.ph253.us.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv294.ph = phi i64 [ %indvars.iv.next290, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph253.us

.preheader228.lr.ph.split:                        ; preds = %.preheader228.lr.ph
  %i.bp = icmp sgt i32 %i.b, 0
  br i1 %i.bp, label %.preheader228.preheader, label %.loopexit

.preheader228.preheader:                          ; preds = %.preheader228.lr.ph.split
  %wide.trip.count286 = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check337 = icmp ult i32 %i.b, 8
  %n.vec339 = and i64 %wide.trip.count286, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.t, i64 0 ; 2 uses
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  %i.bq = icmp eq i64 %n.vec339, 8
  %interleaved.vec.1 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  %cmp.n = icmp eq i64 %n.vec339, %wide.trip.count286
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.preheader, %._crit_edge254
  %.0174256 = phi ptr [ %i.bt, %._crit_edge254 ], [ %i.u, %.preheader228.preheader ] ; 4 uses
  %.0176255 = phi i32 [ %i.bu, %._crit_edge254 ], [ 0, %.preheader228.preheader ]
  br i1 %min.iters.check337, label %scalar.ph336.preheader, label %vector.body340

vector.body340:                                   ; preds = %.preheader228
  store <16 x i8> %interleaved.vec, ptr %.0174256, align 1, !tbaa !15
  br i1 %i.bq, label %middle.block343, label %vector.body340.1

vector.body340.1:                                 ; preds = %vector.body340
  %i.br = getelementptr inbounds nuw i8, ptr %.0174256, i64 16
  store <16 x i8> %interleaved.vec.1, ptr %i.br, align 1, !tbaa !15
  br label %middle.block343

middle.block343:                                  ; preds = %vector.body340.1, %vector.body340
  br i1 %cmp.n, label %._crit_edge254, label %scalar.ph336.preheader

scalar.ph336.preheader:                           ; preds = %.preheader228, %middle.block343
  %indvars.iv283.ph = phi i64 [ 0, %.preheader228 ], [ %n.vec339, %middle.block343 ]
  br label %scalar.ph336

scalar.ph336:                                     ; preds = %scalar.ph336.preheader, %scalar.ph336
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph336 ], [ %indvars.iv283.ph, %scalar.ph336.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.0174256, i64 %indvars.iv283 ; 2 uses
  store i8 %i.t, ptr %i.bs, align 1, !tbaa !15
  %.sroa.20.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 -1, ptr %.sroa.20.0..sroa_idx89, align 1, !tbaa !15
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge254, label %scalar.ph336, !llvm.loop !40

._crit_edge254:                                   ; preds = %scalar.ph336, %middle.block343
  %i.bt = getelementptr inbounds nuw i8, ptr %.0174256, i64 %i.x
  %i.bu = add nuw nsw i32 %.0176255, 1            ; 2 uses
  %exitcond288.not = icmp eq i32 %i.bu, %i.d
  br i1 %exitcond288.not, label %.loopexit, label %.preheader228, !llvm.loop !37

bb.d:                                             ; preds = %bb.a
  %i.bv = icmp ult i8 %.fr257, -3
  %or.cond5 = and i1 %i.q, %i.bv
  br i1 %or.cond5, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload18 = load i24, ptr %i.bw, align 4
  %i.bx = call zeroext i8 @lv_color_luminance(i24 %.0.copyload18) #6
  %i.by = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.bz = icmp sgt i32 %i.d, 0
  br i1 %i.bz, label %.preheader229.lr.ph, label %.loopexit

.preheader229.lr.ph:                              ; preds = %bb.e
  %i.ca = icmp sgt i32 %i.b, 0
  %.sroa.421.0.insert.ext = zext i8 %.fr257 to i16 ; 4 uses
  %.sroa.421.0.insert.shift = shl nuw i16 %.sroa.421.0.insert.ext, 8
  %.sroa.020.0.insert.ext = zext i8 %i.bx to i16  ; 3 uses
  %.sroa.020.0.insert.insert = or disjoint i16 %.sroa.421.0.insert.shift, %.sroa.020.0.insert.ext ; 12 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cd = xor i16 %.sroa.421.0.insert.ext, 255    ; 2 uses
  %narrow.i = mul nuw i16 %.sroa.421.0.insert.ext, 255
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 5
  %narrow.i.i = mul nuw i16 %.sroa.020.0.insert.ext, %.sroa.421.0.insert.ext
  %i.cf = zext i32 %i.l to i64                    ; 2 uses
  br i1 %i.ca, label %.preheader229.lr.ph.split, label %.loopexit

.preheader229.lr.ph.split:                        ; preds = %.preheader229.lr.ph
  %i.cg = icmp ult i8 %.fr257, 3
  %wide.trip.count280 = zext nneg i32 %i.b to i64 ; 4 uses
  br i1 %i.cg, label %.preheader229.us.preheader, label %.preheader229

.preheader229.us.preheader:                       ; preds = %.preheader229.lr.ph.split
  %min.iters.check = icmp ult i32 %i.b, 9
  %i.ch = and i64 %wide.trip.count280, 7          ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec = sub nsw i64 %wide.trip.count280, %i.cj ; 2 uses
  br label %.preheader229.us

.preheader229.us:                                 ; preds = %.preheader229.us.preheader, %._crit_edge245.split.us.us
  %.0173247.us = phi ptr [ %i.el, %._crit_edge245.split.us.us ], [ %i.by, %.preheader229.us.preheader ] ; 10 uses
  %.1177246.us = phi i32 [ %i.em, %._crit_edge245.split.us.us ], [ 0, %.preheader229.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader229.us, %pred.store.continue335
  %index = phi i64 [ %index.next, %pred.store.continue335 ], [ 0, %.preheader229.us ] ; 9 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 6
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 10
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.0173247.us, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 5
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 11
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 13
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 15
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !20
  %i.di = load i8, ptr %i.da, align 1, !tbaa !20
  %i.dj = load i8, ptr %i.db, align 1, !tbaa !20
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !20
  %i.dl = load i8, ptr %i.dd, align 1, !tbaa !20
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !20
  %i.dn = load i8, ptr %i.df, align 1, !tbaa !20
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !20
  %i.dp = insertelement <8 x i8> poison, i8 %i.dh, i64 0
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.di, i64 1
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 2
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 3
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 4
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 5
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 6
  %i.dw = insertelement <8 x i8> %i.dv, i8 %i.do, i64 7
  %i.dx = icmp ult <8 x i8> %i.dw, splat (i8 3)   ; 8 uses
  %i.dy = extractelement <8 x i1> %i.dx, i64 0
  br i1 %i.dy, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 %.sroa.020.0.insert.insert, ptr %i.ck, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.dz = extractelement <8 x i1> %i.dx, i64 1
  br i1 %i.dz, label %pred.store.if322.a, label %pred.store.continue323.a

pred.store.if322.a:                               ; preds = %pred.store.continue
  store i16 %.sroa.020.0.insert.insert, ptr %i.cm, align 1
  br label %pred.store.continue323.a

pred.store.continue323.a:                         ; preds = %pred.store.if322.a, %pred.store.continue
  %i.ea = extractelement <8 x i1> %i.dx, i64 2
  br i1 %i.ea, label %pred.store.if324.a, label %pred.store.continue325.a

pred.store.if324.a:                               ; preds = %pred.store.continue323.a
  store i16 %.sroa.020.0.insert.insert, ptr %i.co, align 1
  br label %pred.store.continue325.a

pred.store.continue325.a:                         ; preds = %pred.store.if324.a, %pred.store.continue323.a
  %i.eb = extractelement <8 x i1> %i.dx, i64 3
  br i1 %i.eb, label %pred.store.if326.a, label %pred.store.continue327.a

pred.store.if326.a:                               ; preds = %pred.store.continue325.a
  store i16 %.sroa.020.0.insert.insert, ptr %i.cq, align 1
  br label %pred.store.continue327.a

pred.store.continue327.a:                         ; preds = %pred.store.if326.a, %pred.store.continue325.a
  %i.ec = extractelement <8 x i1> %i.dx, i64 4
  br i1 %i.ec, label %pred.store.if328.a, label %pred.store.continue329.a

pred.store.if328.a:                               ; preds = %pred.store.continue327.a
  store i16 %.sroa.020.0.insert.insert, ptr %i.cs, align 1
  br label %pred.store.continue329.a

pred.store.continue329.a:                         ; preds = %pred.store.if328.a, %pred.store.continue327.a
  %i.ed = extractelement <8 x i1> %i.dx, i64 5
  br i1 %i.ed, label %pred.store.if330.a, label %pred.store.continue331.a

pred.store.if330.a:                               ; preds = %pred.store.continue329.a
  store i16 %.sroa.020.0.insert.insert, ptr %i.cu, align 1
  br label %pred.store.continue331.a

pred.store.continue331.a:                         ; preds = %pred.store.if330.a, %pred.store.continue329.a
  %i.ee = extractelement <8 x i1> %i.dx, i64 6
  br i1 %i.ee, label %pred.store.if332.a, label %pred.store.continue333.a

pred.store.if332.a:                               ; preds = %pred.store.continue331.a
  store i16 %.sroa.020.0.insert.insert, ptr %i.cw, align 1
  br label %pred.store.continue333.a

pred.store.continue333.a:                         ; preds = %pred.store.if332.a, %pred.store.continue331.a
  %i.ef = extractelement <8 x i1> %i.dx, i64 7
  br i1 %i.ef, label %pred.store.if334, label %pred.store.continue335
end_hunk_0
