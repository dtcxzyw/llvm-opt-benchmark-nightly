inline.NumInlined: 80
inline.NumDeleted: 1
begin_hunk_0_@lv_area_align:bb.a

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
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kb = add i32 %.0, %3
  %i.kc = add i32 %.070, %4
  %i.kd = load i32, ptr %i.jy, align 4, !tbaa !10
  %i.ke = load i32, ptr %0, align 4, !tbaa !8
  %i.kf = load <2 x i32>, ptr %i.jz, align 4, !tbaa !13
  %i.kg = load <2 x i32>, ptr %1, align 4, !tbaa !13
  %i.kh = add i32 %i.kc, %i.kd                    ; 2 uses
  %i.ki = add i32 %i.kb, %i.ke                    ; 2 uses
  store i32 %i.ki, ptr %1, align 4, !tbaa !8
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
  %bound0164.a = icmp ult ptr %scevgep161, %scevgep163
  %bound1165.a = icmp ult ptr %i.d, %scevgep162
  %found.conflict166.a = and i1 %bound0164.a, %bound1165.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict166.a
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
  %7 = and i64 %indvars.iv.next, 4294967295
  %i.u = icmp ugt i64 %1, %7
  br i1 %i.u, label %scalar.ph, label %._crit_edge.thread, !llvm.loop !26

._crit_edge:                                      ; preds = %.preheader121
  br i1 %i.a, label %.loopexit, label %bb.b

._crit_edge.thread:                               ; preds = %scalar.ph, %middle.block
  br i1 %i.a, label %.lr.ph130, label %bb.b

.lr.ph130:                                        ; preds = %._crit_edge.thread
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4
  %min.iters.check185 = icmp ult i64 %1, 12
  br i1 %min.iters.check185, label %scalar.ph184.preheader, label %vector.scevcheck170

vector.scevcheck170:                              ; preds = %.lr.ph130
  %i.w = add i64 %1, -1                           ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 4294967295
  %i.z = icmp ugt i64 %i.w, 4294967295
  %i.aa = or i1 %i.y, %i.z
  br i1 %i.aa, label %scalar.ph184.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %vector.scevcheck170
  %i.ab = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %scevgep173 = getelementptr i8, ptr %i.ac, i64 -4
  %scevgep174 = getelementptr i8, ptr %0, i64 4
  %scevgep175 = getelementptr i8, ptr %0, i64 %i.ab
  %scevgep176 = getelementptr i8, ptr %5, i64 8
  %bound0177 = icmp ult ptr %0, %i.d
  %bound1178 = icmp ult ptr %5, %scevgep173
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0180 = icmp ult ptr %scevgep174, %scevgep176
  %bound1181 = icmp ult ptr %i.d, %scevgep175
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %found.conflict179, %found.conflict182
  br i1 %conflict.rdx183, label %scalar.ph184.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %vector.memcheck171
  %n.vec187 = and i64 %1, 8589934590              ; 3 uses
  %broadcast.splatinsert188 = insertelement <2 x i32> poison, i32 %3, i64 0
  %broadcast.splatinsert190 = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.ad = shufflevector <2 x i32> %broadcast.splatinsert188, <2 x i32> %broadcast.splatinsert190, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph186
  %index193 = phi i64 [ 0, %vector.ph186 ], [ %index.next202, %vector.body192 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index193 ; 2 uses
  %wide.vec194 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !13
  %i.af = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !27
  %broadcast.splatinsert197 = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.ag = load i32, ptr %i.v, align 4, !tbaa !16, !alias.scope !30
  %broadcast.splatinsert199 = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.ah = mul nsw <4 x i32> %wide.vec194, %i.ad
  %i.ai = ashr <4 x i32> %i.ah, splat (i32 8)
  %i.aj = shufflevector <2 x i32> %broadcast.splatinsert197, <2 x i32> %broadcast.splatinsert199, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec201 = add nsw <4 x i32> %i.ai, %i.aj
  store <4 x i32> %interleaved.vec201, ptr %i.ae, align 4, !tbaa !13
  %index.next202 = add nuw i64 %index193, 2       ; 2 uses
  %i.ak = icmp eq i64 %index.next202, %n.vec187
  br i1 %i.ak, label %middle.block203, label %vector.body192, !llvm.loop !32

middle.block203:                                  ; preds = %vector.body192
  %cmp.n204 = icmp eq i64 %1, %n.vec187
  br i1 %cmp.n204, label %.loopexit, label %scalar.ph184.preheader

scalar.ph184.preheader:                           ; preds = %vector.memcheck171, %vector.scevcheck170, %.lr.ph130, %middle.block203
  %indvars.iv149.ph = phi i64 [ 0, %vector.memcheck171 ], [ 0, %vector.scevcheck170 ], [ 0, %.lr.ph130 ], [ %n.vec187, %middle.block203 ]
  br label %scalar.ph184

scalar.ph184:                                     ; preds = %scalar.ph184.preheader, %scalar.ph184
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph184 ], [ %indvars.iv149.ph, %scalar.ph184.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv149 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !14
  %i.ap = mul nsw i32 %i.an, %4
  %i.aq = mul nsw i32 %i.ao, %3
  %i.ar = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %i.as = insertelement <2 x i32> %i.ar, i32 %i.ap, i64 1
  %i.at = ashr <2 x i32> %i.as, splat (i32 8)
  %i.au = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.av = add nsw <2 x i32> %i.at, %i.au
  store <2 x i32> %i.av, ptr %i.al, align 4, !tbaa !13
  %indvars.iv.next150 = add i64 %indvars.iv149, 1 ; 2 uses
  %8 = and i64 %indvars.iv.next150, 4294967295
  %i.aw = icmp samesign ugt i64 %1, %8
  br i1 %i.aw, label %scalar.ph184, label %.loopexit, !llvm.loop !33

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ax = icmp sgt i32 %2, 3600
  %i.ay = add nsw i32 %2, -3600
  %spec.select = select i1 %i.ax, i32 %i.ay, i32 %2 ; 3 uses
  %i.az = icmp slt i32 %spec.select, 0
  %i.ba = add nsw i32 %spec.select, 3600
  %.1 = select i1 %i.az, i32 %i.ba, i32 %spec.select ; 2 uses
  %i.bb = sdiv i32 %.1, 10                        ; 2 uses
  %.neg = mul nsw i32 %i.bb, -10
  %i.bc = add i32 %.neg, %.1                      ; 3 uses
  %i.bd = trunc i32 %i.bb to i16                  ; 4 uses
  %i.be = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bd) #8
  %i.bf = add i16 %i.bd, 1
  %i.bg = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bf) #8
  %i.bh = add i16 %i.bd, 90
  %i.bi = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bh) #8
  %i.bj = add i16 %i.bd, 91
  %i.bk = tail call i32 @lv_trigo_sin(i16 noundef signext %i.bj) #8
  %i.bl = sub nsw i32 10, %i.bc                   ; 2 uses
  %i.bm = mul nsw i32 %i.be, %i.bl
  %i.bn = mul nsw i32 %i.bg, %i.bc
  %i.bo = add nsw i32 %i.bn, %i.bm
  %i.bp = sdiv i32 %i.bo, 10
  %i.bq = ashr i32 %i.bp, 5                       ; 9 uses
  %i.br = mul nsw i32 %i.bi, %i.bl
  %i.bs = mul nsw i32 %i.bk, %i.bc
  %i.bt = add nsw i32 %i.bs, %i.br
  %i.bu = sdiv i32 %i.bt, 10
  %i.bv = ashr i32 %i.bu, 5                       ; 9 uses
  %factor.op.mul = mul i32 %i.bq, %4              ; 2 uses
  %factor.op.mul123 = mul i32 %i.bv, %4           ; 2 uses
  br i1 %.not, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.b
  %or.cond5 = and i1 %i.b, %i.c
  %i.bw = getelementptr i8, ptr %5, i64 4         ; 9 uses
  br i1 %or.cond5, label %.lr.ph127.split.us.preheader, label %.lr.ph127.split

.lr.ph127.split.us.preheader:                     ; preds = %.lr.ph127
  %min.iters.check300 = icmp ult i64 %1, 8
  br i1 %min.iters.check300, label %.lr.ph127.split.us.preheader321, label %vector.scevcheck286

vector.scevcheck286:                              ; preds = %.lr.ph127.split.us.preheader
  %i.bx = add i64 %1, -1                          ; 2 uses
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = icmp eq i64 %i.by, 4294967295
  %i.ca = icmp ugt i64 %i.bx, 4294967295
  %i.cb = or i1 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph127.split.us.preheader321, label %vector.memcheck287

vector.memcheck287:                               ; preds = %vector.scevcheck286
  %i.cc = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 %i.cc
  %scevgep288 = getelementptr i8, ptr %i.cd, i64 -4
  %scevgep289 = getelementptr i8, ptr %0, i64 4
  %scevgep290 = getelementptr i8, ptr %0, i64 %i.cc
  %scevgep291 = getelementptr i8, ptr %5, i64 8
  %bound0292 = icmp ult ptr %0, %i.bw
  %bound1293 = icmp ult ptr %5, %scevgep288
  %found.conflict294 = and i1 %bound0292, %bound1293
  %bound0295 = icmp ult ptr %scevgep289, %scevgep291
  %bound1296 = icmp ult ptr %i.bw, %scevgep290
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx298 = or i1 %found.conflict294, %found.conflict297
  br i1 %conflict.rdx298, label %.lr.ph127.split.us.preheader321, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck287
  %n.vec302 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert303 = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat304 = shufflevector <4 x i32> %broadcast.splatinsert303, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert305 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat306 = shufflevector <4 x i32> %broadcast.splatinsert305, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph301
  %index308 = phi i64 [ 0, %vector.ph301 ], [ %index.next317, %vector.body307 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index308 ; 2 uses
  %wide.vec309 = load <8 x i32>, ptr %i.ce, align 4, !tbaa !13 ; 2 uses
  %strided.vec310 = shufflevector <8 x i32> %wide.vec309, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec311 = shufflevector <8 x i32> %wide.vec309, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.cf = mul nsw <4 x i32> %strided.vec310, %broadcast.splat304
  %i.cg = mul nsw <4 x i32> %strided.vec311, %broadcast.splat306
  %i.ch = sub nsw <4 x i32> %i.cf, %i.cg
  %i.ci = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !34
  %broadcast.splatinsert312 = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.cj = mul nsw <4 x i32> %strided.vec310, %broadcast.splat306
  %i.ck = mul nsw <4 x i32> %strided.vec311, %broadcast.splat304
  %i.cl = add nsw <4 x i32> %i.ck, %i.cj
  %i.cm = load i32, ptr %i.bw, align 4, !tbaa !16, !alias.scope !37
  %broadcast.splatinsert314 = insertelement <4 x i32> poison, i32 %i.cm, i64 0
  %i.cn = shufflevector <4 x i32> %broadcast.splatinsert312, <4 x i32> %broadcast.splatinsert314, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.co = shufflevector <4 x i32> %i.ch, <4 x i32> %i.cl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cp = ashr <8 x i32> %i.co, splat (i32 10)
  %interleaved.vec316 = add nsw <8 x i32> %i.cn, %i.cp
  store <8 x i32> %interleaved.vec316, ptr %i.ce, align 4, !tbaa !13
  %index.next317 = add nuw i64 %index308, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next317, %n.vec302
  br i1 %i.cq, label %middle.block318, label %vector.body307, !llvm.loop !39

middle.block318:                                  ; preds = %vector.body307
  %cmp.n319 = icmp eq i64 %1, %n.vec302
  br i1 %cmp.n319, label %.loopexit, label %.lr.ph127.split.us.preheader321

.lr.ph127.split.us.preheader321:                  ; preds = %vector.memcheck287, %vector.scevcheck286, %.lr.ph127.split.us.preheader, %middle.block318
  %indvars.iv145.ph = phi i64 [ 0, %vector.memcheck287 ], [ 0, %vector.scevcheck286 ], [ 0, %.lr.ph127.split.us.preheader ], [ %n.vec302, %middle.block318 ]
  br label %.lr.ph127.split.us

.lr.ph127.split.us:                               ; preds = %.lr.ph127.split.us.preheader321, %.lr.ph127.split.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.lr.ph127.split.us ], [ %indvars.iv145.ph, %.lr.ph127.split.us.preheader321 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv145 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !16 ; 2 uses
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !14 ; 2 uses
  %i.cv = mul nsw i32 %i.cu, %i.bq
  %i.cw = mul nsw i32 %i.ct, %i.bq
  %i.cx = mul nsw i32 %i.ct, %i.bv
  %i.cy = mul nsw i32 %i.cu, %i.bv
  %i.cz = add nsw i32 %i.cx, %i.cv
  %i.da = sub nsw i32 %i.cy, %i.cw
  %i.db = insertelement <2 x i32> poison, i32 %i.da, i64 0
  %i.dc = insertelement <2 x i32> %i.db, i32 %i.cz, i64 1
  %i.dd = ashr <2 x i32> %i.dc, splat (i32 10)
  %i.de = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.df = add nsw <2 x i32> %i.de, %i.dd
  store <2 x i32> %i.df, ptr %i.cr, align 4, !tbaa !13
  %indvars.iv.next146 = add i64 %indvars.iv145, 1 ; 2 uses
  %9 = and i64 %indvars.iv.next146, 4294967295
  %i.dg = icmp samesign ugt i64 %1, %9
  br i1 %i.dg, label %.lr.ph127.split.us, label %.loopexit, !llvm.loop !40

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %6, label %.lr.ph127.split.split.us.preheader, label %.lr.ph127.split.split.preheader

.lr.ph127.split.split.preheader:                  ; preds = %.lr.ph127.split
  %min.iters.check220 = icmp ult i64 %1, 12
  br i1 %min.iters.check220, label %.lr.ph127.split.split.preheader324, label %vector.scevcheck206

vector.scevcheck206:                              ; preds = %.lr.ph127.split.split.preheader
  %i.dh = add i64 %1, -1                          ; 2 uses
  %i.di = and i64 %i.dh, 4294967295
  %i.dj = icmp eq i64 %i.di, 4294967295
  %i.dk = icmp ugt i64 %i.dh, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph127.split.split.preheader324, label %vector.memcheck207

vector.memcheck207:                               ; preds = %vector.scevcheck206
  %i.dm = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.dn = getelementptr i8, ptr %0, i64 %i.dm
  %scevgep208 = getelementptr i8, ptr %i.dn, i64 -4
  %scevgep209 = getelementptr i8, ptr %0, i64 4
  %scevgep210 = getelementptr i8, ptr %0, i64 %i.dm
  %scevgep211 = getelementptr i8, ptr %5, i64 8
  %bound0212 = icmp ult ptr %0, %i.bw
  %bound1213 = icmp ult ptr %5, %scevgep208
  %found.conflict214 = and i1 %bound0212, %bound1213
  %bound0215 = icmp ult ptr %scevgep209, %scevgep211
  %bound1216 = icmp ult ptr %i.bw, %scevgep210
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %found.conflict214, %found.conflict217
  br i1 %conflict.rdx218, label %.lr.ph127.split.split.preheader324, label %vector.ph221

vector.ph221:                                     ; preds = %vector.memcheck207
  %n.vec222 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert223.a = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat224 = shufflevector <4 x i32> %broadcast.splatinsert223.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert225.a = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat226 = shufflevector <4 x i32> %broadcast.splatinsert225.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat228 = shufflevector <4 x i32> %broadcast.splatinsert227, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <4 x i32> poison, i32 %factor.op.mul, i64 0
  %broadcast.splat230 = shufflevector <4 x i32> %broadcast.splatinsert229, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <4 x i32> poison, i32 %factor.op.mul123, i64 0
  %broadcast.splat232 = shufflevector <4 x i32> %broadcast.splatinsert231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph221
  %index234 = phi i64 [ 0, %vector.ph221 ], [ %index.next243, %vector.body233 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index234 ; 2 uses
  %wide.vec235 = load <8 x i32>, ptr %i.do, align 4, !tbaa !13 ; 2 uses
  %strided.vec236 = shufflevector <8 x i32> %wide.vec235, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec237 = shufflevector <8 x i32> %wide.vec235, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dp = mul nsw <4 x i32> %strided.vec236, %broadcast.splat224
  %i.dq = mul nsw <4 x i32> %strided.vec237, %broadcast.splat226
  %i.dr = sub nsw <4 x i32> %i.dp, %i.dq
  %i.ds = mul nsw <4 x i32> %i.dr, %broadcast.splat228
  %i.dt = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !41
  %broadcast.splatinsert238 = insertelement <4 x i32> poison, i32 %i.dt, i64 0
  %i.du = mul <4 x i32> %strided.vec236, %broadcast.splat230
  %i.dv = mul <4 x i32> %strided.vec237, %broadcast.splat232
  %i.dw = add <4 x i32> %i.dv, %i.du
  %i.dx = load i32, ptr %i.bw, align 4, !tbaa !16, !alias.scope !44
  %broadcast.splatinsert240 = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %i.dy = shufflevector <4 x i32> %broadcast.splatinsert238, <4 x i32> %broadcast.splatinsert240, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.dz = shufflevector <4 x i32> %i.ds, <4 x i32> %i.dw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ea = ashr <8 x i32> %i.dz, splat (i32 18)
  %interleaved.vec242 = add nsw <8 x i32> %i.dy, %i.ea
  store <8 x i32> %interleaved.vec242, ptr %i.do, align 4, !tbaa !13
  %index.next243 = add nuw i64 %index234, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next243, %n.vec222
  br i1 %i.eb, label %middle.block244, label %vector.body233, !llvm.loop !46

middle.block244:                                  ; preds = %vector.body233
  %cmp.n245 = icmp eq i64 %1, %n.vec222
  br i1 %cmp.n245, label %.loopexit, label %.lr.ph127.split.split.preheader324

.lr.ph127.split.split.preheader324:               ; preds = %vector.memcheck207, %vector.scevcheck206, %.lr.ph127.split.split.preheader, %middle.block244
  %indvars.iv137.ph = phi i64 [ 0, %vector.memcheck207 ], [ 0, %vector.scevcheck206 ], [ 0, %.lr.ph127.split.split.preheader ], [ %n.vec222, %middle.block244 ]
  br label %.lr.ph127.split.split

.lr.ph127.split.split.us.preheader:               ; preds = %.lr.ph127.split
  %min.iters.check261 = icmp ult i64 %1, 16
  br i1 %min.iters.check261, label %.lr.ph127.split.split.us.preheader322, label %vector.scevcheck247

vector.scevcheck247:                              ; preds = %.lr.ph127.split.split.us.preheader
  %10 = add i64 %1, -1                            ; 2 uses
  %11 = and i64 %10, 4294967295
  %i.ec = icmp eq i64 %11, 4294967295
  %12 = icmp ugt i64 %10, 4294967295
  %13 = or i1 %i.ec, %12
  br i1 %13, label %.lr.ph127.split.split.us.preheader322, label %vector.memcheck248

vector.memcheck248:                               ; preds = %vector.scevcheck247
  %14 = shl nuw nsw i64 %1, 3                     ; 2 uses
  %15 = getelementptr i8, ptr %0, i64 %14
  %scevgep249 = getelementptr i8, ptr %15, i64 -4
  %scevgep250 = getelementptr i8, ptr %0, i64 4
  %scevgep251 = getelementptr i8, ptr %0, i64 %14
  %scevgep252 = getelementptr i8, ptr %5, i64 8
  %bound0253 = icmp ult ptr %0, %i.bw
  %bound1254 = icmp ult ptr %5, %scevgep249
  %found.conflict255 = and i1 %bound0253, %bound1254
  %bound0256 = icmp ult ptr %scevgep250, %scevgep252
  %bound1257 = icmp ult ptr %i.bw, %scevgep251
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %found.conflict255, %found.conflict258
  br i1 %conflict.rdx259, label %.lr.ph127.split.split.us.preheader322, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck248
  %n.vec263 = and i64 %1, 8589934588              ; 3 uses
  %broadcast.splatinsert264 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat265 = shufflevector <4 x i32> %broadcast.splatinsert264, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert266 = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat267 = shufflevector <4 x i32> %broadcast.splatinsert266, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert268 = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat269 = shufflevector <4 x i32> %broadcast.splatinsert268, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert270 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat271 = shufflevector <4 x i32> %broadcast.splatinsert270, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = mul <4 x i32> %broadcast.splat265, %broadcast.splat269
  %invariant.op328 = mul <4 x i32> %broadcast.splat267, %broadcast.splat271
  %factor.op.mul330 = mul <4 x i32> %broadcast.splat265, %broadcast.splat271
  %factor.op.mul332 = mul <4 x i32> %broadcast.splat267, %broadcast.splat269
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph262
  %index273 = phi i64 [ 0, %vector.ph262 ], [ %index.next282, %vector.body272 ] ; 2 uses
  %16 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index273 ; 2 uses
  %wide.vec274 = load <8 x i32>, ptr %16, align 4, !tbaa !13 ; 2 uses
  %strided.vec275 = shufflevector <8 x i32> %wide.vec274, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec276 = shufflevector <8 x i32> %wide.vec274, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %.reass331 = mul <4 x i32> %strided.vec275, %factor.op.mul330
  %.reass333 = mul <4 x i32> %strided.vec276, %factor.op.mul332
  %.reass327 = mul <4 x i32> %strided.vec275, %invariant.op
  %.reass329 = mul <4 x i32> %strided.vec276, %invariant.op328
  %17 = sub nsw <4 x i32> %.reass327, %.reass329
  %18 = load i32, ptr %5, align 4, !tbaa !14, !alias.scope !47
  %broadcast.splatinsert277 = insertelement <4 x i32> poison, i32 %18, i64 0
  %19 = add nsw <4 x i32> %.reass333, %.reass331
  %20 = load i32, ptr %i.bw, align 4, !tbaa !16, !alias.scope !50
  %broadcast.splatinsert279 = insertelement <4 x i32> poison, i32 %20, i64 0
  %21 = shufflevector <4 x i32> %broadcast.splatinsert277, <4 x i32> %broadcast.splatinsert279, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %22 = shufflevector <4 x i32> %17, <4 x i32> %19, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %23 = ashr <8 x i32> %22, splat (i32 18)
  %interleaved.vec281 = add nsw <8 x i32> %21, %23
  store <8 x i32> %interleaved.vec281, ptr %16, align 4, !tbaa !13
  %index.next282 = add nuw i64 %index273, 4       ; 2 uses
  %24 = icmp eq i64 %index.next282, %n.vec263
  br i1 %24, label %middle.block283, label %vector.body272, !llvm.loop !52

middle.block283:                                  ; preds = %vector.body272
  %cmp.n284 = icmp eq i64 %1, %n.vec263
  br i1 %cmp.n284, label %.loopexit, label %.lr.ph127.split.split.us.preheader322

.lr.ph127.split.split.us.preheader322:            ; preds = %vector.memcheck248, %vector.scevcheck247, %.lr.ph127.split.split.us.preheader, %middle.block283
  %indvars.iv141.ph = phi i64 [ 0, %vector.memcheck248 ], [ 0, %vector.scevcheck247 ], [ 0, %.lr.ph127.split.split.us.preheader ], [ %n.vec263, %middle.block283 ]
  br label %.lr.ph127.split.split.us

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split.split.us.preheader322, %.lr.ph127.split.split.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph127.split.split.us ], [ %indvars.iv141.ph, %.lr.ph127.split.split.us.preheader322 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv141 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !16
  %i.eg = load i32, ptr %i.ed, align 4, !tbaa !14
  %i.eh = mul nsw i32 %i.ef, %4                   ; 2 uses
  %i.ei = mul nsw i32 %i.eg, %3                   ; 2 uses
  %i.ej = mul nsw i32 %i.ei, %i.bq
  %i.ek = mul nsw i32 %i.eh, %i.bq
  %i.el = mul nsw i32 %i.eh, %i.bv
  %i.em = mul nsw i32 %i.ei, %i.bv
  %i.en = add nsw i32 %i.el, %i.ej
  %i.eo = sub nsw i32 %i.em, %i.ek
  %i.ep = insertelement <2 x i32> poison, i32 %i.eo, i64 0
  %i.eq = insertelement <2 x i32> %i.ep, i32 %i.en, i64 1
  %i.er = ashr <2 x i32> %i.eq, splat (i32 18)
  %i.es = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.et = add nsw <2 x i32> %i.es, %i.er
  store <2 x i32> %i.et, ptr %i.ed, align 4, !tbaa !13
  %indvars.iv.next142 = add i64 %indvars.iv141, 1 ; 2 uses
  %25 = and i64 %indvars.iv.next142, 4294967295
  %i.eu = icmp samesign ugt i64 %1, %25
  br i1 %i.eu, label %.lr.ph127.split.split.us, label %.loopexit, !llvm.loop !53

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split.split.preheader324, %.lr.ph127.split.split
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph127.split.split ], [ %indvars.iv137.ph, %.lr.ph127.split.split.preheader324 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv137 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !16 ; 2 uses
  %i.ez = mul nsw i32 %i.ew, %i.bv
  %i.fa = mul nsw i32 %i.ey, %i.bq
  %.reass = mul i32 %i.ew, %factor.op.mul
  %.reass124 = mul i32 %i.ey, %factor.op.mul123
  %i.fb = sub nsw i32 %i.ez, %i.fa
  %i.fc = add i32 %.reass124, %.reass
  %i.fd = mul nsw i32 %i.fb, %3
  %i.fe = insertelement <2 x i32> poison, i32 %i.fd, i64 0
  %i.ff = insertelement <2 x i32> %i.fe, i32 %i.fc, i64 1
  %i.fg = ashr <2 x i32> %i.ff, splat (i32 18)
  %i.fh = load <2 x i32>, ptr %5, align 4, !tbaa !13
  %i.fi = add nsw <2 x i32> %i.fh, %i.fg
  store <2 x i32> %i.fi, ptr %i.ev, align 4, !tbaa !13
  %indvars.iv.next138 = add i64 %indvars.iv137, 1 ; 2 uses
  %26 = and i64 %indvars.iv.next138, 4294967295
  %i.fj = icmp samesign ugt i64 %1, %26
  br i1 %i.fj, label %.lr.ph127.split.split, label %.loopexit, !llvm.loop !54

.loopexit:                                        ; preds = %scalar.ph184, %.lr.ph127.split.split, %.lr.ph127.split.split.us, %.lr.ph127.split.us, %middle.block203, %middle.block244, %middle.block283, %middle.block318, %._crit_edge, %bb.b, %bb.a
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
