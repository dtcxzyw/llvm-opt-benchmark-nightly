Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_area?download=true
inline.NumInlined: 80
inline.NumDeleted: 1
begin_hunk_0_@lv_area_align:bb.a
  %i.km = sub <2 x i32> %i.kl, %i.kg
  store <2 x i32> %i.km, ptr %i.jz, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_point_transform(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5) local_unnamed_addr #4 {
bb.a:
  tail call void @lv_point_array_transform(ptr noundef %0, i64 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_point_array_transform(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i1 noundef zeroext %6) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %2, 0                        ; 3 uses
  %i.b = icmp eq i32 %3, 256                      ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp eq i32 %4, 256                      ; 2 uses
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %.loopexit, label %.preheader121

.preheader121:                                    ; preds = %bb.a
  %.not = icmp eq i64 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader121
  %i.d = getelementptr i8, ptr %5, i64 4          ; 5 uses
  %min.iters.check = icmp ult i64 %1, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.e = add i64 %1, -1                           ; 2 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 4294967295
  %i.h = icmp ugt i64 %i.e, 4294967295
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.j = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.k, i64 -4
  %scevgep161 = getelementptr i8, ptr %0, i64 4
  %scevgep162 = getelementptr i8, ptr %0, i64 %i.j
  %scevgep163 = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %0, %i.d
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0164 = icmp ult ptr %scevgep161, %scevgep163
  %bound1165 = icmp ult ptr %i.d, %scevgep162
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx = or i1 %found.conflict, %found.conflict166
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 8589934590                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !17
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.m, align 4, !tbaa !13
  %i.n = load i32, ptr %i.d, align 4, !tbaa !16, !alias.scope !20
  %broadcast.splatinsert168 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.o = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert168, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec = sub nsw <4 x i32> %wide.vec, %i.o
  store <4 x i32> %interleaved.vec, ptr %i.m, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.r = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.s = load <2 x i32>, ptr %i.q, align 4, !tbaa !13
  %i.t = sub nsw <2 x i32> %i.s, %i.r
  store <2 x i32> %i.t, ptr %i.q, align 4, !tbaa !13
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.u = and i64 %indvars.iv.next, 4294967295
  %i.v = icmp ugt i64 %1, %i.u
  br i1 %i.v, label %scalar.ph, label %._crit_edge.thread, !llvm.loop !26

._crit_edge:                                      ; preds = %.preheader121
  br i1 %i.a, label %.loopexit, label %bb.b

._crit_edge.thread:                               ; preds = %scalar.ph, %middle.block
  br i1 %i.a, label %.lr.ph130, label %bb.b

.lr.ph130:                                        ; preds = %._crit_edge.thread
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  %min.iters.check184 = icmp ult i64 %1, 12
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.scevcheck170

vector.scevcheck170:                              ; preds = %.lr.ph130
  %i.x = add i64 %1, -1                           ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = icmp eq i64 %i.y, 4294967295
  %i.aa = icmp ugt i64 %i.x, 4294967295
  %i.ab = or i1 %i.z, %i.aa
  br i1 %i.ab, label %scalar.ph183.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %vector.scevcheck170
  %i.ac = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep172 = getelementptr i8, ptr %i.ad, i64 -4
  %scevgep173 = getelementptr i8, ptr %0, i64 4
  %scevgep174 = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep175 = getelementptr i8, ptr %5, i64 8
  %bound0176 = icmp ult ptr %0, %i.d
  %bound1177 = icmp ult ptr %5, %scevgep172
  %found.conflict178 = and i1 %bound0176, %bound1177
  %bound0179 = icmp ult ptr %scevgep173, %scevgep175
  %bound1180 = icmp ult ptr %i.d, %scevgep174
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %found.conflict178, %found.conflict181
  br i1 %conflict.rdx182, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck171
  %n.vec186 = and i64 %1, 8589934590              ; 3 uses
  %broadcast.splatinsert187 = insertelement <2 x i32> poison, i32 %3, i64 0
  %broadcast.splatinsert189 = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.ae = shufflevector <2 x i32> %broadcast.splatinsert187, <2 x i32> %broadcast.splatinsert189, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph185
  %index192 = phi i64 [ 0, %vector.ph185 ], [ %index.next201, %vector.body191 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index192 ; 2 uses
  %wide.vec193 = load <4 x i32>, ptr %i.af, align 4, !tbaa !13
  %i.ag = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !27
  %broadcast.splatinsert196 = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.ah = load i32, ptr %i.w, align 4, !tbaa !16, !alias.scope !30
  %broadcast.splatinsert198 = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %i.ai = mul nsw <4 x i32> %wide.vec193, %i.ae
  %i.aj = ashr <4 x i32> %i.ai, splat (i32 8)
  %i.ak = shufflevector <2 x i32> %broadcast.splatinsert196, <2 x i32> %broadcast.splatinsert198, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec200 = add nsw <4 x i32> %i.aj, %i.ak
  store <4 x i32> %interleaved.vec200, ptr %i.af, align 4, !tbaa !13
  %index.next201 = add nuw i64 %index192, 2       ; 2 uses
  %i.al = icmp eq i64 %index.next201, %n.vec186
  br i1 %i.al, label %middle.block202, label %vector.body191, !llvm.loop !32

middle.block202:                                  ; preds = %vector.body191
  %cmp.n203 = icmp eq i64 %1, %n.vec186
  br i1 %cmp.n203, label %.loopexit, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %vector.memcheck171, %vector.scevcheck170, %.lr.ph130, %middle.block202
  %indvars.iv149.ph = phi i64 [ 0, %vector.memcheck171 ], [ 0, %vector.scevcheck170 ], [ 0, %.lr.ph130 ], [ %n.vec186, %middle.block202 ]
  br label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph183 ], [ %indvars.iv149.ph, %scalar.ph183.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv149 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !14
  %i.aq = mul nsw i32 %i.ao, %4
  %i.ar = mul nsw i32 %i.ap, %3
  %i.as = insertelement <2 x i32> poison, i32 %i.ar, i64 0
  %i.at = insertelement <2 x i32> %i.as, i32 %i.aq, i64 1
  %i.au = ashr <2 x i32> %i.at, splat (i32 8)
  %i.av = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.aw = add nsw <2 x i32> %i.au, %i.av
  store <2 x i32> %i.aw, ptr %i.am, align 4, !tbaa !13
  %indvars.iv.next150 = add i64 %indvars.iv149, 1 ; 2 uses
  %i.ax = and i64 %indvars.iv.next150, 4294967295
  %i.ay = icmp samesign ugt i64 %1, %i.ax
  br i1 %i.ay, label %scalar.ph183, label %.loopexit, !llvm.loop !33

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.az = icmp sgt i32 %2, 3600
  %i.ba = add nsw i32 %2, -3600
  %spec.select = select i1 %i.az, i32 %i.ba, i32 %2 ; 3 uses
  %i.bb = icmp slt i32 %spec.select, 0
  %i.bc = add nsw i32 %spec.select, 3600
  %.1 = select i1 %i.bb, i32 %i.bc, i32 %spec.select ; 2 uses
  %i.bd = sdiv i32 %.1, 10                        ; 2 uses
  %.neg = mul nsw i32 %i.bd, -10
  %i.be = add i32 %.neg, %.1                      ; 3 uses
  %i.bf = trunc i32 %i.bd to i16                  ; 4 uses
  %i.bg = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bf) #8
  %i.bh = add i16 %i.bf, 1
  %i.bi = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bh) #8
  %i.bj = add i16 %i.bf, 90
  %i.bk = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bj) #8
  %i.bl = add i16 %i.bf, 91
  %i.bm = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bl) #8
  %i.bn = sub nsw i32 10, %i.be                   ; 2 uses
  %i.bo = mul nsw i32 %i.bg, %i.bn
  %i.bp = mul nsw i32 %i.bk, %i.bn
  %7 = mul nsw i32 %i.bi, %i.be
  %8 = mul nsw i32 %i.bm, %i.be
  %9 = add nsw i32 %7, %i.bo
  %10 = add nsw i32 %8, %i.bp
  %11 = sdiv i32 %9, 10
  %12 = sdiv i32 %10, 10
  %13 = ashr i32 %11, 5                           ; 9 uses
  %i.bq = ashr i32 %12, 5                         ; 9 uses
  %factor.op.mul = mul i32 %13, %4                ; 2 uses
  %factor.op.mul123 = mul i32 %i.bq, %4           ; 2 uses
  br i1 %.not, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.b
  %or.cond5 = and i1 %i.b, %i.c
  %i.br = getelementptr i8, ptr %5, i64 4         ; 9 uses
  br i1 %or.cond5, label %.lr.ph127.split.us.preheader, label %.lr.ph127.split

.lr.ph127.split.us.preheader:                     ; preds = %.lr.ph127
  %min.iters.check299 = icmp ult i64 %1, 8
  br i1 %min.iters.check299, label %.lr.ph127.split.us.preheader320, label %vector.scevcheck285

vector.scevcheck285:                              ; preds = %.lr.ph127.split.us.preheader
  %i.bs = add i64 %1, -1                          ; 2 uses
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = icmp eq i64 %i.bt, 4294967295
  %i.bv = icmp ugt i64 %i.bs, 4294967295
  %i.bw = or i1 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph127.split.us.preheader320, label %vector.memcheck286

vector.memcheck286:                               ; preds = %vector.scevcheck285
  %i.bx = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.bx
  %scevgep287 = getelementptr i8, ptr %i.by, i64 -4
  %scevgep288 = getelementptr i8, ptr %0, i64 4
  %scevgep289 = getelementptr i8, ptr %0, i64 %i.bx
  %scevgep290 = getelementptr i8, ptr %5, i64 8
  %bound0291 = icmp ult ptr %0, %i.br
  %bound1292 = icmp ult ptr %5, %scevgep287
  %found.conflict293 = and i1 %bound0291, %bound1292
  %bound0294 = icmp ult ptr %scevgep288, %scevgep290
  %bound1295 = icmp ult ptr %i.br, %scevgep289
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx297 = or i1 %found.conflict293, %found.conflict296
  br i1 %conflict.rdx297, label %.lr.ph127.split.us.preheader320, label %vector.ph300

vector.ph300:                                     ; preds = %vector.memcheck286
  %n.vec301 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert302 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat303 = shufflevector <4 x i32> %broadcast.splatinsert302, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert304 = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat305 = shufflevector <4 x i32> %broadcast.splatinsert304, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph300
  %index307 = phi i64 [ 0, %vector.ph300 ], [ %index.next316, %vector.body306 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index307 ; 2 uses
  %wide.vec308 = load <8 x i32>, ptr %i.bz, align 4, !tbaa !13 ; 2 uses
  %strided.vec309 = shufflevector <8 x i32> %wide.vec308, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec310 = shufflevector <8 x i32> %wide.vec308, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ca = mul nsw <4 x i32> %strided.vec309, %broadcast.splat303
  %i.cb = mul nsw <4 x i32> %strided.vec310, %broadcast.splat305
  %i.cc = sub nsw <4 x i32> %i.ca, %i.cb
  %i.cd = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !34
  %broadcast.splatinsert311 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %i.ce = mul nsw <4 x i32> %strided.vec309, %broadcast.splat305
  %i.cf = mul nsw <4 x i32> %strided.vec310, %broadcast.splat303
  %i.cg = add nsw <4 x i32> %i.cf, %i.ce
  %i.ch = load i32, ptr %i.br, align 4, !tbaa !16, !alias.scope !37
  %broadcast.splatinsert313 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.ci = shufflevector <4 x i32> %broadcast.splatinsert311, <4 x i32> %broadcast.splatinsert313, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.cj = shufflevector <4 x i32> %i.cc, <4 x i32> %i.cg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ck = ashr <8 x i32> %i.cj, splat (i32 10)
  %interleaved.vec315 = add nsw <8 x i32> %i.ci, %i.ck
  store <8 x i32> %interleaved.vec315, ptr %i.bz, align 4, !tbaa !13
  %index.next316 = add nuw i64 %index307, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next316, %n.vec301
  br i1 %i.cl, label %middle.block317, label %vector.body306, !llvm.loop !39

middle.block317:                                  ; preds = %vector.body306
  %cmp.n318 = icmp eq i64 %1, %n.vec301
  br i1 %cmp.n318, label %.loopexit, label %.lr.ph127.split.us.preheader320

.lr.ph127.split.us.preheader320:                  ; preds = %vector.memcheck286, %vector.scevcheck285, %.lr.ph127.split.us.preheader, %middle.block317
  %indvars.iv145.ph = phi i64 [ 0, %vector.memcheck286 ], [ 0, %vector.scevcheck285 ], [ 0, %.lr.ph127.split.us.preheader ], [ %n.vec301, %middle.block317 ]
  br label %.lr.ph127.split.us

.lr.ph127.split.us:                               ; preds = %.lr.ph127.split.us.preheader320, %.lr.ph127.split.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.lr.ph127.split.us ], [ %indvars.iv145.ph, %.lr.ph127.split.us.preheader320 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv145 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !16 ; 2 uses
  %i.cp = load i32, ptr %i.cm, align 4, !tbaa !14 ; 2 uses
  %i.cq = mul nsw i32 %i.cp, %13
  %i.cr = mul nsw i32 %i.co, %13
  %i.cs = mul nsw i32 %i.co, %i.bq
  %i.ct = mul nsw i32 %i.cp, %i.bq
  %i.cu = add nsw i32 %i.cs, %i.cq
  %i.cv = sub nsw i32 %i.ct, %i.cr
  %i.cw = insertelement <2 x i32> poison, i32 %i.cv, i64 0
  %i.cx = insertelement <2 x i32> %i.cw, i32 %i.cu, i64 1
  %i.cy = ashr <2 x i32> %i.cx, splat (i32 10)
  %i.cz = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.da = add nsw <2 x i32> %i.cz, %i.cy
  store <2 x i32> %i.da, ptr %i.cm, align 4, !tbaa !13
  %indvars.iv.next146 = add i64 %indvars.iv145, 1 ; 2 uses
  %i.db = and i64 %indvars.iv.next146, 4294967295
  %i.dc = icmp samesign ugt i64 %1, %i.db
  br i1 %i.dc, label %.lr.ph127.split.us, label %.loopexit, !llvm.loop !40

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %6, label %.lr.ph127.split.split.us.preheader, label %.lr.ph127.split.split.preheader

.lr.ph127.split.split.preheader:                  ; preds = %.lr.ph127.split
  %min.iters.check219 = icmp ult i64 %1, 12
  br i1 %min.iters.check219, label %.lr.ph127.split.split.preheader323, label %vector.scevcheck205

vector.scevcheck205:                              ; preds = %.lr.ph127.split.split.preheader
  %i.dd = add i64 %1, -1                          ; 2 uses
  %i.de = and i64 %i.dd, 4294967295
  %i.df = icmp eq i64 %i.de, 4294967295
  %i.dg = icmp ugt i64 %i.dd, 4294967295
  %i.dh = or i1 %i.df, %i.dg
  br i1 %i.dh, label %.lr.ph127.split.split.preheader323, label %vector.memcheck206

vector.memcheck206:                               ; preds = %vector.scevcheck205
  %i.di = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.dj = getelementptr i8, ptr %0, i64 %i.di
  %scevgep207 = getelementptr i8, ptr %i.dj, i64 -4
  %scevgep208 = getelementptr i8, ptr %0, i64 4
  %scevgep209 = getelementptr i8, ptr %0, i64 %i.di
  %scevgep210 = getelementptr i8, ptr %5, i64 8
  %bound0211 = icmp ult ptr %0, %i.br
  %bound1212 = icmp ult ptr %5, %scevgep207
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0214 = icmp ult ptr %scevgep208, %scevgep210
  %bound1215 = icmp ult ptr %i.br, %scevgep209
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %found.conflict213, %found.conflict216
  br i1 %conflict.rdx217, label %.lr.ph127.split.split.preheader323, label %vector.ph220

vector.ph220:                                     ; preds = %vector.memcheck206
  %n.vec221 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert222 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat223 = shufflevector <4 x i32> %broadcast.splatinsert222, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat225 = shufflevector <4 x i32> %broadcast.splatinsert224, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert226 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat227 = shufflevector <4 x i32> %broadcast.splatinsert226, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <4 x i32> poison, i32 %factor.op.mul, i64 0
  %broadcast.splat229 = shufflevector <4 x i32> %broadcast.splatinsert228, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert230 = insertelement <4 x i32> poison, i32 %factor.op.mul123, i64 0
  %broadcast.splat231 = shufflevector <4 x i32> %broadcast.splatinsert230, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph220
  %index233 = phi i64 [ 0, %vector.ph220 ], [ %index.next242, %vector.body232 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index233 ; 2 uses
  %wide.vec234 = load <8 x i32>, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  %strided.vec235 = shufflevector <8 x i32> %wide.vec234, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec236 = shufflevector <8 x i32> %wide.vec234, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dl = mul nsw <4 x i32> %strided.vec235, %broadcast.splat223
  %i.dm = mul nsw <4 x i32> %strided.vec236, %broadcast.splat225
  %i.dn = sub nsw <4 x i32> %i.dl, %i.dm
  %i.do = mul nsw <4 x i32> %i.dn, %broadcast.splat227
  %i.dp = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !41
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.dp, i64 0
  %i.dq = mul <4 x i32> %strided.vec235, %broadcast.splat229
  %i.dr = mul <4 x i32> %strided.vec236, %broadcast.splat231
  %i.ds = add <4 x i32> %i.dr, %i.dq
  %i.dt = load i32, ptr %i.br, align 4, !tbaa !16, !alias.scope !44
  %broadcast.splatinsert239 = insertelement <4 x i32> poison, i32 %i.dt, i64 0
  %i.du = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> %broadcast.splatinsert239, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.dv = shufflevector <4 x i32> %i.do, <4 x i32> %i.ds, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dw = ashr <8 x i32> %i.dv, splat (i32 18)
  %interleaved.vec241 = add nsw <8 x i32> %i.du, %i.dw
  store <8 x i32> %interleaved.vec241, ptr %i.dk, align 4, !tbaa !13
  %index.next242 = add nuw i64 %index233, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next242, %n.vec221
  br i1 %i.dx, label %middle.block243, label %vector.body232, !llvm.loop !46

middle.block243:                                  ; preds = %vector.body232
  %cmp.n244 = icmp eq i64 %1, %n.vec221
  br i1 %cmp.n244, label %.loopexit, label %.lr.ph127.split.split.preheader323

.lr.ph127.split.split.preheader323:               ; preds = %vector.memcheck206, %vector.scevcheck205, %.lr.ph127.split.split.preheader, %middle.block243
  %indvars.iv137.ph = phi i64 [ 0, %vector.memcheck206 ], [ 0, %vector.scevcheck205 ], [ 0, %.lr.ph127.split.split.preheader ], [ %n.vec221, %middle.block243 ]
  br label %.lr.ph127.split.split

.lr.ph127.split.split.us.preheader:               ; preds = %.lr.ph127.split
  %min.iters.check260 = icmp ult i64 %1, 16
  br i1 %min.iters.check260, label %.lr.ph127.split.split.us.preheader321, label %vector.scevcheck246

vector.scevcheck246:                              ; preds = %.lr.ph127.split.split.us.preheader
  %i.dy = add i64 %1, -1                          ; 2 uses
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = icmp eq i64 %i.dz, 4294967295
  %i.eb = icmp ugt i64 %i.dy, 4294967295
  %i.ec = or i1 %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph127.split.split.us.preheader321, label %vector.memcheck247

vector.memcheck247:                               ; preds = %vector.scevcheck246
  %i.ed = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.ee = getelementptr i8, ptr %0, i64 %i.ed
  %scevgep248 = getelementptr i8, ptr %i.ee, i64 -4
  %scevgep249 = getelementptr i8, ptr %0, i64 4
  %scevgep250 = getelementptr i8, ptr %0, i64 %i.ed
  %scevgep251 = getelementptr i8, ptr %5, i64 8
  %bound0252 = icmp ult ptr %0, %i.br
  %bound1253 = icmp ult ptr %5, %scevgep248
  %found.conflict254 = and i1 %bound0252, %bound1253
  %bound0255 = icmp ult ptr %scevgep249, %scevgep251
  %bound1256 = icmp ult ptr %i.br, %scevgep250
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %found.conflict254, %found.conflict257
  br i1 %conflict.rdx258, label %.lr.ph127.split.split.us.preheader321, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck247
  %n.vec262 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert263 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat264 = shufflevector <4 x i32> %broadcast.splatinsert263, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert265 = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat266 = shufflevector <4 x i32> %broadcast.splatinsert265, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert267 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat268 = shufflevector <4 x i32> %broadcast.splatinsert267, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = mul <4 x i32> %broadcast.splat264, %broadcast.splat268
  %invariant.op327 = mul <4 x i32> %broadcast.splat266, %broadcast.splat270
  %factor.op.mul329 = mul <4 x i32> %broadcast.splat264, %broadcast.splat270
  %factor.op.mul331 = mul <4 x i32> %broadcast.splat266, %broadcast.splat268
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph261
  %index272 = phi i64 [ 0, %vector.ph261 ], [ %index.next281, %vector.body271 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index272 ; 2 uses
  %wide.vec273 = load <8 x i32>, ptr %i.ef, align 4, !tbaa !13 ; 2 uses
  %strided.vec274 = shufflevector <8 x i32> %wide.vec273, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec275 = shufflevector <8 x i32> %wide.vec273, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %.reass330 = mul <4 x i32> %strided.vec274, %factor.op.mul329
  %.reass332 = mul <4 x i32> %strided.vec275, %factor.op.mul331
  %.reass326 = mul <4 x i32> %strided.vec274, %invariant.op
  %.reass328 = mul <4 x i32> %strided.vec275, %invariant.op327
  %i.eg = sub nsw <4 x i32> %.reass326, %.reass328
  %i.eh = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !47
  %broadcast.splatinsert276 = insertelement <4 x i32> poison, i32 %i.eh, i64 0
  %i.ei = add nsw <4 x i32> %.reass332, %.reass330
  %i.ej = load i32, ptr %i.br, align 4, !tbaa !16, !alias.scope !50
  %broadcast.splatinsert278 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %i.ek = shufflevector <4 x i32> %broadcast.splatinsert276, <4 x i32> %broadcast.splatinsert278, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.el = shufflevector <4 x i32> %i.eg, <4 x i32> %i.ei, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.em = ashr <8 x i32> %i.el, splat (i32 18)
  %interleaved.vec280 = add nsw <8 x i32> %i.ek, %i.em
  store <8 x i32> %interleaved.vec280, ptr %i.ef, align 4, !tbaa !13
  %index.next281 = add nuw i64 %index272, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next281, %n.vec262
  br i1 %i.en, label %middle.block282, label %vector.body271, !llvm.loop !52

middle.block282:                                  ; preds = %vector.body271
  %cmp.n283 = icmp eq i64 %1, %n.vec262
  br i1 %cmp.n283, label %.loopexit, label %.lr.ph127.split.split.us.preheader321

.lr.ph127.split.split.us.preheader321:            ; preds = %vector.memcheck247, %vector.scevcheck246, %.lr.ph127.split.split.us.preheader, %middle.block282
  %indvars.iv141.ph = phi i64 [ 0, %vector.memcheck247 ], [ 0, %vector.scevcheck246 ], [ 0, %.lr.ph127.split.split.us.preheader ], [ %n.vec262, %middle.block282 ]
  br label %.lr.ph127.split.split.us

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split.split.us.preheader321, %.lr.ph127.split.split.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph127.split.split.us ], [ %indvars.iv141.ph, %.lr.ph127.split.split.us.preheader321 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv141 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !16
  %i.er = load i32, ptr %i.eo, align 4, !tbaa !14
  %i.es = mul nsw i32 %i.eq, %4                   ; 2 uses
  %i.et = mul nsw i32 %i.er, %3                   ; 2 uses
  %i.eu = mul nsw i32 %i.et, %13
  %i.ev = mul nsw i32 %i.es, %13
  %i.ew = mul nsw i32 %i.es, %i.bq
  %i.ex = mul nsw i32 %i.et, %i.bq
  %i.ey = add nsw i32 %i.ew, %i.eu
  %i.ez = sub nsw i32 %i.ex, %i.ev
  %i.fa = insertelement <2 x i32> poison, i32 %i.ez, i64 0
  %i.fb = insertelement <2 x i32> %i.fa, i32 %i.ey, i64 1
  %i.fc = ashr <2 x i32> %i.fb, splat (i32 18)
  %i.fd = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.fe = add nsw <2 x i32> %i.fd, %i.fc
  store <2 x i32> %i.fe, ptr %i.eo, align 4, !tbaa !13
  %indvars.iv.next142 = add i64 %indvars.iv141, 1 ; 2 uses
  %i.ff = and i64 %indvars.iv.next142, 4294967295
  %i.fg = icmp samesign ugt i64 %1, %i.ff
  br i1 %i.fg, label %.lr.ph127.split.split.us, label %.loopexit, !llvm.loop !53

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split.split.preheader323, %.lr.ph127.split.split
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph127.split.split ], [ %indvars.iv137.ph, %.lr.ph127.split.split.preheader323 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv137 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !14 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !16 ; 2 uses
  %i.fl = mul nsw i32 %i.fi, %i.bq
  %i.fm = mul nsw i32 %i.fk, %13
  %.reass = mul i32 %i.fi, %factor.op.mul
  %.reass124 = mul i32 %i.fk, %factor.op.mul123
  %i.fn = sub nsw i32 %i.fl, %i.fm
  %i.fo = add i32 %.reass124, %.reass
  %i.fp = mul nsw i32 %i.fn, %3
  %i.fq = insertelement <2 x i32> poison, i32 %i.fp, i64 0
  %i.fr = insertelement <2 x i32> %i.fq, i32 %i.fo, i64 1
  %i.fs = ashr <2 x i32> %i.fr, splat (i32 18)
  %i.ft = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.fu = add nsw <2 x i32> %i.ft, %i.fs
  store <2 x i32> %i.fu, ptr %i.fh, align 4, !tbaa !13
  %indvars.iv.next138 = add i64 %indvars.iv137, 1 ; 2 uses
  %i.fv = and i64 %indvars.iv.next138, 4294967295
  %i.fw = icmp samesign ugt i64 %1, %i.fv
  br i1 %i.fw, label %.lr.ph127.split.split, label %.loopexit, !llvm.loop !54

.loopexit:                                        ; preds = %scalar.ph183, %.lr.ph127.split.split, %.lr.ph127.split.split.us, %.lr.ph127.split.us, %middle.block202, %middle.block243, %middle.block282, %middle.block317, %._crit_edge, %bb.b, %bb.a
  ret void
}

declare i32 @lv_trigo_sin(i16 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @lv_point_from_precise(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 4
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @lv_point_to_precise(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 4
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @lv_point_precise_set(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @lv_point_swap(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 4
  %i.b = load i64, ptr %1, align 4
  store i64 %i.b, ptr %0, align 4
  store i64 %i.a, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @lv_point_precise_swap(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 4
  %i.b = load i64, ptr %1, align 4
  store i64 %i.b, ptr %0, align 4
  store i64 %i.a, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 536870912, 1073741824) i32 @lv_pct(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @llvm.umax.i32(i32 %0, i32 -268435455)
  %i.c = sub nsw i32 268435455, %i.b
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @llvm.umin.i32(i32 %0, i32 268435455)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.f = or i32 %i.e, 536870912
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @lv_pct_to_px(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %0, 1610612736
  %i.b = icmp eq i32 %i.a, 536870912
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, -1610612737                  ; 4 uses
  %.not = icmp eq i32 %i.c, 536870911
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp sgt i32 %i.c, 268435455
  %i.e = sub nsw i32 268435455, %i.c
  %i.f = select i1 %i.d, i32 %i.e, i32 %i.c
  %i.g = mul nsw i32 %i.f, %1
  %i.h = sdiv i32 %i.g, 100
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!10 = !{!9, !5, i64 4}
!11 = !{!9, !5, i64 8}
!12 = !{!9, !5, i64 12}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"", !5, i64 0, !5, i64 4}
!16 = !{!15, !5, i64 4}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !23, !24, !25}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !23, !24}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !23, !24, !25}
!33 = distinct !{!33, !23, !24}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !23, !24, !25}
!40 = distinct !{!40, !23, !24}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !23, !24, !25}
!47 = !{!48}
!48 = distinct !{!48, !49}
!49 = distinct !{!49, !"LVerDomain"}
!50 = !{!51}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !23, !24, !25}
!53 = distinct !{!53, !23, !24}
!54 = distinct !{!54, !23, !24}
end_hunk_0
