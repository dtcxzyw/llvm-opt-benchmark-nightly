inline.NumInlined: 129
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dt_iop_order_iccprofile_info_t = type { i32, [512 x i8], i32, [56 x i8], [4 x [4 x float]], [4 x [4 x float]], i32, [3 x ptr], [3 x ptr], [8 x i8], [3 x [3 x float]], [12 x i8], [3 x [3 x float]], i32, float, [36 x i8], [4 x [4 x float]], [4 x [4 x float]], [3 x [2 x float]], [2 x float], [32 x i8] }

@switch.table.dt_develop_blendif_rgb_hsl_blend = private unnamed_addr constant [34 x ptr] [ptr @_blend_lighten, ptr @_blend_darken, ptr @_blend_multiply, ptr @_blend_average, ptr @_blend_add, ptr @_blend_subtract, ptr @_blend_difference, ptr @_blend_screen, ptr @_blend_overlay, ptr @_blend_softlight, ptr @_blend_hardlight, ptr @_blend_vividlight, ptr @_blend_linearlight, ptr @_blend_pinlight, ptr @_blend_lightness, ptr @_blend_chromaticity, ptr @_blend_hue, ptr @_blend_color, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_coloradjust, ptr @_blend_difference, ptr @_blend_normal_unbounded, ptr @_blend_normal_bounded, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_HSV_value, ptr @_blend_HSV_color, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_normal_unbounded, ptr @_blend_RGB_R, ptr @_blend_RGB_G, ptr @_blend_RGB_B], align 8

; Function Attrs: nounwind uwtable
define void @dt_develop_blendif_rgb_hsl_make_mask(ptr noundef %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noalias noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca [96 x float], align 64            ; 6 uses
  %6 = alloca %struct.dt_iop_order_iccprofile_info_t, align 64 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.j = load i32, ptr %i.i, align 4, !tbaa !30
  %.not = icmp eq i32 %i.j, 4
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = load <2 x i32>, ptr %4, align 4, !tbaa !31
  %i.l = load <2 x i32>, ptr %3, align 4, !tbaa !31
  %i.m = sub nsw <2 x i32> %i.k, %i.l             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !34   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36   ; 2 uses
  %i.x = and i32 %i.w, 2                          ; 2 uses
  %i.y = and i32 %i.w, 1                          ; 3 uses
  %.not141 = icmp eq i32 %i.x, 0                  ; 2 uses
  %i.z = select i1 %.not141, i32 0, i32 2013200384
  %i.aa = xor i32 %i.z, %i.u                      ; 3 uses
  %i.ab = lshr i32 %i.aa, 16
  %i.ac = and i32 %i.u, 30719                     ; 2 uses
  %i.ad = xor i32 %i.ac, 30719
  %i.ae = and i32 %i.ad, %i.ab                    ; 2 uses
  %i.af = sext i32 %i.q to i64                    ; 11 uses
  %i.ag = sext i32 %i.s to i64                    ; 9 uses
  %i.ah = mul nsw i64 %i.ag, %i.af                ; 59 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !37
  %7 = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aj, float 0.000000e+00)
  %i.ak = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %7, float 1.000000e+02)
  %8 = fmul reassoc nnan nsz arcp contract afn float %i.ak, f0x3C23D70A ; 33 uses
  %i.al = load i32, ptr %i.h, align 4, !tbaa !38
  %i.am = and i32 %i.al, 4
  %.not142 = icmp eq i32 %i.am, 0
  br i1 %.not142, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ne i32 %i.ae, 0
  %i.ao = icmp ne i32 %i.ac, 0                    ; 2 uses
  %or.cond = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not143 = icmp eq i32 %i.y, 0
  br i1 %.not143, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not182 = icmp eq i64 %i.ah, 0
  br i1 %.not182, label %.loopexit, label %iter.check386

iter.check386:                                    ; preds = %.preheader
  %min.iters.check369 = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check369, label %.lr.ph174.preheader, label %vector.main.loop.iter.check370

vector.main.loop.iter.check370:                   ; preds = %iter.check386
  %min.iters.check371 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check371, label %vec.epilog.ph390, label %vector.ph372

vector.ph372:                                     ; preds = %vector.main.loop.iter.check370
  %i.ap = and i64 %i.ah, 28
  %n.vec373 = and i64 %i.ah, -32                  ; 4 uses
  %broadcast.splatinsert374 = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat375 = shufflevector <8 x float> %broadcast.splatinsert374, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph372
  %index377 = phi i64 [ 0, %vector.ph372 ], [ %index.next382, %vector.body376 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index377 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 2 uses
  %wide.load378 = load <8 x float>, ptr %i.aq, align 4, !tbaa !39
  %wide.load379 = load <8 x float>, ptr %i.ar, align 4, !tbaa !39
  %wide.load380 = load <8 x float>, ptr %i.as, align 4, !tbaa !39
  %wide.load381 = load <8 x float>, ptr %i.at, align 4, !tbaa !39
  %i.au = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load378
  %i.av = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load379
  %i.aw = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load380
  %i.ax = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load381
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.au, %broadcast.splat375
  %i.az = fmul reassoc nsz arcp contract afn <8 x float> %i.av, %broadcast.splat375
  %i.ba = fmul reassoc nsz arcp contract afn <8 x float> %i.aw, %broadcast.splat375
  %i.bb = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, %broadcast.splat375
  store <8 x float> %i.ay, ptr %i.aq, align 4, !tbaa !39
  store <8 x float> %i.az, ptr %i.ar, align 4, !tbaa !39
  store <8 x float> %i.ba, ptr %i.as, align 4, !tbaa !39
  store <8 x float> %i.bb, ptr %i.at, align 4, !tbaa !39
  %index.next382 = add nuw i64 %index377, 32      ; 2 uses
  %i.bc = icmp eq i64 %index.next382, %n.vec373
  br i1 %i.bc, label %middle.block383, label %vector.body376, !llvm.loop !40

middle.block383:                                  ; preds = %vector.body376
  %cmp.n384 = icmp eq i64 %i.ah, %n.vec373
  br i1 %cmp.n384, label %.loopexit, label %vec.epilog.iter.check388

vec.epilog.iter.check388:                         ; preds = %middle.block383
  %min.epilog.iters.check389 = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check389, label %.lr.ph174.preheader, label %vec.epilog.ph390, !prof !43

vec.epilog.ph390:                                 ; preds = %vector.main.loop.iter.check370, %vec.epilog.iter.check388
  %vec.epilog.resume.val385 = phi i64 [ %n.vec373, %vec.epilog.iter.check388 ], [ 0, %vector.main.loop.iter.check370 ]
  %n.vec391 = and i64 %i.ah, -4                   ; 3 uses
  %broadcast.splatinsert392 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat393 = shufflevector <4 x float> %broadcast.splatinsert392, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body394

vec.epilog.vector.body394:                        ; preds = %vec.epilog.vector.body394, %vec.epilog.ph390
  %index395 = phi i64 [ %vec.epilog.resume.val385, %vec.epilog.ph390 ], [ %index.next397, %vec.epilog.vector.body394 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index395 ; 2 uses
  %wide.load396 = load <4 x float>, ptr %i.bd, align 4, !tbaa !39
  %i.be = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %wide.load396
  %i.bf = fmul reassoc nsz arcp contract afn <4 x float> %i.be, %broadcast.splat393
  store <4 x float> %i.bf, ptr %i.bd, align 4, !tbaa !39
  %index.next397 = add nuw i64 %index395, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next397, %n.vec391
  br i1 %i.bg, label %vec.epilog.middle.block398, label %vec.epilog.vector.body394, !llvm.loop !44

vec.epilog.middle.block398:                       ; preds = %vec.epilog.vector.body394
  %cmp.n399 = icmp eq i64 %i.ah, %n.vec391
  br i1 %cmp.n399, label %.loopexit, label %.lr.ph174.preheader

.lr.ph174.preheader:                              ; preds = %iter.check386, %vec.epilog.iter.check388, %vec.epilog.middle.block398
  %.0135173.ph = phi i64 [ 0, %iter.check386 ], [ %n.vec373, %vec.epilog.iter.check388 ], [ %n.vec391, %vec.epilog.middle.block398 ]
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %.lr.ph174
  %.0135173 = phi i64 [ %i.bl, %.lr.ph174 ], [ %.0135173.ph, %.lr.ph174.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0135173 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !39
  %i.bj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bi
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %8
  store float %i.bk, ptr %i.bh, align 4, !tbaa !39
  %i.bl = add nuw i64 %.0135173, 1                ; 2 uses
  %exitcond192.not = icmp eq i64 %i.bl, %i.ah
  br i1 %exitcond192.not, label %.loopexit, label %.lr.ph174, !llvm.loop !45

bb.e:                                             ; preds = %bb.d
  tail call void @dt_iop_image_mul_const(ptr noundef %5, float noundef %8, i64 noundef %i.af, i64 noundef %i.ag, i64 noundef 1) #8
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.bm = icmp eq i32 %i.ae, 0
  %or.cond3 = select i1 %i.bm, i1 %i.ao, i1 false
  br i1 %or.cond3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.lobit = lshr exact i32 %i.x, 1
  %.not144 = icmp eq i32 %i.y, %.lobit
  %i.bn = select reassoc nsz arcp contract afn i1 %.not144, float 0.000000e+00, float %8
  tail call void @dt_iop_image_fill(ptr noundef %5, float noundef %i.bn, i64 noundef %i.af, i64 noundef %i.ag, i64 noundef 1) #8
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @dt_develop_blendif_process_parameters(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bo = call i32 @dt_develop_blendif_init_masking_profile(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 3) #8
  %.not145 = icmp eq i32 %i.bo, 0
  %. = select i1 %.not145, ptr null, ptr %6       ; 2 uses
  %i.bp = shl i64 %i.ah, 2
  %i.bq = call ptr @dt_alloc_aligned(i64 noundef %i.bp) #8 ; 44 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bq, i64 64) ]
  %.not146.not = icmp eq ptr %i.bq, null
  br i1 %.not146.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.br = load i32, ptr %i.c, align 4
  %i.bs = and i32 %i.br, 32768
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.d)
  %i.bt = load i32, ptr %i.d, align 4
  %i.bu = or i32 %i.bt, 32768
  store i32 %i.bu, ptr %i.e, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not175 = icmp eq i64 %i.ah, 0                 ; 5 uses
  br i1 %.not175, label %.preheader159, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check200 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check200, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %i.ah, 28
  %n.vec = and i64 %i.ah, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.bw, align 64, !tbaa !39
  store <8 x float> splat (float 1.000000e+00), ptr %i.bx, align 32, !tbaa !39
  store <8 x float> splat (float 1.000000e+00), ptr %i.by, align 64, !tbaa !39
  store <8 x float> splat (float 1.000000e+00), ptr %i.bz, align 32, !tbaa !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.preheader159, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec201 = and i64 %i.ah, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index202 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next203, %vec.epilog.vector.body ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index202
  store <4 x float> splat (float 1.000000e+00), ptr %i.cb, align 16, !tbaa !39
  %index.next203 = add nuw i64 %index202, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next203, %n.vec201
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

end_hunk_0
begin_hunk_1_@_blendif_combine_channels:bb.a
  %i.uy = fadd reassoc nsz arcp contract afn float %i.ux, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

_dt_RGB_2_Hue.exit.i.i:                           ; preds = %bb.bk, %bb.bj, %bb.bh
  %.0.i.i.i = phi nsz float [ %i.ur, %bb.bh ], [ %i.uv, %bb.bj ], [ %i.uy, %bb.bk ]
  %i.uz = fmul reassoc nsz arcp contract afn float %.0.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.va = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.uz)
  %i.vb = fsub reassoc nsz arcp contract afn float %i.uz, %i.va
  br label %dt_RGB_2_HSL.exit.i

dt_RGB_2_HSL.exit.i:                              ; preds = %_dt_RGB_2_Hue.exit.i.i, %scalar.ph336
  %.024.i.i = phi nsz float [ %i.vb, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %scalar.ph336 ] ; 6 uses
  %.1.i.i = phi nsz float [ %.0.i.i102, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %scalar.ph336 ] ; 6 uses
  %i.vc = fcmp reassoc nsz arcp contract afn ugt float %.024.i.i, %i.pg
  br i1 %i.vc, label %bb.bl, label %_blendif_compute_factor.exit.i100

bb.bl:                                            ; preds = %dt_RGB_2_HSL.exit.i
  %i.vd = load float, ptr %i.ph, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.ve = fcmp reassoc nsz arcp contract afn olt float %.024.i.i, %i.vd
  br i1 %i.ve, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.vf = fsub reassoc nsz arcp contract afn float %.024.i.i, %i.pg
  %i.vg = load float, ptr %i.pl, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.vh = fmul reassoc nsz arcp contract afn float %i.vg, %i.vf
  br label %_blendif_compute_factor.exit.i100

bb.bn:                                            ; preds = %bb.bl
  %i.vi = load float, ptr %i.pi, align 4, !tbaa !39, !alias.scope !173, !noalias !176 ; 2 uses
  %i.vj = fcmp reassoc nsz arcp contract afn ugt float %.024.i.i, %i.vi
  br i1 %i.vj, label %bb.bo, label %_blendif_compute_factor.exit.i100

bb.bo:                                            ; preds = %bb.bn
  %i.vk = load float, ptr %i.pj, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.vl = fcmp reassoc nsz arcp contract afn olt float %.024.i.i, %i.vk
  br i1 %i.vl, label %bb.bp, label %_blendif_compute_factor.exit.i100

bb.bp:                                            ; preds = %bb.bo
  %i.vm = fsub reassoc nsz arcp contract afn float %.024.i.i, %i.vi
  %i.vn = load float, ptr %i.pk, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.vo = fmul reassoc nsz arcp contract afn float %i.vn, %i.vm
  %i.vp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.vo
  br label %_blendif_compute_factor.exit.i100

_blendif_compute_factor.exit.i100:                ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %dt_RGB_2_HSL.exit.i
  %.0.i19.i = phi nsz float [ 1.000000e+00, %bb.bn ], [ %i.vh, %bb.bm ], [ 0.000000e+00, %dt_RGB_2_HSL.exit.i ], [ %i.vp, %bb.bp ], [ 0.000000e+00, %bb.bo ] ; 2 uses
  %i.vq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i19.i
  %i.vr = select reassoc nsz arcp contract afn i1 %.not.i.i99, float %.0.i19.i, float %i.vq
  %i.vs = fcmp reassoc nsz arcp contract afn ugt float %.1.i.i, %i.po
  br i1 %i.vs, label %bb.bq, label %_blendif_compute_factor.exit.1.i

bb.bq:                                            ; preds = %_blendif_compute_factor.exit.i100
  %i.vt = load float, ptr %i.pp, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.vu = fcmp reassoc nsz arcp contract afn olt float %.1.i.i, %i.vt
  br i1 %i.vu, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.vv = load float, ptr %i.pq, align 4, !tbaa !39, !alias.scope !173, !noalias !176 ; 2 uses
  %i.vw = fcmp reassoc nsz arcp contract afn ugt float %.1.i.i, %i.vv
  br i1 %i.vw, label %bb.bs, label %_blendif_compute_factor.exit.1.i

bb.bs:                                            ; preds = %bb.br
  %i.vx = load float, ptr %i.pr, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.vy = fcmp reassoc nsz arcp contract afn olt float %.1.i.i, %i.vx
  br i1 %i.vy, label %bb.bt, label %_blendif_compute_factor.exit.1.i

bb.bt:                                            ; preds = %bb.bs
  %i.vz = fsub reassoc nsz arcp contract afn float %.1.i.i, %i.vv
  %i.wa = load float, ptr %i.ps, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.wb = fmul reassoc nsz arcp contract afn float %i.wa, %i.vz
  %i.wc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.wb
  br label %_blendif_compute_factor.exit.1.i

bb.bu:                                            ; preds = %bb.bq
  %i.wd = fsub reassoc nsz arcp contract afn float %.1.i.i, %i.po
  %i.we = load float, ptr %i.pt, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.wf = fmul reassoc nsz arcp contract afn float %i.we, %i.wd
  br label %_blendif_compute_factor.exit.1.i

_blendif_compute_factor.exit.1.i:                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %_blendif_compute_factor.exit.i100
  %.0.i19.1.i = phi nsz float [ 1.000000e+00, %bb.br ], [ %i.wf, %bb.bu ], [ 0.000000e+00, %_blendif_compute_factor.exit.i100 ], [ %i.wc, %bb.bt ], [ 0.000000e+00, %bb.bs ] ; 2 uses
  %i.wg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i19.1.i
  %i.wh = select reassoc nsz arcp contract afn i1 %.not.i.1.i, float %.0.i19.1.i, float %i.wg
  %i.wi = fmul reassoc nsz arcp contract afn float %i.wh, %i.vr
  %i.wj = fcmp reassoc nsz arcp contract afn ugt float %i.ui, %i.pw
  br i1 %i.wj, label %bb.bv, label %_blendif_compute_factor.exit.2.i

bb.bv:                                            ; preds = %_blendif_compute_factor.exit.1.i
  %i.wk = load float, ptr %i.px, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.wl = fcmp reassoc nsz arcp contract afn olt float %i.ui, %i.wk
  br i1 %i.wl, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.wm = load float, ptr %i.py, align 4, !tbaa !39, !alias.scope !173, !noalias !176 ; 2 uses
  %i.wn = fcmp reassoc nsz arcp contract afn ugt float %i.ui, %i.wm
  br i1 %i.wn, label %bb.bx, label %_blendif_compute_factor.exit.2.i

bb.bx:                                            ; preds = %bb.bw
  %i.wo = load float, ptr %i.pz, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.wp = fcmp reassoc nsz arcp contract afn olt float %i.ui, %i.wo
  br i1 %i.wp, label %bb.by, label %_blendif_compute_factor.exit.2.i

bb.by:                                            ; preds = %bb.bx
  %i.wq = fsub reassoc nsz arcp contract afn float %i.ui, %i.wm
  %i.wr = load float, ptr %i.qa, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.ws = fmul reassoc nsz arcp contract afn float %i.wr, %i.wq
  %i.wt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ws
  br label %_blendif_compute_factor.exit.2.i

bb.bz:                                            ; preds = %bb.bv
  %i.wu = fsub reassoc nsz arcp contract afn float %i.ui, %i.pw
  %i.wv = load float, ptr %i.qb, align 4, !tbaa !39, !alias.scope !173, !noalias !176
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wv, %i.wu
  br label %_blendif_compute_factor.exit.2.i

_blendif_compute_factor.exit.2.i:                 ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %_blendif_compute_factor.exit.1.i
  %.0.i19.2.i = phi nsz float [ 1.000000e+00, %bb.bw ], [ %i.ww, %bb.bz ], [ 0.000000e+00, %_blendif_compute_factor.exit.1.i ], [ %i.wt, %bb.by ], [ 0.000000e+00, %bb.bx ] ; 2 uses
  %i.wx = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0.i19.2.i
  %i.wy = select reassoc nsz arcp contract afn i1 %.not.i.2.i, float %.0.i19.2.i, float %i.wx
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01822.i ; 2 uses
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !39, !alias.scope !169, !noalias !179
  %i.xb = fmul reassoc nsz arcp contract afn float %i.wi, %i.xa
  %i.xc = fmul reassoc nsz arcp contract afn float %i.xb, %i.wy
  store float %i.xc, ptr %i.wz, align 4, !tbaa !39, !alias.scope !169, !noalias !179
  %i.xd = add nuw i64 %.01822.i, 1                ; 2 uses
  %i.xe = add i64 %.01723.i, 4
  %exitcond.not.i101 = icmp eq i64 %i.xd, %2
  br i1 %exitcond.not.i101, label %_blendif_hsl.exit, label %scalar.ph336, !llvm.loop !181

_blendif_hsl.exit:                                ; preds = %_blendif_compute_factor.exit.2.i, %bb.au, %bb.bf, %_blendif_rgb_blue.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @dt_develop_blendif_rgb_hsl_blend(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noalias noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.dt_iop_order_iccprofile_info_t, align 64 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %.not = icmp eq i32 %i.d, 4
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !182
  %i.f = load i32, ptr %3, align 4, !tbaa !182
  %i.g = sub nsw i32 %i.e, %i.f                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !183
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !183
  %i.l = sub nsw i32 %i.i, %i.k                   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32   ; 32 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !184
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 628
  %i.v = load i32, ptr %i.u, align 4, !tbaa !185
  %i.w = and i32 %6, 1020                         ; 2 uses
  %.not99 = icmp eq i32 %i.w, 0
  br i1 %.not99, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.x = call i32 @dt_develop_blendif_init_masking_profile(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 3) #8
  %.not104 = icmp eq i32 %i.x, 0                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 324
  %i.z = sext i32 %i.r to i64
  %.not154 = icmp eq i32 %i.r, 0
  br i1 %.not154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.aa = sext i32 %i.l to i64
  %i.ab = sext i32 %i.n to i64
  %i.ac = sext i32 %i.g to i64
  %i.ad = sext i32 %i.p to i64                    ; 42 uses
  %.not.i = icmp eq i32 %i.p, 0                   ; 15 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 576 ; 2 uses
  %.sroa.gep110 = getelementptr inbounds nuw i8, ptr %7, i64 712 ; 2 uses
  %.sroa.gep112 = getelementptr inbounds nuw i8, ptr %7, i64 768 ; 2 uses
  %.sroa.gep114 = getelementptr inbounds nuw i8, ptr %7, i64 704
  %.sroa.gep116 = getelementptr inbounds nuw i8, ptr %7, i64 852
  %i.af = load i32, ptr %.sroa.gep114, align 64   ; 2 uses
  %i.ag = load i32, ptr %.sroa.gep116, align 4    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 348
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.an = add nsw i64 %i.ad, -1
  %min.iters.check391 = icmp ult i32 %i.p, 9
  %i.ao = and i64 %i.ad, 7
  %i.ap = and i32 %i.p, 7
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 8, i64 %i.ao
  %n.vec393 = sub nsw i64 %i.ad, %i.ar            ; 3 uses
  %i.as = shl nsw i64 %n.vec393, 2
  %min.iters.check375 = icmp ult i32 %i.p, 9
  %i.at = and i64 %i.ad, 7
  %i.au = and i32 %i.p, 7
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = select i1 %i.av, i64 8, i64 %i.at
  %n.vec377 = sub nsw i64 %i.ad, %i.aw            ; 3 uses
  %i.ax = shl nsw i64 %n.vec377, 2
  %min.iters.check358 = icmp ult i32 %i.p, 9
  %i.ay = and i64 %i.ad, 7
  %i.az = and i32 %i.p, 7
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = select i1 %i.ba, i64 8, i64 %i.ay
  %n.vec360 = sub nsw i64 %i.ad, %i.bb            ; 3 uses
  %i.bc = shl nsw i64 %n.vec360, 2
  %min.iters.check341 = icmp ult i32 %i.p, 9
  %i.bd = and i64 %i.ad, 7
  %i.be = and i32 %i.p, 7
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = select i1 %i.bf, i64 8, i64 %i.bd
  %n.vec343 = sub nsw i64 %i.ad, %i.bg            ; 3 uses
  %i.bh = shl nsw i64 %n.vec343, 2
  %min.iters.check322 = icmp ult i32 %i.p, 9
  %i.bi = and i64 %i.ad, 7
  %i.bj = and i32 %i.p, 7
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = select i1 %i.bk, i64 8, i64 %i.bi
  %n.vec324 = sub nsw i64 %i.ad, %i.bl            ; 3 uses
  %i.bm = shl nsw i64 %n.vec324, 2
  %min.iters.check304 = icmp ult i32 %i.p, 9
  %i.bn = and i64 %i.ad, 7
  %i.bo = and i32 %i.p, 7
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = select i1 %i.bp, i64 8, i64 %i.bn
  %n.vec306 = sub nsw i64 %i.ad, %i.bq            ; 3 uses
  %i.br = shl nsw i64 %n.vec306, 2
  %min.iters.check288 = icmp ult i32 %i.p, 9
  %i.bs = and i64 %i.ad, 7
  %i.bt = and i32 %i.p, 7
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = select i1 %i.bu, i64 8, i64 %i.bs
  %n.vec290 = sub nsw i64 %i.ad, %i.bv            ; 3 uses
  %i.bw = shl nsw i64 %n.vec290, 2
  %min.iters.check272 = icmp ult i32 %i.p, 9
  %i.bx = and i64 %i.ad, 7
  %i.by = and i32 %i.p, 7
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = select i1 %i.bz, i64 8, i64 %i.bx
  %n.vec274 = sub nsw i64 %i.ad, %i.ca            ; 3 uses
  %i.cb = shl nsw i64 %n.vec274, 2
  %min.iters.check256 = icmp ult i32 %i.p, 9
  %i.cc = and i64 %i.ad, 7
  %i.cd = and i32 %i.p, 7
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 8, i64 %i.cc
  %n.vec258 = sub nsw i64 %i.ad, %i.cf            ; 3 uses
  %i.cg = shl nsw i64 %n.vec258, 2
  %min.iters.check240 = icmp ult i32 %i.p, 9
  %i.ch = and i64 %i.ad, 7
  %i.ci = and i32 %i.p, 7
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = select i1 %i.cj, i64 8, i64 %i.ch
  %n.vec242 = sub nsw i64 %i.ad, %i.ck            ; 3 uses
  %i.cl = shl nsw i64 %n.vec242, 2
  %min.iters.check224 = icmp ult i32 %i.p, 9
  %i.cm = and i64 %i.ad, 7
  %i.cn = and i32 %i.p, 7
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = select i1 %i.co, i64 8, i64 %i.cm
  %n.vec226 = sub nsw i64 %i.ad, %i.cp            ; 3 uses
  %i.cq = shl nsw i64 %n.vec226, 2
  %min.iters.check = icmp ult i32 %i.p, 9
  %i.cr = and i64 %i.ad, 7
  %i.cs = and i32 %i.p, 7
  %i.ct = icmp eq i32 %i.cs, 0
  %i.cu = select i1 %i.ct, i64 8, i64 %i.cr
  %n.vec = sub nsw i64 %i.ad, %i.cu               ; 3 uses
  %i.cv = shl nsw i64 %n.vec, 2
  %xtraiter = and i64 %i.ad, 7
  %i.cw = icmp ult i64 %i.an, 7
  %unroll_iter = and i64 %i.ad, -8
  %i.cx = and i32 %i.p, 7
  %lcmp.mod.not = icmp eq i32 %i.cx, 0
  %i.cy = and i32 %i.p, 7
  %lcmp.mod452 = icmp ne i32 %i.cy, 0
  br label %bb.d

._crit_edge:                                      ; preds = %_display_channel.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %.loopexit129

bb.d:                                             ; preds = %.lr.ph, %_display_channel.exit
  %.0146 = phi i64 [ 0, %.lr.ph ], [ %i.xv, %_display_channel.exit ] ; 3 uses
  %i.cz = add i64 %.0146, %i.aa
  %i.da = mul i64 %i.cz, %i.ab
  %i.db = add i64 %i.da, %i.ac
  %i.dc = mul i64 %.0146, %i.ad                   ; 2 uses
  %.idx107 = shl i64 %i.db, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx107 ; 13 uses
  %.idx108 = shl i64 %i.dc, 4
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %.idx108 ; 44 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dc ; 35 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  switch i32 %i.w, label %.preheader362.i [
    i32 32, label %bb.e
    i32 36, label %bb.f
    i32 40, label %bb.g
    i32 44, label %bb.h
    i32 48, label %bb.i
    i32 52, label %bb.j
    i32 56, label %bb.k
    i32 60, label %bb.n
    i32 80, label %.preheader371.i
    i32 84, label %.preheader373.i
    i32 88, label %.preheader375.i
    i32 92, label %.preheader377.i
    i32 96, label %.preheader379.i
    i32 100, label %.preheader381.i
  ]

.preheader381.i:                                  ; preds = %bb.d
  br i1 %.not.i, label %_display_channel.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader381.i
  br i1 %min.iters.check391, label %.lr.ph.i.preheader450, label %vector.body394

.lr.ph.i.preheader450:                            ; preds = %vector.body394, %.lr.ph.i.preheader
  %.0259385.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %vector.body394 ]
  %.0260384.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec393, %vector.body394 ]
  br label %.lr.ph.i

vector.body394:                                   ; preds = %.lr.ph.i.preheader, %vector.body394
  %index395 = phi i64 [ %index.next402, %vector.body394 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.idx417 = shl i64 %index395, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx417 ; 2 uses
  %wide.vec396 = load <32 x float>, ptr %i.dg, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 3 uses
  %strided.vec397 = shufflevector <32 x float> %wide.vec396, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec398 = shufflevector <32 x float> %wide.vec396, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec399 = shufflevector <32 x float> %wide.vec396, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %8 = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec397, <8 x float> %strided.vec398)
  %9 = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %8, <8 x float> %strided.vec399)
  %10 = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec397, <8 x float> %strided.vec398)
  %11 = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %10, <8 x float> %strided.vec399)
  %12 = fadd reassoc nsz arcp contract afn <8 x float> %11, %9
  %13 = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %12, <8 x float> zeroinitializer)
  %14 = call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %13, <8 x float> splat (float 2.000000e+00))
  %15 = fmul reassoc nnan nsz arcp contract afn <8 x float> %14, splat (float 5.000000e-01)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index395
  %wide.load400 = load <8 x float>, ptr %i.dh, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %interleaved.vec401 = shufflevector <8 x float> %15, <8 x float> %wide.load400, <32 x i32> <i32 0, i32 0, i32 0, i32 8, i32 1, i32 1, i32 1, i32 9, i32 2, i32 2, i32 2, i32 10, i32 3, i32 3, i32 3, i32 11, i32 4, i32 4, i32 4, i32 12, i32 5, i32 5, i32 5, i32 13, i32 6, i32 6, i32 6, i32 14, i32 7, i32 7, i32 7, i32 15>
  store <32 x float> %interleaved.vec401, ptr %i.dg, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %index.next402 = add nuw i64 %index395, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next402, %n.vec393
  br i1 %i.di, label %.lr.ph.i.preheader450, label %vector.body394, !llvm.loop !213

.preheader379.i:                                  ; preds = %bb.d
  br i1 %.not.i, label %_display_channel.exit, label %.lr.ph389.i.preheader

.lr.ph389.i.preheader:                            ; preds = %.preheader379.i
  br i1 %min.iters.check375, label %.lr.ph389.i.preheader448, label %vector.body378

.lr.ph389.i.preheader448:                         ; preds = %vector.body378, %.lr.ph389.i.preheader
  %.0263388.i.ph = phi i64 [ 0, %.lr.ph389.i.preheader ], [ %i.ax, %vector.body378 ]
  %.0264387.i.ph = phi i64 [ 0, %.lr.ph389.i.preheader ], [ %n.vec377, %vector.body378 ]
  br label %.lr.ph389.i

vector.body378:                                   ; preds = %.lr.ph389.i.preheader, %vector.body378
  %index379 = phi i64 [ %index.next386, %vector.body378 ], [ 0, %.lr.ph389.i.preheader ] ; 3 uses
  %i.dj = shl i64 %index379, 2                    ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dj
  %wide.vec380 = load <32 x float>, ptr %i.dk, align 4, !tbaa !39, !alias.scope !202, !noalias !214 ; 3 uses
  %strided.vec381 = shufflevector <32 x float> %wide.vec380, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec382 = shufflevector <32 x float> %wide.vec380, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec383 = shufflevector <32 x float> %wide.vec380, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %16 = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec381, <8 x float> %strided.vec382)
  %17 = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %16, <8 x float> %strided.vec383)
  %18 = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec381, <8 x float> %strided.vec382)
  %19 = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %18, <8 x float> %strided.vec383)
  %20 = fadd reassoc nsz arcp contract afn <8 x float> %19, %17
  %21 = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %20, <8 x float> zeroinitializer)
  %22 = call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %21, <8 x float> splat (float 2.000000e+00))
  %23 = fmul reassoc nnan nsz arcp contract afn <8 x float> %22, splat (float 5.000000e-01)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dj
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index379
  %wide.load384 = load <8 x float>, ptr %i.dm, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %interleaved.vec385 = shufflevector <8 x float> %23, <8 x float> %wide.load384, <32 x i32> <i32 0, i32 0, i32 0, i32 8, i32 1, i32 1, i32 1, i32 9, i32 2, i32 2, i32 2, i32 10, i32 3, i32 3, i32 3, i32 11, i32 4, i32 4, i32 4, i32 12, i32 5, i32 5, i32 5, i32 13, i32 6, i32 6, i32 6, i32 14, i32 7, i32 7, i32 7, i32 15>
  store <32 x float> %interleaved.vec385, ptr %i.dl, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %index.next386 = add nuw i64 %index379, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next386, %n.vec377
  br i1 %i.dn, label %.lr.ph389.i.preheader448, label %vector.body378, !llvm.loop !215

.preheader377.i:                                  ; preds = %bb.d
  br i1 %.not.i, label %_display_channel.exit, label %.lr.ph393.i.preheader

.lr.ph393.i.preheader:                            ; preds = %.preheader377.i
  br i1 %min.iters.check358, label %.lr.ph393.i.preheader446, label %vector.body361

.lr.ph393.i.preheader446:                         ; preds = %vector.body361, %.lr.ph393.i.preheader
  %.0266392.i.ph = phi i64 [ 0, %.lr.ph393.i.preheader ], [ %i.bc, %vector.body361 ]
  %.0267391.i.ph = phi i64 [ 0, %.lr.ph393.i.preheader ], [ %n.vec360, %vector.body361 ]
  br label %.lr.ph393.i

vector.body361:                                   ; preds = %.lr.ph393.i.preheader, %vector.body361
  %index362 = phi i64 [ %index.next370, %vector.body361 ], [ 0, %.lr.ph393.i.preheader ] ; 3 uses
  %.idx418 = shl i64 %index362, 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx418 ; 2 uses
  %wide.vec363 = load <32 x float>, ptr %i.do, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 3 uses
  %strided.vec364 = shufflevector <32 x float> %wide.vec363, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec365 = shufflevector <32 x float> %wide.vec363, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec366 = shufflevector <32 x float> %wide.vec363, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %i.dp = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec364, <8 x float> %strided.vec365)
  %i.dq = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.dp, <8 x float> %strided.vec366) ; 2 uses
  %i.dr = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec364, <8 x float> %strided.vec365)
  %i.ds = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.dr, <8 x float> %strided.vec366) ; 3 uses
  %i.dt = fsub reassoc nsz arcp contract afn <8 x float> %i.ds, %i.dq ; 2 uses
  %i.du = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ds)
  %i.dv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.du, splat (float f0x358637BD)
  %i.dw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dt)
  %i.dx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.dw, splat (float f0x358637BD)
  %i.dy = select <8 x i1> %i.dv, <8 x i1> %i.dx, <8 x i1> zeroinitializer
  %i.dz = fadd reassoc nsz arcp contract afn <8 x float> %i.ds, %i.dq ; 3 uses
  %i.ea = fmul reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ea, splat (float 5.000000e-01)
  %i.ec = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.dz
  %i.ed = select <8 x i1> %i.eb, <8 x float> %i.dz, <8 x float> %i.ec
  %i.ee = fdiv reassoc nsz arcp contract afn <8 x float> %i.dt, %i.ed
  %i.ef = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ee, <8 x float> zeroinitializer)
  %i.eg = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ef, <8 x float> splat (float 1.000000e+00))
  %predphi367 = select <8 x i1> %i.dy, <8 x float> %i.eg, <8 x float> zeroinitializer
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index362
  %wide.load368 = load <8 x float>, ptr %i.eh, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %interleaved.vec369 = shufflevector <8 x float> %predphi367, <8 x float> %wide.load368, <32 x i32> <i32 0, i32 0, i32 0, i32 8, i32 1, i32 1, i32 1, i32 9, i32 2, i32 2, i32 2, i32 10, i32 3, i32 3, i32 3, i32 11, i32 4, i32 4, i32 4, i32 12, i32 5, i32 5, i32 5, i32 13, i32 6, i32 6, i32 6, i32 14, i32 7, i32 7, i32 7, i32 15>
  store <32 x float> %interleaved.vec369, ptr %i.do, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %index.next370 = add nuw i64 %index362, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next370, %n.vec360
  br i1 %i.ei, label %.lr.ph393.i.preheader446, label %vector.body361, !llvm.loop !216

.preheader375.i:                                  ; preds = %bb.d
  br i1 %.not.i, label %_display_channel.exit, label %.lr.ph397.i.preheader

.lr.ph397.i.preheader:                            ; preds = %.preheader375.i
  br i1 %min.iters.check341, label %.lr.ph397.i.preheader444, label %vector.body344

.lr.ph397.i.preheader444:                         ; preds = %vector.body344, %.lr.ph397.i.preheader
  %.0270396.i.ph = phi i64 [ 0, %.lr.ph397.i.preheader ], [ %i.bh, %vector.body344 ]
  %.0271395.i.ph = phi i64 [ 0, %.lr.ph397.i.preheader ], [ %n.vec343, %vector.body344 ]
  br label %.lr.ph397.i

vector.body344:                                   ; preds = %.lr.ph397.i.preheader, %vector.body344
  %index345 = phi i64 [ %index.next353, %vector.body344 ], [ 0, %.lr.ph397.i.preheader ] ; 3 uses
  %i.ej = shl i64 %index345, 2                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ej
  %wide.vec346 = load <32 x float>, ptr %i.ek, align 4, !tbaa !39, !alias.scope !202, !noalias !214 ; 3 uses
  %strided.vec347 = shufflevector <32 x float> %wide.vec346, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec348 = shufflevector <32 x float> %wide.vec346, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec349 = shufflevector <32 x float> %wide.vec346, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %i.el = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec347, <8 x float> %strided.vec348)
  %i.em = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.el, <8 x float> %strided.vec349) ; 2 uses
  %i.en = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec347, <8 x float> %strided.vec348)
  %i.eo = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.en, <8 x float> %strided.vec349) ; 3 uses
  %i.ep = fsub reassoc nsz arcp contract afn <8 x float> %i.eo, %i.em ; 2 uses
  %i.eq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eo)
  %i.er = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.eq, splat (float f0x358637BD)
  %i.es = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ep)
  %i.et = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.es, splat (float f0x358637BD)
  %i.eu = select <8 x i1> %i.er, <8 x i1> %i.et, <8 x i1> zeroinitializer
  %i.ev = fadd reassoc nsz arcp contract afn <8 x float> %i.eo, %i.em ; 3 uses
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.ev, splat (float 5.000000e-01)
  %i.ex = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ew, splat (float 5.000000e-01)
  %i.ey = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.ev
  %i.ez = select <8 x i1> %i.ex, <8 x float> %i.ev, <8 x float> %i.ey
  %i.fa = fdiv reassoc nsz arcp contract afn <8 x float> %i.ep, %i.ez
  %i.fb = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.fa, <8 x float> zeroinitializer)
  %i.fc = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.fb, <8 x float> splat (float 1.000000e+00))
  %predphi350 = select <8 x i1> %i.eu, <8 x float> %i.fc, <8 x float> zeroinitializer
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ej
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index345
  %wide.load351 = load <8 x float>, ptr %i.fe, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %interleaved.vec352 = shufflevector <8 x float> %predphi350, <8 x float> %wide.load351, <32 x i32> <i32 0, i32 0, i32 0, i32 8, i32 1, i32 1, i32 1, i32 9, i32 2, i32 2, i32 2, i32 10, i32 3, i32 3, i32 3, i32 11, i32 4, i32 4, i32 4, i32 12, i32 5, i32 5, i32 5, i32 13, i32 6, i32 6, i32 6, i32 14, i32 7, i32 7, i32 7, i32 15>
  store <32 x float> %interleaved.vec352, ptr %i.fd, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %index.next353 = add nuw i64 %index345, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next353, %n.vec343
  br i1 %i.ff, label %.lr.ph397.i.preheader444, label %vector.body344, !llvm.loop !217

.preheader373.i:                                  ; preds = %bb.d
  br i1 %.not.i, label %_display_channel.exit, label %.lr.ph401.i.preheader

.lr.ph401.i.preheader:                            ; preds = %.preheader373.i
  br i1 %min.iters.check322, label %.lr.ph401.i.preheader442, label %vector.body325

.lr.ph401.i.preheader442:                         ; preds = %vector.body325, %.lr.ph401.i.preheader
  %.0274400.i.ph = phi i64 [ 0, %.lr.ph401.i.preheader ], [ %i.bm, %vector.body325 ]
  %.0275399.i.ph = phi i64 [ 0, %.lr.ph401.i.preheader ], [ %n.vec324, %vector.body325 ]
  br label %.lr.ph401.i

vector.body325:                                   ; preds = %.lr.ph401.i.preheader, %vector.body325
  %index326 = phi i64 [ %index.next336, %vector.body325 ], [ 0, %.lr.ph401.i.preheader ] ; 3 uses
  %.idx419 = shl i64 %index326, 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx419 ; 2 uses
  %wide.vec327 = load <32 x float>, ptr %i.fg, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 3 uses
  %strided.vec328 = shufflevector <32 x float> %wide.vec327, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec329 = shufflevector <32 x float> %wide.vec327, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec330 = shufflevector <32 x float> %wide.vec327, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 4 uses
  %i.fh = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec328, <8 x float> %strided.vec329)
  %i.fi = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.fh, <8 x float> %strided.vec330)
  %i.fj = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec328, <8 x float> %strided.vec329)
  %i.fk = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.fj, <8 x float> %strided.vec330) ; 4 uses
  %i.fl = fsub reassoc nsz arcp contract afn <8 x float> %i.fk, %i.fi ; 4 uses
  %i.fm = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fk)
  %i.fn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fm, splat (float f0x358637BD)
  %i.fo = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fl)
  %i.fp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fo, splat (float f0x358637BD)
  %i.fq = select <8 x i1> %i.fn, <8 x i1> %i.fp, <8 x i1> zeroinitializer ; 3 uses
  %i.fr = fcmp reassoc nsz arcp contract afn oeq <8 x float> %strided.vec328, %i.fk ; 2 uses
  %i.fs = xor <8 x i1> %i.fr, splat (i1 true)
  %i.ft = select <8 x i1> %i.fq, <8 x i1> %i.fs, <8 x i1> zeroinitializer
  %i.fu = fcmp reassoc nsz arcp contract afn oeq <8 x float> %strided.vec329, %i.fk
  %i.fv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec328, %strided.vec329
  %i.fw = fdiv reassoc nsz arcp contract afn <8 x float> %i.fv, %i.fl
  %i.fx = fadd reassoc nsz arcp contract afn <8 x float> %i.fw, splat (float 4.000000e+00)
  %i.fy = select <8 x i1> %i.ft, <8 x i1> %i.fu, <8 x i1> zeroinitializer
  %i.fz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec330, %strided.vec328
  %i.ga = fdiv reassoc nsz arcp contract afn <8 x float> %i.fz, %i.fl
  %i.gb = fadd reassoc nsz arcp contract afn <8 x float> %i.ga, splat (float 2.000000e+00)
  %i.gc = select <8 x i1> %i.fq, <8 x i1> %i.fr, <8 x i1> zeroinitializer
  %i.gd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec329, %strided.vec330
  %i.ge = fdiv reassoc nsz arcp contract afn <8 x float> %i.gd, %i.fl
  %predphi331 = select nsz <8 x i1> %i.fy, <8 x float> %i.gb, <8 x float> %i.fx
  %predphi332 = select nsz <8 x i1> %i.gc, <8 x float> %i.ge, <8 x float> %predphi331
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %predphi332, splat (float f0x3E2AAAAB) ; 2 uses
  %i.gg = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.gf)
  %i.gh = fsub reassoc nsz arcp contract afn <8 x float> %i.gf, %i.gg
  %i.gi = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.gh, <8 x float> zeroinitializer)
  %i.gj = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.gi, <8 x float> splat (float 1.000000e+00))
  %predphi333 = select <8 x i1> %i.fq, <8 x float> %i.gj, <8 x float> zeroinitializer
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index326
  %wide.load334 = load <8 x float>, ptr %i.gk, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %interleaved.vec335 = shufflevector <8 x float> %predphi333, <8 x float> %wide.load334, <32 x i32> <i32 0, i32 0, i32 0, i32 8, i32 1, i32 1, i32 1, i32 9, i32 2, i32 2, i32 2, i32 10, i32 3, i32 3, i32 3, i32 11, i32 4, i32 4, i32 4, i32 12, i32 5, i32 5, i32 5, i32 13, i32 6, i32 6, i32 6, i32 14, i32 7, i32 7, i32 7, i32 15>
  store <32 x float> %interleaved.vec335, ptr %i.fg, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %index.next336 = add nuw i64 %index326, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next336, %n.vec324
  br i1 %i.gl, label %.lr.ph401.i.preheader442, label %vector.body325, !llvm.loop !218

.preheader371.i:                                  ; preds = %bb.d
  br i1 %.not.i, label %_display_channel.exit, label %.lr.ph405.i.preheader

.lr.ph405.i.preheader:                            ; preds = %.preheader371.i
  br i1 %min.iters.check304, label %.lr.ph405.i.preheader440, label %vector.body307

.lr.ph405.i.preheader440:                         ; preds = %vector.body307, %.lr.ph405.i.preheader
  %.0278404.i.ph = phi i64 [ 0, %.lr.ph405.i.preheader ], [ %i.br, %vector.body307 ]
  %.0279403.i.ph = phi i64 [ 0, %.lr.ph405.i.preheader ], [ %n.vec306, %vector.body307 ]
  br label %.lr.ph405.i

vector.body307:                                   ; preds = %.lr.ph405.i.preheader, %vector.body307
  %index308 = phi i64 [ %index.next317, %vector.body307 ], [ 0, %.lr.ph405.i.preheader ] ; 3 uses
  %i.gm = shl i64 %index308, 2                    ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.gm
  %wide.vec309 = load <32 x float>, ptr %i.gn, align 4, !tbaa !39, !alias.scope !202, !noalias !214 ; 3 uses
  %strided.vec310 = shufflevector <32 x float> %wide.vec309, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec311 = shufflevector <32 x float> %wide.vec309, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec312 = shufflevector <32 x float> %wide.vec309, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 4 uses
  %i.go = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec310, <8 x float> %strided.vec311)
  %i.gp = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.go, <8 x float> %strided.vec312)
  %i.gq = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec310, <8 x float> %strided.vec311)
  %i.gr = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.gq, <8 x float> %strided.vec312) ; 4 uses
  %i.gs = fsub reassoc nsz arcp contract afn <8 x float> %i.gr, %i.gp ; 4 uses
  %i.gt = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gr)
  %i.gu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gt, splat (float f0x358637BD)
  %i.gv = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gs)
  %i.gw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gv, splat (float f0x358637BD)
  %i.gx = select <8 x i1> %i.gu, <8 x i1> %i.gw, <8 x i1> zeroinitializer ; 3 uses
  %i.gy = fcmp reassoc nsz arcp contract afn oeq <8 x float> %strided.vec310, %i.gr ; 2 uses
  %i.gz = xor <8 x i1> %i.gy, splat (i1 true)
  %i.ha = select <8 x i1> %i.gx, <8 x i1> %i.gz, <8 x i1> zeroinitializer
  %i.hb = fcmp reassoc nsz arcp contract afn oeq <8 x float> %strided.vec311, %i.gr
  %i.hc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec310, %strided.vec311
  %i.hd = fdiv reassoc nsz arcp contract afn <8 x float> %i.hc, %i.gs
  %i.he = fadd reassoc nsz arcp contract afn <8 x float> %i.hd, splat (float 4.000000e+00)
  %i.hf = select <8 x i1> %i.ha, <8 x i1> %i.hb, <8 x i1> zeroinitializer
  %i.hg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec312, %strided.vec310
  %i.hh = fdiv reassoc nsz arcp contract afn <8 x float> %i.hg, %i.gs
  %i.hi = fadd reassoc nsz arcp contract afn <8 x float> %i.hh, splat (float 2.000000e+00)
  %i.hj = select <8 x i1> %i.gx, <8 x i1> %i.gy, <8 x i1> zeroinitializer
  %i.hk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec311, %strided.vec312
  %i.hl = fdiv reassoc nsz arcp contract afn <8 x float> %i.hk, %i.gs
  %predphi = select nsz <8 x i1> %i.hf, <8 x float> %i.hi, <8 x float> %i.he
  %predphi313 = select nsz <8 x i1> %i.hj, <8 x float> %i.hl, <8 x float> %predphi
end_hunk_1
begin_hunk_2_@dt_develop_blendif_rgb_hsl_blend:bb.a
  %i.qb = fdiv reassoc nsz arcp contract afn float %i.qa, %i.po
  %i.qc = fadd reassoc nsz arcp contract afn float %i.qb, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

_dt_RGB_2_Hue.exit.i.i:                           ; preds = %bb.u, %bb.t, %bb.r
  %.0.i.i.i = phi nsz float [ %i.pv, %bb.r ], [ %i.pz, %bb.t ], [ %i.qc, %bb.u ]
  %i.qd = fmul reassoc nsz arcp contract afn float %.0.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.qe = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.qd)
  %i.qf = fsub reassoc nsz arcp contract afn float %i.qd, %i.qe
  %i.qg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qf, float 0.000000e+00)
  %i.qh = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qg, float 1.000000e+00)
  br label %dt_RGB_2_HSL.exit.i

dt_RGB_2_HSL.exit.i:                              ; preds = %_dt_RGB_2_Hue.exit.i.i, %.lr.ph405.i
  %.024.i.i = phi float [ %i.qh, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %.lr.ph405.i ]
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0278404.i
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.0279403.i
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.ql = insertelement <4 x float> poison, float %.024.i.i, i64 0
  %i.qm = insertelement <4 x float> %i.ql, float %i.qk, i64 1
  %i.qn = shufflevector <4 x float> %i.qm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.qn, ptr %i.qi, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.qo = add nuw i64 %.0279403.i, 1              ; 2 uses
  %i.qp = add i64 %.0278404.i, 4
  %exitcond484.not.i = icmp eq i64 %i.qo, %i.ad
  br i1 %exitcond484.not.i, label %_display_channel.exit, label %.lr.ph405.i, !llvm.loop !244

.lr.ph401.i:                                      ; preds = %.lr.ph401.i.preheader442, %dt_RGB_2_HSL.exit310.i
  %.0274400.i = phi i64 [ %i.sa, %dt_RGB_2_HSL.exit310.i ], [ %.0274400.i.ph, %.lr.ph401.i.preheader442 ] ; 2 uses
  %.0275399.i = phi i64 [ %i.rz, %dt_RGB_2_HSL.exit310.i ], [ %.0275399.i.ph, %.lr.ph401.i.preheader442 ] ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0274400.i ; 4 uses
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 5 uses
  %i.qu = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qr, float %i.qt)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 4 uses
  %i.qx = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qu, float %i.qw)
  %i.qy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qr, float %i.qt)
  %i.qz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qy, float %i.qw) ; 4 uses
  %i.ra = fsub reassoc nsz arcp contract afn float %i.qz, %i.qx ; 4 uses
  %i.rb = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.qz)
  %i.rc = fcmp reassoc nsz arcp contract afn ogt float %i.rb, f0x358637BD
  %i.rd = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ra)
  %i.re = fcmp reassoc nsz arcp contract afn ogt float %i.rd, f0x358637BD
  %or.cond.i303.i = select i1 %i.rc, i1 %i.re, i1 false
  br i1 %or.cond.i303.i, label %bb.v, label %dt_RGB_2_HSL.exit310.i

bb.v:                                             ; preds = %.lr.ph401.i
  %i.rf = fcmp reassoc nsz arcp contract afn oeq float %i.qr, %i.qz
  br i1 %i.rf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.rg = fsub reassoc nsz arcp contract afn float %i.qt, %i.qw
  %i.rh = fdiv reassoc nsz arcp contract afn float %i.rg, %i.ra
  br label %_dt_RGB_2_Hue.exit.i308.i

bb.x:                                             ; preds = %bb.v
  %i.ri = fcmp reassoc nsz arcp contract afn oeq float %i.qt, %i.qz
  br i1 %i.ri, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.rj = fsub reassoc nsz arcp contract afn float %i.qw, %i.qr
  %i.rk = fdiv reassoc nsz arcp contract afn float %i.rj, %i.ra
  %i.rl = fadd reassoc nsz arcp contract afn float %i.rk, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i308.i

bb.z:                                             ; preds = %bb.x
  %i.rm = fsub reassoc nsz arcp contract afn float %i.qr, %i.qt
  %i.rn = fdiv reassoc nsz arcp contract afn float %i.rm, %i.ra
  %i.ro = fadd reassoc nsz arcp contract afn float %i.rn, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i308.i

_dt_RGB_2_Hue.exit.i308.i:                        ; preds = %bb.z, %bb.y, %bb.w
  %.0.i.i309.i = phi nsz float [ %i.rh, %bb.w ], [ %i.rl, %bb.y ], [ %i.ro, %bb.z ]
  %i.rp = fmul reassoc nsz arcp contract afn float %.0.i.i309.i, f0x3E2AAAAB ; 2 uses
  %i.rq = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.rp)
  %i.rr = fsub reassoc nsz arcp contract afn float %i.rp, %i.rq
  %i.rs = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rr, float 0.000000e+00)
  %i.rt = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rs, float 1.000000e+00)
  br label %dt_RGB_2_HSL.exit310.i

dt_RGB_2_HSL.exit310.i:                           ; preds = %_dt_RGB_2_Hue.exit.i308.i, %.lr.ph401.i
  %.024.i304.i = phi float [ %i.rt, %_dt_RGB_2_Hue.exit.i308.i ], [ 0.000000e+00, %.lr.ph401.i ]
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.0275399.i
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.rw = insertelement <4 x float> poison, float %.024.i304.i, i64 0
  %i.rx = insertelement <4 x float> %i.rw, float %i.rv, i64 1
  %i.ry = shufflevector <4 x float> %i.rx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ry, ptr %i.qq, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.rz = add nuw i64 %.0275399.i, 1              ; 2 uses
  %i.sa = add i64 %.0274400.i, 4
  %exitcond481.not.i = icmp eq i64 %i.rz, %i.ad
  br i1 %exitcond481.not.i, label %_display_channel.exit, label %.lr.ph401.i, !llvm.loop !245

.lr.ph397.i:                                      ; preds = %.lr.ph397.i.preheader444, %dt_RGB_2_HSL.exit318.i
  %.0270396.i = phi i64 [ %i.td, %dt_RGB_2_HSL.exit318.i ], [ %.0270396.i.ph, %.lr.ph397.i.preheader444 ] ; 3 uses
  %.0271395.i = phi i64 [ %i.tc, %dt_RGB_2_HSL.exit318.i ], [ %.0271395.i.ph, %.lr.ph397.i.preheader444 ] ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.0270396.i ; 3 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !39, !alias.scope !202, !noalias !214 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %i.se = load float, ptr %i.sd, align 4, !tbaa !39, !alias.scope !202, !noalias !214 ; 2 uses
  %i.sf = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sc, float %i.se)
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !39, !alias.scope !202, !noalias !214 ; 2 uses
  %i.si = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sf, float %i.sh) ; 2 uses
  %i.sj = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sc, float %i.se)
  %i.sk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sj, float %i.sh) ; 3 uses
  %i.sl = fsub reassoc nsz arcp contract afn float %i.sk, %i.si ; 2 uses
  %i.sm = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sk)
  %i.sn = fcmp reassoc nsz arcp contract afn ogt float %i.sm, f0x358637BD
  %i.so = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sl)
  %i.sp = fcmp reassoc nsz arcp contract afn ogt float %i.so, f0x358637BD
  %or.cond.i311.i = select i1 %i.sn, i1 %i.sp, i1 false
  br i1 %or.cond.i311.i, label %_dt_RGB_2_Hue.exit.i316.i, label %dt_RGB_2_HSL.exit318.i

_dt_RGB_2_Hue.exit.i316.i:                        ; preds = %.lr.ph397.i
  %i.sq = fadd reassoc nsz arcp contract afn float %i.sk, %i.si ; 3 uses
  %i.sr = fmul reassoc nsz arcp contract afn float %i.sq, 5.000000e-01
  %i.ss = fcmp reassoc nsz arcp contract afn olt float %i.sr, 5.000000e-01
  %i.st = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.sq
  %.pn.i314.i = select i1 %i.ss, float %i.sq, float %i.st
  %.0.i315.i = fdiv reassoc nsz arcp contract afn float %i.sl, %.pn.i314.i
  %i.su = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.0.i315.i, float 0.000000e+00)
  %i.sv = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.su, float 1.000000e+00)
  br label %dt_RGB_2_HSL.exit318.i

dt_RGB_2_HSL.exit318.i:                           ; preds = %_dt_RGB_2_Hue.exit.i316.i, %.lr.ph397.i
  %.1.i313.i = phi float [ %i.sv, %_dt_RGB_2_Hue.exit.i316.i ], [ 0.000000e+00, %.lr.ph397.i ]
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0270396.i
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.0271395.i
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.sz = insertelement <4 x float> poison, float %.1.i313.i, i64 0
  %i.ta = insertelement <4 x float> %i.sz, float %i.sy, i64 1
  %i.tb = shufflevector <4 x float> %i.ta, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.tb, ptr %i.sw, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.tc = add nuw i64 %.0271395.i, 1              ; 2 uses
  %i.td = add i64 %.0270396.i, 4
  %exitcond478.not.i = icmp eq i64 %i.tc, %i.ad
  br i1 %exitcond478.not.i, label %_display_channel.exit, label %.lr.ph397.i, !llvm.loop !246

.lr.ph393.i:                                      ; preds = %.lr.ph393.i.preheader446, %dt_RGB_2_HSL.exit326.i
  %.0266392.i = phi i64 [ %i.uf, %dt_RGB_2_HSL.exit326.i ], [ %.0266392.i.ph, %.lr.ph393.i.preheader446 ] ; 2 uses
  %.0267391.i = phi i64 [ %i.ue, %dt_RGB_2_HSL.exit326.i ], [ %.0267391.i.ph, %.lr.ph393.i.preheader446 ] ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0266392.i ; 4 uses
  %i.tf = load float, ptr %i.te, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.th = load float, ptr %i.tg, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 2 uses
  %i.ti = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.tf, float %i.th)
  %i.tj = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 2 uses
  %i.tl = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ti, float %i.tk) ; 2 uses
  %i.tm = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tf, float %i.th)
  %i.tn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tm, float %i.tk) ; 3 uses
  %i.to = fsub reassoc nsz arcp contract afn float %i.tn, %i.tl ; 2 uses
  %i.tp = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.tn)
  %i.tq = fcmp reassoc nsz arcp contract afn ogt float %i.tp, f0x358637BD
  %i.tr = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.to)
  %i.ts = fcmp reassoc nsz arcp contract afn ogt float %i.tr, f0x358637BD
  %or.cond.i319.i = select i1 %i.tq, i1 %i.ts, i1 false
  br i1 %or.cond.i319.i, label %_dt_RGB_2_Hue.exit.i324.i, label %dt_RGB_2_HSL.exit326.i

_dt_RGB_2_Hue.exit.i324.i:                        ; preds = %.lr.ph393.i
  %i.tt = fadd reassoc nsz arcp contract afn float %i.tn, %i.tl ; 3 uses
  %i.tu = fmul reassoc nsz arcp contract afn float %i.tt, 5.000000e-01
  %i.tv = fcmp reassoc nsz arcp contract afn olt float %i.tu, 5.000000e-01
  %i.tw = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.tt
  %.pn.i322.i = select i1 %i.tv, float %i.tt, float %i.tw
  %.0.i323.i = fdiv reassoc nsz arcp contract afn float %i.to, %.pn.i322.i
  %i.tx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.0.i323.i, float 0.000000e+00)
  %i.ty = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.tx, float 1.000000e+00)
  br label %dt_RGB_2_HSL.exit326.i

dt_RGB_2_HSL.exit326.i:                           ; preds = %_dt_RGB_2_Hue.exit.i324.i, %.lr.ph393.i
  %.1.i321.i = phi float [ %i.ty, %_dt_RGB_2_Hue.exit.i324.i ], [ 0.000000e+00, %.lr.ph393.i ]
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.0267391.i
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.ub = insertelement <4 x float> poison, float %.1.i321.i, i64 0
  %i.uc = insertelement <4 x float> %i.ub, float %i.ua, i64 1
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.ud, ptr %i.te, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.ue = add nuw i64 %.0267391.i, 1              ; 2 uses
  %i.uf = add i64 %.0266392.i, 4
  %exitcond475.not.i = icmp eq i64 %i.ue, %i.ad
  br i1 %exitcond475.not.i, label %_display_channel.exit, label %.lr.ph393.i, !llvm.loop !247

.lr.ph389.i:                                      ; preds = %.lr.ph389.i.preheader448, %.lr.ph389.i
  %.0263388.i = phi i64 [ %i.uy, %.lr.ph389.i ], [ %.0263388.i.ph, %.lr.ph389.i.preheader448 ] ; 3 uses
  %.0264387.i = phi i64 [ %i.ux, %.lr.ph389.i ], [ %.0264387.i.ph, %.lr.ph389.i.preheader448 ] ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.0263388.i ; 3 uses
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !39, !alias.scope !202, !noalias !214 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !39, !alias.scope !202, !noalias !214 ; 2 uses
  %i.uk = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.uh, float %i.uj)
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.um = load float, ptr %i.ul, align 4, !tbaa !39, !alias.scope !202, !noalias !214 ; 2 uses
  %i.un = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.uk, float %i.um)
  %i.uo = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uh, float %i.uj)
  %i.up = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uo, float %i.um)
  %i.uq = fadd reassoc nsz arcp contract afn float %i.up, %i.un
  %i.ur = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uq, float 0.000000e+00)
  %i.us = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.ur, float 2.000000e+00)
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0263388.i
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.0264387.i
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %24 = insertelement <2 x float> poison, float %i.us, i64 0
  %25 = insertelement <2 x float> %24, float %i.uv, i64 1
  %26 = fmul reassoc nsz arcp contract afn <2 x float> %25, <float 5.000000e-01, float 1.000000e+00>
  %i.uw = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.uw, ptr %i.ut, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.ux = add nuw i64 %.0264387.i, 1              ; 2 uses
  %i.uy = add i64 %.0263388.i, 4
  %exitcond472.not.i = icmp eq i64 %i.ux, %i.ad
  br i1 %exitcond472.not.i, label %_display_channel.exit, label %.lr.ph389.i, !llvm.loop !248

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader450, %.lr.ph.i
  %.0259385.i = phi i64 [ %i.vq, %.lr.ph.i ], [ %.0259385.i.ph, %.lr.ph.i.preheader450 ] ; 2 uses
  %.0260384.i = phi i64 [ %i.vp, %.lr.ph.i ], [ %.0260384.i.ph, %.lr.ph.i.preheader450 ] ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0259385.i ; 4 uses
  %i.va = load float, ptr %i.uz, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 2 uses
  %i.vd = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.va, float %i.vc)
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !39, !alias.scope !205, !noalias !211 ; 2 uses
  %i.vg = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.vd, float %i.vf)
  %i.vh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.va, float %i.vc)
  %i.vi = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vh, float %i.vf)
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vi, %i.vg
  %i.vk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vj, float 0.000000e+00)
  %i.vl = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.vk, float 2.000000e+00)
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.0260384.i
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %27 = insertelement <2 x float> poison, float %i.vl, i64 0
  %28 = insertelement <2 x float> %27, float %i.vn, i64 1
  %29 = fmul reassoc nsz arcp contract afn <2 x float> %28, <float 5.000000e-01, float 1.000000e+00>
  %i.vo = shufflevector <2 x float> %29, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.vo, ptr %i.uz, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.vp = add nuw i64 %.0260384.i, 1              ; 2 uses
  %i.vq = add i64 %.0259385.i, 4
  %exitcond.not.i = icmp eq i64 %i.vp, %i.ad
  br i1 %exitcond.not.i, label %_display_channel.exit, label %.lr.ph.i, !llvm.loop !249

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.0255440.i = phi i64 [ %i.xn, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 9 uses
  %.0256439.i = phi i64 [ %i.xm, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 10 uses
  %niter = phi i64 [ %niter.next.7, %.preheader.i ], [ 0, %.preheader.i.preheader ]
  %i.vr = shl i64 %.0256439.i, 4
  %scevgep.i = getelementptr i8, ptr %i.de, i64 %i.vr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i, i8 0, i64 12, i1 false), !tbaa !39, !alias.scope !205, !noalias !211
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.0256439.i
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0255440.i
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 12
  store float %i.vt, ptr %i.vv, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.vw = or disjoint i64 %.0256439.i, 1          ; 2 uses
  %i.vx = shl i64 %i.vw, 4
  %scevgep.i.1 = getelementptr i8, ptr %i.de, i64 %i.vx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.1, i8 0, i64 12, i1 false), !tbaa !39, !alias.scope !205, !noalias !211
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.vw
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0255440.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 28
  store float %i.vz, ptr %i.wb, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.wc = or disjoint i64 %.0256439.i, 2          ; 2 uses
  %i.wd = shl i64 %i.wc, 4
  %scevgep.i.2 = getelementptr i8, ptr %i.de, i64 %i.wd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.2, i8 0, i64 12, i1 false), !tbaa !39, !alias.scope !205, !noalias !211
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.wc
  %i.wf = load float, ptr %i.we, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0255440.i
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 44
  store float %i.wf, ptr %i.wh, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.wi = or disjoint i64 %.0256439.i, 3          ; 2 uses
  %i.wj = shl i64 %i.wi, 4
  %scevgep.i.3 = getelementptr i8, ptr %i.de, i64 %i.wj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.3, i8 0, i64 12, i1 false), !tbaa !39, !alias.scope !205, !noalias !211
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.wi
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0255440.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 60
  store float %i.wl, ptr %i.wn, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.wo = or disjoint i64 %.0256439.i, 4          ; 2 uses
  %i.wp = shl i64 %i.wo, 4
  %scevgep.i.4 = getelementptr i8, ptr %i.de, i64 %i.wp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.4, i8 0, i64 12, i1 false), !tbaa !39, !alias.scope !205, !noalias !211
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.wo
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0255440.i
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 76
  store float %i.wr, ptr %i.wt, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.wu = or disjoint i64 %.0256439.i, 5          ; 2 uses
  %i.wv = shl i64 %i.wu, 4
  %scevgep.i.5 = getelementptr i8, ptr %i.de, i64 %i.wv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.5, i8 0, i64 12, i1 false), !tbaa !39, !alias.scope !205, !noalias !211
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.wu
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0255440.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 92
  store float %i.wx, ptr %i.wz, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.xa = or disjoint i64 %.0256439.i, 6          ; 2 uses
  %i.xb = shl i64 %i.xa, 4
  %scevgep.i.6 = getelementptr i8, ptr %i.de, i64 %i.xb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.6, i8 0, i64 12, i1 false), !tbaa !39, !alias.scope !205, !noalias !211
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.xa
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0255440.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 108
  store float %i.xd, ptr %i.xf, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.xg = or disjoint i64 %.0256439.i, 7          ; 2 uses
  %i.xh = shl i64 %i.xg, 4
  %scevgep.i.7 = getelementptr i8, ptr %i.de, i64 %i.xh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.7, i8 0, i64 12, i1 false), !tbaa !39, !alias.scope !205, !noalias !211
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.xg
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0255440.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 124
  store float %i.xj, ptr %i.xl, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.xm = add nuw i64 %.0256439.i, 8              ; 2 uses
  %i.xn = add i64 %.0255440.i, 32                 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_display_channel.exit.loopexit.unr-lcssa, label %.preheader.i

_display_channel.exit.loopexit.unr-lcssa:         ; preds = %.preheader.i
  br i1 %lcmp.mod.not, label %_display_channel.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_display_channel.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.0255440.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.xn, %_display_channel.exit.loopexit.unr-lcssa ]
  %.0256439.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.xm, %_display_channel.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod452)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.0255440.i.epil = phi i64 [ %i.xu, %.preheader.i.epil ], [ %.0255440.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.0256439.i.epil = phi i64 [ %i.xt, %.preheader.i.epil ], [ %.0256439.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.xo = shl i64 %.0256439.i.epil, 4
  %scevgep.i.epil = getelementptr i8, ptr %i.de, i64 %i.xo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.epil, i8 0, i64 12, i1 false), !tbaa !39, !alias.scope !205, !noalias !211
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.0256439.i.epil
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !39, !alias.scope !207, !noalias !212
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0255440.i.epil
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 12
  store float %i.xq, ptr %i.xs, align 4, !tbaa !39, !alias.scope !205, !noalias !211
  %i.xt = add nuw i64 %.0256439.i.epil, 1
  %i.xu = add i64 %.0255440.i.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_display_channel.exit, label %.preheader.i.epil, !llvm.loop !250

_display_channel.exit:                            ; preds = %.lr.ph.i, %.lr.ph389.i, %dt_RGB_2_HSL.exit326.i, %dt_RGB_2_HSL.exit318.i, %dt_RGB_2_HSL.exit310.i, %dt_RGB_2_HSL.exit.i, %_rgb_luminance.exit301.i, %_rgb_luminance.exit.i, %.lr.ph417.i, %.lr.ph421.i, %.lr.ph425.i, %.lr.ph429.i, %.lr.ph433.i, %.lr.ph437.i, %_display_channel.exit.loopexit.unr-lcssa, %.preheader.i.epil, %.preheader381.i, %.preheader379.i, %.preheader377.i, %.preheader375.i, %.preheader373.i, %.preheader371.i, %.preheader362.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.n
  %i.xv = add nuw i64 %.0146, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.xv, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.aa:                                            ; preds = %bb.b
  %i.xw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !251 ; 2 uses
  %trunc.i = trunc i32 %i.xx to i8
  %switch.tableidx = add i8 %trunc.i, -2          ; 2 uses
  %i.xy = icmp ult i8 %switch.tableidx, 34
  br i1 %i.xy, label %switch.lookup, label %_choose_blend_func.exit

switch.lookup:                                    ; preds = %bb.aa
  %i.xz = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dt_develop_blendif_rgb_hsl_blend, i64 %i.xz
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_choose_blend_func.exit

_choose_blend_func.exit:                          ; preds = %bb.aa, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @_blend_normal_unbounded, %bb.aa ] ; 2 uses
  %.not100 = icmp sgt i32 %i.xx, -1
  %i.ya = sext i32 %i.r to i64                    ; 2 uses
  %.not156 = icmp eq i32 %i.r, 0                  ; 2 uses
  br i1 %.not100, label %.preheader, label %.preheader130

.preheader130:                                    ; preds = %_choose_blend_func.exit
  br i1 %.not156, label %.loopexit129, label %.lr.ph148

.lr.ph148:                                        ; preds = %.preheader130
  %i.yb = sext i32 %i.l to i64
  %i.yc = sext i32 %i.n to i64
  %i.yd = sext i32 %i.g to i64
  %i.ye = sext i32 %i.p to i64                    ; 2 uses
  br label %bb.ab

.preheader:                                       ; preds = %_choose_blend_func.exit
  br i1 %.not156, label %.loopexit129, label %.lr.ph150

.lr.ph150:                                        ; preds = %.preheader
  %i.yf = sext i32 %i.l to i64
  %i.yg = sext i32 %i.n to i64
  %i.yh = sext i32 %i.g to i64
  %i.yi = sext i32 %i.p to i64                    ; 2 uses
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph148, %bb.ab
  %.096147 = phi i64 [ 0, %.lr.ph148 ], [ %i.yq, %bb.ab ] ; 3 uses
  %i.yj = add i64 %.096147, %i.yb
  %i.yk = mul i64 %i.yj, %i.yc
  %i.yl = add i64 %i.yk, %i.yd
  %i.ym = mul i64 %.096147, %i.ye                 ; 2 uses
  %.idx102 = shl i64 %i.ym, 4
  %i.yn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx102 ; 2 uses
  %.idx103 = shl i64 %i.yl, 4
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 %.idx103
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ym
  tail call void %.0.i(ptr noundef %i.yn, ptr noundef %i.yo, ptr noundef %i.yn, ptr noundef %i.yp, i64 noundef %i.ye) #8
  %i.yq = add nuw i64 %.096147, 1                 ; 2 uses
  %exitcond174.not = icmp eq i64 %i.yq, %i.ya
  br i1 %exitcond174.not, label %.loopexit129, label %bb.ab

bb.ac:                                            ; preds = %.lr.ph150, %bb.ac
  %.097149 = phi i64 [ 0, %.lr.ph150 ], [ %i.yy, %bb.ac ] ; 3 uses
  %i.yr = add i64 %.097149, %i.yf
  %i.ys = mul i64 %i.yr, %i.yg
  %i.yt = add i64 %i.ys, %i.yh
  %i.yu = mul i64 %.097149, %i.yi                 ; 2 uses
  %.idx = shl i64 %i.yt, 4
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.idx101 = shl i64 %i.yu, 4
  %i.yw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx101 ; 2 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.yu
  tail call void %.0.i(ptr noundef %i.yv, ptr noundef %i.yw, ptr noundef %i.yw, ptr noundef %i.yx, i64 noundef %i.yi) #8
  %i.yy = add nuw i64 %.097149, 1                 ; 2 uses
  %exitcond175.not = icmp eq i64 %i.yy, %i.ya
  br i1 %exitcond175.not, label %.loopexit129, label %bb.ac

.loopexit129:                                     ; preds = %bb.ab, %bb.ac, %.preheader130, %.preheader, %._crit_edge
  %i.yz = and i32 %i.v, 1
  %.not105 = icmp eq i32 %i.yz, 0
  br i1 %.not105, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit129
  %i.za = shl i32 %i.p, 2
  %i.zb = sext i32 %i.za to i64                   ; 3 uses
end_hunk_2
begin_hunk_3_@_blend_RGB_B:bb.a
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !39
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.au
  store float %i.aw, ptr %i.ax, align 4, !tbaa !39
  %i.ay = or disjoint i64 %.02425, 2              ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !39 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.aq
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.ba
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ay
  store float %i.bf, ptr %i.bg, align 4, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float %i.aq, ptr %i.bh, align 4, !tbaa !39
  %i.bi = add i64 %.02425, 4                      ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !39 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !39
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bi ; 2 uses
  store float %i.bn, ptr %i.bo, align 4, !tbaa !39
  %i.bp = or disjoint i64 %i.bi, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !39
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bp
  store float %i.br, ptr %i.bs, align 4, !tbaa !39
  %i.bt = or disjoint i64 %i.bi, 2                ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !39 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !39
  %i.by = fsub reassoc nsz arcp contract afn float %i.bx, %i.bv
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, %i.bl
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.bv
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bt
  store float %i.ca, ptr %i.cb, align 4, !tbaa !39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store float %i.bl, ptr %i.cc, align 4, !tbaa !39
  %i.cd = add nuw i64 %.026, 2                    ; 2 uses
  %i.ce = add i64 %.02425, 8
  %exitcond.not.1 = icmp eq i64 %i.cd, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !518
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_normal_unbounded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader44, label %vector.memcheck

.lr.ph.preheader44:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02125.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02224.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.g, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 3 uses
  %i.b = shl i64 %4, 2
  %scevgep27 = getelementptr i8, ptr %3, i64 %i.b
  %i.c = add i64 %i.a, -4                         ; 2 uses
  %scevgep28 = getelementptr i8, ptr %0, i64 %i.c
  %scevgep29 = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %2, %scevgep27
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound030 = icmp ult ptr %2, %scevgep28
  %bound131 = icmp ult ptr %0, %scevgep
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx = or i1 %found.conflict, %found.conflict32
  %bound033 = icmp ult ptr %2, %scevgep29
  %bound134 = icmp ult ptr %1, %scevgep
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx36 = or i1 %conflict.rdx, %found.conflict35
  br i1 %conflict.rdx36, label %.lr.ph.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.d = and i64 %4, 3                            ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub i64 %4, %i.f                       ; 3 uses
  %i.g = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = shl i64 %index, 2                        ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !519 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %wide.vec = load <16 x float>, ptr %i.j, align 4, !tbaa !39, !alias.scope !522 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec37 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec38 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  %wide.vec39 = load <16 x float>, ptr %i.k, align 4, !tbaa !39, !alias.scope !524 ; 3 uses
  %strided.vec40 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec41 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec42 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.l = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec40, %strided.vec
  %i.m = fmul reassoc nsz arcp contract afn <4 x float> %i.l, %wide.load
  %i.n = fadd reassoc nsz arcp contract afn <4 x float> %i.m, %strided.vec
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  %i.p = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec41, %strided.vec37
  %i.q = fmul reassoc nsz arcp contract afn <4 x float> %i.p, %wide.load
  %i.r = fadd reassoc nsz arcp contract afn <4 x float> %i.q, %strided.vec37
  %i.s = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec42, %strided.vec38
  %i.t = fmul reassoc nsz arcp contract afn <4 x float> %i.s, %wide.load
  %i.u = fadd reassoc nsz arcp contract afn <4 x float> %i.t, %strided.vec38
  %i.v = shufflevector <4 x float> %i.n, <4 x float> %i.r, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.v, <8 x float> %i.w, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.o, align 4, !tbaa !39, !alias.scope !526, !noalias !528
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %.lr.ph.preheader44, label %vector.body, !llvm.loop !529

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader44, %.lr.ph
  %.02125 = phi i64 [ %i.bb, %.lr.ph ], [ %.02125.ph, %.lr.ph.preheader44 ] ; 2 uses
  %.02224 = phi i64 [ %i.bc, %.lr.ph ], [ %.02224.ph, %.lr.ph.preheader44 ] ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02125
  %i.z = load float, ptr %i.y, align 4, !tbaa !39 ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02224
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !39 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02224
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !39
  %i.ae = fsub reassoc nsz arcp contract afn float %i.ad, %i.ab
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.z
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.ab
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02224 ; 2 uses
  store float %i.ag, ptr %i.ah, align 4, !tbaa !39
  %i.ai = or disjoint i64 %.02224, 1              ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !39 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
  %i.am = load float, ptr %i.al, align 4, !tbaa !39
  %i.an = fsub reassoc nsz arcp contract afn float %i.am, %i.ak
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, %i.z
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  store float %i.ap, ptr %i.aq, align 4, !tbaa !39
  %i.ar = or disjoint i64 %.02224, 2              ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !39 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar
  %i.av = load float, ptr %i.au, align 4, !tbaa !39
  %i.aw = fsub reassoc nsz arcp contract afn float %i.av, %i.at
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.z
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.at
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  store float %i.ay, ptr %i.az, align 4, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store float %i.z, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nuw i64 %.02125, 1                  ; 2 uses
  %i.bc = add i64 %.02224, 4
  %exitcond.not = icmp eq i64 %i.bb, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !530
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.minnum.v16f32(<16 x float>, <16 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 24}
!12 = !{!"dt_dev_pixelpipe_iop_t", !13, i64 0, !15, i64 8, !14, i64 16, !14, i64 24, !8, i64 32, !8, i64 36, !16, i64 40, !18, i64 56, !19, i64 64, !9, i64 88, !21, i64 104, !8, i64 108, !8, i64 112, !20, i64 120, !8, i64 128, !8, i64 132, !22, i64 136, !22, i64 156, !22, i64 176, !22, i64 196, !8, i64 216, !8, i64 220, !23, i64 224, !23, i64 352, !9, i64 480, !8, i64 516, !27, i64 520, !28, i64 528, !28, i64 576}
!13 = !{!"p1 _ZTS15dt_iop_module_t", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !14, i64 0}
!16 = !{!"dt_dev_histogram_collection_params_t", !17, i64 0, !8, i64 8}
!17 = !{!"p1 _ZTS18dt_histogram_roi_t", !14, i64 0}
!18 = !{!"p1 int", !14, i64 0}
!19 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !20, i64 8, !8, i64 16, !8, i64 20}
!20 = !{!"long", !9, i64 0}
!21 = !{!"float", !9, i64 0}
!22 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !21, i64 16}
!23 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !24, i64 48, !26, i64 64, !9, i64 96, !8, i64 112}
!24 = !{!"", !25, i64 0, !25, i64 2}
!25 = !{!"short", !9, i64 0}
!26 = !{!"", !8, i64 0, !9, i64 16}
!27 = !{!"p1 _ZTS11_GHashTable", !14, i64 0}
!28 = !{!"dt_dev_distorted_mask_cache_t", !29, i64 0, !22, i64 8, !20, i64 32, !20, i64 40}
!29 = !{!"p1 float", !14, i64 0}
!30 = !{!12, !8, i64 132}
!31 = !{!8, !8, i64 0}
!32 = !{!22, !8, i64 8}
!33 = !{!22, !8, i64 12}
!34 = !{!35, !8, i64 28}
!35 = !{!"dt_develop_blend_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !21, i64 12, !21, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !21, i64 32, !8, i64 36, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !8, i64 56, !9, i64 60, !9, i64 68, !9, i64 324, !9, i64 388, !8, i64 408, !8, i64 412, !8, i64 416}
!36 = !{!35, !8, i64 20}
!37 = !{!35, !21, i64 16}
!38 = !{!35, !8, i64 0}
!39 = !{!21, !21, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 4, i32 28}
!44 = distinct !{!44, !41, !42}
!45 = distinct !{!45, !42, !41}
!46 = distinct !{!46, !41, !42}
!47 = distinct !{!47, !41, !42}
!48 = distinct !{!48, !42, !41}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !41, !42}
!55 = distinct !{!55, !41, !42}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59}
!59 = distinct !{!59, !60}
!60 = distinct !{!60, !"LVerDomain"}
!61 = !{!62}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !41, !42}
!64 = distinct !{!64, !41, !42}
!65 = distinct !{!65, !57}
!66 = distinct !{!66, !41}
!67 = distinct !{!67, !41}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !41, !42}
!74 = distinct !{!74, !41, !42}
!75 = distinct !{!75, !57}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!80}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !41, !42}
!82 = distinct !{!82, !41, !42}
!83 = distinct !{!83, !57}
!84 = distinct !{!84, !41}
!85 = distinct !{!85, !41}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_blendif_gray: argument 1"}
!88 = distinct !{!88, !"_blendif_gray"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_blendif_gray: argument 2"}
!91 = !{!92}
!92 = distinct !{!92, !88, !"_blendif_gray: argument 3"}
!93 = !{!94, !8, i64 704}
!94 = !{!"dt_iop_order_iccprofile_info_t", !8, i64 0, !9, i64 4, !8, i64 516, !9, i64 576, !9, i64 640, !8, i64 704, !9, i64 712, !9, i64 736, !9, i64 768, !9, i64 816, !8, i64 852, !21, i64 856, !9, i64 896, !9, i64 960, !9, i64 1024, !9, i64 1048}
!95 = !{!96, !87, !90}
!96 = distinct !{!96, !88, !"_blendif_gray: argument 0"}
!97 = !{!94, !8, i64 852}
!98 = !{!99, !90}
!99 = distinct !{!99, !100, !"_blendif_compute_factor: argument 0"}
!100 = distinct !{!100, !"_blendif_compute_factor"}
!101 = !{!96, !87, !92}
!102 = !{!87, !90}
!103 = !{!96, !90, !92}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_blendif_gray_fb: argument 0"}
!106 = distinct !{!106, !"_blendif_gray_fb"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_blendif_gray_fb: argument 1"}
!109 = !{!110}
!110 = distinct !{!110, !106, !"_blendif_gray_fb: argument 2"}
!111 = !{!112, !110}
!112 = distinct !{!112, !113, !"_blendif_compute_factor: argument 0"}
!113 = distinct !{!113, !"_blendif_compute_factor"}
!114 = !{!105, !108}
!115 = !{!108, !110}
!116 = !{!105, !110}
!117 = distinct !{!117, !41, !42}
!118 = distinct !{!118, !41, !42}
!119 = distinct !{!119, !42, !41}
!120 = distinct !{!120, !42, !41}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_blendif_rgb_red: argument 0"}
!123 = distinct !{!123, !"_blendif_rgb_red"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"_blendif_rgb_red: argument 1"}
!126 = !{!127}
!127 = distinct !{!127, !123, !"_blendif_rgb_red: argument 2"}
!128 = !{!129, !127}
!129 = distinct !{!129, !130, !"_blendif_compute_factor: argument 0"}
!130 = distinct !{!130, !"_blendif_compute_factor"}
!131 = !{!122, !125}
!132 = !{!125, !127}
!133 = !{!122, !127}
!134 = distinct !{!134, !41, !42}
!135 = distinct !{!135, !42, !41}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_blendif_rgb_green: argument 0"}
!138 = distinct !{!138, !"_blendif_rgb_green"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"_blendif_rgb_green: argument 1"}
!141 = !{!142}
!142 = distinct !{!142, !138, !"_blendif_rgb_green: argument 2"}
!143 = !{!144, !142}
!144 = distinct !{!144, !145, !"_blendif_compute_factor: argument 0"}
!145 = distinct !{!145, !"_blendif_compute_factor"}
!146 = !{!137, !140}
!147 = !{!140, !142}
!148 = !{!137, !142}
!149 = distinct !{!149, !41, !42}
!150 = distinct !{!150, !42, !41}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_blendif_rgb_blue: argument 0"}
!153 = distinct !{!153, !"_blendif_rgb_blue"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_blendif_rgb_blue: argument 1"}
!156 = !{!157}
!157 = distinct !{!157, !153, !"_blendif_rgb_blue: argument 2"}
!158 = !{!159, !157}
!159 = distinct !{!159, !160, !"_blendif_compute_factor: argument 0"}
!160 = distinct !{!160, !"_blendif_compute_factor"}
!161 = !{!152, !155}
!162 = !{!155, !157}
!163 = !{!152, !157}
end_hunk_3
