inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0_@prepare_for_pass:bb.a
._crit_edge.i86:                                  ; preds = %scalar.ph129, %middle.block139, %bb.y
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.hj = load <2 x i32>, ptr %i.hh, align 4, !tbaa !3
  store <2 x i32> %i.hj, ptr %i.hi, align 4, !tbaa !3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !56
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !106
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !57
  br label %.sink.split.i87

bb.z:                                             ; preds = %bb.x
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !51 ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, 4
  br i1 %i.hr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hs = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  store i32 27, ptr %i.ht, align 8, !tbaa !39
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 44
  store i32 %i.hq, ptr %i.hu, align 4, !tbaa !44
  %i.hv = load ptr, ptr %0, align 8, !tbaa !38
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  store i32 4, ptr %i.hw, align 4, !tbaa !44
  %i.hx = load ptr, ptr %0, align 8, !tbaa !38
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !45
  tail call void %i.hy(ptr noundef nonnull %0) #8, !inline_history !107
  %.pre.i101 = load i32, ptr %i.hp, align 4, !tbaa !51
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hz = phi i32 [ %.pre.i101, %bb.aa ], [ %i.hq, %bb.z ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 %i.hz, ptr %i.ia, align 8, !tbaa !101
  %i.ib = icmp sgt i32 %i.hz, 0
  br i1 %i.ib, label %.lr.ph47.i96, label %._crit_edge48.i94

.lr.ph47.i96:                                     ; preds = %bb.ab
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !67 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %wide.trip.count53.i97 = zext nneg i32 %i.hz to i64 ; 3 uses
  %min.iters.check143 = icmp ult i32 %i.hz, 4
  br i1 %min.iters.check143, label %scalar.ph142.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph47.i96
  %n.vec146 = and i64 %wide.trip.count53.i97, 2147483644 ; 3 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next151, %vector.body147 ] ; 2 uses
  %vec.ind149 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph144 ], [ %vec.ind.next152, %vector.body147 ] ; 3 uses
  %step.add150 = add nuw <2 x i64> %vec.ind149, splat (i64 2)
  %i.if = getelementptr inbounds nuw [96 x i8], ptr %i.id, <2 x i64> %vec.ind149
  %i.ig = getelementptr inbounds nuw [96 x i8], ptr %i.id, <2 x i64> %step.add150
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %index148 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <2 x ptr> %i.if, ptr %i.ih, align 8, !tbaa !95
  store <2 x ptr> %i.ig, ptr %i.ii, align 8, !tbaa !95
  %index.next151 = add nuw i64 %index148, 4       ; 2 uses
  %vec.ind.next152 = add nuw <2 x i64> %vec.ind149, splat (i64 4)
  %i.ij = icmp eq i64 %index.next151, %n.vec146
  br i1 %i.ij, label %middle.block153, label %vector.body147, !llvm.loop !141

middle.block153:                                  ; preds = %vector.body147
  %cmp.n154 = icmp eq i64 %n.vec146, %wide.trip.count53.i97
  br i1 %cmp.n154, label %._crit_edge48.i94, label %scalar.ph142.preheader

scalar.ph142.preheader:                           ; preds = %.lr.ph47.i96, %middle.block153
  %indvars.iv50.i98.ph = phi i64 [ 0, %.lr.ph47.i96 ], [ %n.vec146, %middle.block153 ]
  br label %scalar.ph142

scalar.ph142:                                     ; preds = %scalar.ph142.preheader, %scalar.ph142
  %indvars.iv50.i98 = phi i64 [ %indvars.iv.next51.i99, %scalar.ph142 ], [ %indvars.iv50.i98.ph, %scalar.ph142.preheader ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [96 x i8], ptr %i.id, i64 %indvars.iv50.i98
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv50.i98
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !95
  %indvars.iv.next51.i99 = add nuw nsw i64 %indvars.iv50.i98, 1 ; 2 uses
  %exitcond54.not.i100 = icmp eq i64 %indvars.iv.next51.i99, %wide.trip.count53.i97
  br i1 %exitcond54.not.i100, label %._crit_edge48.i94, label %scalar.ph142, !llvm.loop !142

._crit_edge48.i94:                                ; preds = %scalar.ph142, %middle.block153, %bb.ab
  %i.im = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = load i32, ptr %i.in, align 8, !tbaa !26
  %.not43.i95 = icmp eq i32 %i.io, 0
  br i1 %.not43.i95, label %bb.ac, label %select_scan_parameters.exit102

bb.ac:                                            ; preds = %._crit_edge48.i94
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 0, ptr %i.ip, align 4, !tbaa !110
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 63, ptr %i.iq, align 8, !tbaa !111
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 0, ptr %i.ir, align 4, !tbaa !106
  br label %.sink.split.i87

.sink.split.i87:                                  ; preds = %bb.ac, %._crit_edge.i86
  %.sink.i88 = phi i32 [ 0, %bb.ac ], [ %i.ho, %._crit_edge.i86 ]
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %.sink.i88, ptr %i.is, align 8, !tbaa !112
  br label %select_scan_parameters.exit102

select_scan_parameters.exit102:                   ; preds = %._crit_edge48.i94, %.sink.split.i87
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0)
  br label %bb.ad

bb.ad:                                            ; preds = %select_scan_parameters.exit102, %bb.w
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !125
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !126
  tail call void %i.iv(ptr noundef nonnull %0, i32 noundef 0) #8
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !128
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !129
  tail call void %i.iy(ptr noundef nonnull %0, i32 noundef 2) #8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !97
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !143
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !144
  tail call void %i.jf(ptr noundef nonnull %0) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !143
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !146
  tail call void %i.jj(ptr noundef nonnull %0) #8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.jk, align 8, !tbaa !134
  br label %bb.ah

bb.ag:                                            ; preds = %bb.a
  %i.jl = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 40
  store i32 49, ptr %i.jm, align 8, !tbaa !39
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !45
  tail call void %i.jn(ptr noundef nonnull %0) #8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.j, %bb.k, %bb.ag, %bb.af, %bb.u
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !98 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !99 ; 2 uses
  %i.js = add nsw i32 %i.jr, -1
  %i.jt = icmp eq i32 %i.jp, %i.js
  %i.ju = zext i1 %i.jt to i32
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !35
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !147 ; 3 uses
  %.not66 = icmp eq ptr %i.jx, null
  br i1 %.not66, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  store i32 %i.jp, ptr %i.jy, align 8, !tbaa !148
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 28
  store i32 %i.jr, ptr %i.jz, align 4, !tbaa !150
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass_startup(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !144
  tail call void %i.g(ptr noundef %0) #8
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146
  tail call void %i.j(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_master(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  tail call void %i.f(ptr noundef %0) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !96
  switch i32 %i.h, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = load i32, ptr %i.i, align 8, !tbaa !94
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %1, label %bb.g

1:                                                ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %3 = load i32, ptr %2, align 4, !tbaa !97
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !97
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store i32 2, ptr %i.g, align 8, !tbaa !96
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = load i32, ptr %i.k, align 8, !tbaa !94
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.g, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !97
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !97
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %1, %bb.f, %bb.c, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !98
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !98
  ret void
}

declare void @jpeg_default_colorspace(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @per_scan_setup(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101  ; 3 uses
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = select i1 %.not, i32 8, i32 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95   ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !87
  %i.o = load <2 x i32>, ptr %i.k, align 4, !tbaa !3
  store <2 x i32> %i.o, ptr %i.l, align 8, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i32 1, ptr %i.p, align 8, !tbaa !153
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  store i32 1, ptr %i.q, align 4, !tbaa !154
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 1, ptr %i.r, align 8, !tbaa !155
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  store i32 %i.h, ptr %i.s, align 4, !tbaa !156
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i32 1, ptr %i.t, align 8, !tbaa !157
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !68   ; 2 uses
  %i.w = urem i32 %i.n, %i.v                      ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  %spec.select = select i1 %i.x, i32 %i.v, i32 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 %spec.select, ptr %i.y, align 4, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 1, ptr %i.z, align 8, !tbaa !159
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 0, ptr %i.aa, align 4, !tbaa !3
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.ab = add i32 %i.f, -5
  %or.cond = icmp ult i32 %i.ab, -4
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 27, ptr %i.ad, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  store i32 %i.f, ptr %i.ae, align 4, !tbaa !44
  %i.af = load ptr, ptr %0, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i32 4, ptr %i.ag, align 4, !tbaa !44
  %i.ah = load ptr, ptr %0, align 8, !tbaa !38
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  tail call void %i.ai(ptr noundef nonnull %0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !76
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.an = load i32, ptr %i.am, align 4, !tbaa !80
  %i.ao = select i1 %.not, i32 3, i32 0           ; 3 uses
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = tail call i64 @jdiv_round_up(i64 noundef %i.al, i64 noundef %i.aq) #8
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 %i.as, ptr %i.at, align 8, !tbaa !160
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.av = load i32, ptr %i.au, align 4, !tbaa !74
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !81
  %i.az = shl i32 %i.ay, %i.ao
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call i64 @jdiv_round_up(i64 noundef %i.aw, i64 noundef %i.ba) #8
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !161
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 12 uses
  store i32 0, ptr %i.be, align 8, !tbaa !159
  %i.bf = load i32, ptr %i.e, align 8, !tbaa !101
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph91, label %.loopexit

.lr.ph91:                                         ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph91, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !95 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !70 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !153
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !68 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !154
  %i.br = mul nsw i32 %i.bp, %i.bm                ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !155
  %i.bt = shl i32 %i.bm, %i.ao
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 68
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !156
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !86
  %i.bx = urem i32 %i.bw, %i.bm                   ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  %spec.select87 = select i1 %i.by, i32 %i.bm, i32 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  store i32 %spec.select87, ptr %i.bz, align 8, !tbaa !157
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !87
  %i.cc = urem i32 %i.cb, %i.bp                   ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  %.2 = select i1 %i.cd, i32 %i.bp, i32 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 76
  store i32 %.2, ptr %i.ce, align 4, !tbaa !158
  %i.cf = load i32, ptr %i.be, align 8, !tbaa !159
  %i.cg = add nsw i32 %i.cf, %i.br
  %i.ch = icmp sgt i32 %i.cg, 10
  br i1 %i.ch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ci = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 14, ptr %i.cj, align 8, !tbaa !39
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !45
  tail call void %i.ck(ptr noundef nonnull %0) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cl = icmp sgt i32 %i.br, 0
  br i1 %i.cl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.cm = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  %xtraiter = and i32 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.08088.prol = phi i32 [ %i.cn, %.lr.ph.prol ], [ %i.br, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.cn = add nsw i32 %.08088.prol, -1            ; 2 uses
  %i.co = load i32, ptr %i.be, align 8, !tbaa !159 ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.be, align 8, !tbaa !159
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cq
  store i32 %i.cm, ptr %i.cr, align 4, !tbaa !3
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !162

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.08088.unr = phi i32 [ %i.br, %.lr.ph.preheader ], [ %i.cn, %.lr.ph.prol ]
  %i.cs = icmp ult i32 %i.br, 4
  br i1 %i.cs, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.08088 = phi i32 [ %i.df, %.lr.ph ], [ %.08088.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.ct = load i32, ptr %i.be, align 8, !tbaa !159 ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.be, align 8, !tbaa !159
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cv
  store i32 %i.cm, ptr %i.cw, align 4, !tbaa !3
  %i.cx = load i32, ptr %i.be, align 8, !tbaa !159 ; 2 uses
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.be, align 8, !tbaa !159
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cz
  store i32 %i.cm, ptr %i.da, align 4, !tbaa !3
  %i.db = load i32, ptr %i.be, align 8, !tbaa !159 ; 2 uses
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.be, align 8, !tbaa !159
end_hunk_0
