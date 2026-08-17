inline.NumInlined: 77
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 41
begin_hunk_0_@decode_0cpy:bb.a
  %i.am = add nsw i32 %i.aj, -128
  %gep42 = getelementptr inbounds nuw [2560 x i8], ptr %invariant.gep41, i64 %indvars.iv51
  store i32 %i.am, ptr %gep42, align 4, !tbaa !41
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.an = load i32, ptr %i.r, align 4, !tbaa !33  ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next52, %i.ao
  br i1 %i.ap, label %bb.b, label %._crit_edge40, !llvm.loop !92

.preheader33:                                     ; preds = %.preheader33.preheader, %._crit_edge
  %i.aq = phi i32 [ %i.o, %.preheader33.preheader ], [ %i.at, %._crit_edge ] ; 2 uses
  %indvars.iv48 = phi i64 [ 0, %.preheader33.preheader ], [ %indvars.iv.next49, %._crit_edge ] ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader33
  %i.as = load ptr, ptr %2, align 8, !tbaa !51
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv48
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader33
  %i.at = phi i32 [ %i.aq, %.preheader33 ], [ %i.bj, %bb.c ]
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader33, !llvm.loop !93

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.au = load i32, ptr %i.d, align 8, !tbaa !54  ; 3 uses
  %i.av = load i32, ptr %i.m, align 8, !tbaa !53
  %i.aw = lshr i32 %i.au, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !31
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = and i32 %i.au, 7
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = lshr i32 %i.bc, 16
  %i.be = add i32 %i.au, 16
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.be)
  store i32 %i.bf, ptr %i.d, align 8, !tbaa !54
  %i.bg = trunc nuw i32 %i.bd to i16
  %i.bh = tail call i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = sext i16 %i.bh to i32
  %gep = getelementptr inbounds nuw [2560 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.bi, ptr %gep, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !33  ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.c, label %._crit_edge, !llvm.loop !94

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge40, %.preheader.lr.ph, %.preheader33.lr.ph, %.preheader34, %.preheader32, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_1dif(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 15 uses
  %i.b = getelementptr i8, ptr %2, i64 8          ; 12 uses
  %i.c = getelementptr i8, ptr %2, i64 12         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3760 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 1216
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1204
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 364
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3764
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3768
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1212
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3772
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1204
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3764
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3768
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1212
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 3772
  %.val244 = load i32, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %.val121245 = load i32, ptr %i.c, align 4, !tbaa !52 ; 2 uses
  %i.ad = sub nsw i32 %.val121245, %.val244       ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %do_stereo.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %do_stereo.exit
  %i.af = phi i32 [ %i.ki, %do_stereo.exit ], [ %i.ad, %bb.a ] ; 2 uses
  %.val121250 = phi i32 [ %.val121, %do_stereo.exit ], [ %.val121245, %bb.a ] ; 2 uses
  %.val249 = phi i32 [ %.val, %do_stereo.exit ], [ %.val244, %bb.a ]
  %i.ag = phi ptr [ %i.kh, %do_stereo.exit ], [ %i.a, %bb.a ] ; 7 uses
  %i.ah = phi i64 [ %i.kg, %do_stereo.exit ], [ 0, %bb.a ]
  %.0107174248 = phi i32 [ %.3, %do_stereo.exit ], [ undef, %bb.a ] ; 3 uses
  %.0104175247 = phi i32 [ %.2106, %do_stereo.exit ], [ 0, %bb.a ] ; 3 uses
  %.0101176246 = phi i32 [ %.1102, %do_stereo.exit ], [ undef, %bb.a ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !51    ; 8 uses
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !53  ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %spec.select.i8.i.i = phi i32 [ %.val249, %.lr.ph.i.i ], [ %spec.select.i.i.i, %bb.c ] ; 4 uses
  %.05.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.au, %bb.c ] ; 2 uses
  %i.ak = lshr i32 %spec.select.i8.i.i, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !31
  %i.ao = icmp slt i32 %spec.select.i8.i.i, %i.aj
  %i.ap = zext i1 %i.ao to i32
  %spec.select.i.i.i = add i32 %spec.select.i8.i.i, %i.ap ; 5 uses
  %i.aq = zext i8 %i.an to i32
  %i.ar = and i32 %spec.select.i8.i.i, 7
  store i32 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !54
  %i.as = lshr exact i32 128, %i.ar
  %i.at = and i32 %i.as, %i.aq
  %.not.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.not.i.i, label %bb.c, label %get_urice.exit

bb.c:                                             ; preds = %bb.b
  %i.au = add nuw nsw i32 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.au, %i.af
  br i1 %exitcond.not.i.i, label %get_urice.exit, label %bb.b, !llvm.loop !56

get_urice.exit:                                   ; preds = %bb.b, %bb.c
  %.0.lcssa.i.i = phi i32 [ %.05.i.i, %bb.b ], [ %i.af, %bb.c ]
  %i.av = lshr i32 %spec.select.i.i.i, 3
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !31
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.ba = and i32 %spec.select.i.i.i, 7
  %i.bb = shl i32 %i.az, %i.ba
  %i.bc = add i32 %spec.select.i.i.i, 1
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.bc) ; 5 uses
  store i32 %i.bd, ptr %i.b, align 8, !tbaa !54
  %i.be = tail call i32 @llvm.fshl.i32(i32 %.0.lcssa.i.i, i32 %i.bb, i32 1) ; 2 uses
  %or.cond = icmp ult i32 %i.be, 4
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %get_urice.exit
  %i.bf = load i32, ptr %i.e, align 4, !tbaa !38
  %i.bg = icmp eq i32 %i.bf, 6
  %i.bh = select i1 %i.bg, i32 2, i32 1           ; 2 uses
  %i.bi = sub nsw i32 %.val121250, %i.bd          ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i125, label %get_urice.exit131

.lr.ph.i.i125:                                    ; preds = %bb.d, %bb.e
  %spec.select.i8.i.i126 = phi i32 [ %spec.select.i.i.i128, %bb.e ], [ %i.bd, %bb.d ] ; 4 uses
  %.05.i.i127 = phi i32 [ %i.bu, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.bk = lshr i32 %spec.select.i8.i.i126, 3
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.bo = icmp slt i32 %spec.select.i8.i.i126, %i.aj
  %i.bp = zext i1 %i.bo to i32
  %spec.select.i.i.i128 = add i32 %spec.select.i8.i.i126, %i.bp ; 4 uses
  %i.bq = zext i8 %i.bn to i32
  %i.br = and i32 %spec.select.i8.i.i126, 7
  store i32 %spec.select.i.i.i128, ptr %i.b, align 8, !tbaa !54
  %i.bs = lshr exact i32 128, %i.br
  %i.bt = and i32 %i.bs, %i.bq
  %.not.not.i.i129 = icmp eq i32 %i.bt, 0
  br i1 %.not.not.i.i129, label %bb.e, label %get_urice.exit131

bb.e:                                             ; preds = %.lr.ph.i.i125
  %i.bu = add nuw nsw i32 %.05.i.i127, 1          ; 2 uses
  %exitcond.not.i.i130 = icmp eq i32 %i.bu, %i.bi
  br i1 %exitcond.not.i.i130, label %get_urice.exit131, label %.lr.ph.i.i125, !llvm.loop !56

get_urice.exit131:                                ; preds = %.lr.ph.i.i125, %bb.e, %bb.d
  %i.bv = phi i32 [ %i.bd, %bb.d ], [ %spec.select.i.i.i128, %bb.e ], [ %spec.select.i.i.i128, %.lr.ph.i.i125 ] ; 3 uses
  %.0.lcssa.i.i124 = phi i32 [ 0, %bb.d ], [ %.05.i.i127, %.lr.ph.i.i125 ], [ %i.bi, %bb.e ]
  %i.bw = lshr i32 %i.bv, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 1, !tbaa !31
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %i.bz)
  %i.cb = and i32 %i.bv, 7
  %i.cc = shl i32 %i.ca, %i.cb
  %i.cd = add i32 %i.bv, %i.bh
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.cd) ; 2 uses
  store i32 %i.ce, ptr %i.b, align 8, !tbaa !54
  %i.cf = tail call i32 @llvm.fshl.i32(i32 %.0.lcssa.i.i124, i32 %i.cc, i32 %i.bh)
  %i.cg = add i32 %i.cf, 1                        ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 31
  br i1 %i.ch, label %do_stereo.exit.thread, label %bb.f

bb.f:                                             ; preds = %get_urice.exit131, %get_urice.exit
  %i.ci = phi i32 [ %i.ce, %get_urice.exit131 ], [ %i.bd, %get_urice.exit ] ; 9 uses
  %.1102 = phi i32 [ %i.cg, %get_urice.exit131 ], [ %.0101176246, %get_urice.exit ] ; 5 uses
  switch i32 %i.be, label %do_stereo.exit.thread [
    i32 8, label %3
    i32 7, label %bb.g
    i32 6, label %bb.h
    i32 5, label %bb.j
    i32 4, label %.preheader151
    i32 3, label %.preheader153
    i32 2, label %.preheader155
    i32 1, label %.preheader157
    i32 0, label %.preheader159
  ]

.preheader159:                                    ; preds = %bb.f
  %i.cj = load i32, ptr %i.f, align 4, !tbaa !47
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph, label %.loopexit

.preheader157:                                    ; preds = %bb.f
  %i.cl = load i32, ptr %i.f, align 4, !tbaa !47
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph164, label %.loopexit

.preheader155:                                    ; preds = %bb.f
  %i.cn = load i32, ptr %i.f, align 4, !tbaa !47
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph166, label %.loopexit

.preheader153:                                    ; preds = %bb.f
  %i.cp = load i32, ptr %i.f, align 4, !tbaa !47
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph168, label %.loopexit

.preheader151:                                    ; preds = %bb.f
  %i.cr = load i32, ptr %i.f, align 4, !tbaa !47  ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph170.preheader, label %.loopexit

.lr.ph170.preheader:                              ; preds = %.preheader151
  %i.ct = mul nuw nsw i64 %i.ah, 2560
  %scevgep196 = getelementptr i8, ptr %scevgep, i64 %i.ct
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep196, i8 0, i64 %i.cv, i1 false), !tbaa !41
  br label %.loopexit

3:                                                ; preds = %bb.f
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 1, ptr %4, align 8, !tbaa !48
  br label %do_stereo.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cw = lshr i32 %i.ci, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 1, !tbaa !31
  %i.da = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  %i.db = and i32 %i.ci, 7
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = lshr i32 %i.dc, 24
  %i.de = add i32 %i.ci, 8
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.de)
  store i32 %i.df, ptr %i.b, align 8, !tbaa !54
  store i32 %i.dd, ptr %i.f, align 4, !tbaa !47
  br label %do_stereo.exit, !llvm.loop !95

bb.h:                                             ; preds = %bb.f
  %i.dg = sub nsw i32 %.val121250, %i.ci          ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i.i135, label %get_urice.exit141

.lr.ph.i.i135:                                    ; preds = %bb.h, %bb.i
  %spec.select.i8.i.i136 = phi i32 [ %spec.select.i.i.i138, %bb.i ], [ %i.ci, %bb.h ] ; 4 uses
  %.05.i.i137 = phi i32 [ %i.ds, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.di = lshr i32 %spec.select.i8.i.i136, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !31
  %i.dm = icmp slt i32 %spec.select.i8.i.i136, %i.aj
  %i.dn = zext i1 %i.dm to i32
  %spec.select.i.i.i138 = add i32 %spec.select.i8.i.i136, %i.dn ; 4 uses
  %i.do = zext i8 %i.dl to i32
  %i.dp = and i32 %spec.select.i8.i.i136, 7
  store i32 %spec.select.i.i.i138, ptr %i.b, align 8, !tbaa !54
  %i.dq = lshr exact i32 128, %i.dp
  %i.dr = and i32 %i.dq, %i.do
  %.not.not.i.i139 = icmp eq i32 %i.dr, 0
  br i1 %.not.not.i.i139, label %bb.i, label %get_urice.exit141

bb.i:                                             ; preds = %.lr.ph.i.i135
  %i.ds = add nuw nsw i32 %.05.i.i137, 1          ; 2 uses
  %exitcond.not.i.i140 = icmp eq i32 %i.ds, %i.dg
  br i1 %exitcond.not.i.i140, label %get_urice.exit141, label %.lr.ph.i.i135, !llvm.loop !56

get_urice.exit141:                                ; preds = %.lr.ph.i.i135, %bb.i, %bb.h
  %i.dt = phi i32 [ %i.ci, %bb.h ], [ %spec.select.i.i.i138, %bb.i ], [ %spec.select.i.i.i138, %.lr.ph.i.i135 ] ; 3 uses
  %.0.lcssa.i.i134 = phi i32 [ 0, %bb.h ], [ %.05.i.i137, %.lr.ph.i.i135 ], [ %i.dg, %bb.i ]
  %i.du = lshr i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 1, !tbaa !31
  %i.dy = tail call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.dz = and i32 %i.dt, 7
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = add i32 %i.dt, 2
  %i.ec = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.eb)
  store i32 %i.ec, ptr %i.b, align 8, !tbaa !54
  %i.ed = tail call i32 @llvm.fshl.i32(i32 %.0.lcssa.i.i134, i32 %i.ea, i32 2) ; 2 uses
  %i.ee = icmp ugt i32 %i.ed, 31                  ; 2 uses
  %spec.store.select = select i1 %i.ee, i32 0, i32 %i.ed
  store i32 %spec.store.select, ptr %i.k, align 8
  br i1 %i.ee, label %get_urice.exit141.do_stereo.exit.thread.loopexit_crit_edge, label %do_stereo.exit, !llvm.loop !95

bb.j:                                             ; preds = %bb.f
  %i.ef = load i32, ptr %i.e, align 4, !tbaa !38
  %i.eg = icmp eq i32 %i.ef, 5                    ; 3 uses
  %i.eh = lshr i32 %i.ci, 3
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 1, !tbaa !31
  %i.el = tail call i32 @llvm.bswap.i32(i32 %i.ek)
  %i.em = and i32 %i.ci, 7
  %i.en = shl i32 %i.el, %i.em
  %. = select i1 %i.eg, i32 8, i32 16
  %.234 = select i1 %i.eg, i32 24, i32 16
  %.235 = select i1 %i.eg, i32 -128, i32 -32768
  %i.eo = add i32 %i.ci, %.
  %i.ep = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.eo)
  %i.eq = ashr i32 %i.en, %.234
  %i.er = add nsw i32 %i.eq, %.235                ; 2 uses
  store i32 %i.ep, ptr %i.b, align 8, !tbaa !54
  %i.es = load i32, ptr %i.f, align 4, !tbaa !47  ; 3 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph172.preheader, label %.loopexit

.lr.ph172.preheader:                              ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.es to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.es, 8
  br i1 %min.iters.check, label %.lr.ph172.preheader263, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph172.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store <4 x i32> %broadcast.splat, ptr %i.ev, align 4, !tbaa !41
  store <4 x i32> %broadcast.splat, ptr %i.ew, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph172.preheader263

.lr.ph172.preheader263:                           ; preds = %.lr.ph172.preheader, %middle.block
  %indvars.iv200.ph = phi i64 [ 0, %.lr.ph172.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader263, %.lr.ph172
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %.lr.ph172 ], [ %indvars.iv200.ph, %.lr.ph172.preheader263 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv200
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i32 %i.er, ptr %i.ez, align 4, !tbaa !41
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph172, !llvm.loop !97

.lr.ph168:                                        ; preds = %.preheader153, %.lr.ph168
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %.lr.ph168 ], [ 0, %.preheader153 ] ; 2 uses
  %i.fa = tail call fastcc i32 @get_srice(ptr noundef nonnull %2, i32 noundef %.1102)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv193 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  %i.fg = sub i32 %i.fd, %i.ff
  %i.fh = mul i32 %i.fg, 3
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next194
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !41
  %i.fk = add i32 %i.fj, %i.fa
  %i.fl = add i32 %i.fk, %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !41
  %i.fn = load i32, ptr %i.f, align 4, !tbaa !47
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next194, %i.fo
  br i1 %i.fp, label %.lr.ph168, label %.loopexit, !llvm.loop !98

.lr.ph166:                                        ; preds = %.preheader155, %.lr.ph166
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph166 ], [ 0, %.preheader155 ] ; 2 uses
  %i.fq = tail call fastcc i32 @get_srice(ptr noundef nonnull %2, i32 noundef %.1102)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv190 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !41
  %i.fu = shl i32 %i.ft, 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !41
  %i.fx = sub i32 %i.fq, %i.fw
  %i.fy = add i32 %i.fx, %i.fu
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !41
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %i.ga = load i32, ptr %i.f, align 4, !tbaa !47
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next191, %i.gb
  br i1 %i.gc, label %.lr.ph166, label %.loopexit, !llvm.loop !99

.lr.ph164:                                        ; preds = %.preheader157, %.lr.ph164
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %.lr.ph164 ], [ 0, %.preheader157 ] ; 2 uses
  %i.gd = tail call fastcc i32 @get_srice(ptr noundef nonnull %2, i32 noundef %.1102)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv187 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !41
  %i.gh = add i32 %i.gg, %i.gd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !41
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.gj = load i32, ptr %i.f, align 4, !tbaa !47
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next188, %i.gk
  br i1 %i.gl, label %.lr.ph164, label %.loopexit, !llvm.loop !100

.lr.ph:                                           ; preds = %.preheader159, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader159 ] ; 2 uses
  %i.gm = tail call fastcc i32 @get_srice(ptr noundef nonnull %2, i32 noundef %.1102)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i32 %i.gm, ptr %i.go, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gp = load i32, ptr %i.f, align 4, !tbaa !47
  %i.gq = sext i32 %i.gp to i64
  %i.gr = icmp slt i64 %indvars.iv.next, %i.gq
  br i1 %i.gr, label %.lr.ph, label %.loopexit, !llvm.loop !101

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph164, %.lr.ph166, %.lr.ph168, %.lr.ph172, %middle.block, %.lr.ph170.preheader, %.preheader159, %.preheader157, %.preheader155, %.preheader153, %.preheader151, %bb.j
  %i.gs = load i32, ptr %i.g, align 4, !tbaa !33  ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 2
  br i1 %i.gt, label %bb.k, label %.loopexit225

bb.k:                                             ; preds = %.loopexit
  %i.gu = icmp eq i32 %.0104175247, 0
  br i1 %i.gu, label %.split116, label %.split

end_hunk_0
begin_hunk_1_@decode_1dif:bb.a
  %or.cond.i = select i1 %.not.i, i1 %i.gw, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.loopexit64.i

.lr.ph.i:                                         ; preds = %.split
  %wide.trip.count.i = zext nneg i32 %i.gv to i64 ; 3 uses
  %min.iters.check253 = icmp ult i32 %i.gv, 4
  br i1 %min.iters.check253, label %scalar.ph252.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph.i
  %n.vec255 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next259, %vector.body256 ] ; 2 uses
  %i.gx = add nuw nsw i64 %index257, 4            ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %wide.load = load <4 x i32>, ptr %i.gy, align 4, !tbaa !41
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.gx ; 2 uses
  %wide.load258 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !41
  %i.ha = add <4 x i32> %wide.load258, %wide.load
  store <4 x i32> %i.ha, ptr %i.gz, align 4, !tbaa !41
  %index.next259 = add nuw i64 %index257, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next259, %n.vec255
  br i1 %i.hb, label %middle.block260, label %vector.body256, !llvm.loop !102

middle.block260:                                  ; preds = %vector.body256
  %cmp.n261 = icmp eq i64 %n.vec255, %wide.trip.count.i
  br i1 %cmp.n261, label %.loopexit64.i, label %scalar.ph252.preheader

scalar.ph252.preheader:                           ; preds = %.lr.ph.i, %middle.block260
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec255, %middle.block260 ]
  br label %scalar.ph252

scalar.ph252:                                     ; preds = %scalar.ph252.preheader, %scalar.ph252
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph252 ], [ %indvars.iv.i.ph, %scalar.ph252.preheader ] ; 2 uses
  %i.hc = add nuw nsw i64 %indvars.iv.i, 4        ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !41
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.hc ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !41
  %i.hh = add i32 %i.hg, %i.he
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit64.i, label %scalar.ph252, !llvm.loop !103

.loopexit64.i:                                    ; preds = %scalar.ph252, %middle.block260, %.split
  %i.hi = sext i32 %i.gv to i64                   ; 5 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !41 ; 2 uses
  store i32 %i.hk, ptr %i.i, align 4, !tbaa !41
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hi
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !41
  %i.hn = sub i32 %i.hk, %i.hm
  store i32 %i.hn, ptr %i.j, align 4, !tbaa !41
  %i.ho = add nsw i64 %i.hi, 1                    ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !41 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !41
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ho
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !41
  %i.hu = sub i32 %i.hq, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 364
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !41
  %i.hw = add nsw i64 %i.hi, 2                    ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !41 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !41
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hw
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !41
  %i.ic = sub i32 %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !41
  %i.ie = add nsw i64 %i.hi, 3                    ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !41 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !41
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ie
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !41
  %i.ik = sub i32 %i.ig, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 372
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !41
  %.pr = load i32, ptr %i.g, align 4, !tbaa !33
  br label %.loopexit225

.split116:                                        ; preds = %bb.k
  %i.im = load i32, ptr %i.b, align 8, !tbaa !54  ; 4 uses
  %i.in = load ptr, ptr %2, align 8, !tbaa !51
  %i.io = lshr i32 %i.im, 3
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !31
  %i.is = load i32, ptr %i.d, align 8, !tbaa !53
  %i.it = icmp slt i32 %i.im, %i.is
  %i.iu = zext i1 %i.it to i32
  %spec.select.i = add i32 %i.im, %i.iu
  %i.iv = zext i8 %i.ir to i32
  %i.iw = and i32 %i.im, 7
  store i32 %spec.select.i, ptr %i.b, align 8, !tbaa !54
  %i.ix = load i32, ptr %i.f, align 4, !tbaa !47
  %i.iy = load i32, ptr %i.k, align 8, !tbaa !39  ; 15 uses
  %i.iz = lshr exact i32 128, %i.iw
  %i.ja = and i32 %i.iz, %i.iv
  %.not59.i = icmp eq i32 %i.ja, 0
  %i.jb = sext i32 %i.ix to i64
  %invariant.gep89.i = getelementptr [4 x i8], ptr %i.a, i64 %i.jb ; 4 uses
  %i.jc = load i32, ptr %invariant.gep89.i, align 4, !tbaa !41
  %i.jd = ashr i32 %i.jc, %i.iy
  store i32 %i.jd, ptr %i.a, align 8, !tbaa !41
  %gep90.i.1 = getelementptr i8, ptr %invariant.gep89.i, i64 4 ; 2 uses
  %gep90.i.2 = getelementptr i8, ptr %invariant.gep89.i, i64 8 ; 2 uses
  %gep90.i.3 = getelementptr i8, ptr %invariant.gep89.i, i64 12 ; 2 uses
  br i1 %.not59.i, label %.preheader.i.preheader, label %.preheader60.i.preheader

.preheader60.i.preheader:                         ; preds = %.split116
  %i.je = load i32, ptr %i.j, align 8, !tbaa !41
  %i.jf = ashr i32 %i.je, %i.iy
  store i32 %i.jf, ptr %i.h, align 8, !tbaa !41
  %i.jg = load i32, ptr %gep90.i.1, align 4, !tbaa !41
  %i.jh = ashr i32 %i.jg, %i.iy
  store i32 %i.jh, ptr %i.l, align 4, !tbaa !41
  %i.ji = load i32, ptr %i.m, align 4, !tbaa !41
  %i.jj = ashr i32 %i.ji, %i.iy
  store i32 %i.jj, ptr %i.n, align 4, !tbaa !41
  %i.jk = load i32, ptr %gep90.i.2, align 4, !tbaa !41
  %i.jl = ashr i32 %i.jk, %i.iy
  store i32 %i.jl, ptr %i.o, align 8, !tbaa !41
  %i.jm = load i32, ptr %i.p, align 8, !tbaa !41
  %i.jn = ashr i32 %i.jm, %i.iy
  store i32 %i.jn, ptr %i.q, align 8, !tbaa !41
  %i.jo = load i32, ptr %gep90.i.3, align 4, !tbaa !41
  %i.jp = ashr i32 %i.jo, %i.iy
  store i32 %i.jp, ptr %i.r, align 4, !tbaa !41
  %i.jq = load i32, ptr %i.s, align 4, !tbaa !41
  %i.jr = ashr i32 %i.jq, %i.iy
  store i32 %i.jr, ptr %i.t, align 4, !tbaa !41
  br label %do_stereo.exit

.preheader.i.preheader:                           ; preds = %.split116
  %i.js = load i32, ptr %i.i, align 8, !tbaa !41
  %i.jt = ashr i32 %i.js, %i.iy
  store i32 %i.jt, ptr %i.h, align 8, !tbaa !41
  %i.ju = load i32, ptr %gep90.i.1, align 4, !tbaa !41
  %i.jv = ashr i32 %i.ju, %i.iy
  store i32 %i.jv, ptr %i.u, align 4, !tbaa !41
  %i.jw = load i32, ptr %i.v, align 4, !tbaa !41
  %i.jx = ashr i32 %i.jw, %i.iy
  store i32 %i.jx, ptr %i.w, align 4, !tbaa !41
  %i.jy = load i32, ptr %gep90.i.2, align 4, !tbaa !41
  %i.jz = ashr i32 %i.jy, %i.iy
  store i32 %i.jz, ptr %i.x, align 8, !tbaa !41
  %i.ka = load i32, ptr %i.y, align 8, !tbaa !41
  %i.kb = ashr i32 %i.ka, %i.iy
  store i32 %i.kb, ptr %i.z, align 8, !tbaa !41
  %i.kc = load i32, ptr %gep90.i.3, align 4, !tbaa !41
  %i.kd = ashr i32 %i.kc, %i.iy
  store i32 %i.kd, ptr %i.aa, align 4, !tbaa !41
  %i.ke = load i32, ptr %i.ab, align 4, !tbaa !41
  %i.kf = ashr i32 %i.ke, %i.iy
  store i32 %i.kf, ptr %i.ac, align 4, !tbaa !41
  br label %do_stereo.exit

do_stereo.exit:                                   ; preds = %.preheader60.i.preheader, %.preheader.i.preheader, %get_urice.exit141, %bb.g
  %.3 = phi i32 [ 1, %.preheader60.i.preheader ], [ %.0107174248, %bb.g ], [ %.0107174248, %get_urice.exit141 ], [ 0, %.preheader.i.preheader ]
  %.2106 = phi i32 [ 1, %.preheader60.i.preheader ], [ %.0104175247, %bb.g ], [ %.0104175247, %get_urice.exit141 ], [ 1, %.preheader.i.preheader ] ; 2 uses
  %i.kg = zext nneg i32 %.2106 to i64             ; 2 uses
  %i.kh = getelementptr inbounds nuw [2560 x i8], ptr %i.a, i64 %i.kg
  %.val = load i32, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %.val121 = load i32, ptr %i.c, align 4, !tbaa !52 ; 2 uses
  %i.ki = sub nsw i32 %.val121, %.val             ; 2 uses
  %i.kj = icmp slt i32 %i.ki, 1
  br i1 %i.kj, label %do_stereo.exit.thread, label %.lr.ph.i.i

.loopexit225:                                     ; preds = %.loopexit, %.loopexit64.i
  %i.kk = phi i32 [ %.pr, %.loopexit64.i ], [ %i.gs, %.loopexit ]
  %i.kl = icmp eq i32 %i.kk, 1
  br i1 %i.kl, label %.preheader, label %do_stereo.exit.thread

.preheader:                                       ; preds = %.loopexit225
  %i.km = load i32, ptr %i.f, align 4, !tbaa !47
  %i.kn = sext i32 %i.km to i64                   ; 4 uses
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !41
  store i32 %i.kp, ptr %i.a, align 4, !tbaa !41
  %i.kq = getelementptr [4 x i8], ptr %i.a, i64 %i.kn
  %i.kr = getelementptr i8, ptr %i.kq, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !41
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 1204
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !41
  %i.ku = getelementptr [4 x i8], ptr %i.a, i64 %i.kn
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !41
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !41
  %i.ky = getelementptr [4 x i8], ptr %i.a, i64 %i.kn
  %i.kz = getelementptr i8, ptr %i.ky, i64 12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !41
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1212
  store i32 %i.la, ptr %5, align 4, !tbaa !41
  br label %do_stereo.exit.thread

get_urice.exit141.do_stereo.exit.thread.loopexit_crit_edge: ; preds = %get_urice.exit141
  br label %do_stereo.exit.thread, !llvm.loop !95

do_stereo.exit.thread:                            ; preds = %bb.f, %do_stereo.exit, %get_urice.exit131, %bb.a, %get_urice.exit141.do_stereo.exit.thread.loopexit_crit_edge, %.preheader, %3, %.loopexit225
  %.2 = phi i32 [ 0, %.loopexit225 ], [ 0, %.preheader ], [ -541478725, %3 ], [ -1094995529, %bb.a ], [ -1094995529, %get_urice.exit141.do_stereo.exit.thread.loopexit_crit_edge ], [ -1094995529, %get_urice.exit131 ], [ -1094995529, %do_stereo.exit ], [ -1094995529, %bb.f ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_5elp(ptr noundef %0, ptr nofree noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 28 uses
  %i.b = getelementptr i8, ptr %1, i64 7104       ; 24 uses
  %i.c = getelementptr i8, ptr %1, i64 7384       ; 30 uses
  %i.d = getelementptr i8, ptr %2, i64 8          ; 31 uses
  %i.e = getelementptr i8, ptr %2, i64 12         ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 6320 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6576 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 7092 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 7094 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 7090 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 7088
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 7100
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 7096
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 7098
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3760 ; 18 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 1480   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 7112
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 7116
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 7120
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7124
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7128
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 7132
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 7136
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 7140
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 7144
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 7148
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 7152
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 7156
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 7160
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 7164
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 7168
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 7172
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 7176
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 7180
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 7184
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 7188
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 7192
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 7196
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 7200
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 7204
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 7208
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 7212
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 7216
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 7220
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 7224
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 7228
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 7232
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 7236
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 7240
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 7244
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 7248
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 7252
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 7256
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 7260
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 7264
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 7268
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 7272
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 7276
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 7280
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 7284
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 7288
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 7292
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 7296
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 7300
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 7304
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 7308
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 7312
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 7316
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 7320
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 7324
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 7328
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 7332
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 7336
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 7340
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 7344
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 7348
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 7352
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 7356
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 7360
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 7364
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 7368
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 7372
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 7376
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 7380
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 7112
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 7116
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 7120
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 7124
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 7128
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 7132
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 7136
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 7140
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 7144
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 7148
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 7152
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 7156
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 7160
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 7164
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 7168
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 7172
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 7176
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 7180
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 7184
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 7188
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 7192
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 7196
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 7200
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 7204
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 7208
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 7212
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 7216
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 7220
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 7224
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 7228
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 7232
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 7236
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 7240
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 7244
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 7248
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 7252
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 7256
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 7260
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 7264
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 7268
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 7272
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 7276
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 7280
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 7284
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 7288
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 7292
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 7296
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 7300
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 7304
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 7308
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 7312
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 7316
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 7320
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 7324
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 7328
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 7332
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 7336
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 7340
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 7344
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 7348
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 7352
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 7356
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 7360
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 7364
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 7368
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 7372
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 7376
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 7380
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 7112
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 7116
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 7120
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 7124
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 7128
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 7132
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 7136
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 7140
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 7144
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 7148
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 7152
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 7156
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 7160
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 7164
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 7168
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 7172
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 7176
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 7180
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 7184
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 7188
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 7192
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 7196
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 7200
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 7204
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 7208
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 7212
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 7216
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 7220
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 7224
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 7228
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 7232
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 7236
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 7240
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 7244
end_hunk_1
