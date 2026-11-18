Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_area?download=true
inline.NumInlined: 80
inline.NumDeleted: 1
begin_hunk_0_@lv_area_align:bb.a
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !11
  %i.gd = load i32, ptr %1, align 4, !tbaa !9
  %i.ge = add i32 %i.gc, 1
  %i.gf = sub i32 %i.ge, %i.gd
  %.neg72 = sdiv i32 %i.gf, -2
  %i.gg = add nsw i32 %.neg72, %i.ga
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !10
  %i.gl = add i32 %i.gi, 1
  %i.gm = sub i32 %i.gl, %i.gk
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !11
  %i.gp = load i32, ptr %0, align 4, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !11
  %i.gs = load i32, ptr %1, align 4, !tbaa !9
  %.neg89 = xor i32 %i.gr, -1
  %.neg88 = add i32 %i.go, 1
  %i.gt = sub i32 %.neg88, %i.gp
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !10
  %i.gy = add i32 %i.gt, %.neg89
  %i.gz = add i32 %i.gy, %i.gs
  %i.ha = add i32 %i.gv, 1
  %i.hb = sub i32 %i.ha, %i.gx
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !11
  %i.he = load i32, ptr %1, align 4, !tbaa !9
  %.neg87 = xor i32 %i.hd, -1
  %.neg86 = add i32 %i.he, %.neg87
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !11
  %i.hh = load i32, ptr %1, align 4, !tbaa !9
  %.neg85 = xor i32 %i.hg, -1
  %.neg84 = add i32 %i.hh, %.neg85
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !10
  %i.hm = add i32 %i.hj, 1
  %i.hn = sub i32 %i.hm, %i.hl
  %i.ho = sdiv i32 %i.hn, 2
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !10
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
  %bound0 = icmp ult ptr %0, %i.d
  %bound1 = icmp ult ptr %5, %i.l
  %found.conflict = and i1 %bound0, %bound1
  %7 = getelementptr i8, ptr %0, i64 4
  %8 = getelementptr i8, ptr %0, i64 %i.j
  %9 = getelementptr i8, ptr %5, i64 8
  %bound0167 = icmp ult ptr %7, %9
  %bound1168 = icmp ult ptr %i.d, %8
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx = or i1 %found.conflict, %found.conflict169
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 8589934590                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !42
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.n, align 4, !tbaa !13
  %i.o = load i32, ptr %i.d, align 4, !tbaa !16, !alias.scope !43
  %broadcast.splatinsert171 = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %i.p = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert171, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec = sub nsw <4 x i32> %wide.vec, %i.p
  store <4 x i32> %interleaved.vec, ptr %i.n, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.s = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !13
  %i.u = sub nsw <2 x i32> %i.t, %i.s
  store <2 x i32> %i.u, ptr %i.r, align 4, !tbaa !13
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.v = and i64 %indvars.iv.next, 4294967295
  %i.w = icmp ugt i64 %1, %i.v
  br i1 %i.w, label %scalar.ph, label %._crit_edge.thread, !llvm.loop !21

._crit_edge:                                      ; preds = %.preheader121
  br i1 %i.a, label %.loopexit, label %bb.b

._crit_edge.thread:                               ; preds = %scalar.ph, %middle.block
  br i1 %i.a, label %.lr.ph130, label %bb.b

.lr.ph130:                                        ; preds = %._crit_edge.thread
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  %min.iters.check186 = icmp ult i64 %1, 10
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.scevcheck173

vector.scevcheck173:                              ; preds = %.lr.ph130
  %i.y = add i64 %1, -1                           ; 2 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 4294967295
  %i.ab = icmp ugt i64 %i.y, 4294967295
  %i.ac = or i1 %i.aa, %i.ab
  br i1 %i.ac, label %scalar.ph185.preheader, label %vector.memcheck187

vector.memcheck187:                               ; preds = %vector.scevcheck173
  %i.ad = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %bound0188 = icmp ult ptr %0, %i.d
  %bound1189 = icmp ult ptr %5, %i.af
  %found.conflict190 = and i1 %bound0188, %bound1189
  %10 = getelementptr i8, ptr %0, i64 4
  %11 = getelementptr i8, ptr %0, i64 %i.ad
  %12 = getelementptr i8, ptr %5, i64 8
  %bound0191 = icmp ult ptr %10, %12
  %bound1192 = icmp ult ptr %i.d, %11
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %found.conflict190, %found.conflict193
  br i1 %conflict.rdx194, label %scalar.ph185.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck187
  %n.vec196 = and i64 %1, 8589934590              ; 3 uses
  %broadcast.splatinsert197 = insertelement <2 x i32> poison, i32 %3, i64 0
  %broadcast.splatinsert199 = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.ag = shufflevector <2 x i32> %broadcast.splatinsert197, <2 x i32> %broadcast.splatinsert199, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph195
  %index202 = phi i64 [ 0, %vector.ph195 ], [ %index.next211, %vector.body201 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index202 ; 2 uses
  %wide.vec203 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !13
  %i.ai = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !47
  %broadcast.splatinsert206 = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.aj = load i32, ptr %i.x, align 4, !tbaa !16, !alias.scope !48
  %broadcast.splatinsert208 = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.ak = mul nsw <4 x i32> %wide.vec203, %i.ag
  %i.al = ashr <4 x i32> %i.ak, splat (i32 8)
  %i.am = shufflevector <2 x i32> %broadcast.splatinsert206, <2 x i32> %broadcast.splatinsert208, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec210 = add nsw <4 x i32> %i.al, %i.am
  store <4 x i32> %interleaved.vec210, ptr %i.ah, align 4, !tbaa !13
  %index.next211 = add nuw i64 %index202, 2       ; 2 uses
  %i.an = icmp eq i64 %index.next211, %n.vec196
  br i1 %i.an, label %middle.block212, label %vector.body201, !llvm.loop !25

middle.block212:                                  ; preds = %vector.body201
  %cmp.n213 = icmp eq i64 %1, %n.vec196
  br i1 %cmp.n213, label %.loopexit, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %vector.memcheck187, %vector.scevcheck173, %.lr.ph130, %middle.block212
  %indvars.iv149.ph = phi i64 [ 0, %vector.memcheck187 ], [ 0, %vector.scevcheck173 ], [ 0, %.lr.ph130 ], [ %n.vec196, %middle.block212 ]
  br label %scalar.ph185

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph185 ], [ %indvars.iv149.ph, %scalar.ph185.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv149 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.ar = mul nsw i32 %i.aq, %3
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.at = mul nsw i32 %i.as, %4
  %i.au = insertelement <2 x i32> poison, i32 %i.ar, i64 0
  %i.av = insertelement <2 x i32> %i.au, i32 %i.at, i64 1
  %i.aw = ashr <2 x i32> %i.av, splat (i32 8)
  %i.ax = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.ay = add nsw <2 x i32> %i.aw, %i.ax
  store <2 x i32> %i.ay, ptr %i.ao, align 4, !tbaa !13
  %indvars.iv.next150 = add i64 %indvars.iv149, 1 ; 2 uses
  %i.az = and i64 %indvars.iv.next150, 4294967295
  %i.ba = icmp samesign ugt i64 %1, %i.az
  br i1 %i.ba, label %scalar.ph185, label %.loopexit, !llvm.loop !26

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bb = icmp sgt i32 %2, 3600
  %i.bc = add nsw i32 %2, -3600
  %spec.select = select i1 %i.bb, i32 %i.bc, i32 %2 ; 3 uses
  %i.bd = icmp slt i32 %spec.select, 0
  %i.be = add nsw i32 %spec.select, 3600
  %.1 = select i1 %i.bd, i32 %i.be, i32 %spec.select ; 2 uses
  %i.bf = sdiv i32 %.1, 10                        ; 2 uses
  %.neg = mul nsw i32 %i.bf, -10
  %i.bg = add i32 %.neg, %.1                      ; 3 uses
  %i.bh = trunc i32 %i.bf to i16                  ; 4 uses
  %i.bi = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bh) #8
  %i.bj = add i16 %i.bh, 1
  %i.bk = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bj) #8
  %i.bl = add i16 %i.bh, 90
  %i.bm = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bl) #8
  %i.bn = add i16 %i.bh, 91
  %i.bo = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bn) #8
  %i.bp = sub nsw i32 10, %i.bg                   ; 2 uses
  %i.bq = mul nsw i32 %i.bi, %i.bp
  %i.br = mul nsw i32 %i.bk, %i.bg
  %i.bs = add nsw i32 %i.br, %i.bq
  %i.bt = sdiv i32 %i.bs, 10
  %i.bu = ashr i32 %i.bt, 5                       ; 9 uses
  %i.bv = mul nsw i32 %i.bm, %i.bp
  %i.bw = mul nsw i32 %i.bo, %i.bg
  %i.bx = add nsw i32 %i.bw, %i.bv
  %i.by = sdiv i32 %i.bx, 10
  %i.bz = ashr i32 %i.by, 5                       ; 9 uses
  %factor.op.mul = mul i32 %i.bu, %4              ; 2 uses
  %factor.op.mul123 = mul i32 %i.bz, %4           ; 2 uses
  br i1 %.not, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.b
  %or.cond5 = and i1 %i.b, %i.c
  %i.ca = getelementptr i8, ptr %5, i64 4         ; 9 uses
  br i1 %or.cond5, label %.lr.ph127.split.us.preheader, label %.lr.ph127.split

.lr.ph127.split.us.preheader:                     ; preds = %.lr.ph127
  %min.iters.check322 = icmp ult i64 %1, 8
  br i1 %min.iters.check322, label %.lr.ph127.split.us.preheader351, label %vector.scevcheck309

vector.scevcheck309:                              ; preds = %.lr.ph127.split.us.preheader
  %i.cb = add i64 %1, -1                          ; 2 uses
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = icmp eq i64 %i.cc, 4294967295
  %i.ce = icmp ugt i64 %i.cb, 4294967295
  %i.cf = or i1 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph127.split.us.preheader351, label %vector.memcheck323

vector.memcheck323:                               ; preds = %vector.scevcheck309
  %i.cg = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %bound0324 = icmp ult ptr %0, %i.ca
  %bound1325 = icmp ult ptr %5, %i.ci
  %found.conflict326 = and i1 %bound0324, %bound1325
  %13 = getelementptr i8, ptr %0, i64 4
  %14 = getelementptr i8, ptr %0, i64 %i.cg
  %15 = getelementptr i8, ptr %5, i64 8
  %bound0327 = icmp ult ptr %13, %15
  %bound1328 = icmp ult ptr %i.ca, %14
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx330 = or i1 %found.conflict326, %found.conflict329
  br i1 %conflict.rdx330, label %.lr.ph127.split.us.preheader351, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck323
  %n.vec332 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert333 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat334 = shufflevector <4 x i32> %broadcast.splatinsert333, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert335 = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat336 = shufflevector <4 x i32> %broadcast.splatinsert335, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph331
  %index338 = phi i64 [ 0, %vector.ph331 ], [ %index.next347, %vector.body337 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index338 ; 2 uses
  %wide.vec339 = load <8 x i32>, ptr %i.cj, align 4, !tbaa !13 ; 2 uses
  %strided.vec340 = shufflevector <8 x i32> %wide.vec339, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec341 = shufflevector <8 x i32> %wide.vec339, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ck = mul nsw <4 x i32> %strided.vec340, %broadcast.splat334
  %i.cl = mul nsw <4 x i32> %strided.vec341, %broadcast.splat336
  %i.cm = sub nsw <4 x i32> %i.ck, %i.cl
  %i.cn = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !49
  %broadcast.splatinsert342 = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %i.co = mul nsw <4 x i32> %strided.vec340, %broadcast.splat336
  %i.cp = mul nsw <4 x i32> %strided.vec341, %broadcast.splat334
  %i.cq = add nsw <4 x i32> %i.cp, %i.co
  %i.cr = load i32, ptr %i.ca, align 4, !tbaa !16, !alias.scope !50
  %broadcast.splatinsert344 = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %i.cs = shufflevector <4 x i32> %broadcast.splatinsert342, <4 x i32> %broadcast.splatinsert344, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.ct = shufflevector <4 x i32> %i.cm, <4 x i32> %i.cq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cu = ashr <8 x i32> %i.ct, splat (i32 10)
  %interleaved.vec346 = add nsw <8 x i32> %i.cs, %i.cu
  store <8 x i32> %interleaved.vec346, ptr %i.cj, align 4, !tbaa !13
  %index.next347 = add nuw i64 %index338, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next347, %n.vec332
  br i1 %i.cv, label %middle.block348, label %vector.body337, !llvm.loop !30

middle.block348:                                  ; preds = %vector.body337
  %cmp.n349 = icmp eq i64 %1, %n.vec332
  br i1 %cmp.n349, label %.loopexit, label %.lr.ph127.split.us.preheader351

.lr.ph127.split.us.preheader351:                  ; preds = %vector.memcheck323, %vector.scevcheck309, %.lr.ph127.split.us.preheader, %middle.block348
  %indvars.iv145.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %vector.scevcheck309 ], [ 0, %.lr.ph127.split.us.preheader ], [ %n.vec332, %middle.block348 ]
  br label %.lr.ph127.split.us

.lr.ph127.split.us:                               ; preds = %.lr.ph127.split.us.preheader351, %.lr.ph127.split.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.lr.ph127.split.us ], [ %indvars.iv145.ph, %.lr.ph127.split.us.preheader351 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv145 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !15 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !16 ; 2 uses
  %i.da = mul nsw i32 %i.cy, %i.bz
  %i.db = mul nsw i32 %i.cz, %i.bu
  %i.dc = sub nsw i32 %i.da, %i.db
  %i.dd = mul nsw i32 %i.cy, %i.bu
  %i.de = mul nsw i32 %i.cz, %i.bz
  %i.df = add nsw i32 %i.de, %i.dd
  %i.dg = insertelement <2 x i32> poison, i32 %i.dc, i64 0
  %i.dh = insertelement <2 x i32> %i.dg, i32 %i.df, i64 1
  %i.di = ashr <2 x i32> %i.dh, splat (i32 10)
  %i.dj = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.dk = add nsw <2 x i32> %i.dj, %i.di
  store <2 x i32> %i.dk, ptr %i.cw, align 4, !tbaa !13
  %indvars.iv.next146 = add i64 %indvars.iv145, 1 ; 2 uses
  %i.dl = and i64 %indvars.iv.next146, 4294967295
  %i.dm = icmp samesign ugt i64 %1, %i.dl
  br i1 %i.dm, label %.lr.ph127.split.us, label %.loopexit, !llvm.loop !31

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %6, label %.lr.ph127.split.split.us.preheader, label %.lr.ph127.split.split.preheader

.lr.ph127.split.split.preheader:                  ; preds = %.lr.ph127.split
  %min.iters.check228 = icmp ult i64 %1, 12
  br i1 %min.iters.check228, label %.lr.ph127.split.split.preheader354, label %vector.scevcheck215

vector.scevcheck215:                              ; preds = %.lr.ph127.split.split.preheader
  %i.dn = add i64 %1, -1                          ; 2 uses
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = icmp eq i64 %i.do, 4294967295
  %i.dq = icmp ugt i64 %i.dn, 4294967295
  %i.dr = or i1 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph127.split.split.preheader354, label %vector.memcheck229

vector.memcheck229:                               ; preds = %vector.scevcheck215
  %i.ds = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.dt = getelementptr i8, ptr %0, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -4
  %bound0230 = icmp ult ptr %0, %i.ca
  %bound1231 = icmp ult ptr %5, %i.du
  %found.conflict232 = and i1 %bound0230, %bound1231
  %16 = getelementptr i8, ptr %0, i64 4
  %17 = getelementptr i8, ptr %0, i64 %i.ds
  %18 = getelementptr i8, ptr %5, i64 8
  %bound0233 = icmp ult ptr %16, %18
  %bound1234 = icmp ult ptr %i.ca, %17
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %found.conflict232, %found.conflict235
  br i1 %conflict.rdx236, label %.lr.ph127.split.split.preheader354, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck229
  %n.vec238 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert239 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat240 = shufflevector <4 x i32> %broadcast.splatinsert239, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat242 = shufflevector <4 x i32> %broadcast.splatinsert241, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert243 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat244 = shufflevector <4 x i32> %broadcast.splatinsert243, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <4 x i32> poison, i32 %factor.op.mul, i64 0
  %broadcast.splat246 = shufflevector <4 x i32> %broadcast.splatinsert245, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert247 = insertelement <4 x i32> poison, i32 %factor.op.mul123, i64 0
  %broadcast.splat248 = shufflevector <4 x i32> %broadcast.splatinsert247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph237
  %index250 = phi i64 [ 0, %vector.ph237 ], [ %index.next259, %vector.body249 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index250 ; 2 uses
  %wide.vec251 = load <8 x i32>, ptr %i.dv, align 4, !tbaa !13 ; 2 uses
  %strided.vec252 = shufflevector <8 x i32> %wide.vec251, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec253 = shufflevector <8 x i32> %wide.vec251, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dw = mul nsw <4 x i32> %strided.vec252, %broadcast.splat240
  %i.dx = mul nsw <4 x i32> %strided.vec253, %broadcast.splat242
  %i.dy = sub nsw <4 x i32> %i.dw, %i.dx
  %i.dz = mul nsw <4 x i32> %i.dy, %broadcast.splat244
  %i.ea = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !51
  %broadcast.splatinsert254 = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %i.eb = mul <4 x i32> %strided.vec252, %broadcast.splat246
  %i.ec = mul <4 x i32> %strided.vec253, %broadcast.splat248
  %i.ed = add <4 x i32> %i.ec, %i.eb
  %i.ee = load i32, ptr %i.ca, align 4, !tbaa !16, !alias.scope !52
  %broadcast.splatinsert256 = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %i.ef = shufflevector <4 x i32> %broadcast.splatinsert254, <4 x i32> %broadcast.splatinsert256, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.eg = shufflevector <4 x i32> %i.dz, <4 x i32> %i.ed, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.eh = ashr <8 x i32> %i.eg, splat (i32 18)
  %interleaved.vec258 = add nsw <8 x i32> %i.ef, %i.eh
  store <8 x i32> %interleaved.vec258, ptr %i.dv, align 4, !tbaa !13
  %index.next259 = add nuw i64 %index250, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next259, %n.vec238
  br i1 %i.ei, label %middle.block260, label %vector.body249, !llvm.loop !35

middle.block260:                                  ; preds = %vector.body249
  %cmp.n261 = icmp eq i64 %1, %n.vec238
  br i1 %cmp.n261, label %.loopexit, label %.lr.ph127.split.split.preheader354

.lr.ph127.split.split.preheader354:               ; preds = %vector.memcheck229, %vector.scevcheck215, %.lr.ph127.split.split.preheader, %middle.block260
  %indvars.iv137.ph = phi i64 [ 0, %vector.memcheck229 ], [ 0, %vector.scevcheck215 ], [ 0, %.lr.ph127.split.split.preheader ], [ %n.vec238, %middle.block260 ]
  br label %.lr.ph127.split.split

.lr.ph127.split.split.us.preheader:               ; preds = %.lr.ph127.split
  %min.iters.check276 = icmp ult i64 %1, 16
  br i1 %min.iters.check276, label %.lr.ph127.split.split.us.preheader352, label %vector.scevcheck263

vector.scevcheck263:                              ; preds = %.lr.ph127.split.split.us.preheader
  %i.ej = add i64 %1, -1                          ; 2 uses
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = icmp eq i64 %i.ek, 4294967295
  %i.em = icmp ugt i64 %i.ej, 4294967295
  %i.en = or i1 %i.el, %i.em
  br i1 %i.en, label %.lr.ph127.split.split.us.preheader352, label %vector.memcheck277

vector.memcheck277:                               ; preds = %vector.scevcheck263
  %i.eo = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.ep = getelementptr i8, ptr %0, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -4
  %bound0278 = icmp ult ptr %0, %i.ca
  %bound1279 = icmp ult ptr %5, %i.eq
  %found.conflict280 = and i1 %bound0278, %bound1279
  %19 = getelementptr i8, ptr %0, i64 4
  %20 = getelementptr i8, ptr %0, i64 %i.eo
  %21 = getelementptr i8, ptr %5, i64 8
  %bound0281 = icmp ult ptr %19, %21
  %bound1282 = icmp ult ptr %i.ca, %20
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %found.conflict280, %found.conflict283
  br i1 %conflict.rdx284, label %.lr.ph127.split.split.us.preheader352, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck277
  %n.vec286 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert287 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat288 = shufflevector <4 x i32> %broadcast.splatinsert287, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert289 = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat290 = shufflevector <4 x i32> %broadcast.splatinsert289, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert291 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat292 = shufflevector <4 x i32> %broadcast.splatinsert291, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert293 = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat294 = shufflevector <4 x i32> %broadcast.splatinsert293, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = mul <4 x i32> %broadcast.splat288, %broadcast.splat292
  %invariant.op358 = mul <4 x i32> %broadcast.splat290, %broadcast.splat294
  %factor.op.mul360 = mul <4 x i32> %broadcast.splat288, %broadcast.splat294
  %factor.op.mul362 = mul <4 x i32> %broadcast.splat290, %broadcast.splat292
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph285
  %index296 = phi i64 [ 0, %vector.ph285 ], [ %index.next305, %vector.body295 ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index296 ; 2 uses
  %wide.vec297 = load <8 x i32>, ptr %i.er, align 4, !tbaa !13 ; 2 uses
  %strided.vec298 = shufflevector <8 x i32> %wide.vec297, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec299 = shufflevector <8 x i32> %wide.vec297, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %.reass361 = mul <4 x i32> %strided.vec298, %factor.op.mul360
  %.reass363 = mul <4 x i32> %strided.vec299, %factor.op.mul362
  %.reass357 = mul <4 x i32> %strided.vec298, %invariant.op
  %.reass359 = mul <4 x i32> %strided.vec299, %invariant.op358
  %i.es = sub nsw <4 x i32> %.reass357, %.reass359
  %i.et = load i32, ptr %5, align 4, !tbaa !15, !alias.scope !53
  %broadcast.splatinsert300 = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.eu = add nsw <4 x i32> %.reass363, %.reass361
  %i.ev = load i32, ptr %i.ca, align 4, !tbaa !16, !alias.scope !54
  %broadcast.splatinsert302 = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %i.ew = shufflevector <4 x i32> %broadcast.splatinsert300, <4 x i32> %broadcast.splatinsert302, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.ex = shufflevector <4 x i32> %i.es, <4 x i32> %i.eu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ey = ashr <8 x i32> %i.ex, splat (i32 18)
  %interleaved.vec304 = add nsw <8 x i32> %i.ew, %i.ey
  store <8 x i32> %interleaved.vec304, ptr %i.er, align 4, !tbaa !13
  %index.next305 = add nuw i64 %index296, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next305, %n.vec286
  br i1 %i.ez, label %middle.block306, label %vector.body295, !llvm.loop !39

middle.block306:                                  ; preds = %vector.body295
  %cmp.n307 = icmp eq i64 %1, %n.vec286
  br i1 %cmp.n307, label %.loopexit, label %.lr.ph127.split.split.us.preheader352

.lr.ph127.split.split.us.preheader352:            ; preds = %vector.memcheck277, %vector.scevcheck263, %.lr.ph127.split.split.us.preheader, %middle.block306
  %indvars.iv141.ph = phi i64 [ 0, %vector.memcheck277 ], [ 0, %vector.scevcheck263 ], [ 0, %.lr.ph127.split.split.us.preheader ], [ %n.vec286, %middle.block306 ]
  br label %.lr.ph127.split.split.us

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split.split.us.preheader352, %.lr.ph127.split.split.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph127.split.split.us ], [ %indvars.iv141.ph, %.lr.ph127.split.split.us.preheader352 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv141 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !15
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !16
  %i.fe = mul nsw i32 %i.fc, %3                   ; 2 uses
  %i.ff = mul nsw i32 %i.fd, %4                   ; 2 uses
  %i.fg = mul nsw i32 %i.fe, %i.bz
  %i.fh = mul nsw i32 %i.ff, %i.bu
  %i.fi = sub nsw i32 %i.fg, %i.fh
  %i.fj = mul nsw i32 %i.fe, %i.bu
  %i.fk = mul nsw i32 %i.ff, %i.bz
  %i.fl = add nsw i32 %i.fk, %i.fj
  %i.fm = insertelement <2 x i32> poison, i32 %i.fi, i64 0
  %i.fn = insertelement <2 x i32> %i.fm, i32 %i.fl, i64 1
  %i.fo = ashr <2 x i32> %i.fn, splat (i32 18)
  %i.fp = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.fq = add nsw <2 x i32> %i.fp, %i.fo
  store <2 x i32> %i.fq, ptr %i.fa, align 4, !tbaa !13
  %indvars.iv.next142 = add i64 %indvars.iv141, 1 ; 2 uses
  %i.fr = and i64 %indvars.iv.next142, 4294967295
  %i.fs = icmp samesign ugt i64 %1, %i.fr
  br i1 %i.fs, label %.lr.ph127.split.split.us, label %.loopexit, !llvm.loop !40

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split.split.preheader354, %.lr.ph127.split.split
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph127.split.split ], [ %indvars.iv137.ph, %.lr.ph127.split.split.preheader354 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv137 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !15 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !16 ; 2 uses
  %i.fx = mul nsw i32 %i.fu, %i.bz
  %i.fy = mul nsw i32 %i.fw, %i.bu
  %.reass = mul i32 %i.fu, %factor.op.mul
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = mul nsw i32 %i.fz, %3
  %.reass124 = mul i32 %i.fw, %factor.op.mul123
  %i.gb = add i32 %.reass124, %.reass
  %i.gc = insertelement <2 x i32> poison, i32 %i.ga, i64 0
  %i.gd = insertelement <2 x i32> %i.gc, i32 %i.gb, i64 1
  %i.ge = ashr <2 x i32> %i.gd, splat (i32 18)
  %i.gf = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.gg = add nsw <2 x i32> %i.gf, %i.ge
  store <2 x i32> %i.gg, ptr %i.ft, align 4, !tbaa !13
  %indvars.iv.next138 = add i64 %indvars.iv137, 1 ; 2 uses
  %i.gh = and i64 %indvars.iv.next138, 4294967295
  %i.gi = icmp samesign ugt i64 %1, %i.gh
  br i1 %i.gi, label %.lr.ph127.split.split, label %.loopexit, !llvm.loop !41

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
end_hunk_0
