inline.NumInlined: 22
inline.NumDeleted: 6
begin_hunk_0_@ubidi_reorderVisual_78:bb.a
bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ar = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.ar, label %bb.d, label %.critedge.thread.us, !llvm.loop !41

.critedge.preheader.us:                           ; preds = %bb.d
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 %indvars.iv76) ; 2 uses
  %indvars.iv.next75112 = add nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next75112, %i.z
  br i1 %i.as, label %.lr.ph, label %.critedge2.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph.lr.ph.us
  %.066.us = phi i32 [ 0, %.lr.ph.lr.ph.us ], [ %i.aj, %._crit_edge.us ] ; 2 uses
  %i.at = sext i32 %.066.us to i64
  br label %bb.d

_ZL14prepareReorderPKhiPiPhS2_.exit.thread:       ; preds = %.preheader.i, %.critedge.thread.us, %bb.b, %_ZL14prepareReorderPKhiPiPhS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ubidi_getVisualIndex_78(ptr noundef %0, i32 noundef %1, ptr noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %.not134 = icmp eq ptr %0, null
  br i1 %.not134, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not135 = icmp eq ptr %i.d, null
  br i1 %.not135, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  store i32 27, ptr %2, align 4
  br label %.loopexit

bb.h:                                             ; preds = %bb.d, %bb.f
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not136 = icmp slt i32 %1, %i.j
  br i1 %.not136, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 1, ptr %2, align 4
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load i32, ptr %i.k, align 8
  switch i32 %i.l, label %bb.m [
    i32 0, label %.thread
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.m = xor i32 %1, -1
  %i.n = add nsw i32 %i.j, %i.m
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.o = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison)
  %.not137 = icmp eq i8 %i.o, 0
  br i1 %.not137, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 7, ptr %2, align 4
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !42

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %.0125160 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.w, %bb.p ] ; 2 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = load i32, ptr %i.u, align 4              ; 2 uses
  %i.y = and i32 %i.x, 2147483647
  %i.z = sub nsw i32 %1, %i.y                     ; 4 uses
  %i.aa = icmp sgt i32 %i.z, -1
  %i.ab = sub nsw i32 %i.w, %.0125160
  %i.ac = icmp slt i32 %i.z, %i.ab
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.q, label %bb.p

bb.q:                                             ; preds = %.lr.ph
  %i.ad = icmp sgt i32 %i.x, -1
  br i1 %i.ad, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = add nsw i32 %i.z, %.0125160
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.af = xor i32 %i.z, -1
  %i.ag = add i32 %i.w, %i.af
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.r, %bb.k, %bb.l
  %.1114 = phi i32 [ %1, %bb.k ], [ %i.n, %bb.l ], [ %i.ag, %bb.s ], [ %i.ae, %bb.r ] ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = and i32 %i.ao, 5
  %.not140177 = icmp ne i32 %i.ap, 0
  %i.aq = zext i1 %.not140177 to i32              ; 2 uses
  %i.ar = load i32, ptr %i.am, align 4
  %i.as = icmp slt i32 %.1114, %i.ar
  br i1 %i.as, label %._crit_edge182, label %.lr.ph181

._crit_edge182:                                   ; preds = %.lr.ph181, %bb.t
  %spec.select.lcssa = phi i32 [ %i.aq, %bb.t ], [ %spec.select, %.lr.ph181 ]
  %i.at = add nsw i32 %spec.select.lcssa, %.1114
  br label %.loopexit

.lr.ph181:                                        ; preds = %bb.t, %.lr.ph181
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %.lr.ph181 ], [ 0, %bb.t ]
  %spec.select179 = phi i32 [ %spec.select, %.lr.ph181 ], [ %i.aq, %bb.t ]
  %i.au = phi i32 [ %i.ba, %.lr.ph181 ], [ %i.ao, %bb.t ]
  %i.av = and i32 %i.au, 10
  %.not141 = icmp ne i32 %i.av, 0
  %i.aw = zext i1 %.not141 to i32
  %spec.select143 = add nsw i32 %spec.select179, %i.aw
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv.next207 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = and i32 %i.ba, 5
  %.not140 = icmp ne i32 %i.bb, 0
  %i.bc = zext i1 %.not140 to i32
  %spec.select = add nsw i32 %spec.select143, %i.bc ; 2 uses
  %i.bd = load i32, ptr %i.ay, align 4
  %i.be = icmp slt i32 %.1114, %i.bd
  br i1 %i.be, label %._crit_edge182, label %.lr.ph181, !llvm.loop !43

bb.u:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bj = load ptr, ptr %i.bi, align 8            ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bm = zext nneg i32 %1 to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  %.fr153 = freeze i16 %i.bo                      ; 2 uses
  %i.bp = and i16 %.fr153, -4
  %i.bq = icmp eq i16 %i.bp, 8204
  br i1 %i.bq, label %.loopexit, label %switch.early.test

switch.early.test:                                ; preds = %bb.v
  %switch.tableidx = add i16 %.fr153, -8234       ; 2 uses
  %3 = icmp ult i16 %switch.tableidx, 64
  br i1 %3, label %switch.hole_check, label %.preheader

.preheader:                                       ; preds = %switch.hole_check, %switch.early.test
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bs = load i32, ptr %i.br, align 4            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %.not139163 = icmp slt i32 %.1114, %i.bs
  br i1 %.not139163, label %._crit_edge, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader, %.lr.ph166
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %.lr.ph166 ], [ 0, %.preheader ]
  %i.bv = phi i32 [ %i.cc, %.lr.ph166 ], [ %i.bu, %.preheader ]
  %i.bw = phi i32 [ %i.ca, %.lr.ph166 ], [ %i.bs, %.preheader ]
  %.0165 = phi i32 [ %i.bx, %.lr.ph166 ], [ 0, %.preheader ]
  %i.bx = sub nsw i32 %.0165, %i.bv               ; 2 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %indvars.iv.next199 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %.not139 = icmp slt i32 %.1114, %i.ca
  br i1 %.not139, label %._crit_edge, label %.lr.ph166, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph166, %.preheader
  %.0109.lcssa = phi i32 [ 0, %.preheader ], [ %i.bw, %.lr.ph166 ]
  %.lcssa162 = phi i32 [ %i.bs, %.preheader ], [ %i.ca, %.lr.ph166 ]
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.bx, %.lr.ph166 ] ; 4 uses
  %.lcssa155 = phi ptr [ %i.bj, %.preheader ], [ %i.by, %.lr.ph166 ]
  %.lcssa = phi i32 [ %i.bu, %.preheader ], [ %i.cc, %.lr.ph166 ]
  %i.cd = icmp eq i32 %.lcssa, 0
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge
  %i.ce = sub nsw i32 %.1114, %.0.lcssa
  br label %.loopexit

bb.x:                                             ; preds = %._crit_edge
  %i.cf = sub i32 %.lcssa162, %.0109.lcssa
  %i.cg = load i32, ptr %.lcssa155, align 4       ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, -1                  ; 2 uses
  %i.ci = add nuw nsw i32 %1, 1
  %i.cj = and i32 %i.cg, 2147483647
  %i.ck = add i32 %i.cf, %i.cj
  %.0116 = select i1 %i.ch, i32 %i.cg, i32 %i.ci  ; 2 uses
  %.0115 = select i1 %i.ch, i32 %1, i32 %i.ck     ; 2 uses
  %i.cl = icmp slt i32 %.0116, %.0115
  br i1 %i.cl, label %.lr.ph174.preheader, label %._crit_edge175

.lr.ph174.preheader:                              ; preds = %bb.x
  %i.cm = sext i32 %.0116 to i64                  ; 4 uses
  %wide.trip.count204 = sext i32 %.0115 to i64    ; 2 uses
  %i.cn = sub nsw i64 %wide.trip.count204, %i.cm  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cn, 8
  br i1 %min.iters.check, label %.lr.ph174.preheader246, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph174.preheader
  %n.vec = and i64 %i.cn, -8                      ; 3 uses
  %i.co = add nsw i64 %n.vec, %i.cm
  %i.cp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.lcssa, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.bl, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cp, %vector.ph ], [ %i.dj, %vector.body ]
  %vec.phi243 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load = load <4 x i16>, ptr %gep, align 2  ; 3 uses
  %wide.load244 = load <4 x i16>, ptr %i.cq, align 2 ; 3 uses
  %i.cr = and <4 x i16> %wide.load, splat (i16 -4)
  %i.cs = and <4 x i16> %wide.load244, splat (i16 -4)
  %i.ct = icmp eq <4 x i16> %i.cr, splat (i16 8204)
  %i.cu = icmp eq <4 x i16> %i.cs, splat (i16 8204)
  %i.cv = add <4 x i16> %wide.load, splat (i16 -8234)
  %i.cw = add <4 x i16> %wide.load244, splat (i16 -8234)
  %i.cx = icmp ult <4 x i16> %i.cv, splat (i16 5)
  %i.cy = icmp ult <4 x i16> %i.cw, splat (i16 5)
  %i.cz = or <4 x i1> %i.ct, %i.cx
  %i.da = or <4 x i1> %i.cu, %i.cy
  %i.db = add <4 x i16> %wide.load, splat (i16 -8294)
  %i.dc = add <4 x i16> %wide.load244, splat (i16 -8294)
  %i.dd = icmp ult <4 x i16> %i.db, splat (i16 4)
  %i.de = icmp ult <4 x i16> %i.dc, splat (i16 4)
  %i.df = or <4 x i1> %i.dd, %i.cz
  %i.dg = or <4 x i1> %i.de, %i.da
  %i.dh = zext <4 x i1> %i.df to <4 x i32>
  %i.di = zext <4 x i1> %i.dg to <4 x i32>
  %i.dj = add <4 x i32> %vec.phi, %i.dh           ; 2 uses
  %i.dk = add <4 x i32> %vec.phi243, %i.di        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dk, %i.dj
  %i.dm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge175, label %.lr.ph174.preheader246

.lr.ph174.preheader246:                           ; preds = %.lr.ph174.preheader, %middle.block
  %indvars.iv201.ph = phi i64 [ %i.cm, %.lr.ph174.preheader ], [ %i.co, %middle.block ]
  %.1172.ph = phi i32 [ %.0.lcssa, %.lr.ph174.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader246, %.lr.ph174
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %.lr.ph174 ], [ %indvars.iv201.ph, %.lr.ph174.preheader246 ] ; 2 uses
  %.1172 = phi i32 [ %.2, %.lr.ph174 ], [ %.1172.ph, %.lr.ph174.preheader246 ]
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %indvars.iv201
  %i.do = load i16, ptr %i.dn, align 2            ; 3 uses
  %i.dp = and i16 %i.do, -4
  %i.dq = icmp eq i16 %i.dp, 8204
  %i.dr = add i16 %i.do, -8234
  %i.ds = icmp ult i16 %i.dr, 5
  %or.cond149 = or i1 %i.dq, %i.ds
  %i.dt = add i16 %i.do, -8294
  %i.du = icmp ult i16 %i.dt, 4
  %or.cond151 = or i1 %i.du, %or.cond149
  %i.dv = zext i1 %or.cond151 to i32
  %.2 = add nsw i32 %.1172, %i.dv                 ; 2 uses
  %indvars.iv.next202 = add nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !46

._crit_edge175:                                   ; preds = %.lr.ph174, %middle.block, %bb.x
  %.1.lcssa = phi i32 [ %.0.lcssa, %bb.x ], [ %i.dm, %middle.block ], [ %.2, %.lr.ph174 ]
  %i.dw = sub nsw i32 %.1114, %.1.lcssa
  br label %.loopexit

switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i16 %switch.tableidx to i64
  %switch.shifted = lshr i64 -1152921504606846945, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.p, %switch.hole_check, %bb.o, %bb.v, %bb.u, %bb.w, %._crit_edge175, %bb.a, %bb.b, %._crit_edge182, %bb.n, %bb.j, %bb.g
  %.2112 = phi i32 [ -1, %bb.g ], [ -1, %bb.j ], [ %i.at, %._crit_edge182 ], [ -1, %bb.a ], [ -1, %switch.hole_check ], [ -1, %bb.o ], [ -1, %bb.n ], [ -1, %bb.b ], [ %i.dw, %._crit_edge175 ], [ %i.ce, %bb.w ], [ %.1114, %bb.u ], [ -1, %bb.v ], [ -1, %bb.p ]
  ret i32 %.2112
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ubidi_getLogicalIndex_78(ptr noundef %0, i32 noundef %1, ptr noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.not157 = icmp eq ptr %0, null
  br i1 %.not157, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not158 = icmp eq ptr %i.d, null
  br i1 %.not158, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  store i32 27, ptr %2, align 4
  br label %.critedge

bb.h:                                             ; preds = %bb.d, %bb.f
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %.not159 = icmp slt i32 %1, %i.j
  br i1 %.not159, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 1, ptr %2, align 4
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load i32, ptr %i.q, align 8
  switch i32 %i.r, label %bb.o [
    i32 0, label %.critedge
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = xor i32 %1, -1
  %i.v = add i32 %i.t, %i.u
  br label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.w = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison)
  %.not160 = icmp eq i8 %i.w, 0
  br i1 %.not160, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 7, ptr %2, align 4
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.y = load ptr, ptr %i.x, align 8              ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = load i32, ptr %i.k, align 4
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.preheader173, label %bb.z

.preheader173:                                    ; preds = %bb.q, %bb.y
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %bb.y ], [ 0, %bb.q ] ; 2 uses
  %.0149 = phi i32 [ %i.af, %bb.y ], [ 0, %bb.q ]
  %.0142 = phi i32 [ %.2144, %bb.y ], [ 0, %bb.q ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv214 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = and i32 %i.ah, 5
  %.not162 = icmp eq i32 %i.ai, 0
  br i1 %.not162, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.preheader173
  %i.aj = add nsw i32 %.0142, %.0149
  %.not163 = icmp sgt i32 %1, %i.aj
  br i1 %.not163, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ak = add nsw i32 %.0142, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader173
  %.1143 = phi i32 [ %i.ak, %bb.s ], [ %.0142, %.preheader173 ] ; 4 uses
  %i.al = add nsw i32 %.1143, %i.af               ; 2 uses
  %i.am = icmp slt i32 %1, %i.al
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.an = sub nsw i32 %1, %.1143
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.ao = and i32 %i.ah, 10
  %.not164 = icmp eq i32 %i.ao, 0
  br i1 %.not164, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = icmp eq i32 %1, %i.al
  br i1 %i.ap, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = add nsw i32 %.1143, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %.2144 = phi i32 [ %i.aq, %bb.x ], [ %.1143, %bb.v ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1
  br label %.preheader173, !llvm.loop !47

bb.z:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader175, label %bb.ab

.preheader175:                                    ; preds = %bb.z
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.av = load i32, ptr %i.au, align 4            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ax = load i32, ptr %i.aw, align 4            ; 3 uses
  %i.ay = add nsw i32 %i.av, %i.ax
  %.not161181 = icmp slt i32 %1, %i.ay
  br i1 %.not161181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader175, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader175 ]
  %i.az = phi i32 [ %i.bg, %.lr.ph ], [ %i.ax, %.preheader175 ]
  %i.ba = phi i32 [ %i.be, %.lr.ph ], [ %i.av, %.preheader175 ]
  %.0145182 = phi i32 [ %i.bb, %.lr.ph ], [ 0, %.preheader175 ]
  %i.bb = sub nsw i32 %.0145182, %i.az            ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv.next ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i32, ptr %i.bf, align 4            ; 3 uses
  %i.bh = sub i32 %i.be, %i.bb
  %i.bi = add nsw i32 %i.bh, %i.bg
  %.not161 = icmp slt i32 %1, %i.bi
  br i1 %.not161, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph, %.preheader175
  %.0136.lcssa180 = phi i32 [ 0, %.preheader175 ], [ %i.ba, %.lr.ph ] ; 3 uses
  %.lcssa179 = phi i32 [ %i.av, %.preheader175 ], [ %i.be, %.lr.ph ]
  %.0145.lcssa = phi i32 [ 0, %.preheader175 ], [ %i.bb, %.lr.ph ] ; 4 uses
  %.lcssa178 = phi ptr [ %i.y, %.preheader175 ], [ %i.bc, %.lr.ph ]
  %.lcssa176 = phi i32 [ %i.ax, %.preheader175 ], [ %i.bg, %.lr.ph ]
  %i.bj = sub nsw i32 %.lcssa179, %.0136.lcssa180 ; 3 uses
  %i.bk = icmp eq i32 %.lcssa176, 0
  br i1 %i.bk, label %.loopexit174, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.bl = load i32, ptr %.lcssa178, align 4
  %.fr199 = freeze i32 %i.bl                      ; 2 uses
  %i.bm = and i32 %.fr199, 2147483647             ; 2 uses
  %i.bn = add nsw i32 %i.bm, %i.bj
  %i.bo = icmp sgt i32 %i.bj, 0
  br i1 %i.bo, label %.lr.ph192, label %.loopexit174

.lr.ph192:                                        ; preds = %bb.aa
  %i.bp = icmp slt i32 %.fr199, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = zext nneg i32 %i.bj to i64              ; 2 uses
end_hunk_0
