inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@sfnt_load_face:bb.a
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !220
  switch i64 %i.g, label %.fold.split [
    i64 1768386662, label %.lr.ph.1
    i64 1768386675, label %bb.b
    i64 1769169528, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  br label %.lr.ph.1

.fold.split:                                      ; preds = %.lr.ph
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %.fold.split, %bb.c, %bb.b
  %.1364 = phi i8 [ %.0363545, %.lr.ph ], [ %.0363545, %bb.b ], [ 1, %bb.c ], [ %.0363545, %.fold.split ] ; 3 uses
  %.1361 = phi i8 [ %.0360547, %.lr.ph ], [ 1, %bb.b ], [ %.0360547, %bb.c ], [ %.0360547, %.fold.split ] ; 3 uses
  %.1353 = phi i8 [ 1, %.lr.ph ], [ %.0352548, %bb.b ], [ %.0352548, %bb.c ], [ %.0352548, %.fold.split ] ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !220
  switch i64 %i.j, label %.fold.split.1 [
    i64 1768386662, label %bb.f
    i64 1768386675, label %bb.e
    i64 1769169528, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.1
  br label %bb.f

.fold.split.1:                                    ; preds = %.lr.ph.1
  br label %bb.f

bb.f:                                             ; preds = %.fold.split.1, %bb.e, %bb.d, %.lr.ph.1
  %.1364.1 = phi i8 [ %.1364, %.lr.ph.1 ], [ %.1364, %bb.e ], [ 1, %bb.d ], [ %.1364, %.fold.split.1 ] ; 3 uses
  %.1361.1 = phi i8 [ %.1361, %.lr.ph.1 ], [ 1, %bb.e ], [ %.1361, %bb.d ], [ %.1361, %.fold.split.1 ] ; 3 uses
  %.1353.1 = phi i8 [ 1, %.lr.ph.1 ], [ %.1353, %bb.e ], [ %.1353, %bb.d ], [ %.1353, %.fold.split.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !222

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0352548.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.1353.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0360547.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.1361.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0363545.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.1364.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod624 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod624)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.l = load i64, ptr %i.k, align 8, !tbaa !220
  switch i64 %i.l, label %.fold.split.epil [
    i64 1768386662, label %._crit_edge.loopexit
    i64 1768386675, label %bb.h
    i64 1769169528, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  br label %._crit_edge.loopexit

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  br label %._crit_edge.loopexit

.fold.split.epil:                                 ; preds = %.lr.ph.epil.preheader
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil.preheader, %bb.g, %bb.h, %.fold.split.epil, %._crit_edge.loopexit.unr-lcssa
  %.1364.lcssa = phi i8 [ %.1364.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0363545.epil.init, %.lr.ph.epil.preheader ], [ %.0363545.epil.init, %bb.h ], [ 1, %bb.g ], [ %.0363545.epil.init, %.fold.split.epil ]
  %.1361.lcssa = phi i8 [ %.1361.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0360547.epil.init, %.lr.ph.epil.preheader ], [ 1, %bb.h ], [ %.0360547.epil.init, %bb.g ], [ %.0360547.epil.init, %.fold.split.epil ]
  %.1353.lcssa = phi i8 [ %.1353.1, %._crit_edge.loopexit.unr-lcssa ], [ 1, %.lr.ph.epil.preheader ], [ %.0352548.epil.init, %bb.h ], [ %.0352548.epil.init, %bb.g ], [ %.0352548.epil.init, %.fold.split.epil ]
  %i.m = icmp eq i8 %.1364.lcssa, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0363.lcssa = phi i1 [ true, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  %.0360.lcssa = phi i8 [ 0, %bb.a ], [ %.1361.lcssa, %._crit_edge.loopexit ] ; 2 uses
  %.0352.lcssa = phi i8 [ 0, %bb.a ], [ %.1353.lcssa, %._crit_edge.loopexit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !223
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !224
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.i, label %tt_face_lookup_table.exit

bb.i:                                             ; preds = %._crit_edge
  %i.r = getelementptr i8, ptr %1, i64 288
  %.val478 = load i16, ptr %i.r, align 8, !tbaa !154 ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 296
  %.val479 = load ptr, ptr %i.s, align 8, !tbaa !155 ; 4 uses
  %i.t = zext i16 %.val478 to i64
  %.idx.i = shl nuw nsw i64 %i.t, 5
  %i.u = getelementptr inbounds nuw i8, ptr %.val479, i64 %.idx.i ; 3 uses
  %.not4.i = icmp eq i16 %.val478, 0
  br i1 %.not4.i, label %tt_face_lookup_table.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.k
  %.0101.i = phi ptr [ %i.z, %bb.k ], [ %.val479, %bb.i ] ; 3 uses
  %i.v = load i64, ptr %.0101.i, align 8, !tbaa !156
  %i.w = icmp eq i64 %i.v, 1735162214
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0101.i, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !158
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.k, label %tt_face_lookup_table.exit

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0101.i, i64 32 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %i.u
  br i1 %i.aa, label %.lr.ph.i, label %.lr.ph.i482, !llvm.loop !159

.lr.ph.i482:                                      ; preds = %bb.k, %bb.m
  %.0101.i483 = phi ptr [ %i.af, %bb.m ], [ %.val479, %bb.k ] ; 3 uses
  %i.ab = load i64, ptr %.0101.i483, align 8, !tbaa !156
  %i.ac = icmp eq i64 %i.ab, 1128678944
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i482
  %i.ad = getelementptr inbounds nuw i8, ptr %.0101.i483, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !158
  %.not.i485 = icmp eq i64 %i.ae, 0
  br i1 %.not.i485, label %bb.m, label %tt_face_lookup_table.exit

bb.m:                                             ; preds = %bb.l, %.lr.ph.i482
  %i.af = getelementptr inbounds nuw i8, ptr %.0101.i483, i64 32 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.u
  br i1 %i.ag, label %.lr.ph.i482, label %.lr.ph.i489, !llvm.loop !159

.lr.ph.i489:                                      ; preds = %bb.m, %bb.o
  %.0101.i490 = phi ptr [ %i.al, %bb.o ], [ %.val479, %bb.m ] ; 3 uses
  %i.ah = load i64, ptr %.0101.i490, align 8, !tbaa !156
  %i.ai = icmp eq i64 %i.ah, 1128678962
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i489
  %i.aj = getelementptr inbounds nuw i8, ptr %.0101.i490, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !158
  %.not.i492 = icmp eq i64 %i.ak, 0
  br i1 %.not.i492, label %bb.o, label %tt_face_lookup_table.exit

bb.o:                                             ; preds = %bb.n, %.lr.ph.i489
  %i.al = getelementptr inbounds nuw i8, ptr %.0101.i490, i64 32 ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.u
  br i1 %i.am, label %.lr.ph.i489, label %tt_face_lookup_table.exit, !llvm.loop !159

tt_face_lookup_table.exit:                        ; preds = %bb.j, %bb.l, %bb.o, %bb.n, %bb.i, %._crit_edge
  %.not388 = phi i1 [ true, %bb.o ], [ false, %bb.l ], [ false, %._crit_edge ], [ true, %bb.i ], [ false, %bb.n ], [ false, %bb.j ]
  %i.an = phi i8 [ 0, %bb.o ], [ 1, %bb.l ], [ 1, %._crit_edge ], [ 0, %bb.i ], [ 1, %bb.n ], [ 1, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !173
  %i.aq = tail call i32 %i.ap(ptr noundef %1, i64 noundef 1128418371, ptr noundef %0, ptr noundef null) #26
  %.not382 = icmp eq i32 %i.aq, 0                 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !173
  %i.as = tail call i32 %i.ar(ptr noundef %1, i64 noundef 1128416340, ptr noundef %0, ptr noundef null) #26
  %.not383 = icmp eq i32 %i.as, 0
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !173
  %i.au = tail call i32 %i.at(ptr noundef %1, i64 noundef 1161972803, ptr noundef %0, ptr noundef null) #26
  %.not384 = icmp eq i32 %i.au, 0
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !173
  %i.aw = tail call i32 %i.av(ptr noundef %1, i64 noundef 1651273571, ptr noundef %0, ptr noundef null) #26
  %.not385 = icmp eq i32 %i.aw, 0
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !173
  %i.ay = tail call i32 %i.ax(ptr noundef %1, i64 noundef 1935829368, ptr noundef %0, ptr noundef null) #26
  %.not386 = icmp eq i32 %i.ay, 0
  %spec.select = select i1 %.0363.lcssa, i1 %.not386, i1 false ; 3 uses
  br i1 %.not388, label %bb.p, label %.thread501

bb.p:                                             ; preds = %tt_face_lookup_table.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !230 ; 2 uses
  %.not389 = icmp eq ptr %i.ba, null
  br i1 %.not389, label %.thread501, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call i32 %i.ba(ptr noundef nonnull %1, ptr noundef %0) #26
  %.not390 = icmp ne i32 %i.bb, 0                 ; 2 uses
  %or.cond = select i1 %.not390, i1 true, i1 %spec.select
  br i1 %or.cond, label %.thread501, label %bb.r

.thread501:                                       ; preds = %bb.p, %tt_face_lookup_table.exit, %bb.q
  %.0344505.a = phi i1 [ %.not390, %bb.q ], [ true, %tt_face_lookup_table.exit ], [ true, %bb.p ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !231
  %i.be = tail call i32 %i.bd(ptr noundef nonnull %1, ptr noundef %0) #26 ; 2 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !3
  %.not391 = icmp eq i32 %i.be, 0
  br i1 %.not391, label %bb.r, label %.thread512

bb.r:                                             ; preds = %.thread501, %bb.q
  %.0344504 = phi i1 [ %.0344505.a, %.thread501 ], [ false, %bb.q ]
  %or.cond8 = select i1 %.not382, i1 true, i1 %.not383
  %spec.select464 = select i1 %or.cond8, i8 0, i8 %i.an ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 338 ; 3 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !232
  %i.bh = add i16 %i.bg, -16385
  %or.cond465 = icmp ult i16 %i.bh, -16369
  br i1 %or.cond465, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.thread512

bb.t:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !233
  %i.bk = tail call i32 %i.bj(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !234
  %i.bn = tail call i32 %i.bm(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !235
  %i.bq = tail call i32 %i.bp(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !236
  %i.bt = tail call i32 %i.bs(ptr noundef nonnull %1, ptr noundef %0) #26
  br i1 %.0344504, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !237
  %i.bw = tail call i32 %i.bv(ptr noundef nonnull %1, ptr noundef %0, i8 noundef zeroext 0) #26 ; 3 uses
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !3
  %.not393 = icmp eq i32 %i.bw, 0
  br i1 %.not393, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !238
  %i.bz = tail call i32 %i.by(ptr noundef nonnull %1, ptr noundef %0, i8 noundef zeroext 0) #26 ; 3 uses
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !3
  %i.ca = and i32 %i.bz, 255
  %i.cb = icmp eq i32 %i.ca, 142
  br i1 %i.cb, label %bb.w, label %thread-pre-split

bb.w:                                             ; preds = %bb.v
  store i32 147, ptr %i.a, align 4, !tbaa !3
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !223
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !224 ; 2 uses
  %.not394 = icmp eq ptr %i.ce, null
  br i1 %.not394, label %.thread512, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !239
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !243
  %.not395 = icmp eq ptr %i.ch, null
  br i1 %.not395, label %.thread512, label %.thread507.sink.split

bb.y:                                             ; preds = %bb.u
  %i.ci = and i32 %i.bw, 255
  %i.cj = icmp eq i32 %i.ci, 142
  br i1 %i.cj, label %bb.z, label %.thread512

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !245
  %i.cm = icmp eq i64 %i.cl, 1953658213
  br i1 %i.cm, label %.thread507, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 143, ptr %i.a, align 4, !tbaa !3
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !223
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !224 ; 2 uses
  %.not396 = icmp eq ptr %i.cp, null
  br i1 %.not396, label %.thread512, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !239
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !243
  %.not397 = icmp eq ptr %i.cs, null
  br i1 %.not397, label %.thread512, label %.thread507.sink.split

thread-pre-split:                                 ; preds = %bb.v
  %.not398 = icmp eq i32 %i.bz, 0
  br i1 %.not398, label %.thread507, label %.thread512

.thread507.sink.split:                            ; preds = %bb.ab, %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 438
  store i16 0, ptr %i.ct, align 2, !tbaa !246
  br label %.thread507

.thread507:                                       ; preds = %.thread507.sink.split, %bb.z, %thread-pre-split
  %.1342510 = phi i8 [ %spec.select464, %thread-pre-split ], [ 0, %bb.z ], [ %spec.select464, %.thread507.sink.split ] ; 2 uses
  %i.cu = load ptr, ptr %i.bu, align 8, !tbaa !237
  %i.cv = tail call i32 %i.cu(ptr noundef nonnull %1, ptr noundef %0, i8 noundef zeroext 1) #26 ; 3 uses
  store i32 %i.cv, ptr %i.a, align 4, !tbaa !3
  %.not399 = icmp eq i32 %i.cv, 0
  br i1 %.not399, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread507
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !238
  %i.cy = tail call i32 %i.cx(ptr noundef nonnull %1, ptr noundef %0, i8 noundef zeroext 1) #26 ; 3 uses
  store i32 %i.cy, ptr %i.a, align 4, !tbaa !3
  %.not400 = icmp eq i32 %i.cy, 0
  br i1 %.not400, label %.thread, label %bb.ad

.thread:                                          ; preds = %bb.ac
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i8 1, ptr %i.cz, align 8, !tbaa !247
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %.thread507
  %i.da = phi i32 [ %i.cy, %bb.ac ], [ %i.cv, %.thread507 ]
  %i.db = and i32 %i.da, 255
  %.not402 = icmp eq i32 %i.db, 142
  br i1 %.not402, label %bb.ae, label %.thread512

bb.ae:                                            ; preds = %.thread, %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !248
  %i.de = tail call i32 %i.dd(ptr noundef nonnull %1, ptr noundef %0) #26 ; 2 uses
  store i32 %i.de, ptr %i.a, align 4, !tbaa !3
  %.not403 = icmp eq i32 %i.de, 0
  br i1 %.not403, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 616
  store i16 -1, ptr %i.df, align 8, !tbaa !249
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.t
  %.2343 = phi i8 [ %spec.select464, %bb.t ], [ %.1342510, %bb.af ], [ %.1342510, %bb.ae ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !250 ; 2 uses
  %.not404 = icmp eq ptr %i.dh, null
  br i1 %.not404, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %or.cond11 = select i1 %.not382, i1 true, i1 %.not384
  %or.cond14 = select i1 %or.cond11, i1 true, i1 %.not385
  %or.cond17 = select i1 %or.cond14, i1 true, i1 %spec.select
  br i1 %or.cond17, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.di = tail call i32 %i.dh(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !251 ; 2 uses
  %.not405 = icmp eq ptr %i.dk, null
  br i1 %.not405, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = tail call i32 %i.dk(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !252
  %i.do = tail call i32 %i.dn(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !253 ; 2 uses
  %.not406 = icmp eq ptr %i.dq, null
  br i1 %.not406, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dr = tail call i32 %i.dq(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !254
  %i.du = tail call i32 %i.dt(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !255
  %i.dx = tail call i32 %i.dw(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !256
  %i.ea = tail call i32 %i.dz(ptr noundef nonnull %1, ptr noundef %0) #26 ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !257
  %i.ed = zext i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !147
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  %i.ei = load i16, ptr %i.eh, align 8, !tbaa !249
  %.not407 = icmp eq i16 %i.ei, -1
  br i1 %.not407, label %bb.aw, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.ek = load i16, ptr %i.ej, align 4, !tbaa !258
  %i.el = and i16 %i.ek, 256
  %.not408 = icmp eq i16 %i.el, 0
  br i1 %.not408, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not417 = icmp eq i8 %.0352.lcssa, 0
  br i1 %.not417, label %bb.aq, label %.thread597

bb.aq:                                            ; preds = %bb.ap
  %i.em = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 16, ptr noundef nonnull %i.ef) ; 2 uses
  store i32 %i.em, ptr %i.a, align 4, !tbaa !3
  %.not418 = icmp eq i32 %i.em, 0
  br i1 %.not418, label %bb.ar, label %.thread512

bb.ar:                                            ; preds = %bb.aq
  %.pre = load ptr, ptr %i.ef, align 8, !tbaa !259
  %i.en = icmp eq ptr %.pre, null
  br i1 %i.en, label %.thread597, label %bb.as

.thread597:                                       ; preds = %bb.ap, %bb.ar
  %i.eo = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 1, ptr noundef nonnull %i.ef) ; 2 uses
  store i32 %i.eo, ptr %i.a, align 4, !tbaa !3
  %.not420 = icmp eq i32 %i.eo, 0
  br i1 %.not420, label %bb.as, label %.thread512

bb.as:                                            ; preds = %.thread597, %bb.ar
  %.not421 = icmp eq i8 %.0360.lcssa, 0
  br i1 %.not421, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ep = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 17, ptr noundef nonnull %i.eg) ; 2 uses
  store i32 %i.ep, ptr %i.a, align 4, !tbaa !3
  %.not422 = icmp eq i32 %i.ep, 0
  br i1 %.not422, label %bb.au, label %.thread512

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.eq = load ptr, ptr %i.eg, align 8, !tbaa !260
  %.not423 = icmp eq ptr %i.eq, null
  br i1 %.not423, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.er = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 2, ptr noundef nonnull %i.eg) ; 2 uses
  store i32 %i.er, ptr %i.a, align 4, !tbaa !3
  %.not424 = icmp eq i32 %i.er, 0
  br i1 %.not424, label %bb.bg, label %.thread512

bb.aw:                                            ; preds = %bb.an, %bb.ao
  %i.es = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 21, ptr noundef nonnull %i.ef) ; 2 uses
  store i32 %i.es, ptr %i.a, align 4, !tbaa !3
  %.not409 = icmp eq i32 %i.es, 0
  br i1 %.not409, label %bb.ax, label %.thread512

bb.ax:                                            ; preds = %bb.aw
  %i.et = load ptr, ptr %i.ef, align 8, !tbaa !259 ; 2 uses
  %i.eu = icmp ne ptr %i.et, null
  %i.ev = icmp ne i8 %.0352.lcssa, 0
  %or.cond19 = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond19, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ew = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 16, ptr noundef nonnull %i.ef) ; 2 uses
  store i32 %i.ew, ptr %i.a, align 4, !tbaa !3
  %.not410 = icmp eq i32 %i.ew, 0
  br i1 %.not410, label %thread-pre-split515, label %.thread512

thread-pre-split515:                              ; preds = %bb.ay
  %.pr516 = load ptr, ptr %i.ef, align 8, !tbaa !259
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split515, %bb.ax
  %i.ex = phi ptr [ %.pr516, %thread-pre-split515 ], [ %i.et, %bb.ax ]
  %.not411 = icmp eq ptr %i.ex, null
  br i1 %.not411, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ey = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 1, ptr noundef nonnull %i.ef) ; 2 uses
  store i32 %i.ey, ptr %i.a, align 4, !tbaa !3
  %.not412 = icmp eq i32 %i.ey, 0
  br i1 %.not412, label %bb.bb, label %.thread512

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.ez = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 22, ptr noundef nonnull %i.eg) ; 2 uses
  store i32 %i.ez, ptr %i.a, align 4, !tbaa !3
  %.not413 = icmp eq i32 %i.ez, 0
  br i1 %.not413, label %bb.bc, label %.thread512

bb.bc:                                            ; preds = %bb.bb
  %i.fa = load ptr, ptr %i.eg, align 8, !tbaa !260 ; 2 uses
  %i.fb = icmp ne ptr %i.fa, null
  %i.fc = icmp ne i8 %.0360.lcssa, 0
  %or.cond21 = select i1 %i.fb, i1 true, i1 %i.fc
  br i1 %or.cond21, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fd = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 17, ptr noundef nonnull %i.eg) ; 2 uses
  store i32 %i.fd, ptr %i.a, align 4, !tbaa !3
  %.not414 = icmp eq i32 %i.fd, 0
  br i1 %.not414, label %thread-pre-split517, label %.thread512

thread-pre-split517:                              ; preds = %bb.bd
  %.pr518 = load ptr, ptr %i.eg, align 8, !tbaa !260
  br label %bb.be

bb.be:                                            ; preds = %thread-pre-split517, %bb.bc
  %i.fe = phi ptr [ %.pr518, %thread-pre-split517 ], [ %i.fa, %bb.bc ]
  %.not415 = icmp eq ptr %i.fe, null
  br i1 %.not415, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ff = tail call i32 @tt_face_get_name(ptr noundef nonnull %1, i16 noundef zeroext 2, ptr noundef nonnull %i.eg) ; 2 uses
  store i32 %i.ff, ptr %i.a, align 4, !tbaa !3
  %.not416 = icmp eq i32 %i.ff, 0
  br i1 %.not416, label %bb.bg, label %.thread512

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.au, %bb.av
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !212
  %i.fi = load ptr, ptr %i.eg, align 8, !tbaa !260
  %i.fj = call ptr @ft_mem_strdup(ptr noundef %i.fh, ptr noundef %i.fi, ptr noundef nonnull %i.a) #26
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 1248
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !261
  %i.fl = load i32, ptr %i.a, align 4, !tbaa !3
  %.not425 = icmp eq i32 %i.fl, 0
  br i1 %.not425, label %bb.bh, label %.thread512

bb.bh:                                            ; preds = %bb.bg
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !262 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !263
  %i.fq = and i32 %i.fp, -2
  %switch = icmp eq i32 %i.fq, 2
  br i1 %switch, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 1472
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !264
  %.not426 = icmp eq ptr %i.fs, null
  br i1 %.not426, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 1480
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !265
  %.not427 = icmp eq ptr %i.fu, null
  br i1 %.not427, label %bb.bl, label %bb.bk
end_hunk_0
begin_hunk_1_@tt_face_get_metrics:bb.a
  %.not83 = icmp eq i32 %i.an, 0
  br i1 %.not83, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i16 0, ptr %3, align 2, !tbaa !298
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.e, ptr noundef nonnull %i.a) #26
  store i16 %i.ao, ptr %3, align 2, !tbaa !298
  br label %bb.p

bb.o:                                             ; preds = %bb.a, %bb.h, %bb.i, %bb.g, %bb.d, %bb.e, %bb.f, %bb.c
  store i16 0, ptr %3, align 2, !tbaa !298
  store i16 0, ptr %4, align 2, !tbaa !298
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.m, %bb.n, %bb.k, %bb.o
  %.not87 = icmp eq ptr %i.g, null
  br i1 %.not87, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !485
  %.not88 = icmp eq ptr %i.aq, null
  br i1 %.not88, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ar = load i16, ptr %4, align 2, !tbaa !298
  %i.as = zext i16 %i.ar to i32
  store i32 %i.as, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.at = load i16, ptr %3, align 2, !tbaa !298
  %i.au = sext i16 %i.at to i32
  store i32 %i.au, ptr %i.c, align 4, !tbaa !3
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !560 ; 2 uses
  %.not91 = icmp eq ptr %i.aw, null
  br i1 %.not91, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = call i32 %i.aw(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !562 ; 2 uses
  %.not92 = icmp eq ptr %i.az, null
  br i1 %.not92, label %bb.y, label %.sink.split

bb.v:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !563 ; 2 uses
  %.not89 = icmp eq ptr %i.ba, null
  br i1 %.not89, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = call i32 %i.ba(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.b) #26 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !564 ; 2 uses
  %.not90 = icmp eq ptr %i.bd, null
  br i1 %.not90, label %bb.y, label %.sink.split

.sink.split:                                      ; preds = %bb.x, %bb.u
  %.sink = phi ptr [ %i.az, %bb.u ], [ %i.bd, %bb.x ]
  %i.be = call i32 %.sink(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.c) #26 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x, %bb.u
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !3
  %i.bg = trunc i32 %i.bf to i16
  store i16 %i.bg, ptr %4, align 2, !tbaa !298
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !3
  %i.bi = trunc i32 %i.bh to i16
  store i16 %i.bi, ptr %3, align 2, !tbaa !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_get_name(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !212  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !565  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.g = load i16, ptr %i.f, align 8, !tbaa !365  ; 2 uses
  %.not102 = icmp eq i16 %i.g, 0
  br i1 %.not102, label %.thread84, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i16 %i.g to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %.06297 = phi i8 [ 0, %.lr.ph.preheader ], [ %.1, %bb.k ] ; 8 uses
  %.06396 = phi i32 [ -1, %.lr.ph.preheader ], [ %.164, %bb.k ] ; 8 uses
  %.06595 = phi i32 [ -1, %.lr.ph.preheader ], [ %.166, %bb.k ] ; 9 uses
  %.06794 = phi i32 [ -1, %.lr.ph.preheader ], [ %.168.fr, %bb.k ] ; 8 uses
  %.06993 = phi i32 [ -1, %.lr.ph.preheader ], [ %.170, %bb.k ] ; 9 uses
  %.07292 = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.af, %bb.k ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07292, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !566
  %i.j = icmp eq i16 %i.i, %1
  br i1 %i.j, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.07292, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !358
  %.not81 = icmp eq i16 %i.l, 0
  br i1 %.not81, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr %.07292, align 8, !tbaa !567
  switch i16 %i.m, label %bb.k [
    i16 0, label %bb.d
    i16 2, label %bb.d
    i16 1, label %bb.e
    i16 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.07292, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !361
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.07292, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !568
  %i.s = icmp eq i16 %i.r, 0
  %spec.select = select i1 %i.s, i32 %indvars.iv, i32 %.06993
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %.06595, -1
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.07292, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !361
  %i.w = and i16 %i.v, 1023
  %i.x = icmp eq i16 %i.w, 9
  br i1 %i.x, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.07292, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !568
  switch i16 %i.z, label %bb.k [
    i16 0, label %bb.j
    i16 1, label %bb.j
    i16 10, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.07292, i64 4
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !361
  %i.ac = and i16 %i.ab, 1023
  %i.ad = icmp eq i16 %i.ac, 9
  %i.ae = zext i1 %i.ad to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.e, %.lr.ph, %bb.b, %bb.c, %bb.h, %bb.i, %bb.j, %bb.d
  %.170 = phi i32 [ %.06993, %bb.c ], [ %.06993, %bb.d ], [ %.06993, %.lr.ph ], [ %.06993, %bb.e ], [ %spec.select, %bb.f ], [ %.06993, %bb.i ], [ %.06993, %bb.j ], [ %.06993, %bb.h ], [ %.06993, %bb.b ] ; 2 uses
  %.168 = phi i32 [ %.06794, %bb.c ], [ %.06794, %bb.d ], [ %.06794, %.lr.ph ], [ %indvars.iv, %bb.e ], [ %.06794, %bb.f ], [ %.06794, %bb.i ], [ %.06794, %bb.j ], [ %.06794, %bb.h ], [ %.06794, %bb.b ]
  %.166 = phi i32 [ %.06595, %bb.c ], [ %.06595, %bb.d ], [ %.06595, %.lr.ph ], [ %.06595, %bb.e ], [ %.06595, %bb.f ], [ %.06595, %bb.i ], [ %indvars.iv, %bb.j ], [ %.06595, %bb.h ], [ %.06595, %bb.b ] ; 3 uses
  %.164 = phi i32 [ %.06396, %bb.c ], [ %indvars.iv, %bb.d ], [ %.06396, %.lr.ph ], [ %.06396, %bb.e ], [ %.06396, %bb.f ], [ %.06396, %bb.i ], [ %.06396, %bb.j ], [ %.06396, %bb.h ], [ %.06396, %bb.b ] ; 3 uses
  %.1 = phi i8 [ %.06297, %bb.c ], [ %.06297, %bb.d ], [ %.06297, %.lr.ph ], [ %.06297, %bb.e ], [ %.06297, %bb.f ], [ %.06297, %bb.i ], [ %i.ae, %bb.j ], [ %.06297, %bb.h ], [ %.06297, %bb.b ] ; 2 uses
  %.168.fr = freeze i32 %.168                     ; 3 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.07292, i64 32
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !569

._crit_edge:                                      ; preds = %bb.k
  %i.ag = icmp slt i32 %.168.fr, 0
  %spec.select134 = select i1 %i.ag, i32 %.170, i32 %.168.fr ; 4 uses
  %i.ah = icmp sgt i32 %.166, -1
  br i1 %i.ah, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %3 = icmp ne i8 %.1, 0
  %i.ai = icmp slt i32 %spec.select134, 0
  %or.cond = select i1 %i.ai, i1 true, i1 %3
  br i1 %or.cond, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = zext nneg i32 %.166 to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !568
  switch i16 %i.am, label %.thread84 [
    i16 1, label %.thread128
    i16 0, label %.thread128
    i16 10, label %.thread128
  ]

bb.n:                                             ; preds = %._crit_edge
  %i.an = icmp sgt i32 %spec.select134, -1
  br i1 %i.an, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = icmp sgt i32 %.164, -1
  br i1 %i.ao, label %.thread, label %.thread84

.thread:                                          ; preds = %bb.o, %bb.n, %bb.l
  %.sink135 = phi i32 [ %spec.select134, %bb.n ], [ %spec.select134, %bb.l ], [ %.164, %bb.o ]
  %.061 = phi ptr [ @tt_name_ascii_from_other, %bb.n ], [ @tt_name_ascii_from_other, %bb.l ], [ @tt_name_ascii_from_utf16, %bb.o ]
  %i.ap = zext nneg i32 %.sink135 to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.ap
  %.not90 = icmp eq ptr %i.e, null
  br i1 %.not90, label %.thread84, label %.thread128

.thread128:                                       ; preds = %bb.m, %bb.m, %bb.m, %.thread
  %.061133 = phi ptr [ %.061, %.thread ], [ @tt_name_ascii_from_utf16, %bb.m ], [ @tt_name_ascii_from_utf16, %bb.m ], [ @tt_name_ascii_from_utf16, %bb.m ]
  %.173132 = phi ptr [ %i.aq, %.thread ], [ %i.ak, %bb.m ], [ %i.ak, %bb.m ], [ %i.ak, %bb.m ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.173132, i64 24 ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !362
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.p, label %.thread88

bb.p:                                             ; preds = %.thread128
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !570 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.173132, i64 8 ; 3 uses
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !358
  %i.ax = zext i16 %i.aw to i64
  %i.ay = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 1, i64 noundef 0, i64 noundef %i.ax, ptr noundef null, ptr noundef nonnull %i.a) #26 ; 2 uses
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !362
  %i.az = load i32, ptr %i.a, align 4, !tbaa !3
  %.not78 = icmp eq i32 %i.az, 0
  br i1 %.not78, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %.173132, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !360
  %i.bc = call i32 @FT_Stream_Seek(ptr noundef %i.au, i64 noundef %i.bb) #26 ; 2 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !3
  %.not79 = icmp eq i32 %i.bc, 0
  %.pre104 = load ptr, ptr %i.ar, align 8, !tbaa !362 ; 2 uses
  br i1 %.not79, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = load i16, ptr %i.av, align 8, !tbaa !358
  %i.be = zext i16 %i.bd to i64
  %i.bf = call i32 @FT_Stream_Read(ptr noundef %i.au, ptr noundef %.pre104, i64 noundef %i.be) #26 ; 2 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !3
  %.not80 = icmp eq i32 %i.bf, 0
  br i1 %.not80, label %.thread88, label %._crit_edge103

._crit_edge103:                                   ; preds = %bb.r
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !362
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge103, %bb.q, %bb.p
  %i.bg = phi ptr [ %.pre, %._crit_edge103 ], [ %.pre104, %bb.q ], [ %i.ay, %bb.p ]
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.bg) #26
  store ptr null, ptr %i.ar, align 8, !tbaa !362
  store i16 0, ptr %i.av, align 8, !tbaa !358
  br label %.thread84

.thread88:                                        ; preds = %bb.r, %.thread128
  %i.bh = call ptr %.061133(ptr noundef nonnull %.173132, ptr noundef %i.c) #26, !callees !571
  br label %.thread84

.thread84:                                        ; preds = %bb.a, %bb.o, %bb.m, %bb.s, %.thread, %.thread88
  %.176 = phi ptr [ %i.bh, %.thread88 ], [ null, %bb.s ], [ null, %.thread ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.a ]
  store ptr %.176, ptr %2, align 8, !tbaa !429
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.bi
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i8 0, 2) i8 @sfnt_get_name_id(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3) #6 {
bb.a:
  store i32 -1, ptr %2, align 4, !tbaa !3
  store i32 -1, ptr %3, align 4, !tbaa !3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load i16, ptr %i.a, align 8, !tbaa !365  ; 2 uses
  %.not26 = icmp eq i16 %i.b, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !565
  %wide.trip.count = zext i16 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 3 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.g = load i16, ptr %i.f, align 2, !tbaa !566
  %i.h = icmp eq i16 %i.g, %1
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !358
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i16, ptr %i.e, align 8, !tbaa !567
  switch i16 %i.k, label %.thread [
    i16 3, label %bb.e
    i16 1, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !568
  %switch = icmp ult i16 %i.m, 2
  br i1 %switch, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !361
  %i.p = icmp eq i16 %i.o, 1033
  br i1 %i.p, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %2, align 4, !tbaa !3
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.thread.sink.split, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !568
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.w = load i16, ptr %i.v, align 4, !tbaa !361
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %3, align 4, !tbaa !3
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.i, %bb.j, %bb.f, %bb.g
  %.sink28 = phi ptr [ %2, %bb.f ], [ %2, %bb.g ], [ %3, %bb.j ], [ %3, %bb.i ]
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aa, ptr %.sink28, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.d, %bb.g, %bb.e, %bb.h, %bb.j, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !572

._crit_edge:                                      ; preds = %.thread, %bb.a
  %i.ab = load i32, ptr %2, align 4, !tbaa !3
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ad = load i32, ptr %3, align 4, !tbaa !3
  %i.ae = icmp sgt i32 %i.ad, -1
  %i.af = zext i1 %i.ae to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.ag = phi i8 [ 1, %._crit_edge ], [ %i.af, %bb.k ]
  ret i8 %i.ag
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_load_svg(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
end_hunk_1
begin_hunk_2_@tt_sbit_decoder_load_compound:bb.a
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r               ; 3 uses
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u
  %i.w = icmp ugt ptr %i.v, %2
  br i1 %i.w, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not59 = icmp eq i32 %i.s, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = add i32 %5, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.04756 = phi ptr [ %i.k, %.lr.ph ], [ %i.ao, %bb.c ] ; 5 uses
  %.04955 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.04756, i64 2
  %i.z = load i8, ptr %.04756, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.04756, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.04756, i64 3
  %i.ah = load i8, ptr %i.y, align 1, !tbaa !16
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.aj = sext i8 %i.ah to i32
  %i.ak = add nsw i32 %3, %i.aj
  %i.al = sext i8 %i.ai to i32
  %i.am = add nsw i32 %4, %i.al
  %i.an = tail call fastcc i32 @tt_sbit_decoder_load_image(ptr noundef %0, i32 noundef %i.af, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %i.x, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp ne i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.04756, i64 4
  %i.ap = add nuw nsw i32 %.04955, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.s
  %or.cond = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !639

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !390
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aq = phi ptr [ %i.b, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 5 uses
  %.1 = phi i32 [ 0, %.preheader ], [ %i.an, %._crit_edge.loopexit ]
  %i.ar = shl <2 x i16> %i.d, splat (i16 8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = ashr exact <2 x i16> %i.ar, splat (i16 8)
  store <2 x i16> %i.at, ptr %i.as, align 2, !tbaa !298
  %i.au = and i16 %i.f, 255
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i16 %i.au, ptr %i.av, align 2, !tbaa !411
  %i.aw = shl <2 x i16> %i.h, splat (i16 8)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.ay = ashr exact <2 x i16> %i.aw, splat (i16 8)
  store <2 x i16> %i.ay, ptr %i.ax, align 2, !tbaa !298
  %i.az = and i16 %i.j, 255
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !412
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !389
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !tbaa !3
  %i.be = trunc <2 x i32> %i.bd to <2 x i16>
  %i.bf = and <2 x i16> %i.be, splat (i16 255)
  store <2 x i16> %i.bf, ptr %i.aq, align 2, !tbaa !298
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.2 = phi i32 [ %.1, %._crit_edge ], [ 3, %bb.b ], [ 3, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_sbit_decoder_load_png(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %1, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !382
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !388
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.p = load i8, ptr %i.o, align 2, !tbaa !399
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !390
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !387
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !178
  %i.x = tail call fastcc i32 @Load_SBit_Png(ptr noundef %i.n, i32 noundef %3, i32 noundef %4, i32 noundef %i.q, ptr noundef %i.s, ptr noundef %i.w, ptr noundef nonnull %i.e, i32 noundef %i.g, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.x, %bb.c ], [ 3, %bb.a ], [ 3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_sbit_decoder_alloc_bitmap(ptr nofree noundef captures(none) %0, i8 noundef zeroext range(i8 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !391
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !390  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !400
  %i.i = zext i16 %i.h to i32                     ; 6 uses
  %i.j = load i16, ptr %i.f, align 2, !tbaa !402  ; 2 uses
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.i, ptr %i.l, align 4, !tbaa !621
  store i32 %i.k, ptr %i.b, align 8, !tbaa !622
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.n = load i8, ptr %i.m, align 2, !tbaa !399
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.o)
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.split, label %bb.k

.split:                                           ; preds = %bb.b
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.o, i1 true)
  switch i32 %i.r, label %bb.k [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
  ]

bb.c:                                             ; preds = %.split
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 1, ptr %i.s, align 2, !tbaa !413
  %i.t = add nuw nsw i32 %i.i, 7
  %i.u = lshr i32 %i.t, 3
  br label %bb.h

bb.d:                                             ; preds = %.split
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 3, ptr %i.v, align 2, !tbaa !413
  %i.w = add nuw nsw i32 %i.i, 3
  %i.x = lshr i32 %i.w, 2
  br label %bb.h

bb.e:                                             ; preds = %.split
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 4, ptr %i.y, align 2, !tbaa !413
  %i.z = add nuw nsw i32 %i.i, 1
  %i.aa = lshr i32 %i.z, 1
  br label %bb.h

bb.f:                                             ; preds = %.split
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 2, ptr %i.ab, align 2, !tbaa !413
  br label %bb.h

bb.g:                                             ; preds = %.split
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 7, ptr %i.ac, align 2, !tbaa !413
  %i.ad = shl nuw nsw i32 %i.i, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink44 = phi i32 [ %i.ad, %bb.g ], [ %i.i, %bb.f ], [ %i.aa, %bb.e ], [ %i.x, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %.sink = phi i16 [ 256, %bb.g ], [ 256, %bb.f ], [ 16, %bb.e ], [ 4, %bb.d ], [ 2, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink44, ptr %i.ae, align 8, !tbaa !422
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %.sink, ptr %i.af, align 8, !tbaa !423
  %i.ag = zext i16 %i.j to i64
  %i.ah = zext nneg i32 %.sink44 to i64
  %i.ai = mul nuw nsw i64 %i.ah, %i.ag            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %2 = icmp ne i8 %1, 0
  %or.cond = or i1 %2, %i.aj
  br i1 %or.cond, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %0, align 8, !tbaa !382
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !388
  %i.an = tail call i32 @ft_glyphslot_alloc_bitmap(ptr noundef %i.am, i64 noundef %i.ai) #26 ; 2 uses
  %.not40 = icmp eq i32 %i.an, 0
  br i1 %.not40, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !392
  br label %bb.k

bb.k:                                             ; preds = %.split, %bb.b, %bb.a, %bb.i, %bb.h, %bb.j
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %bb.h ], [ %i.an, %bb.i ], [ 0, %bb.j ], [ 3, %bb.b ], [ 3, %.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Load_SBit_Png(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i8 noundef zeroext range(i8 0, 2) %8, i8 noundef zeroext range(i8 0, 2) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 17 uses
  %10 = alloca %struct.FT_StreamRec_, align 8     ; 5 uses
  %i.b = alloca ptr, align 8                      ; 23 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store volatile ptr null, ptr %i.i, align 8, !tbaa !640
  %i.k = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.k, -1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 6, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i8 %8, 0                        ; 3 uses
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !400
  %i.n = zext i16 %i.m to i32
  %i.o = add nuw i32 %1, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.q = load i32, ptr %i.p, align 4, !tbaa !621
  %i.r = icmp ugt i32 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i16, ptr %4, align 2, !tbaa !402
  %i.t = zext i16 %i.s to i32
  %i.u = add nuw i32 %2, %i.t
  %i.v = load i32, ptr %i.j, align 8, !tbaa !622
  %i.w = icmp ugt i32 %i.u, %i.v
  %i.x = icmp ne i32 %3, 32
  %or.cond3 = or i1 %i.x, %i.w
  br i1 %or.cond3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.z = load i8, ptr %i.y, align 2, !tbaa !413
  %.not63 = icmp eq i8 %i.z, 7
  br i1 %.not63, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store i32 6, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.aa = zext i32 %7 to i64
  call void @FT_Stream_OpenMemory(ptr noundef nonnull %10, ptr noundef %6, i64 noundef %i.aa) #26
  %i.ab = call noalias ptr @png_create_read_struct(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull @error_callback, ptr noundef nonnull @warning_callback) #26 ; 3 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !641
  %.not64 = icmp eq ptr %i.ab, null
  br i1 %.not64, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 64, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.j:                                             ; preds = %bb.h
  %i.ac = call noalias ptr @png_create_info_struct(ptr noundef nonnull %i.ab) #26 ; 8 uses
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !643
  %.not65 = icmp eq ptr %i.ac, null
  br i1 %.not65, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 64, ptr %i.a, align 4, !tbaa !3
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #26
  br label %bb.ar

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !641
  %i.ae = call ptr @png_set_longjmp_fn(ptr noundef %i.ad, ptr noundef nonnull @longjmp, i64 noundef 200) #26
  %i.af = call i32 @_setjmp(ptr noundef %i.ae) #27
  %.not66 = icmp eq i32 %i.af, 0
  br i1 %.not66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %bb.aq

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_read_fn(ptr noundef %i.ag, ptr noundef nonnull %10, ptr noundef nonnull @read_data_from_FT_Stream) #26
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_read_info(ptr noundef %i.ah, ptr noundef nonnull %i.ac) #26
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !641
  %i.aj = call i32 @png_get_IHDR(ptr noundef %i.ai, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #26 ; 0 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !3
  %.not67 = icmp eq i32 %i.ak, 0
  br i1 %.not67, label %bb.o, label %bb.aq

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr %i.d, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !400
  %i.ao = zext i16 %i.an to i32
  %.not68 = icmp eq i32 %i.al, %i.ao
  br i1 %.not68, label %bb.q, label %bb.aq

bb.q:                                             ; preds = %bb.p
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !3
  %i.aq = load i16, ptr %4, align 2, !tbaa !402
  %i.ar = zext i16 %i.aq to i32
  %.not69 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not69, label %bb.t, label %bb.aq

.critedge:                                        ; preds = %bb.o
  %i.as = load i32, ptr %i.e, align 4, !tbaa !3   ; 3 uses
  %i.at = icmp ugt i32 %i.as, 32767
  %i.au = load i32, ptr %i.d, align 4             ; 4 uses
  %i.av = icmp ugt i32 %i.au, 32767
  %or.cond5 = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  store i32 10, ptr %i.a, align 4, !tbaa !3
  br label %bb.aq

bb.s:                                             ; preds = %.critedge
  %i.aw = trunc nuw nsw i32 %i.au to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !400
  %i.ay = trunc nuw nsw i32 %i.as to i16
  store i16 %i.ay, ptr %4, align 2, !tbaa !402
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.au, ptr %i.az, align 4, !tbaa !621
  store i32 %i.as, ptr %i.j, align 8, !tbaa !622
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 7, ptr %i.ba, align 2, !tbaa !413
  %i.bb = shl nuw nsw i32 %i.au, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !422
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i16 256, ptr %i.bd, align 8, !tbaa !423
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.be = load i32, ptr %i.g, align 4, !tbaa !3   ; 2 uses
  %i.bf = icmp eq i32 %i.be, 3
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_palette_to_rgb(ptr noundef %i.bg) #26
  %.pr = load i32, ptr %i.g, align 4, !tbaa !3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bh = phi i32 [ %.pr, %bb.u ], [ %i.be, %bb.t ]
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_expand_gray_1_2_4_to_8(ptr noundef %i.bj) #26
end_hunk_2
begin_hunk_3_@tt_face_find_bdf_prop:bb.a
  store i8 1, ptr %i.d, align 4, !tbaa !323
  br label %bb.i

bb.i:                                             ; preds = %tt_face_load_bdf_props.exit, %bb.a
  %i.dp = icmp ne ptr %i.c, null
  %i.dq = icmp ne ptr %1, null
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.j, label %tt_face_load_bdf_props.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !720 ; 3 uses
  %i.dt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 2 uses
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = icmp ne i32 %i.ds, 0
  %or.cond3 = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond3, label %.preheader114, label %tt_face_load_bdf_props.exit.thread

.preheader114:                                    ; preds = %bb.j
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !324
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = shl i32 %i.ds, 2
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !725
  %i.ed = zext i16 %i.ec to i32
  br label %bb.k

bb.k:                                             ; preds = %.preheader114, %bb.l
  %.088 = phi ptr [ %i.ey, %bb.l ], [ %i.ea, %.preheader114 ] ; 2 uses
  %.085 = phi i32 [ %i.fa, %bb.l ], [ %i.ds, %.preheader114 ]
  %.079 = phi ptr [ %i.ez, %bb.l ], [ %i.dx, %.preheader114 ] ; 5 uses
  %i.ee = load i8, ptr %.079, align 1, !tbaa !16
  %i.ef = zext i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.079, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16
  %i.ej = zext i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eg, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %.079, i64 2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !16
  %i.en = zext i8 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.079, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !16
  %i.er = zext i8 %i.eq to i32
  %i.es = or disjoint i32 %i.eo, %i.er            ; 3 uses
  %i.et = icmp eq i32 %i.ek, %i.ed
  br i1 %i.et, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.not100126 = icmp eq i32 %i.es, 0
  br i1 %.not100126, label %tt_face_load_bdf_props.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1408
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ew = mul nuw nsw i32 %i.es, 10
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.088, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.079, i64 4
  %i.fa = add i32 %.085, -1                       ; 2 uses
  %.old2.not = icmp eq i32 %i.fa, 0
  br i1 %.old2.not, label %tt_face_load_bdf_props.exit.thread, label %bb.k

bb.m:                                             ; preds = %.lr.ph, %.thread
  %.180128 = phi ptr [ %.088, %.lr.ph ], [ %i.gq, %.thread ] ; 7 uses
  %.287127 = phi i32 [ %i.es, %.lr.ph ], [ %i.gr, %.thread ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.180128, i64 5
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !16
  %i.fd = zext i8 %i.fc to i32                    ; 2 uses
  %i.fe = and i32 %i.fd, 16
  %.not101 = icmp eq i32 %i.fe, 0
  br i1 %.not101, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ff = load i32, ptr %.180128, align 1
  %i.fg = tail call i32 @llvm.bswap.i32(i32 %i.ff)
  %i.fh = zext i32 %i.fg to i64                   ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.180128, i64 6
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !16
  %i.fk = zext i8 %i.fj to i32
  %i.fl = shl nuw i32 %i.fk, 24
  %i.fm = getelementptr inbounds nuw i8, ptr %.180128, i64 7
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  %i.fo = zext i8 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 16
  %i.fq = or disjoint i32 %i.fp, %i.fl
  %i.fr = getelementptr inbounds nuw i8, ptr %.180128, i64 8
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !16
  %i.ft = zext i8 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 8
  %i.fv = or disjoint i32 %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %.180128, i64 9
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !16
  %i.fy = zext i8 %i.fx to i32
  %i.fz = or disjoint i32 %i.fv, %i.fy            ; 3 uses
  %i.ga = load i64, ptr %i.eu, align 8, !tbaa !722 ; 4 uses
  %i.gb = icmp ugt i64 %i.ga, %i.fh
  br i1 %i.gb, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.gc = sub nuw i64 %i.ga, %i.fh                ; 2 uses
  %i.gd = icmp ult i64 %i.dt, %i.gc
  br i1 %i.gd, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ge = load ptr, ptr %i.ev, align 8, !tbaa !721 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fh
  %i.gg = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef %i.gf, i64 noundef %i.gc) #29
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.gi = and i32 %i.fd, 15
  switch i32 %i.gi, label %.thread [
    i32 0, label %bb.r
    i32 1, label %bb.r
    i32 2, label %bb.u
    i32 3, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.gj = zext i32 %i.fz to i64                   ; 2 uses
  %i.gk = icmp ugt i64 %i.ga, %i.gj
  br i1 %i.gk, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gj ; 2 uses
  %i.gm = tail call ptr @memchr(ptr noundef %i.gl, i32 noundef 0, i64 noundef %i.ga) #29
  %.not102 = icmp eq ptr %i.gm, null
  br i1 %.not102, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %2, align 8, !tbaa !717
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.gl, ptr %i.gn, align 8, !tbaa !16
  br label %tt_face_load_bdf_props.exit.thread

bb.u:                                             ; preds = %bb.q
  store i32 2, ptr %2, align 8, !tbaa !717
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.fz, ptr %i.go, align 8, !tbaa !16
  br label %tt_face_load_bdf_props.exit.thread

bb.v:                                             ; preds = %bb.q
  store i32 3, ptr %2, align 8, !tbaa !717
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.fz, ptr %i.gp, align 8, !tbaa !16
  br label %tt_face_load_bdf_props.exit.thread

.thread:                                          ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.m
  %i.gq = getelementptr inbounds nuw i8, ptr %.180128, i64 10
  %i.gr = add nsw i32 %.287127, -1                ; 2 uses
  %.not100 = icmp eq i32 %i.gr, 0
  br i1 %.not100, label %tt_face_load_bdf_props.exit.thread, label %bb.m, !llvm.loop !726

tt_face_load_bdf_props.exit.thread:               ; preds = %bb.d, %bb.l, %.thread, %.preheader, %bb.u, %bb.t, %bb.v, %bb.b, %tt_face_goto_table.exit.i, %bb.e, %select.unfold.i, %bb.i, %bb.j
  %.0 = phi i32 [ 6, %bb.i ], [ 6, %bb.j ], [ 6, %bb.l ], [ 6, %.preheader ], [ 0, %bb.u ], [ 8, %select.unfold.i ], [ 8, %bb.e ], [ 8, %tt_face_goto_table.exit.i ], [ 8, %bb.b ], [ 0, %bb.v ], [ 0, %bb.t ], [ 6, %.thread ], [ 8, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define internal i32 @tt_get_cmap_info(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !727
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !728  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 150, %bb.a ]
  ret i32 %.0
}

declare hidden void @ft_validator_error(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 65536) i32 @tt_cmap4_char_map_linear(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(address) %.24.val, ptr nofree noundef captures(none) %0, i8 noundef zeroext range(i8 0, 2) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !602
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 824
  %i.d = load i64, ptr %i.c, align 8, !tbaa !326
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.24.val, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %.24.val, i64 7
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 2 uses
  %i.n = lshr i32 %i.m, 1                         ; 4 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.thread14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i8 %1 to i32
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %i.r = and i32 %i.m, 65534
  %i.s = getelementptr inbounds nuw i8, ptr %.24.val, i64 14 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.24.val, i64 16
  %i.u = zext nneg i32 %i.r to i64                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 2 uses
  %i.w = add nsw i32 %i.n, -1                     ; 2 uses
  %.not114 = icmp eq i8 %1, 0                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  br i1 %.not114, label %.split107.us.split.us, label %.split.a

.split107.us.split.us:                            ; preds = %bb.b, %.thread4.split.us.split.us.us.us
  %.091106.us.us = phi ptr [ %i.z, %.thread4.split.us.split.us.us.us ], [ %i.v, %bb.b ] ; 4 uses
  %.092105.us.us = phi ptr [ %i.y, %.thread4.split.us.split.us.us.us ], [ %i.s, %bb.b ] ; 3 uses
  %.094104.us.us = phi i32 [ %.094104.us.us.mux, %.thread4.split.us.split.us.us.us ], [ %i.q, %bb.b ] ; 2 uses
  %.0101103.us.us = phi i32 [ %i.bd, %.thread4.split.us.split.us.us.us ], [ 0, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.092105.us.us, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %.091106.us.us, i64 2
  %i.aa = load i8, ptr %.091106.us.us, align 1, !tbaa !16
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.091106.us.us, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = zext i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ac, %i.af            ; 4 uses
  %.not215 = icmp ult i32 %.094104.us.us, %i.ag
  %.094104.us.us.mux = tail call i32 @llvm.umax.i32(i32 %.094104.us.us, i32 %i.ag) ; 7 uses
  br i1 %.not215, label %.thread14, label %.split.us.us.us

.split.us.us.us:                                  ; preds = %.split107.us.split.us
  %i.ah = load i8, ptr %.092105.us.us, align 1, !tbaa !16
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.092105.us.us, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am            ; 2 uses
  %.not112.us.us.us.us = icmp ugt i32 %.094104.us.us.mux, %i.an
  br i1 %.not112.us.us.us.us, label %.thread4.split.us.split.us.us.us, label %bb.c

bb.c:                                             ; preds = %.split.us.us.us
  %2 = getelementptr inbounds nuw i8, ptr %.091106.us.us, i64 %i.u ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 %i.u ; 4 uses
  %i.ao = icmp uge i32 %.0101103.us.us, %i.w
  %i.ap = icmp eq i32 %i.ag, 65535
  %or.cond.us.us = and i1 %i.ao, %i.ap
  %i.aq = icmp eq i32 %i.an, 65535
  %or.cond3.us.us = and i1 %or.cond.us.us, %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.as = load i8, ptr %3, align 1, !tbaa !16
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw            ; 3 uses
  %i.ay = icmp ne i32 %i.ax, 0
  %or.cond7.us.us.us.us = select i1 %or.cond3.us.us, i1 %i.ay, i1 false
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = icmp ugt ptr %i.bb, %i.e
  %or.cond123.us.us.us.us = select i1 %or.cond7.us.us.us.us, i1 %i.bc, i1 false ; 3 uses
  %.0103.us.us.us.us = select i1 %or.cond123.us.us.us.us, i32 0, i32 %i.ax ; 2 uses
  %trunc.us.us.us.us = trunc nuw i32 %.0103.us.us.us.us to i16
  switch i16 %trunc.us.us.us.us, label %.split136.us.split.us [
    i16 -1, label %.thread4.split.us.split.us.us.us
    i16 0, label %.split49.us.split.us.split.us
  ]

.thread4.split.us.split.us.us.us:                 ; preds = %bb.c, %.split.us.us.us
  %i.bd = add nuw nsw i32 %.0101103.us.us, 1      ; 2 uses
  %exitcond204.not = icmp eq i32 %i.bd, %i.n
  br i1 %exitcond204.not, label %.thread10, label %.split107.us.split.us, !llvm.loop !729

.split49.us.split.us.split.us:                    ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bf = load i8, ptr %2, align 1, !tbaa !16
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !16
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %.0102.us.us.le86 = select i1 %or.cond123.us.us.us.us, i32 1, i32 %i.bk
  %i.bl = add nuw nsw i32 %.0102.us.us.le86, %.094104.us.us.mux
  %i.bm = and i32 %i.bl, 65535
  br label %.thread14

.split136.us.split.us:                            ; preds = %bb.c
  %4 = sub nsw i32 %.094104.us.us.mux, %i.ag
  %5 = shl nsw i32 %4, 1
  %6 = add nsw i32 %.0103.us.us.us.us, %5
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 %7 ; 2 uses
  %i.bn = load i8, ptr %8, align 1, !tbaa !16
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 8
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bp, %i.bs            ; 2 uses
  %.not117.us.us = icmp eq i32 %i.bt, 0
  br i1 %.not117.us.us, label %.thread10, label %bb.d

.split.a:                                         ; preds = %bb.b, %.thread4.split
  %.091106 = phi ptr [ %i.cc, %.thread4.split ], [ %i.v, %bb.b ] ; 4 uses
  %.092105 = phi ptr [ %i.bu, %.thread4.split ], [ %i.s, %bb.b ] ; 3 uses
  %.094104 = phi i32 [ %.296, %.thread4.split ], [ %i.q, %bb.b ]
  %.0101103 = phi i32 [ %i.er, %.thread4.split ], [ 0, %bb.b ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.092105, i64 2
  %i.bv = load i8, ptr %.092105, align 1, !tbaa !16
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 8
  %i.by = getelementptr inbounds nuw i8, ptr %.092105, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.bx, %i.ca            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.091106, i64 2
  %i.cd = load i8, ptr %.091106, align 1, !tbaa !16
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.091106, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = zext i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cf, %i.ci            ; 3 uses
  %.094104.mux = tail call i32 @llvm.umax.i32(i32 %.094104, i32 %i.cj)
  %9 = getelementptr inbounds nuw i8, ptr %.091106, i64 %i.u ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 1
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 %i.u ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.ck = icmp uge i32 %.0101103, %i.w
  %13 = icmp eq i32 %i.cj, 65535
  %or.cond = and i1 %i.ck, %13
  %14 = icmp eq i32 %i.cb, 65535
  %or.cond3 = and i1 %or.cond, %14
  br label %bb.e

bb.d:                                             ; preds = %.split136.us.split.us
  %i.cl = load i8, ptr %2, align 1, !tbaa !16
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cn, %i.cq
  %.0102.us.us.le = select i1 %or.cond123.us.us.us.us, i32 1, i32 %i.cr
  %i.cs = add nuw nsw i32 %i.bt, %.0102.us.us.le
  %i.ct = and i32 %i.cs, 65535                    ; 2 uses
  %i.cu = load i64, ptr %i.x, align 8, !tbaa !147
  %i.cv = trunc i64 %i.cu to i32
  %.not118.us.us = icmp ult i32 %i.ct, %i.cv
  %spec.store.select.us.us = select i1 %.not118.us.us, i32 %i.ct, i32 0
  br label %.thread10

bb.e:                                             ; preds = %.thread, %.split.a
  %.296 = phi i32 [ %.094104.mux, %.split.a ], [ %i.eq, %.thread ] ; 9 uses
  %.not112 = icmp ugt i32 %.296, %i.cb
  br i1 %.not112, label %.thread4.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cw = load i8, ptr %9, align 1, !tbaa !16
  %i.cx = zext i8 %i.cw to i16
  %i.cy = shl nuw i16 %i.cx, 8
  %i.cz = load i8, ptr %10, align 1, !tbaa !16
  %i.da = zext i8 %i.cz to i16
  %i.db = or disjoint i16 %i.cy, %i.da
  %i.dc = sext i16 %i.db to i32
  %i.dd = load i8, ptr %11, align 1, !tbaa !16
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 8
  %i.dg = load i8, ptr %12, align 1, !tbaa !16
  %i.dh = zext i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh            ; 3 uses
  %i.dj = icmp ne i32 %i.di, 0
  %or.cond7 = select i1 %or.cond3, i1 %i.dj, i1 false
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dn = icmp ugt ptr %i.dm, %i.e
  %or.cond123 = select i1 %or.cond7, i1 %i.dn, i1 false ; 2 uses
  %.0103 = select i1 %or.cond123, i32 0, i32 %i.di ; 2 uses
  %.0102 = select i1 %or.cond123, i32 1, i32 %i.dc ; 5 uses
  %trunc = trunc nuw i32 %.0103 to i16
  switch i16 %trunc, label %bb.g [
    i16 -1, label %.thread4.split
    i16 0, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.do = sub nsw i32 %.296, %i.cj
  %i.dp = shl nsw i32 %i.do, 1
  %i.dq = add nsw i32 %.0103, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 %i.dr ; 3 uses
  %i.dt = icmp ugt ptr %i.ds, %i.e
  br i1 %i.dt, label %.thread4.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !16
  %i.dz = zext i8 %i.dy to i32
  %i.ea = or disjoint i32 %i.dw, %i.dz            ; 2 uses
  %.not117 = icmp eq i32 %i.ea, 0
  br i1 %.not117, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eb = add nsw i32 %i.ea, %.0102
  %i.ec = and i32 %i.eb, 65535                    ; 2 uses
  %i.ed = load i64, ptr %i.x, align 8, !tbaa !147
  %i.ee = trunc i64 %i.ed to i32
  %.not118 = icmp ult i32 %i.ec, %i.ee
  br i1 %.not118, label %select.unfold, label %.thread

bb.j:                                             ; preds = %bb.f
  %i.ef = add nsw i32 %.0102, %.296               ; 3 uses
  %i.eg = and i32 %i.ef, 65535                    ; 2 uses
  %i.eh = load i64, ptr %i.x, align 8, !tbaa !147
  %i.ei = trunc i64 %i.eh to i32
  %.not115 = icmp ult i32 %i.eg, %i.ei
  br i1 %.not115, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ej = icmp slt i32 %i.ef, 0
  %i.ek = add nsw i32 %.0102, %i.cb               ; 2 uses
  %i.el = icmp sgt i32 %i.ek, -1
  %or.cond126 = select i1 %i.ej, i1 %i.el, i1 false
  br i1 %or.cond126, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.em = sub nsw i32 0, %.0102
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.en = icmp slt i32 %i.ef, 65536
  %i.eo = icmp sgt i32 %i.ek, 65535
  %or.cond128 = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond128, label %bb.n, label %.thread4.split

bb.n:                                             ; preds = %bb.m
  %narrow = sub nsw i32 65536, %.0102
  br label %.thread

select.unfold:                                    ; preds = %bb.i, %bb.j
  %.2 = phi i32 [ %i.eg, %bb.j ], [ %i.ec, %bb.i ] ; 2 uses
  %.not214 = icmp eq i32 %.2, 0
  br i1 %.not214, label %.thread, label %.thread10

.thread:                                          ; preds = %bb.n, %bb.l, %bb.h, %bb.i, %select.unfold
  %.397219 = phi i32 [ %.296, %select.unfold ], [ %narrow, %bb.n ], [ %i.em, %bb.l ], [ %.296, %bb.h ], [ %.296, %bb.i ] ; 3 uses
  %i.ep = icmp ugt i32 %.397219, 65534
  %i.eq = add nuw nsw i32 %.397219, 1
  br i1 %i.ep, label %.thread10.thread21, label %bb.e

.thread4.split:                                   ; preds = %bb.m, %bb.f, %bb.g, %bb.e
  %i.er = add nuw nsw i32 %.0101103, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.er, %i.n
  br i1 %exitcond.not, label %.thread10, label %.split.a, !llvm.loop !729

.thread10:                                        ; preds = %.thread4.split, %select.unfold, %.thread4.split.us.split.us.us.us, %bb.d, %.split136.us.split.us
  %.6 = phi i32 [ %.296, %select.unfold ], [ %.094104.us.us.mux, %bb.d ], [ %.094104.us.us.mux, %.thread4.split.us.split.us.us.us ], [ %.094104.us.us.mux, %.split136.us.split.us ], [ %.296, %.thread4.split ]
  %.5 = phi i32 [ %.2, %select.unfold ], [ %spec.store.select.us.us, %bb.d ], [ 0, %.thread4.split.us.split.us.us.us ], [ 0, %.split136.us.split.us ], [ 0, %.thread4.split ] ; 2 uses
  br i1 %.not114, label %.thread14, label %.thread10.thread21

.thread10.thread21:                               ; preds = %.thread, %.thread10
  %.526 = phi i32 [ %.5, %.thread10 ], [ 0, %.thread ]
  %.625 = phi i32 [ %.6, %.thread10 ], [ %.397219, %.thread ]
  store i32 %.625, ptr %0, align 4, !tbaa !3
  br label %.thread14

.thread14:                                        ; preds = %.split107.us.split.us, %.split49.us.split.us.split.us, %.thread10, %.thread10.thread21, %bb.a
  %.0100 = phi i32 [ 0, %bb.a ], [ %.526, %.thread10.thread21 ], [ %.5, %.thread10 ], [ %i.bm, %.split49.us.split.us.split.us ], [ 0, %.split107.us.split.us ]
  ret i32 %.0100
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @tt_cmap4_char_map_binary(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !602
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.e = load i64, ptr %i.d, align 8, !tbaa !326
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !3
  %i.h = zext nneg i8 %2 to i32
  %i.i = add i32 %i.g, %i.h                       ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r               ; 2 uses
  %i.t = lshr i32 %i.s, 1                         ; 7 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.thread372, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = and i32 %i.s, 65534                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 14 ; 8 uses
  %i.w = add nuw nsw i32 %i.u, 2
  %i.x = zext nneg i32 %i.w to i64                ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %bb.b
  %.0281 = phi i32 [ 0, %bb.b ], [ %.1282, %bb.v ] ; 2 uses
  %.0267 = phi i32 [ %i.t, %bb.b ], [ %.1268, %bb.v ] ; 2 uses
  %i.y = add i32 %.0267, %.0281                   ; 4 uses
  %i.z = lshr i32 %i.y, 1                         ; 15 uses
  %i.aa = and i32 %i.y, -2
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq            ; 7 uses
  %i.as = icmp ult i32 %i.i, %i.ar
  br i1 %i.as, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = icmp ugt i32 %i.i, %i.aj
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = add nuw i32 %i.z, 1
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.av = zext nneg i32 %i.u to i64               ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.av ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = zext i8 %i.ax to i16
  %i.az = shl nuw i16 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = zext i8 %i.bb to i16
  %i.bd = or disjoint i16 %i.az, %i.bc
  %i.be = sext i16 %i.bd to i32                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 6 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl            ; 4 uses
  %i.bn = add nsw i32 %i.t, -1
  %i.bo = icmp uge i32 %i.z, %i.bn
  %i.bp = icmp eq i32 %i.ar, 65535
  %or.cond = and i1 %i.bo, %i.bp
  %i.bq = icmp eq i32 %i.aj, 65535
  %or.cond3 = select i1 %or.cond, i1 %i.bq, i1 false
  %i.br = icmp ne i32 %i.bm, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.br, i1 false
  %i.bs = zext nneg i32 %i.bm to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = icmp ugt ptr %i.bu, %i.f
  %or.cond314 = select i1 %or.cond5, i1 %i.bv, i1 false ; 2 uses
  %.0231 = select i1 %or.cond314, i32 1, i32 %i.be ; 4 uses
  %.0219 = select i1 %or.cond314, i32 0, i32 %i.bm ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !39
  %i.by = and i32 %i.bx, 2
  %.not294 = icmp eq i32 %i.by, 0
  %i.bz = icmp eq i32 %.0219, 65535               ; 3 uses
  br i1 %.not294, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = add nuw i32 %i.z, 1                     ; 3 uses
  %.not295412 = icmp eq i32 %i.z, 0
  br i1 %.not295412, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %spec.select = select i1 %i.bz, i32 %i.ca, i32 %i.z ; 2 uses
  %i.cb = lshr i32 %i.y, 1                        ; 3 uses
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  %i.cd = shl nuw i32 %i.cc, 1
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.ci, %i.cl            ; 2 uses
  %i.cn = icmp samesign ugt i32 %i.i, %i.cm
  br i1 %i.cn, label %._crit_edge, label %.lr.ph562

.lr.ph562:                                        ; preds = %.lr.ph.preheader
  %i.co = zext nneg i32 %i.cb to i64
  %invariant.gep = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  br label %bb.h

.lr.ph:                                           ; preds = %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv560, -1 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  %i.cr = shl nuw i32 %i.cq, 1
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !16
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz            ; 2 uses
  %i.db = icmp samesign ugt i32 %i.i, %i.da
  br i1 %i.db, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !730

bb.h:                                             ; preds = %.lr.ph562, %.lr.ph
  %i.dc = phi i32 [ %i.cm, %.lr.ph562 ], [ %i.da, %.lr.ph ] ; 2 uses
  %i.dd = phi i64 [ %i.ce, %.lr.ph562 ], [ %i.cs, %.lr.ph ]
  %i.de = phi i32 [ %i.cc, %.lr.ph562 ], [ %i.cq, %.lr.ph ] ; 2 uses
  %.1270413561 = phi i32 [ %spec.select, %.lr.ph562 ], [ %spec.select315, %.lr.ph ]
  %indvars.iv560 = phi i64 [ %i.co, %.lr.ph562 ], [ %indvars.iv.next, %.lr.ph ]
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %i.dd ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 %i.av ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.av ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  %i.dm = zext i8 %i.dl to i32
  %i.dn = or disjoint i32 %i.dj, %i.dm            ; 3 uses
  %.not296 = icmp eq i32 %i.dn, 65535
  %spec.select315 = select i1 %.not296, i32 %.1270413561, i32 %i.de ; 3 uses
  %.not295 = icmp eq i32 %i.de, 0
  br i1 %.not295, label %.._crit_edge_crit_edge, label %.lr.ph, !llvm.loop !730

.._crit_edge_crit_edge:                           ; preds = %bb.h
  %i.do = load i8, ptr %gep, align 1, !tbaa !16
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !16
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dq, %i.dt
  %i.dv = load i8, ptr %i.df, align 1, !tbaa !16
  %i.dw = zext i8 %i.dv to i16
  %i.dx = shl nuw i16 %i.dw, 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !16
  %i.ea = zext i8 %i.dz to i16
  %i.eb = or disjoint i16 %i.dx, %i.ea
  %i.ec = sext i16 %i.eb to i32
  br label %._crit_edge, !llvm.loop !730

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ed = load i8, ptr %gep, align 1, !tbaa !16
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !16
end_hunk_3
begin_hunk_4_@tt_cmap4_char_map_binary:bb.a
  %.0250.lcssa = phi ptr [ %i.bf, %.lr.ph.preheader ], [ %i.dg, %.._crit_edge_crit_edge ], [ %i.dg, %._crit_edge.loopexit ]
  %.0243.lcssa = phi i32 [ %i.cb, %.lr.ph.preheader ], [ 0, %.._crit_edge_crit_edge ], [ %i.cp, %._crit_edge.loopexit ] ; 2 uses
  %.1232.lcssa = phi i32 [ %.0231, %.lr.ph.preheader ], [ %i.ec, %.._crit_edge_crit_edge ], [ %i.er, %._crit_edge.loopexit ] ; 2 uses
  %.1220.lcssa = phi i32 [ %.0219, %.lr.ph.preheader ], [ %i.dn, %.._crit_edge_crit_edge ], [ %i.dn, %._crit_edge.loopexit ] ; 2 uses
  %.0208.lcssa = phi i32 [ %i.aj, %.lr.ph.preheader ], [ %i.dc, %.._crit_edge_crit_edge ], [ %i.dc, %._crit_edge.loopexit ] ; 2 uses
  %.0206.lcssa = phi i32 [ %i.ar, %.lr.ph.preheader ], [ %i.du, %.._crit_edge_crit_edge ], [ %i.ej, %._crit_edge.loopexit ] ; 2 uses
  %i.es = icmp eq i32 %.1270.lcssa, %i.ca
  br i1 %i.es, label %bb.i, label %bb.k

._crit_edge.thread:                               ; preds = %bb.g
  br i1 %i.bz, label %.thread, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %.not297 = icmp eq i32 %.0243.lcssa, %i.z
  br i1 %.not297, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.j, %bb.i
  %.4235 = phi i32 [ %i.be, %bb.j ], [ %.1232.lcssa, %bb.i ], [ %.0231, %._crit_edge.thread ]
  %.4223 = phi i32 [ %i.bm, %bb.j ], [ %.1220.lcssa, %bb.i ], [ 65535, %._crit_edge.thread ]
  %.3211 = phi i32 [ %i.aj, %bb.j ], [ %.0208.lcssa, %bb.i ], [ %i.aj, %._crit_edge.thread ] ; 2 uses
  %.3 = phi i32 [ %i.ar, %bb.j ], [ %.0206.lcssa, %bb.i ], [ %i.ar, %._crit_edge.thread ]
  %i.et = icmp ult i32 %i.ca, %i.t
  br i1 %i.et, label %.lr.ph441.preheader, label %.loopexit390

.lr.ph441.preheader:                              ; preds = %.thread
  %i.eu = lshr i32 %i.y, 1                        ; 2 uses
  %narrow = add nuw i32 %i.eu, 1                  ; 3 uses
  %i.ev = zext i32 %narrow to i64                 ; 2 uses
  %i.ew = add nuw i32 %i.t, %i.eu
  %i.ex = sub i32 %i.ew, %i.z
  %wide.trip.count = zext i32 %i.ex to i64
  %i.ey = shl nuw nsw i64 %i.ev, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.x ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !16
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !16
  %i.fg = zext i8 %i.ff to i32
  %i.fh = or disjoint i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = icmp ult i32 %i.i, %i.fh
  br i1 %i.fi, label %._crit_edge442, label %.lr.ph578

.lr.ph441:                                        ; preds = %.lr.ph578
  %i.fj = shl nuw nsw i64 %indvars.iv.next482, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.x ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !16
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !16
  %i.fr = zext i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fo, %i.fr            ; 2 uses
  %i.ft = icmp ult i32 %i.i, %i.fs
  %i.fu = trunc nuw i64 %indvars.iv.next482 to i32 ; 2 uses
  br i1 %i.ft, label %._crit_edge442.loopexit, label %.lr.ph578, !llvm.loop !731

.lr.ph578:                                        ; preds = %.lr.ph441.preheader, %.lr.ph441
  %i.fv = phi i32 [ %i.fu, %.lr.ph441 ], [ %narrow, %.lr.ph441.preheader ]
  %i.fw = phi i32 [ %i.fs, %.lr.ph441 ], [ %i.fh, %.lr.ph441.preheader ] ; 2 uses
  %i.fx = phi ptr [ %i.fk, %.lr.ph441 ], [ %i.ez, %.lr.ph441.preheader ] ; 5 uses
  %.5274434577 = phi i32 [ %spec.select316, %.lr.ph441 ], [ %i.z, %.lr.ph441.preheader ]
  %indvars.iv481576 = phi i64 [ %indvars.iv.next482, %.lr.ph441 ], [ %i.ev, %.lr.ph441.preheader ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.x
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.av ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.av ; 3 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !16
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !16
  %i.gg = zext i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.gd, %i.gg            ; 3 uses
  %.not298 = icmp eq i32 %i.gh, 65535
  %spec.select316 = select i1 %.not298, i32 %.5274434577, i32 %i.fv ; 3 uses
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481576, 1 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next482, %wide.trip.count
  br i1 %exitcond.not, label %.._crit_edge442_crit_edge, label %.lr.ph441, !llvm.loop !731

.._crit_edge442_crit_edge:                        ; preds = %.lr.ph578
  %i.gi = load i8, ptr %i.fx, align 1, !tbaa !16
  %i.gj = zext i8 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.gj, 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !16
  %i.gn = zext i8 %i.gm to i32
  %i.go = or disjoint i32 %i.gk, %i.gn
  %i.gp = load i8, ptr %i.fz, align 1, !tbaa !16
  %i.gq = zext i8 %i.gp to i16
  %i.gr = shl nuw i16 %i.gq, 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !16
  %i.gu = zext i8 %i.gt to i16
  %i.gv = or disjoint i16 %i.gr, %i.gu
  %i.gw = sext i16 %i.gv to i32
  br label %._crit_edge442, !llvm.loop !731

._crit_edge442.loopexit:                          ; preds = %.lr.ph441
  %i.gx = load i8, ptr %i.fx, align 1, !tbaa !16
  %i.gy = zext i8 %i.gx to i32
  %i.gz = shl nuw nsw i32 %i.gy, 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !16
  %i.hc = zext i8 %i.hb to i32
  %i.hd = or disjoint i32 %i.gz, %i.hc
  %i.he = load i8, ptr %i.fz, align 1, !tbaa !16
  %i.hf = zext i8 %i.he to i16
  %i.hg = shl nuw i16 %i.hf, 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !16
  %i.hj = zext i8 %i.hi to i16
  %i.hk = or disjoint i16 %i.hg, %i.hj
  %i.hl = sext i16 %i.hk to i32
  br label %._crit_edge442

._crit_edge442:                                   ; preds = %._crit_edge442.loopexit, %.._crit_edge442_crit_edge, %.lr.ph441.preheader
  %.5274.lcssa.ph = phi i32 [ %spec.select316, %.._crit_edge442_crit_edge ], [ %i.z, %.lr.ph441.preheader ], [ %spec.select316, %._crit_edge442.loopexit ] ; 2 uses
  %.1244.lcssa.ph = phi i32 [ %i.t, %.._crit_edge442_crit_edge ], [ %narrow, %.lr.ph441.preheader ], [ %i.fu, %._crit_edge442.loopexit ]
  %.5236.lcssa.ph = phi i32 [ %i.gw, %.._crit_edge442_crit_edge ], [ %.4235, %.lr.ph441.preheader ], [ %i.hl, %._crit_edge442.loopexit ]
  %.5224.lcssa.ph = phi i32 [ %i.gh, %.._crit_edge442_crit_edge ], [ %.4223, %.lr.ph441.preheader ], [ %i.gh, %._crit_edge442.loopexit ]
  %.4212.lcssa.ph = phi i32 [ %i.go, %.._crit_edge442_crit_edge ], [ %.3211, %.lr.ph441.preheader ], [ %i.hd, %._crit_edge442.loopexit ] ; 2 uses
  %.4.lcssa.ph = phi i32 [ %i.fw, %.._crit_edge442_crit_edge ], [ %.3, %.lr.ph441.preheader ], [ %i.fw, %._crit_edge442.loopexit ]
  %.6256.ph = phi ptr [ %i.ga, %.._crit_edge442_crit_edge ], [ %i.fa, %.lr.ph441.preheader ], [ %i.fl, %._crit_edge442.loopexit ]
  %i.hm = add i32 %.1244.lcssa.ph, -1             ; 2 uses
  %i.hn = icmp eq i32 %.5274.lcssa.ph, %i.z
  br i1 %i.hn, label %.loopexit390, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge442, %._crit_edge
  %.9278 = phi i32 [ %.5274.lcssa.ph, %._crit_edge442 ], [ %.1270.lcssa, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 4 uses
  %.7257 = phi ptr [ %.6256.ph, %._crit_edge442 ], [ %.0250.lcssa, %._crit_edge ], [ %i.bf, %._crit_edge.thread ]
  %.2245 = phi i32 [ %i.hm, %._crit_edge442 ], [ %.0243.lcssa, %._crit_edge ], [ 0, %._crit_edge.thread ]
  %.8239 = phi i32 [ %.5236.lcssa.ph, %._crit_edge442 ], [ %.1232.lcssa, %._crit_edge ], [ %.0231, %._crit_edge.thread ]
  %.8227 = phi i32 [ %.5224.lcssa.ph, %._crit_edge442 ], [ %.1220.lcssa, %._crit_edge ], [ %.0219, %._crit_edge.thread ]
  %.7215 = phi i32 [ %.4212.lcssa.ph, %._crit_edge442 ], [ %.0208.lcssa, %._crit_edge ], [ %i.aj, %._crit_edge.thread ]
  %.7 = phi i32 [ %.4.lcssa.ph, %._crit_edge442 ], [ %.0206.lcssa, %._crit_edge ], [ %i.ar, %._crit_edge.thread ]
  %.not299 = icmp eq i32 %.9278, %.2245
  br i1 %.not299, label %.thread353, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ho = shl i32 %.9278, 1
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hp ; 3 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !16
  %i.hs = zext i8 %i.hr to i32
  %i.ht = shl nuw nsw i32 %i.hs, 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !16
  %i.hw = zext i8 %i.hv to i32
  %i.hx = or disjoint i32 %i.ht, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.x ; 3 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !16
  %i.ia = zext i8 %i.hz to i32
  %i.ib = shl nuw nsw i32 %i.ia, 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !16
  %i.ie = zext i8 %i.id to i32
  %i.if = or disjoint i32 %i.ib, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.av ; 3 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !16
  %i.ii = zext i8 %i.ih to i16
  %i.ij = shl nuw i16 %i.ii, 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !16
  %i.im = zext i8 %i.il to i16
  %i.in = or disjoint i16 %i.ij, %i.im
  %i.io = sext i16 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.av ; 3 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !16
  %i.ir = zext i8 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !16
  %i.iv = zext i8 %i.iu to i32
  %i.iw = or disjoint i32 %i.is, %i.iv
  br label %.thread353

bb.m:                                             ; preds = %bb.f
  br i1 %i.bz, label %.loopexit390, label %.thread353

.thread353:                                       ; preds = %bb.k, %bb.l, %bb.m
  %.11280 = phi i32 [ %i.z, %bb.m ], [ %.9278, %bb.l ], [ %.9278, %bb.k ] ; 6 uses
  %.10260 = phi ptr [ %i.bf, %bb.m ], [ %i.ip, %bb.l ], [ %.7257, %bb.k ]
  %.11242 = phi i32 [ %.0231, %bb.m ], [ %i.io, %bb.l ], [ %.8239, %bb.k ] ; 5 uses
  %.11230 = phi i32 [ %.0219, %bb.m ], [ %i.iw, %bb.l ], [ %.8227, %bb.k ] ; 2 uses
  %.10218 = phi i32 [ %i.aj, %bb.m ], [ %i.hx, %bb.l ], [ %.7215, %bb.k ] ; 7 uses
  %.10 = phi i32 [ %i.ar, %bb.m ], [ %i.if, %bb.l ], [ %.7, %bb.k ]
  %.not300 = icmp eq i32 %.11230, 0
  br i1 %.not300, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.thread353
  %i.ix = sub nsw i32 %i.i, %.10
  %i.iy = shl nsw i32 %i.ix, 1
  %i.iz = add nsw i32 %i.iy, %.11230
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %.10260, i64 %i.ja ; 3 uses
  %.not303 = icmp ne i8 %2, 0
  %i.jc = icmp ugt ptr %i.jb, %i.f
  %or.cond319 = select i1 %.not303, i1 %i.jc, i1 false
  br i1 %or.cond319, label %.thread362, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jd = load i8, ptr %i.jb, align 1, !tbaa !16
  %i.je = zext i8 %i.jd to i32
  %i.jf = shl nuw nsw i32 %i.je, 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !16
  %i.ji = zext i8 %i.jh to i32
  %i.jj = or disjoint i32 %i.jf, %i.ji            ; 2 uses
  %.not304 = icmp eq i32 %i.jj, 0
  br i1 %.not304, label %.loopexit390, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jk = add nsw i32 %i.jj, %.11242
  %i.jl = and i32 %i.jk, 65535                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !147
  %i.jo = trunc i64 %i.jn to i32
  %.not305 = icmp ult i32 %i.jl, %i.jo
  %spec.store.select = select i1 %.not305, i32 %i.jl, i32 0
  br label %.loopexit390

bb.q:                                             ; preds = %.thread353
  %i.jp = add nsw i32 %.11242, %i.i               ; 3 uses
  %i.jq = and i32 %i.jp, 65535                    ; 3 uses
  %.not301 = icmp eq i8 %2, 0
  br i1 %.not301, label %.thread372, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !147
  %i.jt = trunc i64 %i.js to i32
  %.not302 = icmp ult i32 %i.jq, %i.jt
  br i1 %.not302, label %.thread362, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ju = icmp slt i32 %i.jp, 0
  %i.jv = add nsw i32 %.10218, %.11242            ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, -1
  %or.cond321 = select i1 %i.ju, i1 %i.jw, i1 false
  br i1 %or.cond321, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jx = sub nsw i32 0, %.11242
  br label %.thread362

bb.u:                                             ; preds = %bb.s
  %i.jy = icmp slt i32 %i.jp, 65536
  %i.jz = icmp sgt i32 %i.jv, 65535
  %or.cond323 = select i1 %i.jy, i1 %i.jz, i1 false
  %i.ka = sub nsw i32 65536, %.11242
  %spec.select324 = select i1 %or.cond323, i32 %i.ka, i32 %i.i
  br label %.thread362

bb.v:                                             ; preds = %bb.c, %bb.e
  %.1282 = phi i32 [ %i.au, %bb.e ], [ %.0281, %bb.c ] ; 2 uses
  %.1268 = phi i32 [ %.0267, %bb.e ], [ %i.z, %bb.c ] ; 2 uses
  %i.kb = icmp ult i32 %.1282, %.1268
  br i1 %i.kb, label %bb.c, label %.loopexit390, !llvm.loop !732

.loopexit390:                                     ; preds = %bb.v, %.thread, %._crit_edge442, %bb.p, %bb.o, %bb.m
  %.12 = phi i32 [ %i.hm, %._crit_edge442 ], [ %i.z, %bb.m ], [ %.11280, %bb.p ], [ %.11280, %bb.o ], [ %i.z, %.thread ], [ %i.z, %bb.v ]
  %.0261 = phi i32 [ 0, %._crit_edge442 ], [ 0, %bb.m ], [ %spec.store.select, %bb.p ], [ 0, %bb.o ], [ 0, %.thread ], [ 0, %bb.v ] ; 2 uses
  %.11 = phi i32 [ %.4212.lcssa.ph, %._crit_edge442 ], [ %i.aj, %bb.m ], [ %.10218, %bb.p ], [ %.10218, %bb.o ], [ %.3211, %.thread ], [ %i.aj, %bb.v ]
  %.not306 = icmp eq i8 %2, 0
  br i1 %.not306, label %.thread372, label %.thread362

.thread362:                                       ; preds = %bb.r, %bb.t, %bb.n, %bb.u, %.loopexit390
  %.11371 = phi i32 [ %.11, %.loopexit390 ], [ %.10218, %bb.u ], [ %.10218, %bb.n ], [ %.10218, %bb.t ], [ %.10218, %bb.r ]
  %.0261370 = phi i32 [ %.0261, %.loopexit390 ], [ 0, %bb.u ], [ 0, %bb.n ], [ 0, %bb.t ], [ %i.jq, %bb.r ] ; 5 uses
  %.0266369 = phi i32 [ %i.i, %.loopexit390 ], [ %spec.select324, %bb.u ], [ %i.i, %bb.n ], [ %i.jx, %bb.t ], [ %i.i, %bb.r ] ; 4 uses
  %.12368 = phi i32 [ %.12, %.loopexit390 ], [ %.11280, %bb.u ], [ %.11280, %bb.n ], [ %.11280, %bb.t ], [ %.11280, %bb.r ] ; 2 uses
  %i.kc = icmp ugt i32 %.0266369, %.11371
  br i1 %i.kc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread362
  %i.kd = add i32 %.12368, 1                      ; 2 uses
  %i.ke = icmp eq i32 %i.kd, %i.t
  br i1 %i.ke, label %.thread372, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread362
  %.13 = phi i32 [ %i.kd, %bb.w ], [ %.12368, %.thread362 ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !36 ; 4 uses
  %i.kh = icmp ult i32 %.13, %i.kg
  br i1 %i.kh, label %.lr.ph.i, label %.loopexit389

.lr.ph.i:                                         ; preds = %bb.x
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.kj = shl i32 %i.kg, 1                        ; 2 uses
  %i.kk = add i32 %i.kj, 2
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kn = zext i32 %i.kj to i64                   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.kp = add i32 %i.kg, -1
  %i.kq = zext i32 %.13 to i64
  %i.kr = zext i32 %i.kp to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.kq, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ae ] ; 4 uses
  %i.ks = shl nuw i64 %indvars.iv.i, 1
  %i.kt = and i64 %i.ks, 4294967294
  %i.ku = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.kt ; 3 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !16
  %i.kw = zext i8 %i.kv to i32
  %i.kx = shl nuw nsw i32 %i.kw, 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !16
  %i.la = zext i8 %i.kz to i32
  %i.lb = or disjoint i32 %i.kx, %i.la            ; 2 uses
  store i32 %i.lb, ptr %i.ki, align 4, !tbaa !733
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kl ; 3 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !16
  %i.le = zext i8 %i.ld to i32
  %i.lf = shl nuw nsw i32 %i.le, 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !16
  %i.li = zext i8 %i.lh to i32
  %i.lj = or disjoint i32 %i.lf, %i.li            ; 2 uses
  store i32 %i.lj, ptr %i.km, align 8, !tbaa !734
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kn ; 3 uses
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !16
  %i.lm = zext i8 %i.ll to i16
  %i.ln = shl nuw i16 %i.lm, 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !16
  %i.lq = zext i8 %i.lp to i16
  %i.lr = or disjoint i16 %i.ln, %i.lq
  %i.ls = sext i16 %i.lr to i32
  store i32 %i.ls, ptr %i.ko, align 8, !tbaa !735
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.kn ; 4 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !16
  %i.lv = zext i8 %i.lu to i32
  %i.lw = shl nuw nsw i32 %i.lv, 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !16
  %i.lz = zext i8 %i.ly to i32
  %i.ma = or disjoint i32 %i.lw, %i.lz
  %.fr.i = freeze i32 %i.ma                       ; 5 uses
  %.not.i = icmp samesign uge i64 %indvars.iv.i, %i.kr
  %i.mb = icmp eq i32 %i.lj, 65535
  %or.cond.i = select i1 %.not.i, i1 %i.mb, i1 false
  %i.mc = icmp eq i32 %i.lb, 65535
  %or.cond70.i = select i1 %or.cond.i, i1 %i.mc, i1 false
  br i1 %or.cond70.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.not52.i = icmp eq i32 %.fr.i, 0
  br i1 %.not52.i, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.md = zext nneg i32 %.fr.i to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.mg = icmp ugt ptr %i.mf, %i.f
  br i1 %i.mg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.ko, align 8, !tbaa !735
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa, %bb.y
  %.not53.i = icmp eq i32 %.fr.i, 65535
  br i1 %.not53.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not54.i = icmp eq i32 %.fr.i, 0
  %i.mh = zext nneg i32 %.fr.i to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.mh
  %spec.select.i = select i1 %.not54.i, ptr null, ptr %i.mi
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.kg, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit389, label %bb.y, !llvm.loop !736

.loopexit389:                                     ; preds = %bb.ae, %bb.x
  %.not310 = icmp eq i32 %.0261370, 0
  br i1 %.not310, label %.thread372, label %.thread372.sink.split

.loopexit:                                        ; preds = %bb.z, %bb.ad, %bb.ab
  %i.mj = phi ptr [ %spec.select.i, %bb.ad ], [ null, %bb.ab ], [ null, %bb.z ]
  %i.mk = trunc i64 %indvars.iv.i to i32
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.mj, ptr %i.ml, align 8, !tbaa !737
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.mk, ptr %i.mm, align 4, !tbaa !738
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %.0266369, ptr %i.mn, align 8, !tbaa !37
  %.not308 = icmp eq i32 %.0261370, 0
  br i1 %.not308, label %bb.af, label %.thread380

.thread380:                                       ; preds = %.loopexit
end_hunk_4
