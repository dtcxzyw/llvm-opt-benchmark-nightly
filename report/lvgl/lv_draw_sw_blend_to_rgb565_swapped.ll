Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb565_swapped?download=true
inline.NumInlined: 232
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_color16_t = type { i16 }

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blend_color_to_rgb565_swapped(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.0.copyload = load i24, ptr %i.e, align 4
  %i.f = tail call zeroext i16 @lv_color_to_u16(i24 %.0.copyload) #5 ; 7 uses
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.i = load i8, ptr %i.h, align 1, !tbaa !45    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !48     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49   ; 4 uses
  %i.q = icmp eq ptr %i.k, null                   ; 2 uses
  %i.r = zext i8 %i.i to i16
  %i.s = icmp ugt i8 %i.i, -4                     ; 2 uses
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %.preheader203, label %bb.e

.preheader203:                                    ; preds = %bb.a
  %i.t = icmp sgt i32 %i.d, 0
  br i1 %i.t, label %.lr.ph245, label %.loopexit

.lr.ph245:                                        ; preds = %.preheader203
  %i.u = sext i32 %i.b to i64                     ; 3 uses
  %i.v = add nsw i32 %i.b, -1
  %i.w = and i32 %i.v, -16
  %i.x = sext i32 %i.w to i64
  %i.y = zext i16 %i.g to i32
  %i.z = mul nuw i32 %i.y, 65537
  %i.aa = zext i32 %i.p to i64
  %i.ab = sub nsw i64 0, %i.u
  %i.ac = shl nsw i64 %i.u, 1
  %1 = add nsw i64 %i.ac, -1
  %i.ad = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ae = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert297 = insertelement <4 x i16> poison, i16 %i.g, i64 0
  %broadcast.splat298 = shufflevector <4 x i16> %broadcast.splatinsert297, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph245, %._crit_edge241
  %.0184244 = phi i32 [ 0, %.lr.ph245 ], [ %i.bg, %._crit_edge241 ]
  %.0190243 = phi ptr [ %i.n, %.lr.ph245 ], [ %i.bf, %._crit_edge241 ] ; 6 uses
  %i.af = getelementptr inbounds [2 x i8], ptr %.0190243, i64 %i.u ; 2 uses
  %i.ag = getelementptr inbounds [2 x i8], ptr %.0190243, i64 %i.x ; 2 uses
  %i.ah = ptrtoint ptr %.0190243 to i64           ; 2 uses
  %i.ai = and i64 %i.ah, 3
  %.not202 = icmp eq i64 %i.ai, 0
  br i1 %.not202, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 %i.g, ptr %.0190243, align 2, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.0190243, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1191 = phi ptr [ %i.aj, %bb.c ], [ %.0190243, %bb.b ] ; 3 uses
  %i.ak = icmp ult ptr %.1191, %i.ag
  br i1 %i.ak, label %.lr.ph237, label %.preheader

.preheader:                                       ; preds = %.lr.ph237, %bb.d
  %.0183.lcssa = phi ptr [ %.1191, %bb.d ], [ %i.ba, %.lr.ph237 ] ; 8 uses
  %i.al = icmp ult ptr %.0183.lcssa, %i.af
  br i1 %i.al, label %iter.check, label %._crit_edge241

iter.check:                                       ; preds = %.preheader
  %.0183.lcssa294 = ptrtoaddr ptr %.0183.lcssa to i64
  %i.am = add i64 %1, %i.ah
  %2 = sub i64 %i.am, %.0183.lcssa294             ; 3 uses
  %i.an = lshr i64 %2, 1
  %i.ao = add nuw i64 %i.an, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %2, 6
  br i1 %min.iters.check, label %.lr.ph240.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check295 = icmp ult i64 %2, 30
  br i1 %min.iters.check295, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ao, 12
  %n.vec = and i64 %i.ao, -16                     ; 4 uses
  %i.aq = shl i64 %n.vec, 1
  %i.ar = getelementptr i8, ptr %.0183.lcssa, i64 %i.aq ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0183.lcssa, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !12
  store <8 x i16> %broadcast.splat, ptr %i.at, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge241, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph240.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec296 = and i64 %i.ao, -4                   ; 3 uses
  %i.av = shl i64 %n.vec296, 1
  %i.aw = getelementptr i8, ptr %.0183.lcssa, i64 %i.av ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index299 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next301, %vec.epilog.vector.body ] ; 2 uses
  %i.ax = shl i64 %index299, 1
  %next.gep300 = getelementptr i8, ptr %.0183.lcssa, i64 %i.ax
  store <4 x i16> %broadcast.splat298, ptr %next.gep300, align 2, !tbaa !12
  %index.next301 = add nuw i64 %index299, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next301, %n.vec296
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n302 = icmp eq i64 %i.ao, %n.vec296
  br i1 %cmp.n302, label %._crit_edge241, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2192239.ph = phi ptr [ %.0183.lcssa, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph240

.lr.ph237:                                        ; preds = %bb.d, %.lr.ph237
  %.0183235 = phi ptr [ %i.ba, %.lr.ph237 ], [ %.1191, %bb.d ] ; 3 uses
  store <4 x i32> %i.ae, ptr %.0183235, align 4, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %.0183235, i64 16
  store <4 x i32> %i.ae, ptr %i.az, align 4, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %.0183235, i64 32 ; 3 uses
  %i.bb = icmp ult ptr %i.ba, %i.ag
  br i1 %i.bb, label %.lr.ph237, label %.preheader, !llvm.loop !31

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %.lr.ph240
  %.2192239 = phi ptr [ %i.bc, %.lr.ph240 ], [ %.2192239.ph, %.lr.ph240.preheader ] ; 2 uses
  store i16 %i.g, ptr %.2192239, align 2, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.2192239, i64 2 ; 3 uses
  %i.bd = icmp ult ptr %i.bc, %i.af
  br i1 %i.bd, label %.lr.ph240, label %._crit_edge241, !llvm.loop !32

._crit_edge241:                                   ; preds = %.lr.ph240, %middle.block, %vec.epilog.middle.block, %.preheader
  %.2192.lcssa = phi ptr [ %.0183.lcssa, %.preheader ], [ %i.aw, %vec.epilog.middle.block ], [ %i.ar, %middle.block ], [ %i.bc, %.lr.ph240 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.2192.lcssa, i64 %i.aa
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.ab
  %i.bg = add nuw nsw i32 %.0184244, 1            ; 2 uses
  %exitcond266.not = icmp eq i32 %i.bg, %i.d
  br i1 %exitcond266.not, label %.loopexit, label %bb.b, !llvm.loop !33

bb.e:                                             ; preds = %bb.a
  %i.bh = icmp ult i8 %i.i, -3                    ; 2 uses
  %or.cond5 = select i1 %i.q, i1 %i.bh, i1 false
  br i1 %or.cond5, label %.preheader204, label %bb.i

.preheader204:                                    ; preds = %bb.e
  %i.bi = icmp sgt i32 %i.d, 0
  br i1 %i.bi, label %.lr.ph234, label %.loopexit

.lr.ph234:                                        ; preds = %.preheader204
  %i.bj = icmp sgt i32 %i.b, 0
  %i.bk = zext i32 %i.p to i64
  br i1 %i.bj, label %.lr.ph230.preheader, label %.loopexit

.lr.ph230.preheader:                              ; preds = %.lr.ph234
  %wide.trip.count263 = zext nneg i32 %i.b to i64
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %._crit_edge231
  %.1185233 = phi i32 [ %i.bu, %._crit_edge231 ], [ 0, %.lr.ph230.preheader ]
  %.3193232 = phi ptr [ %i.bt, %._crit_edge231 ], [ %i.n, %.lr.ph230.preheader ] ; 3 uses
  %i.bl = load i16, ptr %.3193232, align 2, !tbaa !12
  %i.bm = add i16 %i.bl, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph230, %bb.h
  %indvars.iv261 = phi i64 [ 0, %.lr.ph230 ], [ %indvars.iv.next262, %bb.h ] ; 2 uses
  %.0179228 = phi i16 [ 0, %.lr.ph230 ], [ %.1180, %bb.h ]
  %.0181227 = phi i16 [ %i.bm, %.lr.ph230 ], [ %.1182, %bb.h ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.3193232, i64 %indvars.iv261 ; 3 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !12 ; 2 uses
  %.not201 = icmp eq i16 %.0181227, %i.bo
  br i1 %.not201, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = tail call noundef i16 @llvm.bswap.i16(i16 %i.bo)
  %i.bq = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.f, i16 noundef zeroext %i.bp, i8 noundef zeroext %i.i) #5
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  %i.bs = load i16, ptr %i.bn, align 2, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1182 = phi i16 [ %i.bs, %bb.g ], [ %.0181227, %bb.f ]
  %.1180 = phi i16 [ %i.br, %bb.g ], [ %.0179228, %bb.f ] ; 2 uses
  store i16 %.1180, ptr %i.bn, align 2, !tbaa !12
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count263
  br i1 %exitcond264.not, label %._crit_edge231, label %bb.f, !llvm.loop !34

._crit_edge231:                                   ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.3193232, i64 %i.bk
  %i.bu = add nuw nsw i32 %.1185233, 1            ; 2 uses
  %exitcond265.not = icmp eq i32 %i.bu, %i.d
  br i1 %exitcond265.not, label %.loopexit, label %.lr.ph230, !llvm.loop !35

bb.i:                                             ; preds = %bb.e
  %i.bv = icmp ne ptr %i.k, null                  ; 2 uses
  %or.cond8 = select i1 %i.bv, i1 %i.s, i1 false
  br i1 %or.cond8, label %.preheader207, label %bb.p

.preheader207:                                    ; preds = %bb.i
  %i.bw = icmp sgt i32 %i.d, 0
  br i1 %i.bw, label %.lr.ph225, label %.loopexit

.lr.ph225:                                        ; preds = %.preheader207
  %i.bx = add nsw i32 %i.b, -2                    ; 2 uses
  %i.by = zext i32 %i.p to i64
  %i.bz = sext i32 %i.m to i64
  %i.ca = insertelement <2 x i16> poison, i16 %i.g, i64 0
  %i.cb = shufflevector <2 x i16> %i.ca, <2 x i16> poison, <2 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph225, %._crit_edge221
  %.0224 = phi ptr [ %i.k, %.lr.ph225 ], [ %i.do, %._crit_edge221 ] ; 6 uses
  %.2223 = phi i32 [ 0, %.lr.ph225 ], [ %i.dp, %._crit_edge221 ]
  %.4194222 = phi ptr [ %i.n, %.lr.ph225 ], [ %i.dn, %._crit_edge221 ] ; 7 uses
  %i.cc = ptrtoint ptr %.0224 to i64
  %i.cd = and i64 %i.cc, 1
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = load i16, ptr %.4194222, align 2, !tbaa !12
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce)
  %i.cg = load i8, ptr %.0224, align 1, !tbaa !17
  %i.ch = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.f, i16 noundef zeroext %i.cf, i8 noundef zeroext %i.cg) #5
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  store i16 %i.ci, ptr %.4194222, align 2, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1187 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ]     ; 3 uses
  %.not199216 = icmp sgt i32 %.1187, %i.bx
  br i1 %.not199216, label %.preheader206, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.cj = zext nneg i32 %.1187 to i64
  br label %.lr.ph

.preheader206:                                    ; preds = %bb.o, %bb.l
  %.2188.lcssa = phi i32 [ %.1187, %bb.l ], [ %i.dd, %bb.o ] ; 2 uses
  %i.ck = icmp slt i32 %.2188.lcssa, %i.b
  br i1 %i.ck, label %.lr.ph220.preheader, label %._crit_edge221

.lr.ph220.preheader:                              ; preds = %.preheader206
  %i.cl = zext nneg i32 %.2188.lcssa to i64
  br label %.lr.ph220

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv254 = phi i64 [ %i.cj, %.lr.ph.preheader ], [ %indvars.iv.next255, %bb.o ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0224, i64 %indvars.iv254
  %i.cn = load i16, ptr %i.cm, align 2            ; 2 uses
  switch i16 %i.cn, label %bb.n [
    i16 -1, label %bb.m
    i16 0, label %bb.o
  ]

bb.m:                                             ; preds = %.lr.ph
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.4194222, i64 %indvars.iv254
  store <2 x i16> %i.cb, ptr %i.co, align 2, !tbaa !12
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.cp = trunc i16 %i.cn to i8
end_hunk_0
begin_hunk_1_@rgb888_image_blend:bb.a
  ]

bb.o:                                             ; preds = %bb.n
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.id = load <2 x i8>, ptr %i.ic, align 1, !tbaa !17
  %i.ie = and <2 x i8> %i.id, <i8 -4, i8 -8>
  %i.if = zext <2 x i8> %i.ie to <2 x i16>
  %i.ig = shl nuw <2 x i16> %i.if, <i16 3, i16 8> ; 2 uses
  %shift543 = shufflevector <2 x i16> %i.ig, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop544 = or disjoint <2 x i16> %i.ig, %shift543
  %i.ih = extractelement <2 x i16> %foldExtExtBinop544, i64 0
  %i.ii = load i8, ptr %i.hw, align 1, !tbaa !17
  %i.ij = lshr i8 %i.ii, 3
  %i.ik = zext nneg i8 %i.ij to i16
  %i.il = or disjoint i16 %i.ih, %i.ik
  br label %lv_color_24_16_mix.exit311.us

bb.p:                                             ; preds = %bb.n
  %i.im = zext i8 %i.ib to i16                    ; 3 uses
  %i.in = xor i8 %i.ib, -1
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !17
  %i.iq = lshr i8 %i.ip, 3
  %i.ir = zext nneg i8 %i.iq to i16
  %i.is = mul nuw nsw i16 %i.ir, %i.im
  %i.it = lshr i16 %i.hz, 11
  %i.iu = zext i8 %i.in to i16                    ; 3 uses
  %i.iv = mul nuw nsw i16 %i.it, %i.iu
  %i.iw = add nuw nsw i16 %i.is, %i.iv
  %i.ix = shl i16 %i.iw, 3
  %i.iy = and i16 %i.ix, -2048
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !17
  %i.jb = lshr i8 %i.ja, 2
  %i.jc = zext nneg i8 %i.jb to i16
  %i.jd = mul nuw nsw i16 %i.jc, %i.im
  %i.je = lshr i16 %i.hz, 5
  %i.jf = and i16 %i.je, 63
  %i.jg = mul nuw nsw i16 %i.jf, %i.iu
  %i.jh = add nuw nsw i16 %i.jd, %i.jg
  %i.ji = lshr i16 %i.jh, 3
  %i.jj = and i16 %i.ji, 2016
  %i.jk = or disjoint i16 %i.jj, %i.iy
  %i.jl = load i8, ptr %i.hw, align 1, !tbaa !17
  %i.jm = lshr i8 %i.jl, 3
  %i.jn = zext nneg i8 %i.jm to i16
  %i.jo = mul nuw nsw i16 %i.jn, %i.im
  %i.jp = and i16 %i.hz, 31
  %i.jq = mul nuw nsw i16 %i.jp, %i.iu
  %i.jr = add nuw nsw i16 %i.jo, %i.jq
  %i.js = lshr i16 %i.jr, 8
  %i.jt = add i16 %i.jk, %i.js
  br label %lv_color_24_16_mix.exit311.us

lv_color_24_16_mix.exit311.us:                    ; preds = %bb.p, %bb.o, %bb.n
  %.0.i310.us = phi i16 [ %i.jt, %bb.p ], [ %i.il, %bb.o ], [ %i.hz, %bb.n ]
  %i.ju = tail call noundef i16 @llvm.bswap.i16(i16 %.0.i310.us)
  store i16 %i.ju, ptr %i.hx, align 2, !tbaa !12
  %indvars.iv.next483 = add nuw nsw i64 %indvars.iv482, 1 ; 2 uses
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, %i.hv
  %exitcond488.not = icmp eq i64 %indvars.iv.next483, %wide.trip.count487
  br i1 %exitcond488.not, label %._crit_edge.us396, label %bb.n, !llvm.loop !173

._crit_edge.us396:                                ; preds = %lv_color_24_16_mix.exit311.us
  %i.jv = getelementptr inbounds nuw i8, ptr %.3288388.us, i64 %i.hs ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %.3282389.us, i64 %i.ht ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %.0274390.us, i64 %i.hu ; 2 uses
  %i.jy = add nuw nsw i32 %.2391.us, 1            ; 2 uses
  %exitcond489.not = icmp eq i32 %i.jy, %i.d
  br i1 %exitcond489.not, label %.loopexit, label %.preheader318.us, !llvm.loop !174

.loopexit:                                        ; preds = %._crit_edge.us396, %.loopexit322
  %.4289 = phi ptr [ %.2287, %.loopexit322 ], [ %i.jv, %._crit_edge.us396 ]
  %.4283 = phi ptr [ %.2281, %.loopexit322 ], [ %i.jw, %._crit_edge.us396 ]
  %.1275 = phi ptr [ %i.o, %.loopexit322 ], [ %i.jx, %._crit_edge.us396 ] ; 2 uses
  %i.jz = icmp ne ptr %.1275, null
  %i.ka = icmp ult i8 %i.f, -3
  %or.cond12 = select i1 %i.jz, i1 %i.ka, i1 false
  %or.cond408 = select i1 %or.cond12, i1 %i.hq, i1 false
  br i1 %or.cond408, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.kb = icmp sgt i32 %.fr, 0
  %i.kc = zext i32 %i.i to i64
  %i.kd = sext i32 %i.m to i64
  %i.ke = sext i32 %i.q to i64
  br i1 %i.kb, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kf = zext nneg i8 %1 to i64
  %wide.trip.count497 = zext nneg i32 %.fr to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.3405 = phi i32 [ %i.lz, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.2276404 = phi ptr [ %i.ly, %._crit_edge ], [ %.1275, %.preheader.preheader ] ; 2 uses
  %.5284403 = phi ptr [ %i.lx, %._crit_edge ], [ %.4283, %.preheader.preheader ] ; 2 uses
  %.5290402 = phi ptr [ %i.lw, %._crit_edge ], [ %.4289, %.preheader.preheader ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %lv_color_24_16_mix.exit313
  %indvars.iv492 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next493, %lv_color_24_16_mix.exit313 ] ; 3 uses
  %indvars.iv490 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next491, %lv_color_24_16_mix.exit313 ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.5290402, i64 %indvars.iv492 ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !12 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.2276404, i64 %indvars.iv492
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !17
  %i.kk = zext i8 %i.kj to i16
  %i.kl = mul nuw i16 %i.kk, %i.ex
  %i.km = lshr i16 %i.kl, 8                       ; 5 uses
  %cond = icmp eq i16 %i.km, 0
  br i1 %cond, label %lv_color_24_16_mix.exit313, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kn = tail call noundef i16 @llvm.bswap.i16(i16 %i.kh) ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.5284403, i64 %indvars.iv490 ; 3 uses
  %i.kp = xor i16 %i.km, 255                      ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !17
  %i.ks = lshr i8 %i.kr, 3
  %i.kt = zext nneg i8 %i.ks to i16
  %i.ku = mul nuw nsw i16 %i.km, %i.kt
  %i.kv = lshr i16 %i.kn, 11
  %i.kw = mul nuw nsw i16 %i.kp, %i.kv
  %i.kx = add nuw nsw i16 %i.ku, %i.kw
  %i.ky = shl nuw i16 %i.kx, 3
  %i.kz = and i16 %i.ky, -2048
  %i.la = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !17
  %i.lc = lshr i8 %i.lb, 2
  %i.ld = zext nneg i8 %i.lc to i16
  %i.le = mul nuw nsw i16 %i.km, %i.ld
  %i.lf = lshr i16 %i.kn, 5
  %i.lg = and i16 %i.lf, 63
  %i.lh = mul nuw nsw i16 %i.kp, %i.lg
  %i.li = add nuw nsw i16 %i.le, %i.lh
  %i.lj = lshr i16 %i.li, 3
  %i.lk = and i16 %i.lj, 2016
  %i.ll = or disjoint i16 %i.lk, %i.kz
  %i.lm = load i8, ptr %i.ko, align 1, !tbaa !17
  %i.ln = lshr i8 %i.lm, 3
  %i.lo = zext nneg i8 %i.ln to i16
  %i.lp = mul nuw nsw i16 %i.km, %i.lo
  %i.lq = and i16 %i.kn, 31
  %i.lr = mul nuw nsw i16 %i.kp, %i.lq
  %i.ls = add nuw nsw i16 %i.lp, %i.lr
  %i.lt = lshr i16 %i.ls, 8
  %i.lu = or disjoint i16 %i.ll, %i.lt
  %i.lv = tail call i16 @llvm.bswap.i16(i16 %i.lu)
  br label %lv_color_24_16_mix.exit313

lv_color_24_16_mix.exit313:                       ; preds = %bb.q, %bb.r
  %.0.i312 = phi i16 [ %i.lv, %bb.r ], [ %i.kh, %bb.q ]
  store i16 %.0.i312, ptr %i.kg, align 2, !tbaa !12
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, %i.kf
  %exitcond498.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count497
  br i1 %exitcond498.not, label %._crit_edge, label %bb.q, !llvm.loop !175

._crit_edge:                                      ; preds = %lv_color_24_16_mix.exit313
  %i.lw = getelementptr inbounds nuw i8, ptr %.5290402, i64 %i.kc
  %i.lx = getelementptr inbounds i8, ptr %.5284403, i64 %i.kd
  %i.ly = getelementptr inbounds i8, ptr %.2276404, i64 %i.ke
  %i.lz = add nuw nsw i32 %.3405, 1               ; 2 uses
  %exitcond499.not = icmp eq i32 %i.lz, %i.d
  br i1 %exitcond499.not, label %.critedge, label %.preheader, !llvm.loop !176

.lr.ph337.split:                                  ; preds = %.lr.ph337, %.lr.ph337.split
  %.4336 = phi i32 [ %i.mb, %.lr.ph337.split ], [ 0, %.lr.ph337 ]
  %.6291333 = phi ptr [ %i.ma, %.lr.ph337.split ], [ %i.g, %.lr.ph337 ] ; 2 uses
  tail call void @lv_draw_sw_rgb565_swap(ptr noundef %.6291333, i32 noundef %.fr) #5
  %i.ma = getelementptr inbounds nuw i8, ptr %.6291333, i64 %i.w
  %i.mb = add nuw nsw i32 %.4336, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.mb, %i.d
  br i1 %exitcond.not, label %.critedge, label %.lr.ph337.split, !llvm.loop !168

.critedge:                                        ; preds = %.lr.ph337.split, %._crit_edge.us, %bb.b, %._crit_edge, %.preheader318.lr.ph, %.preheader323.lr.ph, %.preheader320.lr.ph, %.preheader321, %.preheader327, %.preheader.lr.ph, %.loopexit
  ret void
}

declare void @lv_draw_sw_rgb565_swap(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!"short", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 12}
!17 = !{!4, !4, i64 0}
!18 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!19 = !{!18, !5, i64 8}
!20 = !{!18, !5, i64 12}
!21 = !{!18, !4, i64 56}
!22 = !{!18, !8, i64 0}
!23 = !{!18, !5, i64 16}
!24 = !{!18, !8, i64 40}
!25 = !{!18, !5, i64 48}
!26 = !{!18, !9, i64 24}
!27 = !{!18, !5, i64 32}
!28 = !{!18, !5, i64 60}
!29 = distinct !{!29, !13, !14, !15}
!30 = distinct !{!30, !13, !14, !15}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13, !15, !14}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!42 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !41, i64 36, !4, i64 39, !10, i64 40}
!43 = !{!42, !5, i64 8}
!44 = !{!42, !5, i64 12}
!45 = !{!42, !4, i64 39}
!46 = !{!42, !9, i64 24}
!47 = !{!42, !5, i64 32}
!48 = !{!42, !8, i64 0}
!49 = !{!42, !5, i64 16}
!50 = !{!5, !5, i64 0}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !13, !14, !15}
!95 = distinct !{!95, !13, !14, !15}
!96 = distinct !{!96, !13, !14}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !13, !14, !15}
!102 = distinct !{!102, !13, !14}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !104}
!108 = distinct !{!108, !13, !14, !15}
!109 = distinct !{!109, !13, !14}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13, !14, !15}
!116 = distinct !{!116, !13, !15, !14}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !"LVerDomain"}
!125 = distinct !{!125, !124}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !13, !14, !15}
!128 = distinct !{!128, !13, !14}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !"LVerDomain"}
!131 = distinct !{!131, !130}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !13, !14, !15}
!134 = distinct !{!134, !13, !14}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !"LVerDomain"}
!137 = distinct !{!137, !136}
!138 = distinct !{!138, !136}
!139 = distinct !{!139, !136}
!140 = distinct !{!140, !13, !14, !15}
!141 = distinct !{!141, !13, !14}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = !{!18, !5, i64 52}
!148 = !{!92}
!149 = !{!93}
!150 = !{!99}
!151 = !{!100}
!152 = !{!105}
!153 = !{!106}
!154 = !{!105, !107}
!155 = !{!107}
!156 = !{!"", !4, i64 0, !4, i64 1}
!157 = !{!156, !4, i64 0}
!158 = !{!156, !4, i64 1}
!159 = !{!125}
!160 = !{!126}
!161 = !{!131}
!162 = !{!132}
!163 = !{!137}
!164 = !{!138}
!165 = !{!139, !137}
!166 = !{!139}
!167 = distinct !{!167, !13}
!168 = distinct !{!168, !13}
!169 = distinct !{!169, !13}
!170 = distinct !{!170, !13}
!171 = distinct !{!171, !13}
!172 = distinct !{!172, !13}
!173 = distinct !{!173, !13}
!174 = distinct !{!174, !13}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
end_hunk_1
