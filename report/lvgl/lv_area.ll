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
  %i.id = load i32, ptr %i.hw, align 4, !tbaa !11
  %i.ie = load i32, ptr %1, align 4, !tbaa !9
  %.neg81 = xor i32 %i.id, -1
  %.neg80 = add i32 %i.ie, %.neg81
  %i.if = load i32, ptr %i.ib, align 4, !tbaa !12
  %i.ig = load i32, ptr %i.ic, align 4, !tbaa !10
  %.neg83 = xor i32 %i.if, -1
  %.neg82 = add i32 %i.hy, 1
  %i.ih = sub i32 %.neg82, %i.ia
  %i.ii = add i32 %i.ih, %.neg83
  %i.ij = add i32 %i.ii, %i.ig
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
  %i.ju = add i32 %i.jj, 1
  %i.jv = sub i32 %i.ju, %i.jk
  %i.jw = add i32 %i.jt, %.neg111
  %i.jx = add i32 %i.jw, %i.js
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.070 = phi i32 [ %i.jh, %bb.t ], [ %i.z, %bb.b ], [ %i.jx, %bb.u ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.bf, %bb.e ], [ %i.cc, %bb.f ], [ %i.cw, %bb.g ], [ %i.dk, %bb.h ], [ %i.eh, %bb.i ], [ %.neg96, %bb.j ], [ %.neg94, %bb.k ], [ %.neg92, %bb.l ], [ %i.fu, %bb.m ], [ %i.gm, %bb.n ], [ %i.hb, %bb.o ], [ 0, %bb.p ], [ %i.hv, %bb.q ], [ %i.ij, %bb.r ], [ 0, %bb.s ], [ 0, %bb.a ]
  %.0 = phi i32 [ %i.it, %bb.t ], [ %i.p, %bb.b ], [ %i.jv, %bb.u ], [ %i.al, %bb.c ], [ %i.au, %bb.d ], [ 0, %bb.e ], [ %i.br, %bb.f ], [ %i.cp, %bb.g ], [ 0, %bb.h ], [ %i.dt, %bb.i ], [ 0, %bb.j ], [ %i.ex, %bb.k ], [ %i.fm, %bb.l ], [ 0, %bb.m ], [ %i.gg, %bb.n ], [ %i.gz, %bb.o ], [ %.neg86, %bb.p ], [ %.neg84, %bb.q ], [ %.neg80, %bb.r ], [ %i.io, %bb.s ], [ 0, %bb.a ]
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kb = add i32 %.0, %3
  %i.kc = add i32 %.070, %4
  %i.kd = load i32, ptr %0, align 4, !tbaa !9
  %i.ke = load i32, ptr %i.jy, align 4, !tbaa !10
  %i.kf = load <2 x i32>, ptr %i.jz, align 4, !tbaa !13
  %i.kg = load <2 x i32>, ptr %1, align 4, !tbaa !13
  %i.kh = add i32 %i.kb, %i.kd                    ; 2 uses
  store i32 %i.kh, ptr %1, align 4, !tbaa !9
  %i.ki = add i32 %i.kc, %i.ke                    ; 2 uses
  store i32 %i.ki, ptr %i.ka, align 4, !tbaa !10
  %i.kj = insertelement <2 x i32> poison, i32 %i.kh, i64 0
  %i.kk = insertelement <2 x i32> %i.kj, i32 %i.ki, i64 1
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
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %i.m = getelementptr i8, ptr %0, i64 4
  %i.n = getelementptr i8, ptr %0, i64 %i.j
  %i.o = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %0, %i.d
  %bound1 = icmp ult ptr %5, %i.l
  %found.conflict = and i1 %bound0, %bound1
  %bound0167 = icmp ult ptr %i.m, %i.o
  %bound1168 = icmp ult ptr %i.d, %i.n
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx = or i1 %found.conflict, %found.conflict169
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 8589934590                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !42
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.q, align 4, !tbaa !13
  %i.r = load i32, ptr %i.d, align 4, !tbaa !16, !alias.scope !43
  %broadcast.splatinsert171 = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.s = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert171, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec = sub nsw <4 x i32> %wide.vec, %i.s
  store <4 x i32> %interleaved.vec, ptr %i.q, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.v = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.w = load <2 x i32>, ptr %i.u, align 4, !tbaa !13
  %i.x = sub nsw <2 x i32> %i.w, %i.v
  store <2 x i32> %i.x, ptr %i.u, align 4, !tbaa !13
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.y = and i64 %indvars.iv.next, 4294967295
  %i.z = icmp ugt i64 %1, %i.y
  br i1 %i.z, label %scalar.ph, label %._crit_edge.thread, !llvm.loop !21

._crit_edge:                                      ; preds = %.preheader121
  br i1 %i.a, label %.loopexit, label %bb.b

._crit_edge.thread:                               ; preds = %scalar.ph, %middle.block
  br i1 %i.a, label %.lr.ph130, label %bb.b

.lr.ph130:                                        ; preds = %._crit_edge.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 4
  %7 = tail call i64 @llvm.umax.i64(i64 %1, i64 1) ; 2 uses
  %min.iters.check186 = icmp ult i64 %1, 12
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.scevcheck173

vector.scevcheck173:                              ; preds = %.lr.ph130
  %i.ab = add i64 %1, -1                          ; 2 uses
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = icmp eq i64 %i.ac, 4294967295
  %i.ae = icmp ugt i64 %i.ab, 4294967295
  %i.af = or i1 %i.ad, %i.ae
  br i1 %i.af, label %scalar.ph185.preheader, label %vector.memcheck187

vector.memcheck187:                               ; preds = %vector.scevcheck173
  %i.ag = shl nuw nsw i64 %7, 3                   ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = getelementptr i8, ptr %0, i64 4
  %i.ak = getelementptr i8, ptr %0, i64 %i.ag
  %i.al = getelementptr i8, ptr %5, i64 8
  %bound0188 = icmp ult ptr %0, %i.d
  %bound1189 = icmp ult ptr %5, %i.ai
  %found.conflict190 = and i1 %bound0188, %bound1189
  %bound0191 = icmp ult ptr %i.aj, %i.al
  %bound1192 = icmp ult ptr %i.d, %i.ak
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %found.conflict190, %found.conflict193
  br i1 %conflict.rdx194, label %scalar.ph185.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck187
  %n.vec196 = and i64 %7, 8589934590              ; 3 uses
  %broadcast.splatinsert197 = insertelement <2 x i32> poison, i32 %3, i64 0
  %broadcast.splatinsert199 = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.am = shufflevector <2 x i32> %broadcast.splatinsert197, <2 x i32> %broadcast.splatinsert199, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph195
  %index202 = phi i64 [ 0, %vector.ph195 ], [ %index.next211, %vector.body201 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index202 ; 2 uses
  %wide.vec203 = load <4 x i32>, ptr %i.an, align 4, !tbaa !13
  %i.ao = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !47
  %broadcast.splatinsert206 = insertelement <2 x i32> poison, i32 %i.ao, i64 0
  %i.ap = load i32, ptr %i.aa, align 4, !tbaa !16, !alias.scope !48
  %broadcast.splatinsert208 = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.aq = mul nsw <4 x i32> %wide.vec203, %i.am
  %i.ar = ashr <4 x i32> %i.aq, splat (i32 8)
  %i.as = shufflevector <2 x i32> %broadcast.splatinsert206, <2 x i32> %broadcast.splatinsert208, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec210 = add nsw <4 x i32> %i.ar, %i.as
  store <4 x i32> %interleaved.vec210, ptr %i.an, align 4, !tbaa !13
  %index.next211 = add nuw i64 %index202, 2       ; 2 uses
  %i.at = icmp eq i64 %index.next211, %n.vec196
  br i1 %i.at, label %middle.block212, label %vector.body201, !llvm.loop !25

middle.block212:                                  ; preds = %vector.body201
  %cmp.n213 = icmp eq i64 %1, %n.vec196
  br i1 %cmp.n213, label %.loopexit, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %vector.memcheck187, %vector.scevcheck173, %.lr.ph130, %middle.block212
  %indvars.iv149.ph = phi i64 [ 0, %vector.memcheck187 ], [ 0, %vector.scevcheck173 ], [ 0, %.lr.ph130 ], [ %n.vec196, %middle.block212 ]
  br label %scalar.ph185

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph185 ], [ %indvars.iv149.ph, %scalar.ph185.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv149 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !15
  %i.ax = mul nsw i32 %i.aw, %3
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !16
  %i.az = mul nsw i32 %i.ay, %4
  %i.ba = insertelement <2 x i32> poison, i32 %i.ax, i64 0
  %i.bb = insertelement <2 x i32> %i.ba, i32 %i.az, i64 1
  %i.bc = ashr <2 x i32> %i.bb, splat (i32 8)
  %i.bd = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.be = add nsw <2 x i32> %i.bc, %i.bd
  store <2 x i32> %i.be, ptr %i.au, align 4, !tbaa !13
  %indvars.iv.next150 = add i64 %indvars.iv149, 1 ; 2 uses
  %i.bf = and i64 %indvars.iv.next150, 4294967295
  %i.bg = icmp samesign ugt i64 %1, %i.bf
  br i1 %i.bg, label %scalar.ph185, label %.loopexit, !llvm.loop !26

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bh = icmp sgt i32 %2, 3600
  %i.bi = add nsw i32 %2, -3600
  %spec.select = select i1 %i.bh, i32 %i.bi, i32 %2 ; 3 uses
  %i.bj = icmp slt i32 %spec.select, 0
  %i.bk = add nsw i32 %spec.select, 3600
  %.1 = select i1 %i.bj, i32 %i.bk, i32 %spec.select ; 2 uses
  %i.bl = sdiv i32 %.1, 10                        ; 2 uses
  %.neg = mul nsw i32 %i.bl, -10
  %i.bm = add i32 %.neg, %.1                      ; 3 uses
  %i.bn = trunc i32 %i.bl to i16                  ; 4 uses
  %i.bo = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bn) #8
  %i.bp = add i16 %i.bn, 1
  %i.bq = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bp) #8
  %i.br = add i16 %i.bn, 90
  %i.bs = tail call i32 @lv_trigo_sin(i16 noundef signext %i.br) #8
  %i.bt = add i16 %i.bn, 91
  %i.bu = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bt) #8
  %i.bv = sub nsw i32 10, %i.bm                   ; 2 uses
  %i.bw = mul nsw i32 %i.bo, %i.bv
  %i.bx = mul nsw i32 %i.bq, %i.bm
  %i.by = add nsw i32 %i.bx, %i.bw
  %i.bz = sdiv i32 %i.by, 10
  %i.ca = ashr i32 %i.bz, 5                       ; 9 uses
  %i.cb = mul nsw i32 %i.bs, %i.bv
  %i.cc = mul nsw i32 %i.bu, %i.bm
  %i.cd = add nsw i32 %i.cc, %i.cb
  %i.ce = sdiv i32 %i.cd, 10
  %i.cf = ashr i32 %i.ce, 5                       ; 9 uses
  %factor.op.mul = mul i32 %i.ca, %4              ; 2 uses
  %factor.op.mul123 = mul i32 %i.cf, %4           ; 2 uses
  br i1 %.not, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.b
  %or.cond5 = and i1 %i.b, %i.c
  %i.cg = getelementptr i8, ptr %5, i64 4         ; 9 uses
  br i1 %or.cond5, label %.lr.ph127.split.us.preheader, label %.lr.ph127.split

.lr.ph127.split.us.preheader:                     ; preds = %.lr.ph127
  %min.iters.check322 = icmp ult i64 %1, 8
  br i1 %min.iters.check322, label %.lr.ph127.split.us.preheader351, label %vector.scevcheck309

vector.scevcheck309:                              ; preds = %.lr.ph127.split.us.preheader
  %i.ch = add i64 %1, -1                          ; 2 uses
  %i.ci = and i64 %i.ch, 4294967295
  %i.cj = icmp eq i64 %i.ci, 4294967295
  %i.ck = icmp ugt i64 %i.ch, 4294967295
  %i.cl = or i1 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph127.split.us.preheader351, label %vector.memcheck323

vector.memcheck323:                               ; preds = %vector.scevcheck309
  %i.cm = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.cn = getelementptr i8, ptr %0, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -4
  %i.cp = getelementptr i8, ptr %0, i64 4
  %i.cq = getelementptr i8, ptr %0, i64 %i.cm
  %i.cr = getelementptr i8, ptr %5, i64 8
  %bound0324 = icmp ult ptr %0, %i.cg
  %bound1325 = icmp ult ptr %5, %i.co
  %found.conflict326 = and i1 %bound0324, %bound1325
  %bound0327 = icmp ult ptr %i.cp, %i.cr
  %bound1328 = icmp ult ptr %i.cg, %i.cq
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx330 = or i1 %found.conflict326, %found.conflict329
  br i1 %conflict.rdx330, label %.lr.ph127.split.us.preheader351, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck323
  %n.vec332 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert333 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat334 = shufflevector <4 x i32> %broadcast.splatinsert333, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert335 = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat336 = shufflevector <4 x i32> %broadcast.splatinsert335, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph331
  %index338 = phi i64 [ 0, %vector.ph331 ], [ %index.next347, %vector.body337 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index338 ; 2 uses
  %wide.vec339 = load <8 x i32>, ptr %i.cs, align 4, !tbaa !13 ; 2 uses
  %strided.vec340 = shufflevector <8 x i32> %wide.vec339, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec341 = shufflevector <8 x i32> %wide.vec339, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ct = mul nsw <4 x i32> %strided.vec340, %broadcast.splat334
  %i.cu = mul nsw <4 x i32> %strided.vec341, %broadcast.splat336
  %i.cv = sub nsw <4 x i32> %i.ct, %i.cu
  %i.cw = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !49
  %broadcast.splatinsert342 = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %i.cx = mul nsw <4 x i32> %strided.vec340, %broadcast.splat336
  %i.cy = mul nsw <4 x i32> %strided.vec341, %broadcast.splat334
  %i.cz = add nsw <4 x i32> %i.cy, %i.cx
  %i.da = load i32, ptr %i.cg, align 4, !tbaa !16, !alias.scope !50
  %broadcast.splatinsert344 = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %i.db = shufflevector <4 x i32> %broadcast.splatinsert342, <4 x i32> %broadcast.splatinsert344, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.dc = shufflevector <4 x i32> %i.cv, <4 x i32> %i.cz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dd = ashr <8 x i32> %i.dc, splat (i32 10)
  %interleaved.vec346 = add nsw <8 x i32> %i.db, %i.dd
  store <8 x i32> %interleaved.vec346, ptr %i.cs, align 4, !tbaa !13
  %index.next347 = add nuw i64 %index338, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next347, %n.vec332
  br i1 %i.de, label %middle.block348, label %vector.body337, !llvm.loop !30

middle.block348:                                  ; preds = %vector.body337
  %cmp.n349 = icmp eq i64 %1, %n.vec332
  br i1 %cmp.n349, label %.loopexit, label %.lr.ph127.split.us.preheader351

.lr.ph127.split.us.preheader351:                  ; preds = %vector.memcheck323, %vector.scevcheck309, %.lr.ph127.split.us.preheader, %middle.block348
  %indvars.iv145.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %vector.scevcheck309 ], [ 0, %.lr.ph127.split.us.preheader ], [ %n.vec332, %middle.block348 ]
  br label %.lr.ph127.split.us

.lr.ph127.split.us:                               ; preds = %.lr.ph127.split.us.preheader351, %.lr.ph127.split.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.lr.ph127.split.us ], [ %indvars.iv145.ph, %.lr.ph127.split.us.preheader351 ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv145 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !15 ; 2 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !16 ; 2 uses
  %i.dj = mul nsw i32 %i.dh, %i.cf
  %i.dk = mul nsw i32 %i.di, %i.ca
  %i.dl = sub nsw i32 %i.dj, %i.dk
  %i.dm = mul nsw i32 %i.dh, %i.ca
  %i.dn = mul nsw i32 %i.di, %i.cf
  %i.do = add nsw i32 %i.dn, %i.dm
  %i.dp = insertelement <2 x i32> poison, i32 %i.dl, i64 0
  %i.dq = insertelement <2 x i32> %i.dp, i32 %i.do, i64 1
  %i.dr = ashr <2 x i32> %i.dq, splat (i32 10)
  %i.ds = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.dt = add nsw <2 x i32> %i.ds, %i.dr
  store <2 x i32> %i.dt, ptr %i.df, align 4, !tbaa !13
  %indvars.iv.next146 = add i64 %indvars.iv145, 1 ; 2 uses
  %i.du = and i64 %indvars.iv.next146, 4294967295
  %i.dv = icmp samesign ugt i64 %1, %i.du
  br i1 %i.dv, label %.lr.ph127.split.us, label %.loopexit, !llvm.loop !31

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %6, label %.lr.ph127.split.split.us.preheader, label %.lr.ph127.split.split.preheader

.lr.ph127.split.split.preheader:                  ; preds = %.lr.ph127.split
  %min.iters.check228 = icmp ult i64 %1, 12
  br i1 %min.iters.check228, label %.lr.ph127.split.split.preheader354, label %vector.scevcheck215

vector.scevcheck215:                              ; preds = %.lr.ph127.split.split.preheader
  %i.dw = add i64 %1, -1                          ; 2 uses
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = icmp eq i64 %i.dx, 4294967295
  %i.dz = icmp ugt i64 %i.dw, 4294967295
  %i.ea = or i1 %i.dy, %i.dz
  br i1 %i.ea, label %.lr.ph127.split.split.preheader354, label %vector.memcheck229

vector.memcheck229:                               ; preds = %vector.scevcheck215
  %i.eb = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.ec = getelementptr i8, ptr %0, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 -4
  %i.ee = getelementptr i8, ptr %0, i64 4
  %i.ef = getelementptr i8, ptr %0, i64 %i.eb
end_hunk_0
begin_hunk_1_@lv_point_array_transform:bb.a
  %invariant.op358 = mul <4 x i32> %broadcast.splat290, %broadcast.splat294
  %factor.op.mul360 = mul <4 x i32> %broadcast.splat288, %broadcast.splat294
  %factor.op.mul362 = mul <4 x i32> %broadcast.splat290, %broadcast.splat292
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph285
  %index296 = phi i64 [ 0, %vector.ph285 ], [ %index.next305, %vector.body295 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index296 ; 2 uses
  %wide.vec297 = load <8 x i32>, ptr %i.fg, align 4, !tbaa !13 ; 2 uses
  %strided.vec298 = shufflevector <8 x i32> %wide.vec297, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec299 = shufflevector <8 x i32> %wide.vec297, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %.reass361 = mul <4 x i32> %strided.vec298, %factor.op.mul360
  %.reass363 = mul <4 x i32> %strided.vec299, %factor.op.mul362
  %.reass357 = mul <4 x i32> %strided.vec298, %invariant.op
  %.reass359 = mul <4 x i32> %strided.vec299, %invariant.op358
  %i.fh = sub nsw <4 x i32> %.reass357, %.reass359
  %i.fi = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !53
  %broadcast.splatinsert300 = insertelement <4 x i32> poison, i32 %i.fi, i64 0
  %i.fj = add nsw <4 x i32> %.reass363, %.reass361
  %i.fk = load i32, ptr %i.cg, align 4, !tbaa !16, !alias.scope !54
  %broadcast.splatinsert302 = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %i.fl = shufflevector <4 x i32> %broadcast.splatinsert300, <4 x i32> %broadcast.splatinsert302, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.fm = shufflevector <4 x i32> %i.fh, <4 x i32> %i.fj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fn = ashr <8 x i32> %i.fm, splat (i32 18)
  %interleaved.vec304 = add nsw <8 x i32> %i.fl, %i.fn
  store <8 x i32> %interleaved.vec304, ptr %i.fg, align 4, !tbaa !13
  %index.next305 = add nuw i64 %index296, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next305, %n.vec286
  br i1 %i.fo, label %middle.block306, label %vector.body295, !llvm.loop !39

middle.block306:                                  ; preds = %vector.body295
  %cmp.n307 = icmp eq i64 %1, %n.vec286
  br i1 %cmp.n307, label %.loopexit, label %.lr.ph127.split.split.us.preheader352

.lr.ph127.split.split.us.preheader352:            ; preds = %vector.memcheck277, %vector.scevcheck263, %.lr.ph127.split.split.us.preheader, %middle.block306
  %indvars.iv141.ph = phi i64 [ 0, %vector.memcheck277 ], [ 0, %vector.scevcheck263 ], [ 0, %.lr.ph127.split.split.us.preheader ], [ %n.vec286, %middle.block306 ]
  br label %.lr.ph127.split.split.us

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split.split.us.preheader352, %.lr.ph127.split.split.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph127.split.split.us ], [ %indvars.iv141.ph, %.lr.ph127.split.split.us.preheader352 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv141 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !15
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !16
  %i.ft = mul nsw i32 %i.fr, %3                   ; 2 uses
  %i.fu = mul nsw i32 %i.fs, %4                   ; 2 uses
  %i.fv = mul nsw i32 %i.ft, %i.cf
  %i.fw = mul nsw i32 %i.fu, %i.ca
  %i.fx = sub nsw i32 %i.fv, %i.fw
  %i.fy = mul nsw i32 %i.ft, %i.ca
  %i.fz = mul nsw i32 %i.fu, %i.cf
  %i.ga = add nsw i32 %i.fz, %i.fy
  %i.gb = insertelement <2 x i32> poison, i32 %i.fx, i64 0
  %i.gc = insertelement <2 x i32> %i.gb, i32 %i.ga, i64 1
  %i.gd = ashr <2 x i32> %i.gc, splat (i32 18)
  %i.ge = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.gf = add nsw <2 x i32> %i.ge, %i.gd
  store <2 x i32> %i.gf, ptr %i.fp, align 4, !tbaa !13
  %indvars.iv.next142 = add i64 %indvars.iv141, 1 ; 2 uses
  %i.gg = and i64 %indvars.iv.next142, 4294967295
  %i.gh = icmp samesign ugt i64 %1, %i.gg
  br i1 %i.gh, label %.lr.ph127.split.split.us, label %.loopexit, !llvm.loop !40

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split.split.preheader354, %.lr.ph127.split.split
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph127.split.split ], [ %indvars.iv137.ph, %.lr.ph127.split.split.preheader354 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv137 ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !15 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !16 ; 2 uses
  %i.gm = mul nsw i32 %i.gj, %i.cf
  %i.gn = mul nsw i32 %i.gl, %i.ca
  %.reass = mul i32 %i.gj, %factor.op.mul
  %i.go = sub nsw i32 %i.gm, %i.gn
  %i.gp = mul nsw i32 %i.go, %3
  %.reass124 = mul i32 %i.gl, %factor.op.mul123
  %i.gq = add i32 %.reass124, %.reass
  %i.gr = insertelement <2 x i32> poison, i32 %i.gp, i64 0
  %i.gs = insertelement <2 x i32> %i.gr, i32 %i.gq, i64 1
  %i.gt = ashr <2 x i32> %i.gs, splat (i32 18)
  %i.gu = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.gv = add nsw <2 x i32> %i.gu, %i.gt
  store <2 x i32> %i.gv, ptr %i.gi, align 4, !tbaa !13
  %indvars.iv.next138 = add i64 %indvars.iv137, 1 ; 2 uses
  %i.gw = and i64 %indvars.iv.next138, 4294967295
  %i.gx = icmp samesign ugt i64 %1, %i.gw
  br i1 %i.gx, label %.lr.ph127.split.split, label %.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %scalar.ph185, %.lr.ph127.split.split, %.lr.ph127.split.split.us, %.lr.ph127.split.us, %middle.block212, %middle.block260, %middle.block306, %middle.block348, %._crit_edge, %bb.b, %bb.a
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
  store i32 %1, ptr %0, align 4, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @lv_point_swap(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 4, !tbaa !13
  %i.b = load i64, ptr %1, align 4, !tbaa !13
  store i64 %i.b, ptr %0, align 4, !tbaa !13
  store i64 %i.a, ptr %1, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @lv_point_precise_swap(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 4, !tbaa !13
  %i.b = load i64, ptr %1, align 4, !tbaa !13
  store i64 %i.b, ptr %0, align 4, !tbaa !13
  store i64 %i.a, ptr %1, align 4, !tbaa !13
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!9 = !{!8, !5, i64 0}
!10 = !{!8, !5, i64 4}
!11 = !{!8, !5, i64 8}
!12 = !{!8, !5, i64 12}
!13 = !{!5, !5, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4}
!15 = !{!14, !5, i64 0}
!16 = !{!14, !5, i64 4}
!17 = distinct !{!17, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !44, !45, !46}
!21 = distinct !{!21, !44, !45}
!22 = distinct !{!22, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !44, !45, !46}
!26 = distinct !{!26, !44, !45}
!27 = distinct !{!27, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !44, !45, !46}
!31 = distinct !{!31, !44, !45}
!32 = distinct !{!32, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !44, !45, !46}
!36 = distinct !{!36, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !44, !45, !46}
!40 = distinct !{!40, !44, !45}
!41 = distinct !{!41, !44, !45}
!42 = !{!18}
!43 = !{!19}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!23}
!48 = !{!24}
!49 = !{!28}
!50 = !{!29}
!51 = !{!33}
!52 = !{!34}
!53 = !{!37}
!54 = !{!38}
end_hunk_1
