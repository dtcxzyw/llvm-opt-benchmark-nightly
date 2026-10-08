Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb565_swapped?download=true
inline.NumInlined: 232
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_draw_sw_blend_color_to_rgb565_swapped:bb.a
  %.0183.lcssa = phi ptr [ %.1191, %bb.d ], [ %i.bc, %.lr.ph237 ] ; 8 uses
  %i.am = icmp ult ptr %.0183.lcssa, %i.ag
  br i1 %i.am, label %iter.check, label %._crit_edge241

iter.check:                                       ; preds = %.preheader
  %.0183.lcssa293 = ptrtoaddr ptr %.0183.lcssa to i64
  %i.an = add i64 %i.ad, %i.ai
  %i.ao = sub i64 %i.an, %.0183.lcssa293          ; 3 uses
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = add nuw i64 %i.ap, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ao, 6
  br i1 %min.iters.check, label %.lr.ph240.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check294 = icmp ult i64 %i.ao, 30
  br i1 %min.iters.check294, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.as = shl i64 %n.vec, 1
  %i.at = getelementptr i8, ptr %.0183.lcssa, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0183.lcssa, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !12
  store <8 x i16> %broadcast.splat, ptr %i.av, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge241, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph240.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec295 = and i64 %i.aq, -4                   ; 3 uses
  %i.ax = shl i64 %n.vec295, 1
  %i.ay = getelementptr i8, ptr %.0183.lcssa, i64 %i.ax ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index298 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next300, %vec.epilog.vector.body ] ; 2 uses
  %i.az = shl i64 %index298, 1
  %next.gep299 = getelementptr i8, ptr %.0183.lcssa, i64 %i.az
  store <4 x i16> %broadcast.splat297, ptr %next.gep299, align 2, !tbaa !12
  %index.next300 = add nuw i64 %index298, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n301 = icmp eq i64 %i.aq, %n.vec295
  br i1 %cmp.n301, label %._crit_edge241, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2192239.ph = phi ptr [ %.0183.lcssa, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph240

.lr.ph237:                                        ; preds = %bb.d, %.lr.ph237
  %.0183235 = phi ptr [ %i.bc, %.lr.ph237 ], [ %.1191, %bb.d ] ; 3 uses
  store <4 x i32> %i.af, ptr %.0183235, align 4, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %.0183235, i64 16
  store <4 x i32> %i.af, ptr %i.bb, align 4, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %.0183235, i64 32 ; 3 uses
  %i.bd = icmp ult ptr %i.bc, %i.ah
  br i1 %i.bd, label %.lr.ph237, label %.preheader, !llvm.loop !31

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %.lr.ph240
  %.2192239 = phi ptr [ %i.be, %.lr.ph240 ], [ %.2192239.ph, %.lr.ph240.preheader ] ; 2 uses
  store i16 %i.g, ptr %.2192239, align 2, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %.2192239, i64 2 ; 3 uses
  %i.bf = icmp ult ptr %i.be, %i.ag
  br i1 %i.bf, label %.lr.ph240, label %._crit_edge241, !llvm.loop !32

._crit_edge241:                                   ; preds = %.lr.ph240, %middle.block, %vec.epilog.middle.block, %.preheader
  %.2192.lcssa = phi ptr [ %.0183.lcssa, %.preheader ], [ %i.ay, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %i.be, %.lr.ph240 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.2192.lcssa, i64 %i.aa
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.ab
  %i.bi = add nuw nsw i32 %.0184244, 1            ; 2 uses
  %exitcond266.not = icmp eq i32 %i.bi, %i.d
  br i1 %exitcond266.not, label %.loopexit, label %bb.b, !llvm.loop !33

bb.e:                                             ; preds = %bb.a
  %i.bj = icmp ult i8 %i.i, -3                    ; 2 uses
  %or.cond5 = select i1 %i.q, i1 %i.bj, i1 false
  br i1 %or.cond5, label %.preheader204, label %bb.i

.preheader204:                                    ; preds = %bb.e
  %i.bk = icmp sgt i32 %i.d, 0
  br i1 %i.bk, label %.lr.ph234, label %.loopexit

.lr.ph234:                                        ; preds = %.preheader204
  %i.bl = icmp sgt i32 %i.b, 0
  %i.bm = zext i32 %i.p to i64
  br i1 %i.bl, label %.lr.ph230.preheader, label %.loopexit

.lr.ph230.preheader:                              ; preds = %.lr.ph234
  %wide.trip.count263 = zext nneg i32 %i.b to i64
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %._crit_edge231
  %.1185233 = phi i32 [ %i.bw, %._crit_edge231 ], [ 0, %.lr.ph230.preheader ]
  %.3193232 = phi ptr [ %i.bv, %._crit_edge231 ], [ %i.n, %.lr.ph230.preheader ] ; 3 uses
  %i.bn = load i16, ptr %.3193232, align 2, !tbaa !12
  %i.bo = add i16 %i.bn, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph230, %bb.h
  %indvars.iv261 = phi i64 [ 0, %.lr.ph230 ], [ %indvars.iv.next262, %bb.h ] ; 2 uses
  %.0179228 = phi i16 [ 0, %.lr.ph230 ], [ %.1180, %bb.h ]
  %.0181227 = phi i16 [ %i.bo, %.lr.ph230 ], [ %.1182, %bb.h ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.3193232, i64 %indvars.iv261 ; 3 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !12 ; 2 uses
  %.not201 = icmp eq i16 %.0181227, %i.bq
  br i1 %.not201, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  %i.bs = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.f, i16 noundef zeroext %i.br, i8 noundef zeroext %i.i) #5
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bu = load i16, ptr %i.bp, align 2, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1182 = phi i16 [ %i.bu, %bb.g ], [ %.0181227, %bb.f ]
  %.1180 = phi i16 [ %i.bt, %bb.g ], [ %.0179228, %bb.f ] ; 2 uses
  store i16 %.1180, ptr %i.bp, align 2, !tbaa !12
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count263
  br i1 %exitcond264.not, label %._crit_edge231, label %bb.f, !llvm.loop !34

._crit_edge231:                                   ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %.3193232, i64 %i.bm
  %i.bw = add nuw nsw i32 %.1185233, 1            ; 2 uses
  %exitcond265.not = icmp eq i32 %i.bw, %i.d
  br i1 %exitcond265.not, label %.loopexit, label %.lr.ph230, !llvm.loop !35

bb.i:                                             ; preds = %bb.e
  %.not267 = xor i1 %i.q, true                    ; 2 uses
  %or.cond8 = select i1 %.not267, i1 %i.s, i1 false
  br i1 %or.cond8, label %.preheader207, label %bb.p

.preheader207:                                    ; preds = %bb.i
  %i.bx = icmp sgt i32 %i.d, 0
  br i1 %i.bx, label %.lr.ph225, label %.loopexit

.lr.ph225:                                        ; preds = %.preheader207
  %i.by = add nsw i32 %i.b, -2                    ; 2 uses
  %i.bz = zext i32 %i.p to i64
  %i.ca = sext i32 %i.m to i64
  %i.cb = insertelement <2 x i16> poison, i16 %i.g, i64 0
  %i.cc = shufflevector <2 x i16> %i.cb, <2 x i16> poison, <2 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph225, %._crit_edge221
  %.0224 = phi ptr [ %i.k, %.lr.ph225 ], [ %i.dn, %._crit_edge221 ] ; 6 uses
  %.2223 = phi i32 [ 0, %.lr.ph225 ], [ %i.do, %._crit_edge221 ]
  %.4194222 = phi ptr [ %i.n, %.lr.ph225 ], [ %i.dm, %._crit_edge221 ] ; 7 uses
  %i.cd = ptrtoint ptr %.0224 to i64
  %i.ce = and i64 %i.cd, 1
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i16, ptr %.4194222, align 2, !tbaa !12
  %i.cg = tail call noundef i16 @llvm.bswap.i16(i16 %i.cf)
  %i.ch = load i8, ptr %.0224, align 1, !tbaa !17
  %i.ci = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.f, i16 noundef zeroext %i.cg, i8 noundef zeroext %i.ch) #5
  %i.cj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ci)
  store i16 %i.cj, ptr %.4194222, align 2, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1187 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ]     ; 3 uses
  %.not199216 = icmp sgt i32 %.1187, %i.by
  br i1 %.not199216, label %.preheader206, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ck = zext nneg i32 %.1187 to i64
  br label %.lr.ph

.preheader206:                                    ; preds = %bb.o, %bb.l
  %.2188.lcssa = phi i32 [ %.1187, %bb.l ], [ %i.dc, %bb.o ] ; 2 uses
  %i.cl = icmp slt i32 %.2188.lcssa, %i.b
  br i1 %i.cl, label %.lr.ph220.preheader, label %._crit_edge221

.lr.ph220.preheader:                              ; preds = %.preheader206
  %i.cm = zext nneg i32 %.2188.lcssa to i64
  br label %.lr.ph220

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv254 = phi i64 [ %i.ck, %.lr.ph.preheader ], [ %indvars.iv.next255, %bb.o ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0224, i64 %indvars.iv254
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  switch i16 %i.co, label %bb.n [
    i16 -1, label %bb.m
    i16 0, label %bb.o
  ]

bb.m:                                             ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.4194222, i64 %indvars.iv254
  store <2 x i16> %i.cc, ptr %i.cp, align 2, !tbaa !12
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.cq = trunc i16 %i.co to i8
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.4194222, i64 %indvars.iv254 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !12
  %i.ct = tail call noundef i16 @llvm.bswap.i16(i16 %i.cs)
  %1 = getelementptr inbounds nuw [2 x i8], ptr %.4194222, i64 %indvars.iv254
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.cu = load i16, ptr %2, align 2, !tbaa !12
  %i.cv = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  %i.cw = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.f, i16 noundef zeroext %i.ct, i8 noundef zeroext %i.cq) #5
  %3 = getelementptr inbounds nuw i8, ptr %.0224, i64 %indvars.iv254
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.cz = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.f, i16 noundef zeroext %i.cv, i8 noundef zeroext %i.cy) #5
  %i.da = tail call noundef i16 @llvm.bswap.i16(i16 %i.cw)
  store i16 %i.da, ptr %i.cr, align 2, !tbaa !12
  %i.db = tail call noundef i16 @llvm.bswap.i16(i16 %i.cz)
  store i16 %i.db, ptr %2, align 2, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.n, %bb.m
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 2 ; 2 uses
  %i.dc = trunc nuw i64 %indvars.iv.next255 to i32 ; 2 uses
  %.not199 = icmp slt i32 %i.by, %i.dc
  br i1 %.not199, label %.preheader206, label %.lr.ph, !llvm.loop !36

.lr.ph220:                                        ; preds = %.lr.ph220.preheader, %.lr.ph220
  %indvars.iv257 = phi i64 [ %i.cm, %.lr.ph220.preheader ], [ %indvars.iv.next258, %.lr.ph220 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.4194222, i64 %indvars.iv257 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !12
  %i.df = tail call noundef i16 @llvm.bswap.i16(i16 %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %.0224, i64 %indvars.iv257
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !17
  %i.di = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.f, i16 noundef zeroext %i.df, i8 noundef zeroext %i.dh) #5
  %i.dj = tail call noundef i16 @llvm.bswap.i16(i16 %i.di)
  store i16 %i.dj, ptr %i.dd, align 2, !tbaa !12
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.dk = trunc nuw i64 %indvars.iv.next258 to i32
  %i.dl = icmp sgt i32 %i.b, %i.dk
  br i1 %i.dl, label %.lr.ph220, label %._crit_edge221, !llvm.loop !37

._crit_edge221:                                   ; preds = %.lr.ph220, %.preheader206
  %i.dm = getelementptr inbounds nuw i8, ptr %.4194222, i64 %i.bz
  %i.dn = getelementptr inbounds i8, ptr %.0224, i64 %i.ca
  %i.do = add nuw nsw i32 %.2223, 1               ; 2 uses
  %exitcond260.not = icmp eq i32 %i.do, %i.d
  br i1 %exitcond260.not, label %.loopexit, label %bb.j, !llvm.loop !38

bb.p:                                             ; preds = %bb.i
  %or.cond11 = select i1 %.not267, i1 %i.bj, i1 false
  %i.dp = icmp sgt i32 %i.d, 0
  %or.cond246 = select i1 %or.cond11, i1 %i.dp, i1 false
  br i1 %or.cond246, label %.preheader209.lr.ph, label %.loopexit

.preheader209.lr.ph:                              ; preds = %bb.p
  %i.dq = icmp sgt i32 %i.b, 0
  %i.dr = zext i32 %i.p to i64
  %i.ds = sext i32 %i.m to i64
  br i1 %i.dq, label %.preheader209.preheader, label %.loopexit

.preheader209.preheader:                          ; preds = %.preheader209.lr.ph
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader209

.preheader209:                                    ; preds = %.preheader209.preheader, %._crit_edge
  %.1215 = phi ptr [ %i.ef, %._crit_edge ], [ %i.k, %.preheader209.preheader ] ; 2 uses
  %.3214 = phi i32 [ %i.eg, %._crit_edge ], [ 0, %.preheader209.preheader ]
  %.5213 = phi ptr [ %i.ee, %._crit_edge ], [ %i.n, %.preheader209.preheader ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader209, %bb.q
  %indvars.iv = phi i64 [ 0, %.preheader209 ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.5213, i64 %indvars.iv ; 2 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !12
  %i.dv = tail call noundef i16 @llvm.bswap.i16(i16 %i.du)
  %i.dw = getelementptr inbounds nuw i8, ptr %.1215, i64 %indvars.iv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !17
  %i.dy = zext i8 %i.dx to i16
  %i.dz = mul nuw i16 %i.dy, %i.r
  %i.ea = lshr i16 %i.dz, 8
  %i.eb = trunc nuw i16 %i.ea to i8
  %i.ec = tail call zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %i.f, i16 noundef zeroext %i.dv, i8 noundef zeroext %i.eb) #5
  %i.ed = tail call noundef i16 @llvm.bswap.i16(i16 %i.ec)
  store i16 %i.ed, ptr %i.dt, align 2, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.q
  %i.ee = getelementptr inbounds nuw i8, ptr %.5213, i64 %i.dr
  %i.ef = getelementptr inbounds i8, ptr %.1215, i64 %i.ds
  %i.eg = add nuw nsw i32 %.3214, 1               ; 2 uses
  %exitcond253.not = icmp eq i32 %i.eg, %i.d
  br i1 %exitcond253.not, label %.loopexit, label %.preheader209, !llvm.loop !40

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge221, %._crit_edge231, %._crit_edge241, %.preheader209.lr.ph, %.preheader207, %.preheader204, %.lr.ph234, %.preheader203, %bb.p
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i16 @lv_color_to_u16(i24) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blend_image_to_rgb565_swapped(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %1 = alloca %struct.lv_color16_t, align 2       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !147
  switch i32 %i.c, label %rgb565_swapped_image_blend.exit [
    i32 27, label %bb.b
    i32 18, label %bb.x
    i32 15, label %bb.as
    i32 17, label %bb.at
    i32 16, label %bb.au
    i32 26, label %bb.bu
    i32 6, label %bb.da
    i32 21, label %bb.dt
    i32 7, label %bb.es
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !21    ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !27   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %.preheader283.i

.preheader283.i:                                  ; preds = %bb.b
  %.not263286.i = icmp sgt i32 %i.g, 0
  br i1 %.not263286.i, label %.preheader282.lr.ph.i, label %rgb565_swapped_image_blend.exit

.preheader282.lr.ph.i:                            ; preds = %.preheader283.i
  %i.x = icmp sgt i32 %i.e, 0
  %i.y = icmp ugt i8 %i.i, -4
  %i.z = zext i8 %i.i to i16
  %i.aa = zext i32 %i.l to i64
  %i.ab = zext i32 %i.p to i64
  %i.ac = sext i32 %i.t to i64
  br i1 %i.x, label %.preheader282.preheader.i, label %rgb565_swapped_image_blend.exit

.preheader282.preheader.i:                        ; preds = %.preheader282.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %.preheader282.i

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp eq ptr %i.r, null                  ; 3 uses
  %i.ae = zext i8 %i.i to i16
  %i.af = icmp ugt i8 %i.i, -4                    ; 2 uses
  %or.cond.i = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp sgt i32 %i.g, 0
  br i1 %i.ag, label %.lr.ph.i, label %rgb565_swapped_image_blend.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ah = shl nsw i32 %i.e, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = zext i32 %i.l to i64
  %i.ak = zext i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0221310.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ao, %bb.e ]
  %.0233309.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.an, %bb.e ] ; 2 uses
  %.0238308.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.am, %bb.e ] ; 2 uses
  %i.al = tail call ptr @lv_memcpy(ptr noundef %.0238308.i, ptr noundef %.0233309.i, i64 noundef %i.ai) #5 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0238308.i, i64 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %.0233309.i, i64 %i.ak
  %i.ao = add nuw nsw i32 %.0221310.i, 1          ; 2 uses
  %exitcond336.not.i = icmp eq i32 %i.ao, %i.g
  br i1 %exitcond336.not.i, label %rgb565_swapped_image_blend.exit, label %bb.e, !llvm.loop !51

bb.f:                                             ; preds = %bb.c
  %i.ap = icmp ult i8 %i.i, -3
  %or.cond6.i = select i1 %i.ad, i1 %i.ap, i1 false
  br i1 %or.cond6.i, label %.preheader274.i, label %bb.h

.preheader274.i:                                  ; preds = %bb.f
  %i.aq = icmp sgt i32 %i.g, 0
  br i1 %i.aq, label %.preheader.lr.ph.i, label %rgb565_swapped_image_blend.exit

.preheader.lr.ph.i:                               ; preds = %.preheader274.i
  %i.ar = icmp sgt i32 %i.e, 0
  %i.as = zext i32 %i.l to i64
  %i.at = zext i32 %i.p to i64
  br i1 %i.ar, label %.preheader.preheader.i, label %rgb565_swapped_image_blend.exit

end_hunk_0
