Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_mixer?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mix8 = internal unnamed_addr constant [512 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str = private unnamed_addr constant [37 x i8] c"SDL_MixAudio(): unknown audio format\00", align 1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_MixAudio_REAL(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul float %4, 1.280000e+02
  %i.b = tail call float @SDL_roundf_REAL(float noundef %i.a) #3
  %i.c = fptosi float %i.b to i32                 ; 11 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.m [
    i32 8, label %.preheader
    i32 32776, label %.preheader162
    i32 32784, label %bb.c
    i32 36880, label %bb.d
    i32 32800, label %bb.g
    i32 36896, label %bb.i
    i32 33056, label %bb.k
    i32 37152, label %bb.l
  ]

.preheader162:                                    ; preds = %bb.b
  %.not156198 = icmp eq i32 %3, 0
  br i1 %.not156198, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader162
  %i.e = zext i32 %3 to i64                       ; 5 uses
  %min.iters.check324 = icmp ult i32 %3, 4
  br i1 %min.iters.check324, label %.lr.ph202.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %iter.check
  %i.f = zext i32 %3 to i64                       ; 2 uses
  %scevgep318 = getelementptr i8, ptr %0, i64 %i.f
  %scevgep319 = getelementptr i8, ptr %1, i64 %i.f
  %bound0320 = icmp ult ptr %0, %scevgep319
  %bound1321 = icmp ult ptr %1, %scevgep318
  %found.conflict322 = and i1 %bound0320, %bound1321
  br i1 %found.conflict322, label %.lr.ph202.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck317
  %min.iters.check325 = icmp ult i32 %3, 16
  br i1 %min.iters.check325, label %vec.epilog.ph, label %vector.ph326

vector.ph326:                                     ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.e, 12
  %n.vec327 = and i64 %i.e, 4294967280            ; 6 uses
  %i.h = getelementptr i8, ptr %1, i64 %n.vec327
  %i.i = getelementptr i8, ptr %0, i64 %n.vec327
  %i.j = trunc nuw i64 %n.vec327 to i32
  %i.k = sub i32 %3, %i.j
  %broadcast.splatinsert328 = insertelement <16 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat329 = shufflevector <16 x i32> %broadcast.splatinsert328, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph326
  %index331 = phi i64 [ 0, %vector.ph326 ], [ %index.next336, %vector.body330 ] ; 3 uses
  %next.gep332 = getelementptr i8, ptr %1, i64 %index331
  %next.gep333 = getelementptr i8, ptr %0, i64 %index331 ; 2 uses
  %wide.load334 = load <16 x i8>, ptr %next.gep332, align 1, !alias.scope !3
  %i.l = sext <16 x i8> %wide.load334 to <16 x i32>
  %i.m = mul nsw <16 x i32> %broadcast.splat329, %i.l
  %i.n = sdiv <16 x i32> %i.m, splat (i32 128)
  %wide.load335 = load <16 x i8>, ptr %next.gep333, align 1, !alias.scope !6, !noalias !3
  %i.o = trunc <16 x i32> %i.n to <16 x i8>
  %i.p = tail call <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8> %i.o, <16 x i8> %wide.load335)
  store <16 x i8> %i.p, ptr %next.gep333, align 1, !alias.scope !6, !noalias !3
  %index.next336 = add nuw i64 %index331, 16      ; 2 uses
  %i.q = icmp eq i64 %index.next336, %n.vec327
  br i1 %i.q, label %middle.block337, label %vector.body330, !llvm.loop !8

middle.block337:                                  ; preds = %vector.body330
  %cmp.n338 = icmp eq i64 %n.vec327, %i.e
  br i1 %cmp.n338, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block337
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph202.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec327, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec342 = and i64 %i.e, 4294967292            ; 5 uses
  %i.r = getelementptr i8, ptr %1, i64 %n.vec342
  %i.s = getelementptr i8, ptr %0, i64 %n.vec342
  %i.t = trunc nuw i64 %n.vec342 to i32
  %i.u = sub i32 %3, %i.t
  %broadcast.splatinsert343 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat344 = shufflevector <4 x i32> %broadcast.splatinsert343, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index345 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next350, %vec.epilog.vector.body ] ; 3 uses
  %next.gep346 = getelementptr i8, ptr %1, i64 %index345
  %next.gep347 = getelementptr i8, ptr %0, i64 %index345 ; 2 uses
  %wide.load348 = load <4 x i8>, ptr %next.gep346, align 1, !alias.scope !3
  %i.v = sext <4 x i8> %wide.load348 to <4 x i32>
  %i.w = mul nsw <4 x i32> %broadcast.splat344, %i.v
  %i.x = sdiv <4 x i32> %i.w, splat (i32 128)
  %wide.load349 = load <4 x i8>, ptr %next.gep347, align 1, !alias.scope !6, !noalias !3
  %i.y = trunc <4 x i32> %i.x to <4 x i8>
  %i.z = tail call <4 x i8> @llvm.sadd.sat.v4i8(<4 x i8> %i.y, <4 x i8> %wide.load349)
  store <4 x i8> %i.z, ptr %next.gep347, align 1, !alias.scope !6, !noalias !3
  %index.next350 = add nuw i64 %index345, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next350, %n.vec342
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n351 = icmp eq i64 %n.vec342, %i.e
  br i1 %cmp.n351, label %.loopexit, label %.lr.ph202.preheader

.lr.ph202.preheader:                              ; preds = %vector.memcheck317, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0132201.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck317 ], [ %i.h, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  %.0133200.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck317 ], [ %i.i, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.1199.ph = phi i32 [ %3, %iter.check ], [ %3, %vector.memcheck317 ], [ %i.k, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %.lr.ph202

.preheader:                                       ; preds = %bb.b
  %.not158203 = icmp eq i32 %3, 0
  br i1 %.not158203, label %.loopexit, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader, %.lr.ph207
  %.0135206 = phi i32 [ %i.ab, %.lr.ph207 ], [ %3, %.preheader ]
  %.0136205 = phi ptr [ %i.ap, %.lr.ph207 ], [ %0, %.preheader ] ; 3 uses
  %.0139204 = phi ptr [ %i.aq, %.lr.ph207 ], [ %1, %.preheader ] ; 2 uses
  %i.ab = add i32 %.0135206, -1                   ; 2 uses
  %i.ac = load i8, ptr %.0139204, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -128
  %i.af = mul nsw i32 %i.ae, %i.c
  %i.ag = sdiv i32 %i.af, 128
  %i.ah = load i8, ptr %.0136205, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = and i32 %i.ag, 255
  %i.ak = xor i32 %i.aj, 128
  %i.al = add nuw nsw i32 %i.ak, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @mix8, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  store i8 %i.ao, ptr %.0136205, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0136205, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0139204, i64 1
  %.not158 = icmp eq i32 %i.ab, 0
  br i1 %.not158, label %.loopexit, label %.lr.ph207, !llvm.loop !14

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.lr.ph202
  %.0132201 = phi ptr [ %i.ba, %.lr.ph202 ], [ %.0132201.ph, %.lr.ph202.preheader ] ; 2 uses
  %.0133200 = phi ptr [ %i.az, %.lr.ph202 ], [ %.0133200.ph, %.lr.ph202.preheader ] ; 3 uses
  %.1199 = phi i32 [ %i.ar, %.lr.ph202 ], [ %.1199.ph, %.lr.ph202.preheader ]
  %i.ar = add i32 %.1199, -1                      ; 2 uses
  %i.as = load i8, ptr %.0132201, align 1
  %i.at = sext i8 %i.as to i32
  %i.au = mul nsw i32 %i.at, %i.c
  %i.av = sdiv i32 %i.au, 128
  %i.aw = load i8, ptr %.0133200, align 1
  %i.ax = trunc i32 %i.av to i8
  %i.ay = tail call i8 @llvm.sadd.sat.i8(i8 %i.ax, i8 %i.aw)
  store i8 %i.ay, ptr %.0133200, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0133200, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0132201, i64 1
  %.not156 = icmp eq i32 %i.ar, 0
  br i1 %.not156, label %.loopexit, label %.lr.ph202, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %i.bb = lshr i32 %3, 1                          ; 6 uses
  %.not154193 = icmp eq i32 %i.bb, 0
  br i1 %.not154193, label %.loopexit, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %bb.c
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %min.iters.check300 = icmp ult i32 %3, 16
  br i1 %min.iters.check300, label %.lr.ph197.preheader356, label %vector.memcheck293

vector.memcheck293:                               ; preds = %.lr.ph197.preheader
  %i.bd = add nsw i32 %i.bb, -1
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = add nuw nsw i64 %i.bf, 2                ; 2 uses
  %scevgep294 = getelementptr i8, ptr %0, i64 %i.bg
  %scevgep295 = getelementptr i8, ptr %1, i64 %i.bg
  %bound0296 = icmp ult ptr %0, %scevgep295
  %bound1297 = icmp ult ptr %1, %scevgep294
  %found.conflict298 = and i1 %bound0296, %bound1297
  br i1 %found.conflict298, label %.lr.ph197.preheader356, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck293
  %n.vec302 = and i64 %i.bc, 2147483640           ; 4 uses
  %i.bh = trunc nuw nsw i64 %n.vec302 to i32
  %i.bi = sub nsw i32 %i.bb, %i.bh
  %i.bj = shl nuw nsw i64 %n.vec302, 1            ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 %i.bj
  %i.bl = getelementptr i8, ptr %1, i64 %i.bj
  %broadcast.splatinsert303 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat304 = shufflevector <8 x i32> %broadcast.splatinsert303, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph301
  %index306 = phi i64 [ 0, %vector.ph301 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.bm = shl i64 %index306, 1                    ; 2 uses
  %next.gep307 = getelementptr i8, ptr %0, i64 %i.bm ; 2 uses
  %next.gep308 = getelementptr i8, ptr %1, i64 %i.bm
  %wide.load309 = load <8 x i16>, ptr %next.gep308, align 2, !alias.scope !16
  %i.bn = sext <8 x i16> %wide.load309 to <8 x i32>
  %i.bo = mul nsw <8 x i32> %broadcast.splat304, %i.bn
  %i.bp = sdiv <8 x i32> %i.bo, splat (i32 128)
  %wide.load310 = load <8 x i16>, ptr %next.gep307, align 2, !alias.scope !19, !noalias !16
  %i.bq = trunc <8 x i32> %i.bp to <8 x i16>
  %i.br = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.bq, <8 x i16> %wide.load310)
  store <8 x i16> %i.br, ptr %next.gep307, align 2, !alias.scope !19, !noalias !16
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next311, %n.vec302
  br i1 %i.bs, label %middle.block312, label %vector.body305, !llvm.loop !21

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %n.vec302, %i.bc
  br i1 %cmp.n313, label %.loopexit, label %.lr.ph197.preheader356

.lr.ph197.preheader356:                           ; preds = %vector.memcheck293, %.lr.ph197.preheader, %middle.block312
  %.2196.ph = phi i32 [ %i.bb, %vector.memcheck293 ], [ %i.bb, %.lr.ph197.preheader ], [ %i.bi, %middle.block312 ]
  %.1137195.ph = phi ptr [ %0, %vector.memcheck293 ], [ %0, %.lr.ph197.preheader ], [ %i.bk, %middle.block312 ]
  %.1140194.ph = phi ptr [ %1, %vector.memcheck293 ], [ %1, %.lr.ph197.preheader ], [ %i.bl, %middle.block312 ]
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader356, %.lr.ph197
  %.2196 = phi i32 [ %i.bt, %.lr.ph197 ], [ %.2196.ph, %.lr.ph197.preheader356 ]
  %.1137195 = phi ptr [ %i.cc, %.lr.ph197 ], [ %.1137195.ph, %.lr.ph197.preheader356 ] ; 3 uses
  %.1140194 = phi ptr [ %i.bz, %.lr.ph197 ], [ %.1140194.ph, %.lr.ph197.preheader356 ] ; 2 uses
  %i.bt = add nsw i32 %.2196, -1                  ; 2 uses
  %i.bu = load i16, ptr %.1140194, align 2
  %i.bv = sext i16 %i.bu to i32
  %i.bw = mul nsw i32 %i.bv, %i.c
  %i.bx = sdiv i32 %i.bw, 128
  %i.by = load i16, ptr %.1137195, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.1140194, i64 2
  %i.ca = trunc i32 %i.bx to i16
  %i.cb = tail call i16 @llvm.sadd.sat.i16(i16 %i.ca, i16 %i.by)
  store i16 %i.cb, ptr %.1137195, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.1137195, i64 2
  %.not154 = icmp eq i32 %i.bt, 0
  br i1 %.not154, label %.loopexit, label %.lr.ph197, !llvm.loop !22

bb.d:                                             ; preds = %bb.b
  %i.cd = lshr i32 %3, 1                          ; 6 uses
  %.not153189 = icmp eq i32 %i.cd, 0
  br i1 %.not153189, label %.loopexit, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %bb.d
  %i.ce = zext nneg i32 %i.cd to i64              ; 2 uses
  %min.iters.check276 = icmp ult i32 %3, 16
  br i1 %min.iters.check276, label %.lr.ph192.preheader358, label %vector.memcheck269

vector.memcheck269:                               ; preds = %.lr.ph192.preheader
  %i.cf = add nsw i32 %i.cd, -1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 1
  %i.ci = add nuw nsw i64 %i.ch, 2                ; 2 uses
  %scevgep270 = getelementptr i8, ptr %0, i64 %i.ci
  %scevgep271 = getelementptr i8, ptr %1, i64 %i.ci
  %bound0272 = icmp ult ptr %0, %scevgep271
  %bound1273 = icmp ult ptr %1, %scevgep270
  %found.conflict274 = and i1 %bound0272, %bound1273
  br i1 %found.conflict274, label %.lr.ph192.preheader358, label %vector.ph277

vector.ph277:                                     ; preds = %vector.memcheck269
  %n.vec278 = and i64 %i.ce, 2147483640           ; 4 uses
  %i.cj = trunc nuw nsw i64 %n.vec278 to i32
  %i.ck = sub nsw i32 %i.cd, %i.cj
  %i.cl = shl nuw nsw i64 %n.vec278, 1            ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %1, i64 %i.cl
  %broadcast.splatinsert279 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat280 = shufflevector <8 x i32> %broadcast.splatinsert279, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph277
  %index282 = phi i64 [ 0, %vector.ph277 ], [ %index.next287, %vector.body281 ] ; 2 uses
  %i.co = shl i64 %index282, 1                    ; 2 uses
  %next.gep283 = getelementptr i8, ptr %0, i64 %i.co ; 2 uses
  %next.gep284 = getelementptr i8, ptr %1, i64 %i.co
  %wide.load285 = load <8 x i16>, ptr %next.gep284, align 2, !alias.scope !23
  %i.cp = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load285)
  %i.cq = sext <8 x i16> %i.cp to <8 x i32>
  %i.cr = mul nsw <8 x i32> %broadcast.splat280, %i.cq
  %i.cs = sdiv <8 x i32> %i.cr, splat (i32 128)
  %wide.load286 = load <8 x i16>, ptr %next.gep283, align 2, !alias.scope !26, !noalias !23
  %i.ct = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load286)
  %i.cu = shl <8 x i32> %i.cs, splat (i32 16)
  %i.cv = ashr exact <8 x i32> %i.cu, splat (i32 16)
  %i.cw = sext <8 x i16> %i.ct to <8 x i32>
  %i.cx = add nsw <8 x i32> %i.cv, %i.cw          ; 2 uses
  %i.cy = icmp sgt <8 x i32> %i.cx, splat (i32 32767)
  %i.cz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cx, <8 x i32> splat (i32 -32768))
  %i.da = trunc nsw <8 x i32> %i.cz to <8 x i16>
  %i.db = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.da)
  %predphi = select <8 x i1> %i.cy, <8 x i16> splat (i16 -129), <8 x i16> %i.db
  store <8 x i16> %predphi, ptr %next.gep283, align 2, !alias.scope !26, !noalias !23
  %index.next287 = add nuw i64 %index282, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next287, %n.vec278
  br i1 %i.dc, label %middle.block288, label %vector.body281, !llvm.loop !28

middle.block288:                                  ; preds = %vector.body281
  %cmp.n289 = icmp eq i64 %n.vec278, %i.ce
  br i1 %cmp.n289, label %.loopexit, label %.lr.ph192.preheader358

.lr.ph192.preheader358:                           ; preds = %vector.memcheck269, %.lr.ph192.preheader, %middle.block288
  %.in.ph = phi i32 [ %i.cd, %vector.memcheck269 ], [ %i.cd, %.lr.ph192.preheader ], [ %i.ck, %middle.block288 ]
  %.2138191.ph = phi ptr [ %0, %vector.memcheck269 ], [ %0, %.lr.ph192.preheader ], [ %i.cm, %middle.block288 ]
  %.2141190.ph = phi ptr [ %1, %vector.memcheck269 ], [ %1, %.lr.ph192.preheader ], [ %i.cn, %middle.block288 ]
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader358, %bb.f
  %.in = phi i32 [ %i.dd, %bb.f ], [ %.in.ph, %.lr.ph192.preheader358 ]
  %.2138191 = phi ptr [ %i.ds, %bb.f ], [ %.2138191.ph, %.lr.ph192.preheader358 ] ; 3 uses
  %.2141190 = phi ptr [ %i.dl, %bb.f ], [ %.2141190.ph, %.lr.ph192.preheader358 ] ; 2 uses
  %i.dd = add nsw i32 %.in, -1                    ; 2 uses
  %i.de = load i16, ptr %.2141190, align 2
  %i.df = tail call i16 @llvm.bswap.i16(i16 %i.de)
  %i.dg = sext i16 %i.df to i32
  %i.dh = mul nsw i32 %i.dg, %i.c
  %i.di = sdiv i32 %i.dh, 128
  %i.dj = load i16, ptr %.2138191, align 2
  %i.dk = tail call i16 @llvm.bswap.i16(i16 %i.dj)
  %i.dl = getelementptr inbounds nuw i8, ptr %.2141190, i64 2
  %sext = shl i32 %i.di, 16
  %i.dm = ashr exact i32 %sext, 16
  %i.dn = sext i16 %i.dk to i32
  %i.do = add nsw i32 %i.dm, %i.dn                ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 32767
  br i1 %i.dp, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph192
  %spec.store.select2 = tail call i32 @llvm.smax.i32(i32 %i.do, i32 -32768)
  %i.dq = trunc nsw i32 %spec.store.select2 to i16
  %i.dr = tail call i16 @llvm.bswap.i16(i16 %i.dq)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph192, %bb.e
  %.0129 = phi i16 [ %i.dr, %bb.e ], [ -129, %.lr.ph192 ]
  store i16 %.0129, ptr %.2138191, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %.2138191, i64 2
  %.not153 = icmp eq i32 %i.dd, 0
  br i1 %.not153, label %.loopexit, label %.lr.ph192, !llvm.loop !29

bb.g:                                             ; preds = %bb.b
  %i.dt = lshr i32 %3, 2                          ; 2 uses
  %.not152184 = icmp eq i32 %i.dt, 0
  br i1 %.not152184, label %.loopexit, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.g
  %i.du = sext i32 %i.c to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph188, %bb.h
  %.0127187 = phi ptr [ %0, %.lr.ph188 ], [ %i.ee, %bb.h ] ; 3 uses
  %.0128186 = phi ptr [ %1, %.lr.ph188 ], [ %i.dy, %bb.h ] ; 2 uses
  %.4185 = phi i32 [ %i.dt, %.lr.ph188 ], [ %i.dv, %bb.h ]
  %i.dv = add nsw i32 %.4185, -1                  ; 2 uses
  %i.dw = load i32, ptr %.0128186, align 4
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %.0128186, i64 4
  %i.dz = mul nsw i64 %i.dx, %i.du
  %i.ea = sdiv i64 %i.dz, 128
  %i.eb = load i32, ptr %.0127187, align 4
  %i.ec = sext i32 %i.eb to i64
  %i.ed = add nsw i64 %i.ea, %i.ec
  %spec.store.select3 = tail call i64 @llvm.smax.i64(i64 %i.ed, i64 -2147483648)
  %.0126159 = tail call i64 @llvm.smin.i64(i64 %spec.store.select3, i64 2147483647)
  %.0126 = trunc nsw i64 %.0126159 to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %.0127187, i64 4
  store i32 %.0126, ptr %.0127187, align 4
  %.not152 = icmp eq i32 %i.dv, 0
  br i1 %.not152, label %.loopexit, label %bb.h, !llvm.loop !30

bb.i:                                             ; preds = %bb.b
  %i.ef = lshr i32 %3, 2                          ; 2 uses
  %.not151179 = icmp eq i32 %i.ef, 0
  br i1 %.not151179, label %.loopexit, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.i
  %i.eg = sext i32 %i.c to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph183, %bb.j
  %.0124182 = phi ptr [ %0, %.lr.ph183 ], [ %i.ev, %bb.j ] ; 3 uses
  %.0125181 = phi ptr [ %1, %.lr.ph183 ], [ %i.el, %bb.j ] ; 2 uses
  %.5180 = phi i32 [ %i.ef, %.lr.ph183 ], [ %i.eh, %bb.j ]
  %i.eh = add nsw i32 %.5180, -1                  ; 2 uses
  %i.ei = load i32, ptr %.0125181, align 4
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei)
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %.0125181, i64 4
  %i.em = mul nsw i64 %i.ek, %i.eg
  %i.en = sdiv i64 %i.em, 128
  %i.eo = load i32, ptr %.0124182, align 4
  %i.ep = tail call i32 @llvm.bswap.i32(i32 %i.eo)
  %i.eq = sext i32 %i.ep to i64
  %i.er = add nsw i64 %i.en, %i.eq                ; 2 uses
  %i.es = icmp sgt i64 %i.er, 2147483647
  %spec.store.select4 = tail call i64 @llvm.smax.i64(i64 %i.er, i64 -2147483648)
  %i.et = trunc i64 %spec.store.select4 to i32
  %i.eu = tail call i32 @llvm.bswap.i32(i32 %i.et)
  %.0123 = select i1 %i.es, i32 -129, i32 %i.eu
  %i.ev = getelementptr inbounds nuw i8, ptr %.0124182, i64 4
  store i32 %.0123, ptr %.0124182, align 4
  %.not151 = icmp eq i32 %i.eh, 0
  br i1 %.not151, label %.loopexit, label %bb.j, !llvm.loop !31

bb.k:                                             ; preds = %bb.b
  %i.ew = lshr i32 %3, 2                          ; 6 uses
  %.not150174 = icmp eq i32 %i.ew, 0
  br i1 %.not150174, label %.loopexit, label %.lr.ph178.preheader

.lr.ph178.preheader:                              ; preds = %bb.k
  %i.ex = zext nneg i32 %i.ew to i64              ; 2 uses
  %min.iters.check250 = icmp ult i32 %3, 32
  br i1 %min.iters.check250, label %.lr.ph178.preheader362, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph178.preheader
  %i.ey = add nsw i32 %i.ew, -1
  %i.ez = zext i32 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 2
  %i.fb = add nuw nsw i64 %i.fa, 4                ; 2 uses
  %scevgep244 = getelementptr i8, ptr %0, i64 %i.fb
  %scevgep245 = getelementptr i8, ptr %1, i64 %i.fb
  %bound0246 = icmp ult ptr %0, %scevgep245
  %bound1247 = icmp ult ptr %1, %scevgep244
  %found.conflict248 = and i1 %bound0246, %bound1247
  br i1 %found.conflict248, label %.lr.ph178.preheader362, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck243
  %n.vec252 = and i64 %i.ex, 1073741816           ; 4 uses
  %i.fc = shl nuw nsw i64 %n.vec252, 2            ; 2 uses
  %i.fd = getelementptr i8, ptr %0, i64 %i.fc
  %i.fe = getelementptr i8, ptr %1, i64 %i.fc
  %i.ff = trunc nuw nsw i64 %n.vec252 to i32
  %i.fg = sub nsw i32 %i.ew, %i.ff
  %broadcast.splatinsert253 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat254 = shufflevector <4 x float> %broadcast.splatinsert253, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph251
  %index256 = phi i64 [ 0, %vector.ph251 ], [ %index.next263, %vector.body255 ] ; 2 uses
  %i.fh = shl i64 %index256, 2                    ; 2 uses
  %next.gep257 = getelementptr i8, ptr %0, i64 %i.fh ; 3 uses
  %next.gep258 = getelementptr i8, ptr %1, i64 %i.fh ; 2 uses
  %i.fi = getelementptr i8, ptr %next.gep258, i64 16
  %wide.load259 = load <4 x float>, ptr %next.gep258, align 4, !alias.scope !32
  %wide.load260 = load <4 x float>, ptr %i.fi, align 4, !alias.scope !32
  %i.fj = fmul <4 x float> %broadcast.splat254, %wide.load259
  %i.fk = fmul <4 x float> %broadcast.splat254, %wide.load260
  %i.fl = getelementptr i8, ptr %next.gep257, i64 16 ; 2 uses
  %wide.load261 = load <4 x float>, ptr %next.gep257, align 4, !alias.scope !35, !noalias !32
  %wide.load262 = load <4 x float>, ptr %i.fl, align 4, !alias.scope !35, !noalias !32
  %i.fm = fadd <4 x float> %i.fj, %wide.load261   ; 3 uses
  %i.fn = fadd <4 x float> %i.fk, %wide.load262   ; 3 uses
  %i.fo = fcmp ogt <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fp = fcmp ogt <4 x float> %i.fn, splat (float 1.000000e+00)
  %i.fq = fcmp olt <4 x float> %i.fm, splat (float -1.000000e+00)
  %i.fr = fcmp olt <4 x float> %i.fn, splat (float -1.000000e+00)
  %i.fs = select <4 x i1> %i.fq, <4 x float> splat (float -1.000000e+00), <4 x float> %i.fm
  %i.ft = select <4 x i1> %i.fr, <4 x float> splat (float -1.000000e+00), <4 x float> %i.fn
  %i.fu = select <4 x i1> %i.fo, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fs
  %i.fv = select <4 x i1> %i.fp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ft
  store <4 x float> %i.fu, ptr %next.gep257, align 4, !alias.scope !35, !noalias !32
  store <4 x float> %i.fv, ptr %i.fl, align 4, !alias.scope !35, !noalias !32
  %index.next263 = add nuw i64 %index256, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next263, %n.vec252
  br i1 %i.fw, label %middle.block264, label %vector.body255, !llvm.loop !37

middle.block264:                                  ; preds = %vector.body255
  %cmp.n265 = icmp eq i64 %n.vec252, %i.ex
  br i1 %cmp.n265, label %.loopexit, label %.lr.ph178.preheader362

.lr.ph178.preheader362:                           ; preds = %vector.memcheck243, %.lr.ph178.preheader, %middle.block264
  %.0121177.ph = phi ptr [ %0, %vector.memcheck243 ], [ %0, %.lr.ph178.preheader ], [ %i.fd, %middle.block264 ]
  %.0122176.ph = phi ptr [ %1, %vector.memcheck243 ], [ %1, %.lr.ph178.preheader ], [ %i.fe, %middle.block264 ]
  %.6175.ph = phi i32 [ %i.ew, %vector.memcheck243 ], [ %i.ew, %.lr.ph178.preheader ], [ %i.fg, %middle.block264 ]
  br label %.lr.ph178

.lr.ph178:                                        ; preds = %.lr.ph178.preheader362, %.lr.ph178
  %.0121177 = phi ptr [ %i.gf, %.lr.ph178 ], [ %.0121177.ph, %.lr.ph178.preheader362 ] ; 3 uses
  %.0122176 = phi ptr [ %i.gb, %.lr.ph178 ], [ %.0122176.ph, %.lr.ph178.preheader362 ] ; 2 uses
  %.6175 = phi i32 [ %i.fx, %.lr.ph178 ], [ %.6175.ph, %.lr.ph178.preheader362 ]
  %i.fx = add nsw i32 %.6175, -1                  ; 2 uses
  %i.fy = load float, ptr %.0122176, align 4
  %i.fz = fmul float %4, %i.fy
  %i.ga = load float, ptr %.0121177, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %.0122176, i64 4
  %i.gc = fadd float %i.fz, %i.ga                 ; 3 uses
  %i.gd = fcmp ogt float %i.gc, 1.000000e+00
  %i.ge = fcmp olt float %i.gc, -1.000000e+00
  %spec.store.select5 = select i1 %i.ge, float -1.000000e+00, float %i.gc
  %.0120 = select i1 %i.gd, float 1.000000e+00, float %spec.store.select5
  %i.gf = getelementptr inbounds nuw i8, ptr %.0121177, i64 4
  store float %.0120, ptr %.0121177, align 4
  %.not150 = icmp eq i32 %i.fx, 0
  br i1 %.not150, label %.loopexit, label %.lr.ph178, !llvm.loop !38

bb.l:                                             ; preds = %bb.b
  %i.gg = lshr i32 %3, 2                          ; 6 uses
  %.not170 = icmp eq i32 %i.gg, 0
  br i1 %.not170, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %3, 16
  br i1 %min.iters.check, label %.lr.ph.preheader364, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.gi = add nsw i32 %i.gg, -1
  %i.gj = zext i32 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 2
  %i.gl = add nuw nsw i64 %i.gk, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.gl
  %scevgep238 = getelementptr i8, ptr %1, i64 %i.gl
  %bound0 = icmp ult ptr %0, %scevgep238
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader364, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gh, 1073741820              ; 4 uses
  %i.gm = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.gn = getelementptr i8, ptr %0, i64 %i.gm
  %i.go = getelementptr i8, ptr %1, i64 %i.gm
  %i.gp = trunc nuw nsw i64 %n.vec to i32
  %i.gq = sub nsw i32 %i.gg, %i.gp
  %broadcast.splatinsert = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gr = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.gr ; 2 uses
  %next.gep239 = getelementptr i8, ptr %1, i64 %i.gr
  %wide.load = load <4 x i32>, ptr %next.gep239, align 4, !alias.scope !39
  %i.gs = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.gt = bitcast <4 x i32> %i.gs to <4 x float>
  %i.gu = fmul <4 x float> %broadcast.splat, %i.gt
  %wide.load240 = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !42, !noalias !39
  %i.gv = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load240)
  %i.gw = bitcast <4 x i32> %i.gv to <4 x float>
  %i.gx = fadd <4 x float> %i.gu, %i.gw           ; 3 uses
  %i.gy = fcmp ogt <4 x float> %i.gx, splat (float 1.000000e+00)
  %i.gz = fcmp olt <4 x float> %i.gx, splat (float -1.000000e+00)
  %i.ha = bitcast <4 x float> %i.gx to <4 x i32>
  %i.hb = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ha)
  %i.hc = bitcast <4 x i32> %i.hb to <4 x float>
  %i.hd = select <4 x i1> %i.gz, <4 x float> splat (float 4.618540e-41), <4 x float> %i.hc
  %i.he = select <4 x i1> %i.gy, <4 x float> splat (float 4.600600e-41), <4 x float> %i.hd
  store <4 x float> %i.he, ptr %next.gep, align 4, !alias.scope !42, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gh
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader364

.lr.ph.preheader364:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0118173.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.gn, %middle.block ]
  %.0119172.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.go, %middle.block ]
  %.7171.ph = phi i32 [ %i.gg, %vector.memcheck ], [ %i.gg, %.lr.ph.preheader ], [ %i.gq, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader364, %.lr.ph
  %.0118173 = phi ptr [ %i.hx, %.lr.ph ], [ %.0118173.ph, %.lr.ph.preheader364 ] ; 3 uses
  %.0119172 = phi ptr [ %i.ho, %.lr.ph ], [ %.0119172.ph, %.lr.ph.preheader364 ] ; 2 uses
  %.7171 = phi i32 [ %i.hg, %.lr.ph ], [ %.7171.ph, %.lr.ph.preheader364 ]
  %i.hg = add nsw i32 %.7171, -1                  ; 2 uses
  %i.hh = load i32, ptr %.0119172, align 4
  %i.hi = tail call i32 @llvm.bswap.i32(i32 %i.hh)
  %i.hj = bitcast i32 %i.hi to float
  %i.hk = fmul float %4, %i.hj
  %i.hl = load i32, ptr %.0118173, align 4
  %i.hm = tail call i32 @llvm.bswap.i32(i32 %i.hl)
  %i.hn = bitcast i32 %i.hm to float
  %i.ho = getelementptr inbounds nuw i8, ptr %.0119172, i64 4
  %i.hp = fadd float %i.hk, %i.hn                 ; 3 uses
  %i.hq = fcmp ogt float %i.hp, 1.000000e+00
  %i.hr = fcmp olt float %i.hp, -1.000000e+00
  %i.hs = bitcast float %i.hp to i32
  %i.ht = tail call i32 @llvm.bswap.i32(i32 %i.hs)
  %i.hu = bitcast i32 %i.ht to float
  %i.hv = select i1 %i.hr, float 4.618540e-41, float %i.hu
  %i.hw = select i1 %i.hq, float 4.600600e-41, float %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %.0118173, i64 4
  store float %i.hw, ptr %.0118173, align 4
  %.not = icmp eq i32 %i.hg, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !45

bb.m:                                             ; preds = %bb.b
  %i.hy = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str) #3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph178, %bb.j, %bb.h, %bb.f, %.lr.ph197, %.lr.ph202, %.lr.ph207, %middle.block, %middle.block264, %middle.block288, %middle.block312, %middle.block337, %vec.epilog.middle.block, %bb.l, %bb.k, %bb.i, %bb.g, %bb.d, %bb.c, %.preheader162, %.preheader, %bb.a, %bb.m
  %.0134 = phi i1 [ true, %bb.a ], [ %i.hy, %bb.m ], [ true, %bb.i ], [ true, %bb.g ], [ true, %bb.d ], [ true, %bb.c ], [ true, %.preheader162 ], [ true, %.preheader ], [ true, %bb.k ], [ true, %bb.l ], [ true, %middle.block312 ], [ true, %middle.block288 ], [ true, %.lr.ph197 ], [ true, %bb.f ], [ true, %middle.block264 ], [ true, %middle.block ], [ true, %middle.block337 ], [ true, %.lr.ph178 ], [ true, %vec.epilog.middle.block ], [ true, %.lr.ph207 ], [ true, %.lr.ph202 ], [ true, %bb.h ], [ true, %bb.j ], [ true, %.lr.ph ]
  ret i1 %.0134
}

declare float @SDL_roundf_REAL(float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.sadd.sat.i8(i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8>, <16 x i8>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.sadd.sat.v4i8(<4 x i8>, <4 x i8>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4}
!4 = distinct !{!4, !5}
!5 = distinct !{!5, !"LVerDomain"}
!6 = !{!7}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 4, i32 12}
!13 = distinct !{!13, !9, !10, !11}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9, !10}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !9, !10, !11}
!22 = distinct !{!22, !9, !10}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !9, !10, !11}
!29 = distinct !{!29, !9, !10}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !9, !10, !11}
!38 = distinct !{!38, !9, !10}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !9, !10, !11}
!45 = distinct !{!45, !9, !10}
end_hunk_0
