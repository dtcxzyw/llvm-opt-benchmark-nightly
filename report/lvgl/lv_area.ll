Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_area?download=true
inline.NumInlined: 80
inline.NumDeleted: 1
begin_hunk_0_@lv_area_align:bb.a
  %i.ht = add i32 %i.hq, 1
  %i.hu = sub i32 %i.ht, %i.hs
  %.neg71 = sdiv i32 %i.hu, -2
  %i.hv = add nsw i32 %.neg71, %i.ho
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !12
  %i.ie = load i32, ptr %i.hw, align 4, !tbaa !11
  %i.if = load i32, ptr %i.ic, align 4, !tbaa !10
  %i.ig = load i32, ptr %1, align 4, !tbaa !9
  %.neg83 = xor i32 %i.id, -1
  %.neg81 = xor i32 %i.ie, -1
  %.neg80 = add i32 %i.ig, %.neg81
  %.neg82 = add i32 %i.hy, 1
  %i.ih = sub i32 %.neg82, %i.ia
  %i.ii = add i32 %i.ih, %.neg83
  %i.ij = add i32 %i.ii, %i.if
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !11
  %i.im = load i32, ptr %0, align 4, !tbaa !9
  %i.in = add i32 %i.il, 1
  %i.io = sub i32 %i.in, %i.im
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !11
  %i.ir = load i32, ptr %0, align 4, !tbaa !9
  %i.is = add i32 %i.iq, 1
  %i.it = sub i32 %i.is, %i.ir
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !10
  %i.iy = add i32 %i.iv, 1
  %i.iz = sub i32 %i.iy, %i.ix
  %i.ja = sdiv i32 %i.iz, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !12
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !10
  %i.jf = add i32 %i.jc, 1
  %i.jg = sub i32 %i.jf, %i.je
  %.neg = sdiv i32 %i.jg, -2
  %i.jh = add nsw i32 %.neg, %i.ja
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !11
  %i.jk = load i32, ptr %0, align 4, !tbaa !9
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !10
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !10
  %.neg111 = xor i32 %i.jq, -1
  %.neg110 = add i32 %i.jm, 1
  %i.jt = sub i32 %.neg110, %i.jo
  %i.ju = add i32 %i.jt, %.neg111
  %i.jv = add i32 %i.jj, 1
  %i.jw = sub i32 %i.jv, %i.jk
  %i.jx = add i32 %i.ju, %i.js
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.070 = phi i32 [ %i.jh, %bb.t ], [ %i.z, %bb.b ], [ %i.jx, %bb.u ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.bf, %bb.e ], [ %i.cc, %bb.f ], [ %i.cw, %bb.g ], [ %i.dk, %bb.h ], [ %i.eh, %bb.i ], [ %.neg96, %bb.j ], [ %.neg94, %bb.k ], [ %.neg92, %bb.l ], [ %i.fu, %bb.m ], [ %i.gm, %bb.n ], [ %i.hb, %bb.o ], [ 0, %bb.p ], [ %i.hv, %bb.q ], [ %i.ij, %bb.r ], [ 0, %bb.s ], [ 0, %bb.a ]
  %.0 = phi i32 [ %i.it, %bb.t ], [ %i.y, %bb.b ], [ %i.jw, %bb.u ], [ %i.al, %bb.c ], [ %i.au, %bb.d ], [ 0, %bb.e ], [ %i.br, %bb.f ], [ %i.cv, %bb.g ], [ 0, %bb.h ], [ %i.dt, %bb.i ], [ 0, %bb.j ], [ %i.ex, %bb.k ], [ %i.fo, %bb.l ], [ 0, %bb.m ], [ %i.gg, %bb.n ], [ %i.ha, %bb.o ], [ %.neg86, %bb.p ], [ %.neg84, %bb.q ], [ %.neg80, %bb.r ], [ %i.io, %bb.s ], [ 0, %bb.a ]
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kb = add i32 %.0, %3
  %i.kc = add i32 %.070, %4
  %i.kd = load i32, ptr %i.jy, align 4, !tbaa !10
  %i.ke = load i32, ptr %0, align 4, !tbaa !9
  %i.kf = load <2 x i32>, ptr %i.jz, align 4, !tbaa !13
  %i.kg = load <2 x i32>, ptr %1, align 4, !tbaa !13
  %i.kh = add i32 %i.kc, %i.kd                    ; 2 uses
  %i.ki = add i32 %i.kb, %i.ke                    ; 2 uses
  store i32 %i.ki, ptr %1, align 4, !tbaa !9
  store i32 %i.kh, ptr %i.ka, align 4, !tbaa !10
  %i.kj = insertelement <2 x i32> poison, i32 %i.ki, i64 0
  %i.kk = insertelement <2 x i32> %i.kj, i32 %i.kh, i64 1
  %i.kl = add <2 x i32> %i.kk, %i.kf
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
  %i.l = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !42
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.m, align 4, !tbaa !13
  %i.n = load i32, ptr %i.d, align 4, !tbaa !16, !alias.scope !43
  %broadcast.splatinsert168 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.o = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert168, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec = sub nsw <4 x i32> %wide.vec, %i.o
  store <4 x i32> %interleaved.vec, ptr %i.m, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !20

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
  br i1 %i.v, label %scalar.ph, label %._crit_edge.thread, !llvm.loop !21

._crit_edge:                                      ; preds = %.preheader121
  br i1 %i.a, label %.loopexit, label %bb.b

._crit_edge.thread:                               ; preds = %scalar.ph, %middle.block
  br i1 %i.a, label %.lr.ph130, label %bb.b

.lr.ph130:                                        ; preds = %._crit_edge.thread
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  %min.iters.check184 = icmp ult i64 %1, 10
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
  %i.ag = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !47
  %broadcast.splatinsert196 = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.ah = load i32, ptr %i.w, align 4, !tbaa !16, !alias.scope !48
  %broadcast.splatinsert198 = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %i.ai = mul nsw <4 x i32> %wide.vec193, %i.ae
  %i.aj = ashr <4 x i32> %i.ai, splat (i32 8)
  %i.ak = shufflevector <2 x i32> %broadcast.splatinsert196, <2 x i32> %broadcast.splatinsert198, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec200 = add nsw <4 x i32> %i.aj, %i.ak
  store <4 x i32> %interleaved.vec200, ptr %i.af, align 4, !tbaa !13
  %index.next201 = add nuw i64 %index192, 2       ; 2 uses
  %i.al = icmp eq i64 %index.next201, %n.vec186
  br i1 %i.al, label %middle.block202, label %vector.body191, !llvm.loop !25

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
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !15
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
  br i1 %i.ay, label %scalar.ph183, label %.loopexit, !llvm.loop !26

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
  %i.bq = mul nsw i32 %i.bi, %i.be
  %i.br = mul nsw i32 %i.bm, %i.be
  %i.bs = add nsw i32 %i.bq, %i.bo
  %i.bt = add nsw i32 %i.br, %i.bp
  %i.bu = sdiv i32 %i.bs, 10
  %i.bv = sdiv i32 %i.bt, 10
  %i.bw = ashr i32 %i.bu, 5                       ; 9 uses
  %i.bx = ashr i32 %i.bv, 5                       ; 9 uses
  %factor.op.mul = mul i32 %i.bw, %4              ; 2 uses
  %factor.op.mul123 = mul i32 %i.bx, %4           ; 2 uses
  br i1 %.not, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.b
  %or.cond5 = and i1 %i.b, %i.c
  %i.by = getelementptr i8, ptr %5, i64 4         ; 9 uses
  br i1 %or.cond5, label %.lr.ph127.split.us.preheader, label %.lr.ph127.split

.lr.ph127.split.us.preheader:                     ; preds = %.lr.ph127
  %min.iters.check299 = icmp ult i64 %1, 8
  br i1 %min.iters.check299, label %.lr.ph127.split.us.preheader320, label %vector.scevcheck285

vector.scevcheck285:                              ; preds = %.lr.ph127.split.us.preheader
  %i.bz = add i64 %1, -1                          ; 2 uses
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = icmp eq i64 %i.ca, 4294967295
  %i.cc = icmp ugt i64 %i.bz, 4294967295
  %i.cd = or i1 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph127.split.us.preheader320, label %vector.memcheck286

vector.memcheck286:                               ; preds = %vector.scevcheck285
  %i.ce = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce
  %scevgep287 = getelementptr i8, ptr %i.cf, i64 -4
  %scevgep288 = getelementptr i8, ptr %0, i64 4
  %scevgep289 = getelementptr i8, ptr %0, i64 %i.ce
  %scevgep290 = getelementptr i8, ptr %5, i64 8
  %bound0291 = icmp ult ptr %0, %i.by
  %bound1292 = icmp ult ptr %5, %scevgep287
  %found.conflict293 = and i1 %bound0291, %bound1292
  %bound0294 = icmp ult ptr %scevgep288, %scevgep290
  %bound1295 = icmp ult ptr %i.by, %scevgep289
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx297 = or i1 %found.conflict293, %found.conflict296
  br i1 %conflict.rdx297, label %.lr.ph127.split.us.preheader320, label %vector.ph300

vector.ph300:                                     ; preds = %vector.memcheck286
  %n.vec301 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert302 = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat303 = shufflevector <4 x i32> %broadcast.splatinsert302, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert304 = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat305 = shufflevector <4 x i32> %broadcast.splatinsert304, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph300
  %index307 = phi i64 [ 0, %vector.ph300 ], [ %index.next316, %vector.body306 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index307 ; 2 uses
  %wide.vec308 = load <8 x i32>, ptr %i.cg, align 4, !tbaa !13 ; 2 uses
  %strided.vec309 = shufflevector <8 x i32> %wide.vec308, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec310 = shufflevector <8 x i32> %wide.vec308, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ch = mul nsw <4 x i32> %strided.vec309, %broadcast.splat303
  %i.ci = mul nsw <4 x i32> %strided.vec310, %broadcast.splat305
  %i.cj = sub nsw <4 x i32> %i.ch, %i.ci
  %i.ck = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !49
  %broadcast.splatinsert311 = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %i.cl = mul nsw <4 x i32> %strided.vec309, %broadcast.splat305
  %i.cm = mul nsw <4 x i32> %strided.vec310, %broadcast.splat303
  %i.cn = add nsw <4 x i32> %i.cm, %i.cl
  %i.co = load i32, ptr %i.by, align 4, !tbaa !16, !alias.scope !50
  %broadcast.splatinsert313 = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %i.cp = shufflevector <4 x i32> %broadcast.splatinsert311, <4 x i32> %broadcast.splatinsert313, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.cq = shufflevector <4 x i32> %i.cj, <4 x i32> %i.cn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cr = ashr <8 x i32> %i.cq, splat (i32 10)
  %interleaved.vec315 = add nsw <8 x i32> %i.cp, %i.cr
  store <8 x i32> %interleaved.vec315, ptr %i.cg, align 4, !tbaa !13
  %index.next316 = add nuw i64 %index307, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next316, %n.vec301
  br i1 %i.cs, label %middle.block317, label %vector.body306, !llvm.loop !30

middle.block317:                                  ; preds = %vector.body306
  %cmp.n318 = icmp eq i64 %1, %n.vec301
  br i1 %cmp.n318, label %.loopexit, label %.lr.ph127.split.us.preheader320

.lr.ph127.split.us.preheader320:                  ; preds = %vector.memcheck286, %vector.scevcheck285, %.lr.ph127.split.us.preheader, %middle.block317
  %indvars.iv145.ph = phi i64 [ 0, %vector.memcheck286 ], [ 0, %vector.scevcheck285 ], [ 0, %.lr.ph127.split.us.preheader ], [ %n.vec301, %middle.block317 ]
  br label %.lr.ph127.split.us

.lr.ph127.split.us:                               ; preds = %.lr.ph127.split.us.preheader320, %.lr.ph127.split.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.lr.ph127.split.us ], [ %indvars.iv145.ph, %.lr.ph127.split.us.preheader320 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv145 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !16 ; 2 uses
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !15 ; 2 uses
  %i.cx = mul nsw i32 %i.cw, %i.bw
  %i.cy = mul nsw i32 %i.cv, %i.bw
  %i.cz = mul nsw i32 %i.cv, %i.bx
  %i.da = mul nsw i32 %i.cw, %i.bx
  %i.db = add nsw i32 %i.cz, %i.cx
  %i.dc = sub nsw i32 %i.da, %i.cy
  %i.dd = insertelement <2 x i32> poison, i32 %i.dc, i64 0
  %i.de = insertelement <2 x i32> %i.dd, i32 %i.db, i64 1
  %i.df = ashr <2 x i32> %i.de, splat (i32 10)
  %i.dg = load <2 x i32>, ptr %5, align 4, !tbaa !13
end_hunk_0
