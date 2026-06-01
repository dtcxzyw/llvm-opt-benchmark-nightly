inline.NumInlined: 24
inline.NumDeleted: 7
begin_hunk_0_@_mi_getenv:bb.a
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ult i64 %2, 64
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_mi_prim_getenv(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare zeroext i1 @_mi_prim_getenv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_mi_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.da, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -1       ; 18 uses
  store i8 0, ptr %i.e, align 1, !tbaa !7
  %.not376 = icmp ult ptr %0, %i.e
  br i1 %.not376, label %.lr.ph, label %mi_out_alignright.exit.thread360

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 24 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mi_out_alignright.exit
  %.0209378 = phi ptr [ %2, %.lr.ph ], [ %.9, %mi_out_alignright.exit ] ; 5 uses
  %.0337377 = phi ptr [ %0, %.lr.ph ], [ %.4341, %mi_out_alignright.exit ] ; 64 uses
  %i.i = load i8, ptr %.0209378, align 1, !tbaa !7 ; 5 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %mi_out_alignright.exit.thread360, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0209378, i64 1 ; 4 uses
  switch i8 %i.i, label %bb.g [
    i8 37, label %bb.h
    i8 92, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7     ; 2 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %mi_out_alignright.exit.thread360, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.0209378, i64 2 ; 6 uses
  switch i8 %i.l, label %mi_out_alignright.exit [
    i8 101, label %mi_outc.exit
    i8 116, label %mi_outc.exit271
    i8 110, label %mi_outc.exit273
    i8 114, label %mi_outc.exit275
    i8 92, label %mi_outc.exit277
  ]

mi_outc.exit:                                     ; preds = %bb.f
  store i8 27, ptr %.0337377, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit271:                                  ; preds = %bb.f
  store i8 9, ptr %.0337377, align 1, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit273:                                  ; preds = %bb.f
  store i8 10, ptr %.0337377, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit275:                                  ; preds = %bb.f
  store i8 13, ptr %.0337377, align 1, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit277:                                  ; preds = %bb.f
  store i8 92, ptr %.0337377, align 1, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

bb.g:                                             ; preds = %bb.d
  %i.t = add i8 %i.i, -32
  %or.cond6 = icmp ult i8 %i.t, 95
  br i1 %or.cond6, label %mi_outc.exit279, label %switch.early.test

switch.early.test:                                ; preds = %bb.g
  switch i8 %i.i, label %mi_out_alignright.exit [
    i8 27, label %mi_outc.exit279
    i8 13, label %mi_outc.exit279
    i8 10, label %mi_outc.exit279
    i8 9, label %mi_outc.exit279
  ]

mi_outc.exit279:                                  ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.g
  store i8 %i.i, ptr %.0337377, align 1, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_out_alignright.exit

bb.h:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.k, align 1, !tbaa !7     ; 4 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %mi_out_alignright.exit.thread360, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.0209378, i64 2 ; 2 uses
  switch i8 %i.v, label %bb.l [
    i8 43, label %bb.j
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7     ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %mi_out_alignright.exit.thread360, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.0209378, i64 3
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.0228 = phi i8 [ %i.y, %bb.k ], [ %i.v, %bb.i ] ; 2 uses
  %.0214 = phi i8 [ %i.v, %bb.k ], [ 0, %bb.i ]   ; 7 uses
  %.1210 = phi ptr [ %i.aa, %bb.k ], [ %i.x, %bb.i ] ; 3 uses
  %.not265 = icmp eq i8 %.0228, 45                ; 2 uses
  br i1 %.not265, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ab = load i8, ptr %.1210, align 1, !tbaa !7  ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %mi_out_alignright.exit.thread360, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.1210, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.1229 = phi i8 [ %i.ab, %bb.n ], [ %.0228, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %i.ad, %bb.n ], [ %.1210, %bb.l ] ; 3 uses
  %i.ae = icmp eq i8 %.1229, 48
  br i1 %i.ae, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %.2, align 1, !tbaa !7     ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %mi_out_alignright.exit.thread360, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2230 = phi i8 [ %i.af, %bb.q ], [ %.1229, %bb.o ] ; 3 uses
  %.0223 = phi i8 [ 48, %bb.q ], [ 32, %bb.o ]    ; 14 uses
  %.3 = phi ptr [ %i.ah, %bb.q ], [ %.2, %bb.o ]  ; 3 uses
  %i.ai = add i8 %.2230, -49
  %or.cond24 = icmp ult i8 %i.ai, 9
  br i1 %or.cond24, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.aj = load i8, ptr %.3, align 1, !tbaa !7     ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %mi_out_alignright.exit.thread360, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = and i8 %.2230, 15
  %i.am = zext nneg i8 %i.al to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.3231 = phi i8 [ %i.aj, %bb.t ], [ %i.at, %bb.v ] ; 3 uses
  %.0216 = phi i64 [ %i.am, %bb.t ], [ %i.as, %bb.v ] ; 2 uses
  %.3.pn = phi ptr [ %.3, %bb.t ], [ %.4, %bb.v ]
  %.4 = getelementptr inbounds nuw i8, ptr %.3.pn, i64 1 ; 3 uses
  %i.an = add i8 %.3231, -48
  %i.ao = icmp ult i8 %i.an, 10
  br i1 %i.ao, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ap = mul i64 %.0216, 10
  %i.aq = and i8 %.3231, 15
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = add i64 %i.ap, %i.ar
  %i.at = load i8, ptr %.4, align 1, !tbaa !7     ; 2 uses
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %mi_out_alignright.exit.thread360, label %bb.u, !llvm.loop !13

.loopexit:                                        ; preds = %bb.u, %bb.r
  %.5233 = phi i8 [ %.2230, %bb.r ], [ %.3231, %bb.u ] ; 3 uses
  %.2218 = phi i64 [ 0, %bb.r ], [ %.0216, %bb.u ] ; 18 uses
  %.5 = phi ptr [ %.3, %bb.r ], [ %.4, %bb.u ]    ; 6 uses
  switch i8 %.5233, label %bb.ac [
    i8 122, label %bb.w
    i8 116, label %bb.w
    i8 76, label %bb.w
    i8 108, label %bb.y
  ]

bb.w:                                             ; preds = %.loopexit, %.loopexit, %.loopexit
  %i.av = load i8, ptr %.5, align 1, !tbaa !7     ; 2 uses
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %mi_out_alignright.exit.thread360, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %.5, i64 1
  br label %bb.ac

bb.y:                                             ; preds = %.loopexit
  %i.ay = load i8, ptr %.5, align 1, !tbaa !7     ; 3 uses
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %mi_out_alignright.exit.thread360, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.bb = icmp eq i8 %i.ay, 108
  br i1 %i.bb, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !7   ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %mi_out_alignright.exit.thread360, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.be = getelementptr inbounds nuw i8, ptr %.5, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.ab, %bb.z, %bb.x
  %.6234 = phi i8 [ %i.av, %bb.x ], [ %i.bc, %bb.ab ], [ %i.ay, %bb.z ], [ %.5233, %.loopexit ] ; 7 uses
  %.0215 = phi i8 [ %.5233, %bb.x ], [ 76, %bb.ab ], [ 108, %bb.z ], [ 100, %.loopexit ] ; 2 uses
  %.6 = phi ptr [ %i.ax, %bb.x ], [ %i.be, %bb.ab ], [ %i.ba, %bb.z ], [ %.5, %.loopexit ] ; 4 uses
  switch i8 %.6234, label %bb.ai [
    i8 37, label %mi_outc.exit281
    i8 115, label %bb.ad
  ]

mi_outc.exit281:                                  ; preds = %bb.ac
  store i8 37, ptr %.0337377, align 1, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_outs.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bg = load i32, ptr %3, align 8               ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 41
  br i1 %i.bh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = getelementptr i8, ptr %i.bi, i64 %i.bj
  %i.bl = add nuw nsw i32 %i.bg, 8
  store i32 %i.bl, ptr %3, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bm = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.f, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bo = phi ptr [ %i.bk, %bb.ae ], [ %i.bm, %bb.af ]
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !14 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %mi_outs.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !7   ; 2 uses
  %.not364 = icmp eq i8 %i.br, 0
  br i1 %.not364, label %mi_outs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %.lr.ph.i
  %i.bs = phi i8 [ %i.bv, %.lr.ph.i ], [ %i.br, %bb.ah ]
  %.012.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %.0337377, %bb.ah ] ; 2 uses
  %.0911.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.bp, %bb.ah ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 3 uses
  store i8 %i.bs, ptr %.012.i, align 1, !tbaa !7
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !7   ; 2 uses
  %i.bw = icmp ne i8 %i.bv, 0
  %i.bx = icmp ult ptr %i.bu, %i.e
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.lr.ph.i, label %mi_outs.exit, !llvm.loop !17

bb.ai:                                            ; preds = %bb.ac
  %i.bz = icmp eq i8 %.6234, 112                  ; 2 uses
  %i.ca = icmp eq i8 %.6234, 120
  switch i8 %.6234, label %bb.cw [
    i8 120, label %bb.aj
    i8 117, label %bb.aj
    i8 112, label %bb.be
    i8 105, label %bb.bs
    i8 100, label %bb.bs
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.cb = load i32, ptr %3, align 8               ; 11 uses
  %i.cc = icmp ult i32 %i.cb, 41                  ; 5 uses
  switch i8 %.0215, label %bb.ba [
    i8 122, label %bb.ak
    i8 116, label %bb.ao
    i8 76, label %bb.as
    i8 108, label %bb.aw
  ]

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.cc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cd = load ptr, ptr %i.g, align 8
  %i.ce = zext nneg i32 %i.cb to i64
  %i.cf = getelementptr i8, ptr %i.cd, i64 %i.ce
  %i.cg = add nuw nsw i32 %i.cb, 8
  store i32 %i.cg, ptr %3, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ch = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  store ptr %i.ci, ptr %i.f, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cj = phi ptr [ %i.cf, %bb.al ], [ %i.ch, %bb.am ]
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !18
  br label %bb.bh

bb.ao:                                            ; preds = %bb.aj
  br i1 %i.cc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cl = load ptr, ptr %i.g, align 8
  %i.cm = zext nneg i32 %i.cb to i64
  %i.cn = getelementptr i8, ptr %i.cl, i64 %i.cm
  %i.co = add nuw nsw i32 %i.cb, 8
  store i32 %i.co, ptr %3, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.cp = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.f, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cr = phi ptr [ %i.cn, %bb.ap ], [ %i.cp, %bb.aq ]
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !18
  br label %bb.bh

bb.as:                                            ; preds = %bb.aj
  br i1 %i.cc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ct = load ptr, ptr %i.g, align 8
  %i.cu = zext nneg i32 %i.cb to i64
  %i.cv = getelementptr i8, ptr %i.ct, i64 %i.cu
  %i.cw = add nuw nsw i32 %i.cb, 8
  store i32 %i.cw, ptr %3, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.cx = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  store ptr %i.cy, ptr %i.f, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.cz = phi ptr [ %i.cv, %bb.at ], [ %i.cx, %bb.au ]
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !20
  br label %bb.bh

bb.aw:                                            ; preds = %bb.aj
  br i1 %i.cc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.db = load ptr, ptr %i.g, align 8
  %i.dc = zext nneg i32 %i.cb to i64
  %i.dd = getelementptr i8, ptr %i.db, i64 %i.dc
  %i.de = add nuw nsw i32 %i.cb, 8
  store i32 %i.de, ptr %3, align 8
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.df = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.dg, ptr %i.f, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dh = phi ptr [ %i.dd, %bb.ax ], [ %i.df, %bb.ay ]
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !18
  br label %bb.bh

bb.ba:                                            ; preds = %bb.aj
  br i1 %i.cc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.dj = load ptr, ptr %i.g, align 8
  %i.dk = zext nneg i32 %i.cb to i64
  %i.dl = getelementptr i8, ptr %i.dj, i64 %i.dk
  %i.dm = add nuw nsw i32 %i.cb, 8
  store i32 %i.dm, ptr %3, align 8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.dn = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  store ptr %i.do, ptr %i.f, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.dp = phi ptr [ %i.dl, %bb.bb ], [ %i.dn, %bb.bc ]
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64
  br label %bb.bh

bb.be:                                            ; preds = %bb.ai
  %i.ds = load i32, ptr %3, align 8               ; 3 uses
  %i.dt = icmp ult i32 %i.ds, 41
  br i1 %i.dt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.du = load ptr, ptr %i.g, align 8
  %i.dv = zext nneg i32 %i.ds to i64
  %i.dw = getelementptr i8, ptr %i.du, i64 %i.dv
  %i.dx = add nuw nsw i32 %i.ds, 8
  store i32 %i.dx, ptr %3, align 8
  br label %.lr.ph.i284

bb.bg:                                            ; preds = %bb.be
  %i.dy = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  store ptr %i.dz, ptr %i.f, align 8
  br label %.lr.ph.i284

.lr.ph.i284:                                      ; preds = %bb.bg, %bb.bf
  %i.ea = phi ptr [ %i.dw, %bb.bf ], [ %i.dy, %bb.bg ]
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.0337377, i64 1 ; 3 uses
  store i8 48, ptr %.0337377, align 1, !tbaa !7
  %i.ed = icmp ult ptr %i.ec, %i.e
  br i1 %i.ed, label %.lr.ph.i284.1, label %mi_outs.exit287

.lr.ph.i284.1:                                    ; preds = %.lr.ph.i284
  %i.ee = getelementptr inbounds nuw i8, ptr %.0337377, i64 2
  store i8 120, ptr %i.ec, align 1, !tbaa !7
  br label %mi_outs.exit287

mi_outs.exit287:                                  ; preds = %.lr.ph.i284.1, %.lr.ph.i284
  %.lcssa489 = phi ptr [ %i.ec, %.lr.ph.i284 ], [ %i.ee, %.lr.ph.i284.1 ]
  %i.ef = tail call i64 @llvm.usub.sat.i64(i64 %.2218, i64 2)
  br label %bb.bh

bb.bh:                                            ; preds = %mi_outs.exit287, %bb.an, %bb.av, %bb.bd, %bb.az, %bb.ar
  %.1338 = phi ptr [ %.0337377, %bb.bd ], [ %.0337377, %bb.an ], [ %.0337377, %bb.ar ], [ %.0337377, %bb.av ], [ %.0337377, %bb.az ], [ %.lcssa489, %mi_outs.exit287 ] ; 19 uses
  %.3219 = phi i64 [ %.2218, %bb.bd ], [ %.2218, %bb.an ], [ %.2218, %bb.ar ], [ %.2218, %bb.av ], [ %.2218, %bb.az ], [ %i.ef, %mi_outs.exit287 ] ; 2 uses
  %.0208 = phi i64 [ %i.dr, %bb.bd ], [ %i.ck, %bb.an ], [ %i.cs, %bb.ar ], [ %i.da, %bb.av ], [ %i.di, %bb.az ], [ %i.eb, %mi_outs.exit287 ] ; 4 uses
  %i.eg = icmp eq i64 %.3219, 0
  br i1 %i.eg, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  switch i8 %.6234, label %bb.bk [
    i8 120, label %bb.bj
    i8 112, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %i.eh = icmp ult i64 %.0208, 4294967296
  %i.ei = icmp ult i64 %.0208, 281474976710656
  %i.ej = select i1 %i.ei, i64 12, i64 16
  %i.ek = select i1 %i.eh, i64 8, i64 %i.ej
  %spec.store.select = select i1 %i.bz, i64 %i.ek, i64 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bh
  %.1224 = phi i8 [ 48, %bb.bj ], [ %.0223, %bb.bi ], [ %.0223, %bb.bh ] ; 5 uses
  %.5221 = phi i64 [ %spec.store.select, %bb.bj ], [ 0, %bb.bi ], [ %.3219, %bb.bh ] ; 5 uses
  %i.el = or i1 %i.ca, %i.bz
  %i.em = select i1 %i.el, i64 16, i64 10         ; 3 uses
  %i.en = icmp eq i64 %.0208, 0
  br i1 %i.en, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %.not47.i = icmp ne i8 %.0214, 0
  %.not.i.i = icmp ult ptr %.1338, %i.e
  %or.cond.i = select i1 %.not47.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %bb.bm, label %mi_outc.exit.i

bb.bm:                                            ; preds = %bb.bl
  store i8 %.0214, ptr %.1338, align 1, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %.1338, i64 1
  br label %mi_outc.exit.i

mi_outc.exit.i:                                   ; preds = %bb.bm, %bb.bl
  %.18 = phi ptr [ %i.eo, %bb.bm ], [ %.1338, %bb.bl ] ; 4 uses
  %.not.i48.i = icmp ult ptr %.18, %i.e
  br i1 %.not.i48.i, label %bb.bn, label %mi_outs.exit

bb.bn:                                            ; preds = %mi_outc.exit.i
  store i8 48, ptr %.18, align 1, !tbaa !7
  %i.ep = getelementptr inbounds nuw i8, ptr %.18, i64 1
  br label %mi_outs.exit

bb.bo:                                            ; preds = %bb.bk
  %i.eq = icmp ult ptr %.1338, %i.e
  br i1 %i.eq, label %.split.i, label %.split56.us.i

.split.i:                                         ; preds = %bb.bo, %mi_outc.exit51.i
  %.16 = phi ptr [ %.17, %mi_outc.exit51.i ], [ %.1338, %bb.bo ]
  %i.er = phi ptr [ %i.fa, %mi_outc.exit51.i ], [ %.1338, %bb.bo ] ; 4 uses
  %.054.i = phi i64 [ %i.es, %mi_outc.exit51.i ], [ %.0208, %bb.bo ] ; 3 uses
  %.not.i50.i = icmp ult ptr %i.er, %i.e
  %i.es = udiv i64 %.054.i, %i.em
  %i.et = urem i64 %.054.i, %i.em                 ; 2 uses
  br i1 %.not.i50.i, label %bb.bp, label %mi_outc.exit51.i

bb.bp:                                            ; preds = %.split.i
  %i.eu = icmp samesign ult i64 %i.et, 10
  %i.ev = trunc nuw nsw i64 %i.et to i8           ; 2 uses
  %i.ew = or disjoint i8 %i.ev, 48
  %i.ex = add nuw nsw i8 %i.ev, 55
  %i.ey = select i1 %i.eu, i8 %i.ew, i8 %i.ex
  store i8 %i.ey, ptr %i.er, align 1, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 1 ; 2 uses
  br label %mi_outc.exit51.i

mi_outc.exit51.i:                                 ; preds = %bb.bp, %.split.i
  %.17 = phi ptr [ %i.ez, %bb.bp ], [ %.16, %.split.i ] ; 2 uses
  %i.fa = phi ptr [ %i.ez, %bb.bp ], [ %i.er, %.split.i ] ; 2 uses
  %.not.i289 = icmp ugt i64 %i.em, %.054.i
  br i1 %.not.i289, label %.split56.us.i, label %.split.i, !llvm.loop !22

.split56.us.i:                                    ; preds = %mi_outc.exit51.i, %bb.bo
  %.14 = phi ptr [ %.1338, %bb.bo ], [ %.17, %mi_outc.exit51.i ]
  %i.fb = phi ptr [ %.1338, %bb.bo ], [ %i.fa, %mi_outc.exit51.i ] ; 4 uses
  %.not46.i = icmp ne i8 %.0214, 0
  %.not.i52.i = icmp ult ptr %i.fb, %i.e
  %or.cond70.i = select i1 %.not46.i, i1 %.not.i52.i, i1 false
  br i1 %or.cond70.i, label %bb.bq, label %mi_outc.exit53.i

bb.bq:                                            ; preds = %.split56.us.i
  store i8 %.0214, ptr %i.fb, align 1, !tbaa !7
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 2 uses
  br label %mi_outc.exit53.i

mi_outc.exit53.i:                                 ; preds = %bb.bq, %.split56.us.i
  %.15 = phi ptr [ %i.fc, %bb.bq ], [ %.14, %.split56.us.i ] ; 3 uses
  %i.fd = phi ptr [ %i.fc, %bb.bq ], [ %i.fb, %.split56.us.i ]
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %.1338 to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = lshr i64 %i.fg, 1                       ; 4 uses
  %.not58.i = icmp eq i64 %i.fh, 0
  br i1 %.not58.i, label %mi_outs.exit, label %.lr.ph.i288

.lr.ph.i288:                                      ; preds = %mi_outc.exit53.i
  %i.fi = getelementptr i8, ptr %.1338, i64 %i.fg ; 3 uses
  %i.fj = icmp eq i64 %i.fh, 1
  br i1 %i.fj, label %.epil.preheader493, label %.lr.ph.i288.new

.lr.ph.i288.new:                                  ; preds = %.lr.ph.i288
  %unroll_iter497 = and i64 %i.fh, 9223372036854775806
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph.i288.new
  %.04257.i = phi i64 [ 0, %.lr.ph.i288.new ], [ %i.fv, %bb.br ] ; 5 uses
  %niter498 = phi i64 [ 0, %.lr.ph.i288.new ], [ %niter498.next.1, %bb.br ]
  %i.fk = xor i64 %.04257.i, -1
  %i.fl = getelementptr i8, ptr %i.fi, i64 %i.fk  ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !7
  %i.fn = getelementptr inbounds nuw i8, ptr %.1338, i64 %.04257.i ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !7
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !7
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !7
  %i.fp = xor i64 %.04257.i, -2
  %i.fq = getelementptr i8, ptr %i.fi, i64 %i.fp  ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !7
  %i.fs = getelementptr inbounds nuw i8, ptr %.1338, i64 %.04257.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !7
  store i8 %i.fu, ptr %i.fq, align 1, !tbaa !7
  store i8 %i.fr, ptr %i.ft, align 1, !tbaa !7
  %i.fv = add nuw nsw i64 %.04257.i, 2            ; 2 uses
  %niter498.next.1 = add i64 %niter498, 2         ; 2 uses
  %niter498.ncmp.1 = icmp eq i64 %niter498.next.1, %unroll_iter497
  br i1 %niter498.ncmp.1, label %mi_outs.exit.loopexit.unr-lcssa, label %bb.br, !llvm.loop !24

bb.bs:                                            ; preds = %bb.ai, %bb.ai
  %i.fw = load i32, ptr %3, align 8               ; 11 uses
  %i.fx = icmp ult i32 %i.fw, 41                  ; 5 uses
  switch i8 %.0215, label %bb.cj [
    i8 122, label %bb.bt
    i8 116, label %bb.bx
    i8 76, label %bb.cb
    i8 108, label %bb.cf
  ]

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.fx, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.fy = load ptr, ptr %i.g, align 8
  %i.fz = zext nneg i32 %i.fw to i64
  %i.ga = getelementptr i8, ptr %i.fy, i64 %i.fz
  %i.gb = add nuw nsw i32 %i.fw, 8
  store i32 %i.gb, ptr %3, align 8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.gc = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  store ptr %i.gd, ptr %i.f, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ge = phi ptr [ %i.ga, %bb.bu ], [ %i.gc, %bb.bv ]
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !18
  br label %bb.cn

bb.bx:                                            ; preds = %bb.bs
  br i1 %i.fx, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gg = load ptr, ptr %i.g, align 8
  %i.gh = zext nneg i32 %i.fw to i64
  %i.gi = getelementptr i8, ptr %i.gg, i64 %i.gh
  %i.gj = add nuw nsw i32 %i.fw, 8
  store i32 %i.gj, ptr %3, align 8
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.gk = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 8
  store ptr %i.gl, ptr %i.f, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.gm = phi ptr [ %i.gi, %bb.by ], [ %i.gk, %bb.bz ]
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !18
  br label %bb.cn

bb.cb:                                            ; preds = %bb.bs
  br i1 %i.fx, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.go = load ptr, ptr %i.g, align 8
  %i.gp = zext nneg i32 %i.fw to i64
  %i.gq = getelementptr i8, ptr %i.go, i64 %i.gp
  %i.gr = add nuw nsw i32 %i.fw, 8
  store i32 %i.gr, ptr %3, align 8
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.gs = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  store ptr %i.gt, ptr %i.f, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.gu = phi ptr [ %i.gq, %bb.cc ], [ %i.gs, %bb.cd ]
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !20
  br label %bb.cn

bb.cf:                                            ; preds = %bb.bs
  br i1 %i.fx, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.gw = load ptr, ptr %i.g, align 8
  %i.gx = zext nneg i32 %i.fw to i64
  %i.gy = getelementptr i8, ptr %i.gw, i64 %i.gx
  %i.gz = add nuw nsw i32 %i.fw, 8
  store i32 %i.gz, ptr %3, align 8
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.ha = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  store ptr %i.hb, ptr %i.f, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.hc = phi ptr [ %i.gy, %bb.cg ], [ %i.ha, %bb.ch ]
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !18
  br label %bb.cn

bb.cj:                                            ; preds = %bb.bs
  br i1 %i.fx, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.he = load ptr, ptr %i.g, align 8
  %i.hf = zext nneg i32 %i.fw to i64
  %i.hg = getelementptr i8, ptr %i.he, i64 %i.hf
  %i.hh = add nuw nsw i32 %i.fw, 8
  store i32 %i.hh, ptr %3, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.hi = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  store ptr %i.hj, ptr %i.f, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.hk = phi ptr [ %i.hg, %bb.ck ], [ %i.hi, %bb.cl ]
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = sext i32 %i.hl to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ca, %bb.ci, %bb.cm, %bb.ce, %bb.bw
  %.0207 = phi i64 [ %i.gf, %bb.bw ], [ %i.gn, %bb.ca ], [ %i.gv, %bb.ce ], [ %i.hd, %bb.ci ], [ %i.hm, %bb.cm ] ; 4 uses
  %i.hn = icmp slt i64 %.0207, 0
  br i1 %i.hn, label %.thread348, label %bb.co

.thread348:                                       ; preds = %bb.cn
  %i.ho = sub i64 0, %.0207
  br label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.hp = icmp eq i64 %.0207, 0
  br i1 %i.hp, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %.not47.i304.not = icmp eq i8 %.0214, 0
  br i1 %.not47.i304.not, label %mi_outc.exit.i308, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i8 %.0214, ptr %.0337377, align 1, !tbaa !7
  %i.hq = getelementptr inbounds nuw i8, ptr %.0337377, i64 1
  br label %mi_outc.exit.i308

mi_outc.exit.i308:                                ; preds = %bb.cq, %bb.cp
  %.24 = phi ptr [ %i.hq, %bb.cq ], [ %.0337377, %bb.cp ] ; 4 uses
  %.not.i48.i309 = icmp ult ptr %.24, %i.e
  br i1 %.not.i48.i309, label %bb.cr, label %mi_outs.exit

bb.cr:                                            ; preds = %mi_outc.exit.i308
  store i8 48, ptr %.24, align 1, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %.24, i64 1
  br label %mi_outs.exit

bb.cs:                                            ; preds = %.thread348, %bb.co
  %.0206352 = phi i8 [ 45, %.thread348 ], [ %.0214, %bb.co ] ; 2 uses
  %.1351 = phi i64 [ %i.ho, %.thread348 ], [ %.0207, %bb.co ]
  br label %.split.i299

.split.i299:                                      ; preds = %bb.cs, %mi_outc.exit51.i302
  %.22 = phi ptr [ %.0337377, %bb.cs ], [ %.23, %mi_outc.exit51.i302 ]
  %i.hs = phi ptr [ %.0337377, %bb.cs ], [ %i.hy, %mi_outc.exit51.i302 ] ; 4 uses
  %.054.i300 = phi i64 [ %.1351, %bb.cs ], [ %i.ht, %mi_outc.exit51.i302 ] ; 3 uses
  %.not.i50.i301 = icmp ult ptr %i.hs, %i.e
  %i.ht = udiv i64 %.054.i300, 10
  %i.hu = urem i64 %.054.i300, 10
  br i1 %.not.i50.i301, label %bb.ct, label %mi_outc.exit51.i302

bb.ct:                                            ; preds = %.split.i299
  %i.hv = trunc nuw nsw i64 %i.hu to i8
  %i.hw = or disjoint i8 %i.hv, 48
  store i8 %i.hw, ptr %i.hs, align 1, !tbaa !7
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 1 ; 2 uses
  br label %mi_outc.exit51.i302

mi_outc.exit51.i302:                              ; preds = %bb.ct, %.split.i299
  %.23 = phi ptr [ %i.hx, %bb.ct ], [ %.22, %.split.i299 ] ; 2 uses
  %i.hy = phi ptr [ %i.hx, %bb.ct ], [ %i.hs, %.split.i299 ] ; 5 uses
  %.not.i303 = icmp ult i64 %.054.i300, 10
  br i1 %.not.i303, label %.split56.us.i290, label %.split.i299, !llvm.loop !22

.split56.us.i290:                                 ; preds = %mi_outc.exit51.i302
  %.not46.i291 = icmp ne i8 %.0206352, 0
  %.not.i52.i292 = icmp ult ptr %i.hy, %i.e
  %or.cond70.i293 = select i1 %.not46.i291, i1 %.not.i52.i292, i1 false
  br i1 %or.cond70.i293, label %bb.cu, label %mi_outc.exit53.i294

bb.cu:                                            ; preds = %.split56.us.i290
  store i8 %.0206352, ptr %i.hy, align 1, !tbaa !7
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1 ; 2 uses
  br label %mi_outc.exit53.i294

mi_outc.exit53.i294:                              ; preds = %bb.cu, %.split56.us.i290
  %.21 = phi ptr [ %i.hz, %bb.cu ], [ %.23, %.split56.us.i290 ] ; 3 uses
  %i.ia = phi ptr [ %i.hz, %bb.cu ], [ %i.hy, %.split56.us.i290 ]
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %.0337377 to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 3 uses
  %i.ie = lshr i64 %i.id, 1                       ; 4 uses
  %.not58.i295 = icmp eq i64 %i.ie, 0
  br i1 %.not58.i295, label %mi_outs.exit, label %.lr.ph.i296

.lr.ph.i296:                                      ; preds = %mi_outc.exit53.i294
  %i.if = getelementptr i8, ptr %.0337377, i64 %i.id ; 3 uses
  %i.ig = icmp eq i64 %i.ie, 1
  br i1 %i.ig, label %.epil.preheader, label %.lr.ph.i296.new

.lr.ph.i296.new:                                  ; preds = %.lr.ph.i296
  %unroll_iter = and i64 %i.ie, 9223372036854775806
end_hunk_0
begin_hunk_1_@_mi_vsnprintf:bb.a
  br label %mi_outs.exit

mi_outs.exit.loopexit482.unr-lcssa:               ; preds = %bb.cv
  %i.jc = and i64 %i.id, 2
  %lcmp.mod.not = icmp eq i64 %i.jc, 0
  br i1 %lcmp.mod.not, label %mi_outs.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mi_outs.exit.loopexit482.unr-lcssa, %.lr.ph.i296
  %.04257.i297.epil.init = phi i64 [ 0, %.lr.ph.i296 ], [ %i.is, %mi_outs.exit.loopexit482.unr-lcssa ] ; 2 uses
  %lcmp.mod492 = trunc i64 %i.ie to i1
  tail call void @llvm.assume(i1 %lcmp.mod492)
  %i.jd = xor i64 %.04257.i297.epil.init, -1
  %i.je = getelementptr i8, ptr %i.if, i64 %i.jd  ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !7
  %i.jg = getelementptr inbounds nuw i8, ptr %.0337377, i64 %.04257.i297.epil.init ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !7
  store i8 %i.jh, ptr %i.je, align 1, !tbaa !7
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !7
  br label %mi_outs.exit

mi_outs.exit:                                     ; preds = %.lr.ph.i, %.epil.preheader, %mi_outs.exit.loopexit482.unr-lcssa, %.epil.preheader493, %mi_outs.exit.loopexit.unr-lcssa, %bb.cx, %mi_outc.exit312, %mi_outc.exit53.i294, %bb.cr, %mi_outc.exit.i308, %mi_outc.exit53.i, %bb.bn, %mi_outc.exit.i, %bb.ag, %bb.ah, %bb.cw, %mi_outc.exit281
  %.2339 = phi ptr [ %.21, %.epil.preheader ], [ %.0337377, %bb.cw ], [ %.15, %.epil.preheader493 ], [ %i.iu, %mi_outc.exit312 ], [ %i.bf, %mi_outc.exit281 ], [ %.0337377, %bb.ag ], [ %.0337377, %bb.ah ], [ %i.ep, %bb.bn ], [ %.18, %mi_outc.exit.i ], [ %.15, %mi_outc.exit53.i ], [ %i.hr, %bb.cr ], [ %.24, %mi_outc.exit.i308 ], [ %.21, %mi_outc.exit53.i294 ], [ %i.iv, %bb.cx ], [ %.15, %mi_outs.exit.loopexit.unr-lcssa ], [ %.21, %mi_outs.exit.loopexit482.unr-lcssa ], [ %i.bu, %.lr.ph.i ]
  %.2225 = phi i8 [ %.0223, %.epil.preheader ], [ %.0223, %bb.cw ], [ %.1224, %.epil.preheader493 ], [ %.0223, %mi_outc.exit312 ], [ %.0223, %mi_outc.exit281 ], [ %.0223, %bb.ag ], [ %.0223, %bb.ah ], [ %.1224, %bb.bn ], [ %.1224, %mi_outc.exit.i ], [ %.1224, %mi_outc.exit53.i ], [ %.0223, %bb.cr ], [ %.0223, %mi_outc.exit.i308 ], [ %.0223, %mi_outc.exit53.i294 ], [ %.0223, %bb.cx ], [ %.1224, %mi_outs.exit.loopexit.unr-lcssa ], [ %.0223, %mi_outs.exit.loopexit482.unr-lcssa ], [ %.0223, %.lr.ph.i ] ; 2 uses
  %.6222 = phi i64 [ %.2218, %.epil.preheader ], [ %.2218, %bb.cw ], [ %.5221, %.epil.preheader493 ], [ %.2218, %mi_outc.exit312 ], [ %.2218, %mi_outc.exit281 ], [ %.2218, %bb.ag ], [ %.2218, %bb.ah ], [ %.5221, %bb.bn ], [ %.5221, %mi_outc.exit.i ], [ %.5221, %mi_outc.exit53.i ], [ %.2218, %bb.cr ], [ %.2218, %mi_outc.exit.i308 ], [ %.2218, %mi_outc.exit53.i294 ], [ %.2218, %bb.cx ], [ %.5221, %mi_outs.exit.loopexit.unr-lcssa ], [ %.2218, %mi_outs.exit.loopexit482.unr-lcssa ], [ %.2218, %.lr.ph.i ] ; 7 uses
  %.1212 = phi ptr [ %.0337377, %.epil.preheader ], [ %.0337377, %bb.cw ], [ %.1338, %.epil.preheader493 ], [ %.0337377, %mi_outc.exit312 ], [ %.0337377, %mi_outc.exit281 ], [ %.0337377, %bb.ag ], [ %.0337377, %bb.ah ], [ %.1338, %bb.bn ], [ %.1338, %mi_outc.exit.i ], [ %.1338, %mi_outc.exit53.i ], [ %.0337377, %bb.cr ], [ %.0337377, %mi_outc.exit.i308 ], [ %.0337377, %mi_outc.exit53.i294 ], [ %.0337377, %bb.cx ], [ %.1338, %mi_outs.exit.loopexit.unr-lcssa ], [ %.0337377, %mi_outs.exit.loopexit482.unr-lcssa ], [ %.0337377, %.lr.ph.i ] ; 10 uses
  %.fr.i = freeze ptr %.2339                      ; 7 uses
  %i.ji = ptrtoint ptr %.fr.i to i64              ; 3 uses
  %i.jj = ptrtoint ptr %.1212 to i64              ; 2 uses
  %i.jk = sub i64 %i.ji, %i.jj                    ; 13 uses
  %i.jl = icmp ult i64 %i.jk, %.6222
  br i1 %i.jl, label %bb.cy, label %mi_out_alignright.exit

bb.cy:                                            ; preds = %mi_outs.exit
  %i.jm = sub nuw i64 %.6222, %i.jk               ; 2 uses
  %i.jn = icmp ult ptr %.fr.i, %i.e
  br i1 %i.jn, label %.lr.ph.preheader.i, label %mi_out_fill.exit

.lr.ph.preheader.i:                               ; preds = %bb.cy
  %i.jo = xor i64 %i.ji, -1
  %i.jp = add i64 %i.jo, %i.h
  %i.jq = add i64 %i.jm, -1
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.jp, i64 %i.jq)
  %i.jr = add nuw i64 %umin.i, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.fr.i, i8 range(i8 32, 49) %.2225, i64 %i.jr, i1 false), !tbaa !7
  %scevgep.i = getelementptr i8, ptr %.fr.i, i64 %i.jr
  br label %mi_out_fill.exit

mi_out_fill.exit:                                 ; preds = %bb.cy, %.lr.ph.preheader.i
  %.09.lcssa.i = phi ptr [ %.fr.i, %bb.cy ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 4 uses
  %.not266 = icmp ugt ptr %.09.lcssa.i, %i.e
  %or.cond268 = select i1 %.not265, i1 true, i1 %.not266
  br i1 %or.cond268, label %mi_out_alignright.exit, label %bb.cz

bb.cz:                                            ; preds = %mi_out_fill.exit
  %i.js = icmp ne ptr %.fr.i, %.1212
  %i.jt = getelementptr inbounds nuw i8, ptr %.1212, i64 %.6222
  %.not.i316 = icmp ult ptr %i.jt, %i.e
  %or.cond27.i = select i1 %i.js, i1 %.not.i316, i1 false
  br i1 %or.cond27.i, label %iter.check, label %mi_out_alignright.exit

iter.check:                                       ; preds = %bb.cz
  %min.iters.check = icmp ult i64 %i.jk, 8
  br i1 %min.iters.check, label %.preheader31.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ju = add i64 %.6222, %i.jj
  %i.jv = sub i64 %i.ji, %i.ju
  %diff.check = icmp ult i64 %i.jv, 32
  br i1 %diff.check, label %.preheader31.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check468 = icmp ult i64 %i.jk, 32
  br i1 %min.iters.check468, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.jk, 24
  %n.vec = and i64 %i.jk, -32                     ; 4 uses
  %i.jw = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jx = or disjoint i64 %index, 1               ; 2 uses
  %i.jy = sub nuw i64 %i.jk, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.jy ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -15
  %i.kb = getelementptr inbounds i8, ptr %i.jz, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ka, align 1, !tbaa !7
  %wide.load469 = load <16 x i8>, ptr %i.kb, align 1, !tbaa !7
  %i.kc = sub i64 %.6222, %i.jx
  %i.kd = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kc ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 -15
  %i.kf = getelementptr inbounds i8, ptr %i.kd, i64 -31
  store <16 x i8> %wide.load, ptr %i.ke, align 1, !tbaa !7
  store <16 x i8> %wide.load469, ptr %i.kf, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kg = icmp eq i64 %index.next, %n.vec
  br i1 %i.kg, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jk, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader31.i.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec474 = and i64 %i.jk, -8                   ; 3 uses
  %i.kh = or disjoint i64 %n.vec474, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index475 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next479, %vec.epilog.vector.body ] ; 2 uses
  %i.ki = or disjoint i64 %index475, 1            ; 2 uses
  %i.kj = sub nuw i64 %i.jk, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kj
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -7
  %wide.load476 = load <8 x i8>, ptr %i.kl, align 1, !tbaa !7
  %i.km = sub i64 %.6222, %i.ki
  %i.kn = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.km
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -7
  store <8 x i8> %wide.load476, ptr %i.ko, align 1, !tbaa !7
  %index.next479 = add nuw i64 %index475, 8       ; 2 uses
  %i.kp = icmp eq i64 %index.next479, %n.vec474
  br i1 %i.kp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n480 = icmp eq i64 %i.jk, %n.vec474
  br i1 %cmp.n480, label %.preheader.preheader.i, label %.preheader31.i.preheader

.preheader31.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02232.i.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.jw, %vec.epilog.iter.check ], [ %i.kh, %vec.epilog.middle.block ]
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %.02232.i = phi i64 [ %i.kv, %.preheader31.i ], [ %.02232.i.ph, %.preheader31.i.preheader ] ; 4 uses
  %i.kq = sub nuw i64 %i.jk, %.02232.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !7
  %i.kt = sub i64 %.6222, %.02232.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kt
  store i8 %i.ks, ptr %i.ku, align 1, !tbaa !7
  %i.kv = add nuw i64 %.02232.i, 1
  %exitcond.i = icmp eq i64 %.02232.i, %i.jk
  br i1 %exitcond.i, label %.preheader.preheader.i, label %.preheader31.i, !llvm.loop !30

.preheader.preheader.i:                           ; preds = %.preheader31.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1212, i8 range(i8 32, 49) %.2225, i64 %i.jm, i1 false), !tbaa !7
  br label %mi_out_alignright.exit

mi_out_alignright.exit:                           ; preds = %mi_out_fill.exit, %mi_outs.exit, %bb.cz, %.preheader.preheader.i, %mi_outc.exit279, %mi_outc.exit, %mi_outc.exit271, %mi_outc.exit273, %mi_outc.exit275, %mi_outc.exit277, %bb.f, %switch.early.test
  %.4341 = phi ptr [ %.09.lcssa.i, %mi_out_fill.exit ], [ %i.u, %mi_outc.exit279 ], [ %.0337377, %switch.early.test ], [ %.09.lcssa.i, %.preheader.preheader.i ], [ %i.s, %mi_outc.exit277 ], [ %.fr.i, %mi_outs.exit ], [ %.0337377, %bb.f ], [ %i.o, %mi_outc.exit ], [ %i.p, %mi_outc.exit271 ], [ %i.q, %mi_outc.exit273 ], [ %i.r, %mi_outc.exit275 ], [ %.09.lcssa.i, %bb.cz ] ; 3 uses
  %.9 = phi ptr [ %.6, %mi_out_fill.exit ], [ %i.k, %mi_outc.exit279 ], [ %i.k, %switch.early.test ], [ %.6, %.preheader.preheader.i ], [ %i.n, %mi_outc.exit277 ], [ %.6, %mi_outs.exit ], [ %i.n, %bb.f ], [ %i.n, %mi_outc.exit ], [ %i.n, %mi_outc.exit271 ], [ %i.n, %mi_outc.exit273 ], [ %i.n, %mi_outc.exit275 ], [ %.6, %bb.cz ]
  %.not = icmp ult ptr %.4341, %i.e
  br i1 %.not, label %bb.c, label %mi_out_alignright.exit.thread360

mi_out_alignright.exit.thread360:                 ; preds = %mi_out_alignright.exit, %bb.c, %bb.h, %bb.e, %bb.y, %bb.j, %bb.m, %bb.p, %bb.s, %bb.aa, %bb.w, %bb.v, %bb.b
  %.0337375 = phi ptr [ %.0337377, %bb.v ], [ %0, %bb.b ], [ %.4341, %mi_out_alignright.exit ], [ %.0337377, %bb.c ], [ %.0337377, %bb.h ], [ %.0337377, %bb.e ], [ %.0337377, %bb.y ], [ %.0337377, %bb.j ], [ %.0337377, %bb.m ], [ %.0337377, %bb.p ], [ %.0337377, %bb.s ], [ %.0337377, %bb.aa ], [ %.0337377, %bb.w ] ; 2 uses
  store i8 0, ptr %.0337375, align 1, !tbaa !7
  %i.kw = ptrtoint ptr %.0337375 to i64
  %i.kx = ptrtoint ptr %0 to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = trunc i64 %i.ky to i32
  br label %bb.da

bb.da:                                            ; preds = %bb.a, %mi_out_alignright.exit.thread360
  %.0 = phi i32 [ %i.kz, %mi_out_alignright.exit.thread360 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define hidden noundef i32 @_mi_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @_mi_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 0, 65) i64 @_mi_popcount_generic(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %0)
  ret i64 %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = distinct !{!17, !9}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long long", !5, i64 0}
!22 = distinct !{!22, !9, !23}
!23 = !{!"llvm.loop.unswitch.partial.disable"}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 8, i32 24}
!29 = distinct !{!29, !9, !26, !27}
!30 = distinct !{!30, !9, !26}
end_hunk_1
