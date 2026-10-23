Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ubidi?download=true
inline.NumInlined: 71
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL21resolveImplicitLevelsP5UBiDiiihh:bb.a
bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ubidi_getParaLevelAtIndex_78.exit, label %bb.f, !llvm.loop !0

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.f
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %ubidi_getParaLevelAtIndex_78.exit

ubidi_getParaLevelAtIndex_78.exit:                ; preds = %bb.g, %bb.e, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.t, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.o, %bb.g ]
  %i.u = add nsw i32 %i.o, -1
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i, i32 %i.u)
  %i.v = sext i32 %spec.select.i to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !45
  %i.z = trunc i32 %i.y to i8
  br label %bb.h

bb.h:                                             ; preds = %ubidi_getParaLevelAtIndex_78.exit, %bb.d
  %i.aa = phi i8 [ %i.m, %bb.d ], [ %i.z, %ubidi_getParaLevelAtIndex_78.exit ]
  %i.ab = and i8 %i.aa, 1
  %.not193 = icmp eq i8 %i.ab, 0
  br i1 %.not193, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !36
  %i.ae = add i32 %i.ad, -5
  %spec.select = icmp ult i32 %i.ae, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.a
  %i.af = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ %spec.select, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 -1, ptr %i.ag, align 4, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 -1, ptr %i.ah, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %1, ptr %i.ai, align 8, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !57
  %i.al = sext i32 %1 to i64                      ; 7 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !53  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !93
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69 ; 2 uses
  %i.ar = and i8 %i.an, 1
  %i.as = zext nneg i8 %i.ar to i64               ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  store ptr %i.au, ptr %5, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.as
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !95
  %i.az = icmp eq i32 %1, 0
  br i1 %i.az, label %bb.k, label %_ZL10lastL_R_ALP5UBiDi.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %_ZL10lastL_R_ALP5UBiDi.exit

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %bb.m

bb.m:                                             ; preds = %ubidi_getCustomizedClass_78.exit.i, %bb.l
  %.021.i = phi i32 [ %i.bb, %bb.l ], [ %.2.i, %ubidi_getCustomizedClass_78.exit.i ] ; 5 uses
  %i.bh = icmp sgt i32 %.021.i, 0
  br i1 %i.bh, label %bb.n, label %_ZL10lastL_R_ALP5UBiDi.exit.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bi = add nsw i32 %.021.i, -1                 ; 3 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !39
  %i.bm = zext i16 %i.bl to i32                   ; 5 uses
  %i.bn = and i32 %i.bm, 64512
  %i.bo = icmp eq i32 %i.bn, 56320
  br i1 %i.bo, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp eq i32 %.021.i, 1
  br i1 %.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = zext nneg i32 %.021.i to i64
  %i.bq = getelementptr [2 x i8], ptr %i.be, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !39
  %i.bt = zext i16 %i.bs to i32                   ; 2 uses
  %i.bu = and i32 %i.bt, 64512
  %i.bv = icmp eq i32 %i.bu, 55296
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = add nsw i32 %.021.i, -2
  %i.bx = shl nuw nsw i32 %i.bt, 10
  %i.by = add nuw nsw i32 %i.bm, -56613888
  %i.bz = add nsw i32 %i.by, %i.bx
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.2.i = phi i32 [ %i.bi, %bb.n ], [ %i.bw, %bb.q ], [ %i.bi, %bb.p ], [ 0, %bb.o ]
  %.1.i = phi i32 [ %i.bm, %bb.n ], [ %i.bz, %bb.q ], [ %i.bm, %bb.p ], [ %i.bm, %bb.o ] ; 2 uses
  %i.ca = load ptr, ptr %i.bf, align 8, !tbaa !62 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.bg, align 8, !tbaa !63
  %i.cd = tail call noundef i32 %i.ca(ptr noundef %i.cc, i32 noundef %.1.i), !inline_history !152 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 23
  br i1 %i.ce, label %bb.t, label %ubidi_getCustomizedClass_78.exit.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cf = tail call i32 @ubidi_getClass_78(i32 noundef %.1.i)
  br label %ubidi_getCustomizedClass_78.exit.i

ubidi_getCustomizedClass_78.exit.i:               ; preds = %bb.t, %bb.s
  %.0.i.i = phi i32 [ %i.cf, %bb.t ], [ %i.cd, %bb.s ] ; 2 uses
  %i.cg = icmp sgt i32 %.0.i.i, 22
  %i.ch = trunc i32 %.0.i.i to i8
  %trunc.i = select i1 %i.cg, i8 10, i8 %i.ch
  switch i8 %trunc.i, label %bb.m [
    i8 0, label %_ZL10lastL_R_ALP5UBiDi.exit
    i8 13, label %_ZL10lastL_R_ALP5UBiDi.exit.loopexit302
    i8 1, label %_ZL10lastL_R_ALP5UBiDi.exit.loopexit302
    i8 7, label %_ZL10lastL_R_ALP5UBiDi.exit.loopexit
  ]

_ZL10lastL_R_ALP5UBiDi.exit.loopexit:             ; preds = %bb.m, %ubidi_getCustomizedClass_78.exit.i
  br label %_ZL10lastL_R_ALP5UBiDi.exit

_ZL10lastL_R_ALP5UBiDi.exit.loopexit302:          ; preds = %ubidi_getCustomizedClass_78.exit.i, %ubidi_getCustomizedClass_78.exit.i
  br label %_ZL10lastL_R_ALP5UBiDi.exit

_ZL10lastL_R_ALP5UBiDi.exit:                      ; preds = %ubidi_getCustomizedClass_78.exit.i, %_ZL10lastL_R_ALP5UBiDi.exit.loopexit302, %_ZL10lastL_R_ALP5UBiDi.exit.loopexit, %bb.k, %bb.j
  %.1187 = phi i8 [ %3, %bb.j ], [ %3, %bb.k ], [ 1, %_ZL10lastL_R_ALP5UBiDi.exit.loopexit302 ], [ %3, %_ZL10lastL_R_ALP5UBiDi.exit.loopexit ], [ 0, %ubidi_getCustomizedClass_78.exit.i ] ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.b, i64 %i.al
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !53  ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 22
  br i1 %i.ck, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZL10lastL_R_ALP5UBiDi.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !67 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !68
  %i.cq = zext nneg i32 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cq ; 4 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !159
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !96
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !160
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !161
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !162
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !97
  %i.db = add nsw i32 %i.cm, -1
  store i32 %i.db, ptr %i.cl, align 4, !tbaa !67
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %_ZL10lastL_R_ALP5UBiDi.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1, ptr %i.dc, align 8, !tbaa !96
  %i.dd = icmp eq i8 %i.cj, 17
  %narrow = add nuw nsw i8 %.1187, 1
  %narrow225 = select i1 %i.dd, i8 %narrow, i8 0
  %.0174 = zext nneg i8 %narrow225 to i16
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.de, align 4, !tbaa !97
  call fastcc void @_ZL18processPropertySeqP5UBiDiP8LevStatehii(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %.1187, i32 noundef %1, i32 noundef %1)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0179 = phi i32 [ %i.cv, %bb.v ], [ %1, %bb.w ] ; 2 uses
  %.1175 = phi i16 [ %i.cx, %bb.v ], [ %.0174, %bb.w ] ; 2 uses
  %.not195231 = icmp sgt i32 %1, %2
  br i1 %.not195231, label %.critedge._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.dg = sext i32 %2 to i64                      ; 3 uses
  %i.dh = add nsw i32 %2, -1                      ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.dh)
  %i.di = add i32 %2, 1
  %.phi.trans.insert = sext i32 %smin to i64
  %.phi.trans.insert257 = getelementptr inbounds i8, ptr %i.b, i64 %.phi.trans.insert
  %wide.trip.count = sext i32 %i.dh to i64        ; 2 uses
  %indvars.iv.next287.a = add nsw i64 %i.dg, -1   ; 2 uses
  %i.dj = icmp sgt i64 %indvars.iv.next287.a, %i.al
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ak
  %indvars.iv248 = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next249, %bb.ak ] ; 8 uses
  %.0165239 = phi i32 [ -1, %.lr.ph ], [ %.4, %bb.ak ] ; 6 uses
  %.0166238 = phi i8 [ 1, %.lr.ph ], [ %.4170, %bb.ak ] ; 5 uses
  %.2176237 = phi i16 [ %.1175, %.lr.ph ], [ %i.ej, %bb.ak ] ; 2 uses
  %.0177236 = phi i32 [ %1, %.lr.ph ], [ %.1178, %bb.ak ] ; 7 uses
  %.1180235 = phi i32 [ %.0179, %.lr.ph ], [ %.2181, %bb.ak ] ; 6 uses
  %.not196 = icmp slt i64 %indvars.iv248, %i.dg
  br i1 %.not196, label %bb.z, label %.preheader226.preheader

.preheader226.preheader:                          ; preds = %bb.y
  br i1 %i.dj, label %.lr.ph289, label %.preheader226..critedge_crit_edge

.preheader226:                                    ; preds = %.lr.ph289
  %indvars.iv.next = add nsw i64 %indvars.iv.next288, -1 ; 2 uses
  %i.dk = icmp sgt i64 %indvars.iv.next, %i.al
  br i1 %i.dk, label %.lr.ph289, label %.preheader226..critedge_crit_edge, !llvm.loop !153

.preheader226..critedge_crit_edge:                ; preds = %.preheader226, %.preheader226.preheader
  %.pre = load i8, ptr %.phi.trans.insert257, align 1, !tbaa !53
  br label %.critedge

.lr.ph289:                                        ; preds = %.preheader226.preheader, %.preheader226
  %indvars.iv.next288 = phi i64 [ %indvars.iv.next, %.preheader226 ], [ %indvars.iv.next287.a, %.preheader226.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next288
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !53  ; 2 uses
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.do, 382976
  %.not198 = icmp eq i64 %i.dp, 0
  br i1 %.not198, label %.critedge, label %.preheader226, !llvm.loop !153

.critedge:                                        ; preds = %.lr.ph289, %.preheader226..critedge_crit_edge
  %i.dq = phi i8 [ %.pre, %.preheader226..critedge_crit_edge ], [ %i.dm, %.lr.ph289 ]
  %i.dr = and i8 %i.dq, -2
  %or.cond = icmp eq i8 %i.dr, 20
  br i1 %or.cond, label %.critedge._crit_edge, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ds = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv248
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !53  ; 4 uses
  %i.du = icmp eq i8 %i.dt, 7
  br i1 %i.du, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 -1, ptr %i.df, align 4, !tbaa !67
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.af, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.dt, label %.fold.split [
    i8 13, label %.thread
    i8 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dv = sext i32 %.0165239 to i64
  %.not197 = icmp slt i64 %indvars.iv248, %i.dv
  br i1 %.not197, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ad
  %exitcond.not289 = icmp eq i64 %indvars.iv248, %wide.trip.count
  br i1 %exitcond.not289, label %.thread, label %.lr.ph292

.preheader:                                       ; preds = %.lr.ph292
  %exitcond.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph292, !llvm.loop !154

.lr.ph292:                                        ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next251291 = phi i64 [ %indvars.iv.next251, %.preheader ], [ %indvars.iv248, %.preheader.preheader ]
  %indvars.iv.next251 = add nsw i64 %indvars.iv.next251291, 1 ; 4 uses
  %i.dw = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next251
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !53  ; 2 uses
  switch i8 %i.dx, label %.preheader [
    i8 13, label %.loopexit.loopexit
    i8 1, label %.loopexit.loopexit
    i8 0, label %.loopexit.loopexit
  ], !llvm.loop !154

.loopexit.loopexit:                               ; preds = %.lr.ph292, %.lr.ph292, %.lr.ph292
  %i.dy = trunc nsw i64 %indvars.iv.next251 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ad
  %.2168 = phi i8 [ %.0166238, %bb.ad ], [ %i.dx, %.loopexit.loopexit ]
  %.2 = phi i32 [ %.0165239, %bb.ad ], [ %i.dy, %.loopexit.loopexit ]
  %.2168.fr = freeze i8 %.2168                    ; 2 uses
  %i.dz = icmp eq i8 %.2168.fr, 13
  %spec.select224 = select i1 %i.dz, i8 5, i8 2
  br label %.thread

.fold.split:                                      ; preds = %bb.ac
  br label %.thread

.thread:                                          ; preds = %.preheader, %.preheader.preheader, %.loopexit, %bb.ac, %.fold.split, %bb.ab
  %.3169 = phi i8 [ %.0166238, %bb.ab ], [ %.0166238, %.fold.split ], [ %.0166238, %bb.ac ], [ %.2168.fr, %.loopexit ], [ 1, %.preheader.preheader ], [ 1, %.preheader ]
  %.3 = phi i32 [ %.0165239, %bb.ab ], [ %.0165239, %.fold.split ], [ %.0165239, %bb.ac ], [ %.2, %.loopexit ], [ %2, %.preheader.preheader ], [ %2, %.preheader ]
  %.0162 = phi i8 [ %i.dt, %bb.ab ], [ %i.dt, %.fold.split ], [ 1, %bb.ac ], [ %spec.select224, %.loopexit ], [ 2, %.preheader.preheader ], [ 2, %.preheader ]
  %i.ea = zext i8 %.0162 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZL9groupProp, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !53
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge, %.thread
  %.2173 = phi i8 [ %4, %.critedge ], [ %i.ec, %.thread ]
  %.4170 = phi i8 [ %.0166238, %.critedge ], [ %.3169, %.thread ]
  %.4 = phi i32 [ %.0165239, %.critedge ], [ %.3, %.thread ]
  %i.ed = zext i16 %.2176237 to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr @_ZL11impTabProps, i64 %i.ed ; 2 uses
  %i.ef = zext i8 %.2173 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !53  ; 2 uses
  %i.ei = and i8 %i.eh, 31
  %i.ej = zext nneg i8 %i.ei to i16               ; 2 uses
  %i.ek = lshr i8 %i.eh, 5                        ; 2 uses
  %i.el = zext nneg i8 %i.ek to i16
  %i.em = icmp eq i64 %indvars.iv248, %i.dg
  %i.en = icmp eq i8 %i.ek, 0
  %or.cond11 = select i1 %i.em, i1 %i.en, i1 false
  %spec.store.select = select i1 %or.cond11, i16 1, i16 %i.el ; 2 uses
  %.not201 = icmp eq i16 %spec.store.select, 0
  br i1 %.not201, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 15
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !53  ; 3 uses
  %i.eq = trunc nsw i64 %indvars.iv248 to i32     ; 6 uses
  switch i16 %spec.store.select, label %bb.aj [
    i16 1, label %bb.ag
    i16 2, label %bb.ak
    i16 3, label %bb.ah
    i16 4, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  call fastcc void @_ZL18processPropertySeqP5UBiDiP8LevStatehii(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %i.ep, i32 noundef %.1180235, i32 noundef %i.eq)
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  call fastcc void @_ZL18processPropertySeqP5UBiDiP8LevStatehii(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %i.ep, i32 noundef %.1180235, i32 noundef %.0177236)
  call fastcc void @_ZL18processPropertySeqP5UBiDiP8LevStatehii(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 4, i32 noundef %.0177236, i32 noundef %i.eq)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  call fastcc void @_ZL18processPropertySeqP5UBiDiP8LevStatehii(ptr noundef %0, ptr noundef %5, i8 noundef zeroext %i.ep, i32 noundef %.1180235, i32 noundef %.0177236)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  tail call void @abort() #20
  unreachable

bb.ak:                                            ; preds = %bb.af, %bb.ae, %bb.ai, %bb.ah, %bb.ag
  %.2181 = phi i32 [ %i.eq, %bb.ag ], [ %.1180235, %bb.ae ], [ %i.eq, %bb.ah ], [ %.0177236, %bb.ai ], [ %.1180235, %bb.af ] ; 2 uses
  %.1178 = phi i32 [ %.0177236, %bb.ag ], [ %.0177236, %bb.ae ], [ %.0177236, %bb.ah ], [ %i.eq, %bb.ai ], [ %i.eq, %bb.af ]
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next249 to i32
  %exitcond.not.a = icmp eq i32 %i.di, %lftr.wideiv
  br i1 %exitcond.not.a, label %.critedge._crit_edge, label %bb.y, !llvm.loop !155

.critedge._crit_edge:                             ; preds = %bb.ak, %.critedge, %bb.x
  %.1180.lcssa = phi i32 [ %.0179, %bb.x ], [ %.1180235, %.critedge ], [ %.2181, %bb.ak ]
  %.2176.lcssa = phi i16 [ %.1175, %bb.x ], [ %.2176237, %.critedge ], [ %i.ej, %bb.ak ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !50
  %i.et = icmp eq i32 %2, %i.es
  br i1 %i.et, label %bb.al, label %_ZL17firstL_R_AL_EN_ANP5UBiDi.exit

bb.al:                                            ; preds = %.critedge._crit_edge
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !47 ; 3 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %bb.am, label %_ZL17firstL_R_AL_EN_ANP5UBiDi.exit

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !49 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %bb.an

bb.an:                                            ; preds = %.backedge, %bb.am
  %.023.i205 = phi i32 [ 0, %bb.am ], [ %.2.i207, %.backedge ] ; 4 uses
  %i.fb = icmp slt i32 %.023.i205, %i.ev
  br i1 %i.fb, label %bb.ao, label %_ZL17firstL_R_AL_EN_ANP5UBiDi.exit

bb.ao:                                            ; preds = %bb.an
  %i.fc = add nsw i32 %.023.i205, 1               ; 4 uses
  %i.fd = sext i32 %.023.i205 to i64
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !39
  %i.fg = zext i16 %i.ff to i32                   ; 4 uses
  %i.fh = and i32 %i.fg, 64512
  %i.fi = icmp ne i32 %i.fh, 55296
  %.not.i206 = icmp eq i32 %i.fc, %i.ev
  %or.cond.i = select i1 %i.fi, i1 true, i1 %.not.i206
  br i1 %or.cond.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = sext i32 %i.fc to i64
  %i.fk = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !39
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %i.fn = and i32 %i.fm, 64512
  %i.fo = icmp eq i32 %i.fn, 56320
  br i1 %i.fo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fp = add nsw i32 %.023.i205, 2
  %i.fq = shl nuw nsw i32 %i.fg, 10
  %i.fr = add nsw i32 %i.fq, -56613888
  %i.fs = add nuw nsw i32 %i.fr, %i.fm
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.2.i207 = phi i32 [ %i.fc, %bb.ao ], [ %i.fp, %bb.aq ], [ %i.fc, %bb.ap ]
  %.1.i208 = phi i32 [ %i.fg, %bb.ao ], [ %i.fs, %bb.aq ], [ %i.fg, %bb.ap ] ; 2 uses
  %i.ft = load ptr, ptr %i.ez, align 8, !tbaa !62 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fv = load ptr, ptr %i.fa, align 8, !tbaa !63
  %i.fw = tail call noundef i32 %i.ft(ptr noundef %i.fv, i32 noundef %.1.i208), !inline_history !156 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 23
  br i1 %i.fx, label %bb.at, label %ubidi_getCustomizedClass_78.exit.i209

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fy = tail call i32 @ubidi_getClass_78(i32 noundef %.1.i208)
  br label %ubidi_getCustomizedClass_78.exit.i209

ubidi_getCustomizedClass_78.exit.i209:            ; preds = %bb.at, %bb.as
  %.0.i.i210 = phi i32 [ %i.fy, %bb.at ], [ %i.fw, %bb.as ] ; 2 uses
  %i.fz = icmp sgt i32 %.0.i.i210, 22
  %i.ga = trunc i32 %.0.i.i210 to i8
  %trunc.i211 = select i1 %i.fz, i8 10, i8 %i.ga  ; 3 uses
  %i.gb = icmp ult i8 %trunc.i211, 14
  br i1 %i.gb, label %switch.hole_check, label %.backedge

.backedge:                                        ; preds = %ubidi_getCustomizedClass_78.exit.i209, %switch.hole_check
  br label %bb.an

switch.hole_check:                                ; preds = %ubidi_getCustomizedClass_78.exit.i209
  %switch.maskindex = zext nneg i8 %trunc.i211 to i16
  %switch.shifted = lshr i16 8231, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.backedge

switch.lookup:                                    ; preds = %switch.hole_check
  %i.gc = zext nneg i8 %trunc.i211 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL21resolveImplicitLevelsP5UBiDiiihh, i64 %i.gc
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZL17firstL_R_AL_EN_ANP5UBiDi.exit

_ZL17firstL_R_AL_EN_ANP5UBiDi.exit:               ; preds = %bb.an, %switch.lookup, %bb.al, %.critedge._crit_edge
  %.1185 = phi i8 [ %4, %.critedge._crit_edge ], [ %4, %bb.al ], [ %switch.load, %switch.lookup ], [ %4, %bb.an ]
  %i.gd = sext i32 %2 to i64
  %i.ge = add i32 %2, -1
  %smin255 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.ge)
  %indvars.iv.next254293 = add nsw i64 %i.gd, -1  ; 2 uses
  %i.gf = icmp sgt i64 %indvars.iv.next254293, %i.al
  br i1 %i.gf, label %.lr.ph295, label %..critedge13_crit_edge

bb.au:                                            ; preds = %.lr.ph295
  %indvars.iv.next254 = add nsw i64 %indvars.iv.next254294, -1 ; 2 uses
  %i.gg = icmp sgt i64 %indvars.iv.next254, %i.al
  br i1 %i.gg, label %.lr.ph295, label %..critedge13_crit_edge, !llvm.loop !157

..critedge13_crit_edge:                           ; preds = %bb.au, %_ZL17firstL_R_AL_EN_ANP5UBiDi.exit
  %.phi.trans.insert258 = sext i32 %smin255 to i64
  %.phi.trans.insert259 = getelementptr inbounds i8, ptr %i.b, i64 %.phi.trans.insert258
  %.pre260 = load i8, ptr %.phi.trans.insert259, align 1, !tbaa !53
  br label %.critedge13

.lr.ph295:                                        ; preds = %_ZL17firstL_R_AL_EN_ANP5UBiDi.exit, %bb.au
  %indvars.iv.next254294 = phi i64 [ %indvars.iv.next254, %bb.au ], [ %indvars.iv.next254293, %_ZL17firstL_R_AL_EN_ANP5UBiDi.exit ] ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next254294
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !53  ; 2 uses
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gk, 382976
  %.not200 = icmp eq i64 %i.gl, 0
end_hunk_0
