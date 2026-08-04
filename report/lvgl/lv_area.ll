inline.NumInlined: 80
inline.NumDeleted: 1
begin_hunk_0_@lv_area_align:bb.a
bb.k:                                             ; preds = %bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !11
  %i.eo = load i32, ptr %0, align 4, !tbaa !8
  %i.ep = add i32 %i.en, 1
  %i.eq = sub i32 %i.ep, %i.eo
  %i.er = sdiv i32 %i.eq, 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !11
  %i.eu = load i32, ptr %1, align 4, !tbaa !8
  %i.ev = add i32 %i.et, 1
  %i.ew = sub i32 %i.ev, %i.eu
  %.neg73 = sdiv i32 %i.ew, -2
  %i.ex = add nsw i32 %.neg73, %i.er
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !10
  %.neg95 = xor i32 %i.ez, -1
  %.neg94 = add i32 %i.fb, %.neg95
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !11
  %i.fe = load i32, ptr %0, align 4, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.neg90 = add i32 %i.fd, 1
  %i.fg = sub i32 %.neg90, %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !12
  %i.fk = load i32, ptr %i.ff, align 4, !tbaa !11
  %.neg93 = xor i32 %i.fj, -1
  %.neg91 = xor i32 %i.fk, -1
  %i.fl = add i32 %i.fg, %.neg91
  %i.fm = load i32, ptr %i.fi, align 4, !tbaa !10
  %i.fn = load i32, ptr %1, align 4, !tbaa !8
  %i.fo = add i32 %i.fl, %i.fn
  %.neg92 = add i32 %i.fm, %.neg93
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !10
  %i.ft = add i32 %i.fq, 1
  %i.fu = sub i32 %i.ft, %i.fs
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !11
  %i.fx = load i32, ptr %0, align 4, !tbaa !8
  %i.fy = add i32 %i.fw, 1
  %i.fz = sub i32 %i.fy, %i.fx
  %i.ga = sdiv i32 %i.fz, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !11
  %i.gd = load i32, ptr %1, align 4, !tbaa !8
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
  %i.gp = load i32, ptr %0, align 4, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !11
  %i.gs = load i32, ptr %1, align 4, !tbaa !8
  %.neg89 = xor i32 %i.gr, -1
  %.neg88 = add i32 %i.go, 1
  %i.gt = sub i32 %.neg88, %i.gp
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !10
  %i.gy = add i32 %i.gv, 1
  %i.gz = add i32 %i.gt, %.neg89
  %i.ha = add i32 %i.gz, %i.gs
  %i.hb = sub i32 %i.gy, %i.gx
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !11
  %i.he = load i32, ptr %1, align 4, !tbaa !8
  %.neg87 = xor i32 %i.hd, -1
  %.neg86 = add i32 %i.he, %.neg87
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !11
  %i.hh = load i32, ptr %1, align 4, !tbaa !8
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
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !12
  %i.ie = load i32, ptr %i.hw, align 4, !tbaa !11
  %i.if = load i32, ptr %i.ic, align 4, !tbaa !10
  %i.ig = load i32, ptr %1, align 4, !tbaa !8
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
  %i.im = load i32, ptr %0, align 4, !tbaa !8
  %i.in = add i32 %i.il, 1
  %i.io = sub i32 %i.in, %i.im
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !11
  %i.ir = load i32, ptr %0, align 4, !tbaa !8
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
  %i.jk = load i32, ptr %0, align 4, !tbaa !8
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
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jz = add i32 %.0, %3
  %i.ka = add i32 %.070, %4
  %7 = load i32, ptr %5, align 4, !tbaa !10
  %8 = load i32, ptr %0, align 4, !tbaa !8
  %i.kb = load <2 x i32>, ptr %i.jy, align 4, !tbaa !13
  %i.kc = load <2 x i32>, ptr %1, align 4, !tbaa !13
  %9 = add i32 %i.ka, %7                          ; 2 uses
  %10 = add i32 %i.jz, %8                         ; 2 uses
  store i32 %10, ptr %1, align 4, !tbaa !8
  store i32 %9, ptr %6, align 4, !tbaa !10
  %i.kd = insertelement <2 x i32> poison, i32 %10, i64 0
  %11 = insertelement <2 x i32> %i.kd, i32 %9, i64 1
  %i.ke = add <2 x i32> %11, %i.kb
  %i.kf = sub <2 x i32> %i.ke, %i.kc
  store <2 x i32> %i.kf, ptr %i.jy, align 4, !tbaa !13
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
  %scevgep160 = getelementptr i8, ptr %0, i64 4
  %scevgep161 = getelementptr i8, ptr %0, i64 %i.j
  %scevgep162 = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %0, %i.d
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %scevgep160, %scevgep162
  %bound1164 = icmp ult ptr %i.d, %scevgep161
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
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
  %broadcast.splatinsert167 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.o = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert167, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
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
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.scevcheck169

vector.scevcheck169:                              ; preds = %.lr.ph130
  %i.x = add i64 %1, -1                           ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = icmp eq i64 %i.y, 4294967295
  %i.aa = icmp ugt i64 %i.x, 4294967295
  %i.ab = or i1 %i.z, %i.aa
  br i1 %i.ab, label %scalar.ph183.preheader, label %vector.memcheck170

vector.memcheck170:                               ; preds = %vector.scevcheck169
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

vector.ph185:                                     ; preds = %vector.memcheck170
  %n.vec187 = and i64 %1, 8589934590              ; 3 uses
  %broadcast.splatinsert188 = insertelement <2 x i32> poison, i32 %3, i64 0
  %broadcast.splatinsert190 = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.ae = shufflevector <2 x i32> %broadcast.splatinsert188, <2 x i32> %broadcast.splatinsert190, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph185
  %index193 = phi i64 [ 0, %vector.ph185 ], [ %index.next202, %vector.body192 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index193 ; 2 uses
  %wide.vec194 = load <4 x i32>, ptr %i.af, align 4, !tbaa !13
  %i.ag = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !27
  %broadcast.splatinsert197 = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.ah = load i32, ptr %i.w, align 4, !tbaa !16, !alias.scope !30
  %broadcast.splatinsert199 = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %i.ai = mul nsw <4 x i32> %wide.vec194, %i.ae
  %i.aj = ashr <4 x i32> %i.ai, splat (i32 8)
  %i.ak = shufflevector <2 x i32> %broadcast.splatinsert197, <2 x i32> %broadcast.splatinsert199, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec201 = add nsw <4 x i32> %i.aj, %i.ak
  store <4 x i32> %interleaved.vec201, ptr %i.af, align 4, !tbaa !13
  %index.next202 = add nuw i64 %index193, 2       ; 2 uses
  %i.al = icmp eq i64 %index.next202, %n.vec187
  br i1 %i.al, label %middle.block203, label %vector.body192, !llvm.loop !32

middle.block203:                                  ; preds = %vector.body192
  %cmp.n204 = icmp eq i64 %1, %n.vec187
  br i1 %cmp.n204, label %.loopexit, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %vector.memcheck170, %vector.scevcheck169, %.lr.ph130, %middle.block203
  %indvars.iv149.ph = phi i64 [ 0, %vector.memcheck170 ], [ 0, %vector.scevcheck169 ], [ 0, %.lr.ph130 ], [ %n.vec187, %middle.block203 ]
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
  %.1114 = select i1 %i.bb, i32 %i.bc, i32 %spec.select ; 2 uses
  %i.bd = sdiv i32 %.1114, 10                     ; 2 uses
  %.neg = mul nsw i32 %i.bd, -10
  %i.be = add i32 %.neg, %.1114                   ; 3 uses
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
  %i.bp = mul nsw i32 %i.bi, %i.be
  %i.bq = add nsw i32 %i.bp, %i.bo
end_hunk_0
