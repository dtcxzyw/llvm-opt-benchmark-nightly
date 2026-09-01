Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/libc?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_mi_vsnprintf:bb.a
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %mi_out_alignright.exit.thread365, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0230379, i64 1 ; 4 uses
  switch i8 %i.k, label %bb.g [
    i8 37, label %bb.h
    i8 92, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %mi_out_alignright.exit.thread365, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.0230379, i64 2 ; 6 uses
  switch i8 %i.n, label %mi_out_alignright.exit [
    i8 101, label %mi_outc.exit
    i8 116, label %mi_outc.exit276
    i8 110, label %mi_outc.exit278
    i8 114, label %mi_outc.exit280
    i8 92, label %mi_outc.exit282
  ]

mi_outc.exit:                                     ; preds = %bb.f
  store i8 27, ptr %.0342378, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit276:                                  ; preds = %bb.f
  store i8 9, ptr %.0342378, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit278:                                  ; preds = %bb.f
  store i8 10, ptr %.0342378, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit280:                                  ; preds = %bb.f
  store i8 13, ptr %.0342378, align 1, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

mi_outc.exit282:                                  ; preds = %bb.f
  store i8 92, ptr %.0342378, align 1, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

bb.g:                                             ; preds = %bb.d
  %i.v = add i8 %i.k, -32
  %or.cond6 = icmp ult i8 %i.v, 95
  br i1 %or.cond6, label %mi_outc.exit284, label %switch.early.test

switch.early.test:                                ; preds = %bb.g
  switch i8 %i.k, label %mi_out_alignright.exit [
    i8 27, label %mi_outc.exit284
    i8 13, label %mi_outc.exit284
    i8 10, label %mi_outc.exit284
    i8 9, label %mi_outc.exit284
  ]

mi_outc.exit284:                                  ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.g
  store i8 %i.k, ptr %.0342378, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_out_alignright.exit

bb.h:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.m, align 1, !tbaa !8     ; 4 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %mi_out_alignright.exit.thread365, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.0230379, i64 2 ; 2 uses
  switch i8 %i.x, label %bb.l [
    i8 43, label %bb.j
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8    ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %mi_out_alignright.exit.thread365, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.0230379, i64 3
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.1231 = phi ptr [ %i.ac, %bb.k ], [ %i.z, %bb.i ] ; 3 uses
  %.0223 = phi i8 [ %i.aa, %bb.k ], [ %i.x, %bb.i ] ; 2 uses
  %.0214 = phi i8 [ %i.x, %bb.k ], [ 0, %bb.i ]   ; 7 uses
  %.not269 = icmp eq i8 %.0223, 45                ; 3 uses
  br i1 %.not269, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %.1231, align 1, !tbaa !8  ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %mi_out_alignright.exit.thread365, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.1231, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2232 = phi ptr [ %i.af, %bb.n ], [ %.1231, %bb.l ] ; 3 uses
  %.1224 = phi i8 [ %i.ad, %bb.n ], [ %.0223, %bb.l ] ; 2 uses
  %i.ag = icmp eq i8 %.1224, 48
  br i1 %i.ag, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ah = load i8, ptr %.2232, align 1, !tbaa !8  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %mi_out_alignright.exit.thread365, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %.2232, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.3233 = phi ptr [ %i.aj, %bb.q ], [ %.2232, %bb.o ] ; 3 uses
  %.2225 = phi i8 [ %i.ah, %bb.q ], [ %.1224, %bb.o ] ; 3 uses
  %.0218 = phi i8 [ 48, %bb.q ], [ 32, %bb.o ]    ; 13 uses
  %i.ak = add i8 %.2225, -49
  %or.cond24 = icmp ult i8 %i.ak, 9
  br i1 %or.cond24, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.al = load i8, ptr %.3233, align 1, !tbaa !8  ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %mi_out_alignright.exit.thread365, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = and i8 %.2225, 15
  %i.ao = zext nneg i8 %i.an to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.3233.pn = phi ptr [ %.3233, %bb.t ], [ %.4234, %bb.v ]
  %.3226 = phi i8 [ %i.al, %bb.t ], [ %i.av, %bb.v ] ; 2 uses
  %.0216 = phi i64 [ %i.ao, %bb.t ], [ %.1217, %bb.v ] ; 4 uses
  %.4234 = getelementptr inbounds nuw i8, ptr %.3233.pn, i64 1 ; 3 uses
  %i.ap = add i8 %.3226, -48                      ; 2 uses
  %i.aq = icmp ult i8 %i.ap, 10
  br i1 %i.aq, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ar = icmp ult i64 %.0216, 18014398509481983
  %i.as = mul nuw nsw i64 %.0216, 10
  %i.at = zext nneg i8 %i.ap to i64
  %i.au = add nuw nsw i64 %i.as, %i.at
  %.1217 = select i1 %i.ar, i64 %i.au, i64 %.0216
  %i.av = load i8, ptr %.4234, align 1, !tbaa !8  ; 2 uses
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %mi_out_alignright.exit.thread365, label %bb.u, !llvm.loop !24

.loopexit:                                        ; preds = %bb.u, %bb.r
  %.5235 = phi ptr [ %.3233, %bb.r ], [ %.4234, %bb.u ] ; 6 uses
  %.5228 = phi i8 [ %.2225, %bb.r ], [ %.3226, %bb.u ] ; 4 uses
  %.3 = phi i64 [ 0, %bb.r ], [ %.0216, %bb.u ]   ; 16 uses
  %i.ax = add i8 %.5228, -76                      ; 2 uses
  %i.ay = tail call i8 @llvm.fshl.i8(i8 %i.ax, i8 %i.ax, i8 7)
  switch i8 %i.ay, label %bb.ac [
    i8 23, label %bb.w
    i8 20, label %bb.w
    i8 0, label %bb.w
    i8 16, label %bb.y
  ]

bb.w:                                             ; preds = %.loopexit, %.loopexit, %.loopexit
  %i.az = load i8, ptr %.5235, align 1, !tbaa !8  ; 2 uses
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %mi_out_alignright.exit.thread365, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %.5235, i64 1
  br label %bb.ac

bb.y:                                             ; preds = %.loopexit
  %i.bc = load i8, ptr %.5235, align 1, !tbaa !8  ; 3 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %mi_out_alignright.exit.thread365, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %.5235, i64 1 ; 2 uses
  %i.bf = icmp eq i8 %i.bc, 108
  br i1 %i.bf, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !8   ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %mi_out_alignright.exit.thread365, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %.5235, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.ab, %bb.z, %bb.x
  %.6236 = phi ptr [ %i.bb, %bb.x ], [ %i.bi, %bb.ab ], [ %i.be, %bb.z ], [ %.5235, %.loopexit ] ; 4 uses
  %.6229 = phi i8 [ %i.az, %bb.x ], [ %i.bg, %bb.ab ], [ %i.bc, %bb.z ], [ %.5228, %.loopexit ] ; 7 uses
  %.0215 = phi i8 [ %.5228, %bb.x ], [ 76, %bb.ab ], [ %.5228, %bb.z ], [ 100, %.loopexit ] ; 2 uses
  switch i8 %.6229, label %4 [
    i8 37, label %mi_outc.exit286
    i8 115, label %bb.ad
  ]

mi_outc.exit286:                                  ; preds = %bb.ac
  store i8 37, ptr %.0342378, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_outs.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bk = load i32, ptr %3, align 8               ; 3 uses
  %i.bl = icmp ult i32 %i.bk, 41
  br i1 %i.bl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bm = load ptr, ptr %i.i, align 8
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr i8, ptr %i.bm, i64 %i.bn
  %i.bp = add nuw nsw i32 %i.bk, 8
  store i32 %i.bp, ptr %3, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bq = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.br, ptr %i.h, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bs = phi ptr [ %i.bo, %bb.ae ], [ %i.bq, %bb.af ]
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %mi_outs.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !8   ; 2 uses
  %.not369 = icmp eq i8 %i.bv, 0
  br i1 %.not369, label %mi_outs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %.lr.ph.i
  %i.bw = phi i8 [ %i.bz, %.lr.ph.i ], [ %i.bv, %bb.ah ]
  %.012.i = phi ptr [ %i.by, %.lr.ph.i ], [ %.0342378, %bb.ah ] ; 2 uses
  %.0911.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.bt, %bb.ah ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 3 uses
  store i8 %i.bw, ptr %.012.i, align 1, !tbaa !8
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !8   ; 2 uses
  %i.ca = icmp ne i8 %i.bz, 0
  %i.cb = icmp ult ptr %i.by, %i.g
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph.i, label %mi_outs.exit, !llvm.loop !28

4:                                                ; preds = %bb.ac
  %5 = icmp eq i8 %.6229, 112                     ; 2 uses
  %6 = icmp eq i8 %.6229, 120
  switch i8 %.6229, label %bb.dh [
    i8 120, label %bb.ai
    i8 117, label %bb.ai
    i8 112, label %bb.bd
    i8 105, label %bb.bx
    i8 100, label %bb.bx
  ]

bb.ai:                                            ; preds = %4, %4
  %i.cd = add i8 %.0215, -76                      ; 2 uses
  %i.ce = tail call i8 @llvm.fshl.i8(i8 %i.cd, i8 %i.cd, i8 7)
  %i.cf = load i32, ptr %3, align 8               ; 11 uses
  %i.cg = icmp ult i32 %i.cf, 41                  ; 5 uses
  switch i8 %i.ce, label %bb.az [
    i8 23, label %bb.aj
    i8 20, label %bb.an
    i8 0, label %bb.ar
    i8 16, label %bb.av
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.cg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ch = load ptr, ptr %i.i, align 8
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.ci
  %i.ck = add nuw nsw i32 %i.cf, 8
  store i32 %i.ck, ptr %3, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cl = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  store ptr %i.cm, ptr %i.h, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cn = phi ptr [ %i.cj, %bb.ak ], [ %i.cl, %bb.al ]
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !22
  br label %bb.bg

bb.an:                                            ; preds = %bb.ai
  br i1 %i.cg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cp = load ptr, ptr %i.i, align 8
  %i.cq = zext nneg i32 %i.cf to i64
  %i.cr = getelementptr i8, ptr %i.cp, i64 %i.cq
  %i.cs = add nuw nsw i32 %i.cf, 8
  store i32 %i.cs, ptr %3, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ct = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  store ptr %i.cu, ptr %i.h, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cv = phi ptr [ %i.cr, %bb.ao ], [ %i.ct, %bb.ap ]
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !22
  br label %bb.bg

bb.ar:                                            ; preds = %bb.ai
  br i1 %i.cg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cx = load ptr, ptr %i.i, align 8
  %i.cy = zext nneg i32 %i.cf to i64
  %i.cz = getelementptr i8, ptr %i.cx, i64 %i.cy
  %i.da = add nuw nsw i32 %i.cf, 8
  store i32 %i.da, ptr %3, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.db = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.h, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dd = phi ptr [ %i.cz, %bb.as ], [ %i.db, %bb.at ]
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !29
  br label %bb.bg

bb.av:                                            ; preds = %bb.ai
  br i1 %i.cg, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.df = load ptr, ptr %i.i, align 8
  %i.dg = zext nneg i32 %i.cf to i64
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.di = add nuw nsw i32 %i.cf, 8
  store i32 %i.di, ptr %3, align 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dj = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store ptr %i.dk, ptr %i.h, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.dl = phi ptr [ %i.dh, %bb.aw ], [ %i.dj, %bb.ax ]
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !22
  br label %bb.bg

bb.az:                                            ; preds = %bb.ai
  br i1 %i.cg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dn = load ptr, ptr %i.i, align 8
  %i.do = zext nneg i32 %i.cf to i64
  %i.dp = getelementptr i8, ptr %i.dn, i64 %i.do
  %i.dq = add nuw nsw i32 %i.cf, 8
  store i32 %i.dq, ptr %3, align 8
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.dr = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  store ptr %i.ds, ptr %i.h, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dt = phi ptr [ %i.dp, %bb.ba ], [ %i.dr, %bb.bb ]
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !18
  %i.dv = zext i32 %i.du to i64
  br label %bb.bg

bb.bd:                                            ; preds = %4
  %i.dw = load i32, ptr %3, align 8               ; 3 uses
  %i.dx = icmp ult i32 %i.dw, 41
  br i1 %i.dx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dy = load ptr, ptr %i.i, align 8
  %i.dz = zext nneg i32 %i.dw to i64
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  %i.eb = add nuw nsw i32 %i.dw, 8
  store i32 %i.eb, ptr %3, align 8
  br label %.lr.ph.i289

bb.bf:                                            ; preds = %bb.bd
  %i.ec = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  store ptr %i.ed, ptr %i.h, align 8
  br label %.lr.ph.i289

.lr.ph.i289:                                      ; preds = %bb.bf, %bb.be
  %i.ee = phi ptr [ %i.ea, %bb.be ], [ %i.ec, %bb.bf ]
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31
  %i.eg = getelementptr inbounds nuw i8, ptr %.0342378, i64 1 ; 3 uses
  store i8 48, ptr %.0342378, align 1, !tbaa !8
  %i.eh = icmp ult ptr %i.eg, %i.g
  br i1 %i.eh, label %.lr.ph.i289.1, label %mi_outs.exit292

.lr.ph.i289.1:                                    ; preds = %.lr.ph.i289
  %i.ei = getelementptr inbounds nuw i8, ptr %.0342378, i64 2
  store i8 120, ptr %i.eg, align 1, !tbaa !8
  br label %mi_outs.exit292

mi_outs.exit292:                                  ; preds = %.lr.ph.i289.1, %.lr.ph.i289
  %.lcssa465 = phi ptr [ %i.eg, %.lr.ph.i289 ], [ %i.ei, %.lr.ph.i289.1 ]
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = tail call i64 @llvm.usub.sat.i64(i64 %.3, i64 2)
  br label %bb.bg

bb.bg:                                            ; preds = %mi_outs.exit292, %bb.am, %bb.au, %bb.bc, %bb.ay, %bb.aq
  %.1343 = phi ptr [ %.0342378, %bb.bc ], [ %.0342378, %bb.am ], [ %.0342378, %bb.aq ], [ %.0342378, %bb.au ], [ %.0342378, %bb.ay ], [ %.lcssa465, %mi_outs.exit292 ] ; 12 uses
  %.4 = phi i64 [ %.3, %bb.bc ], [ %.3, %bb.am ], [ %.3, %bb.aq ], [ %.3, %bb.au ], [ %.3, %bb.ay ], [ %i.ek, %mi_outs.exit292 ] ; 2 uses
  %.0210 = phi i64 [ %i.dv, %bb.bc ], [ %i.co, %bb.am ], [ %i.cw, %bb.aq ], [ %i.de, %bb.au ], [ %i.dm, %bb.ay ], [ %i.ej, %mi_outs.exit292 ] ; 4 uses
  %i.el = icmp eq i64 %.4, 0
  br i1 %i.el, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  switch i8 %.6229, label %bb.bj [
    i8 120, label %bb.bi
    i8 112, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  %i.em = icmp ult i64 %.0210, 4294967296
  %i.en = icmp ult i64 %.0210, 281474976710656
  %i.eo = select i1 %i.en, i64 12, i64 16
  %i.ep = select i1 %i.em, i64 8, i64 %i.eo
  %spec.store.select = select i1 %5, i64 %i.ep, i64 2
  %spec.select274 = select i1 %.not269, i8 %.0218, i8 48
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.1219 = phi i8 [ %.0218, %bb.bg ], [ %spec.select274, %bb.bi ], [ %.0218, %bb.bh ] ; 3 uses
  %.6 = phi i64 [ %.4, %bb.bg ], [ %spec.store.select, %bb.bi ], [ 0, %bb.bh ] ; 3 uses
  %7 = or i1 %6, %5
  %i.eq = select i1 %7, i64 16, i64 10            ; 3 uses
  %i.er = icmp eq i64 %.0210, 0
  br i1 %i.er, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %.not35.i = icmp ne i8 %.0214, 0
  %.not.i.i = icmp ult ptr %.1343, %i.g
  %or.cond.i = select i1 %.not35.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %bb.bl, label %mi_outc.exit.i

bb.bl:                                            ; preds = %bb.bk
  store i8 %.0214, ptr %.1343, align 1, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %.1343, i64 1
  br label %mi_outc.exit.i

mi_outc.exit.i:                                   ; preds = %bb.bl, %bb.bk
  %.18 = phi ptr [ %i.es, %bb.bl ], [ %.1343, %bb.bk ] ; 4 uses
  %.not.i36.i = icmp ult ptr %.18, %i.g
  br i1 %.not.i36.i, label %bb.bm, label %mi_outs.exit

bb.bm:                                            ; preds = %mi_outc.exit.i
  store i8 48, ptr %.18, align 1, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %.18, i64 1
  br label %mi_outs.exit

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %indvars.iv47.i = phi i64 [ 1, %bb.bn ], [ %indvars.iv.next48.i, %bb.bo ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %bb.bn ], [ %indvars.iv.next.i, %bb.bo ] ; 4 uses
  %.03042.i = phi i64 [ %.0210, %bb.bn ], [ %i.fb, %bb.bo ] ; 3 uses
  %i.eu = urem i64 %.03042.i, %i.eq               ; 2 uses
  %i.ev = trunc nuw nsw i64 %i.eu to i8           ; 2 uses
  %i.ew = icmp samesign ult i64 %i.eu, 10
  %i.ex = or disjoint i8 %i.ev, 48
  %i.ey = add nuw nsw i8 %i.ev, 55
  %i.ez = select i1 %i.ew, i8 %i.ex, i8 %i.ey
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !8
  %i.fb = udiv i64 %.03042.i, %i.eq
  %i.fc = icmp ule i64 %i.eq, %.03042.i
  %i.fd = icmp samesign ult i64 %indvars.iv.i, 159
  %i.fe = select i1 %i.fc, i1 %i.fd, i1 false
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  br i1 %i.fe, label %bb.bo, label %bb.bp, !llvm.loop !32

bb.bp:                                            ; preds = %bb.bo
  %i.ff = icmp samesign ugt i64 %indvars.iv.i, 158
  br i1 %i.ff, label %.loopexit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i293 = icmp ne i8 %.0214, 0
  %.not.i38.i = icmp ult ptr %.1343, %i.g
  %or.cond59.i = select i1 %.not.i293, i1 %.not.i38.i, i1 false
  br i1 %or.cond59.i, label %bb.br, label %mi_outc.exit39.i

bb.br:                                            ; preds = %bb.bq
  store i8 %.0214, ptr %.1343, align 1, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %.1343, i64 1
  br label %mi_outc.exit39.i

mi_outc.exit39.i:                                 ; preds = %bb.br, %bb.bq
  %.14 = phi ptr [ %i.fg, %bb.br ], [ %.1343, %bb.bq ] ; 6 uses
  %i.fh = icmp ult ptr %.14, %i.g
  br i1 %i.fh, label %mi_outc.exit39.split.i.preheader, label %.loopexit.i

mi_outc.exit39.split.i.preheader:                 ; preds = %mi_outc.exit39.i
  %xtraiter467 = and i64 %indvars.iv47.i, 3       ; 2 uses
  %lcmp.mod468.not = icmp eq i64 %xtraiter467, 0
  br i1 %lcmp.mod468.not, label %mi_outc.exit39.split.i.prol.loopexit, label %mi_outc.exit39.split.i.prol

mi_outc.exit39.split.i.prol:                      ; preds = %mi_outc.exit39.split.i.preheader, %mi_outc.exit41.i.prol
  %.16.prol = phi ptr [ %.17.prol, %mi_outc.exit41.i.prol ], [ %.14, %mi_outc.exit39.split.i.preheader ]
  %i.fi = phi ptr [ %i.fm, %mi_outc.exit41.i.prol ], [ %.14, %mi_outc.exit39.split.i.preheader ] ; 4 uses
  %indvars.iv49.i.prol = phi i64 [ %indvars.iv.next50.i.prol, %mi_outc.exit41.i.prol ], [ %indvars.iv47.i, %mi_outc.exit39.split.i.preheader ]
  %prol.iter469 = phi i64 [ %prol.iter469.next, %mi_outc.exit41.i.prol ], [ 0, %mi_outc.exit39.split.i.preheader ]
  %indvars.iv.next50.i.prol = add nsw i64 %indvars.iv49.i.prol, -1 ; 3 uses
  %.not.i40.i.prol = icmp ult ptr %i.fi, %i.g
  br i1 %.not.i40.i.prol, label %bb.bs, label %mi_outc.exit41.i.prol

bb.bs:                                            ; preds = %mi_outc.exit39.split.i.prol
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next50.i.prol
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !8
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 2 uses
  br label %mi_outc.exit41.i.prol

mi_outc.exit41.i.prol:                            ; preds = %bb.bs, %mi_outc.exit39.split.i.prol
  %.17.prol = phi ptr [ %i.fl, %bb.bs ], [ %.16.prol, %mi_outc.exit39.split.i.prol ] ; 3 uses
  %i.fm = phi ptr [ %i.fl, %bb.bs ], [ %i.fi, %mi_outc.exit39.split.i.prol ] ; 2 uses
  %prol.iter469.next = add i64 %prol.iter469, 1   ; 2 uses
  %prol.iter469.cmp.not = icmp eq i64 %prol.iter469.next, %xtraiter467
  br i1 %prol.iter469.cmp.not, label %mi_outc.exit39.split.i.prol.loopexit, label %mi_outc.exit39.split.i.prol, !llvm.loop !33

mi_outc.exit39.split.i.prol.loopexit:             ; preds = %mi_outc.exit41.i.prol, %mi_outc.exit39.split.i.preheader
  %.16.unr = phi ptr [ %.14, %mi_outc.exit39.split.i.preheader ], [ %.17.prol, %mi_outc.exit41.i.prol ]
  %.unr470 = phi ptr [ %.14, %mi_outc.exit39.split.i.preheader ], [ %i.fm, %mi_outc.exit41.i.prol ]
  %indvars.iv49.i.unr = phi i64 [ %indvars.iv47.i, %mi_outc.exit39.split.i.preheader ], [ %indvars.iv.next50.i.prol, %mi_outc.exit41.i.prol ]
  %.17.lcssa.unr = phi ptr [ poison, %mi_outc.exit39.split.i.preheader ], [ %.17.prol, %mi_outc.exit41.i.prol ]
  %i.fn = icmp samesign ult i64 %indvars.iv47.i, 4
  br i1 %i.fn, label %.loopexit.i, label %mi_outc.exit39.split.i

mi_outc.exit39.split.i:                           ; preds = %mi_outc.exit39.split.i.prol.loopexit, %mi_outc.exit41.i.3
  %.16 = phi ptr [ %.17.3, %mi_outc.exit41.i.3 ], [ %.16.unr, %mi_outc.exit39.split.i.prol.loopexit ]
  %i.fo = phi ptr [ %i.gh, %mi_outc.exit41.i.3 ], [ %.unr470, %mi_outc.exit39.split.i.prol.loopexit ] ; 4 uses
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i.3, %mi_outc.exit41.i.3 ], [ %indvars.iv49.i.unr, %mi_outc.exit39.split.i.prol.loopexit ] ; 5 uses
  %.not.i40.i = icmp ult ptr %i.fo, %i.g
  br i1 %.not.i40.i, label %bb.bt, label %mi_outc.exit41.i

bb.bt:                                            ; preds = %mi_outc.exit39.split.i
  %i.fp = getelementptr i8, ptr %i.b, i64 %indvars.iv49.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 -1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !8
  store i8 %i.fr, ptr %i.fo, align 1, !tbaa !8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 2 uses
  br label %mi_outc.exit41.i

mi_outc.exit41.i:                                 ; preds = %bb.bt, %mi_outc.exit39.split.i
  %.17 = phi ptr [ %i.fs, %bb.bt ], [ %.16, %mi_outc.exit39.split.i ]
  %i.ft = phi ptr [ %i.fs, %bb.bt ], [ %i.fo, %mi_outc.exit39.split.i ] ; 4 uses
  %.not.i40.i.1 = icmp ult ptr %i.ft, %i.g
  br i1 %.not.i40.i.1, label %bb.bu, label %mi_outc.exit41.i.1

bb.bu:                                            ; preds = %mi_outc.exit41.i
  %i.fu = getelementptr i8, ptr %i.b, i64 %indvars.iv49.i
  %i.fv = getelementptr i8, ptr %i.fu, i64 -2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !8
  store i8 %i.fw, ptr %i.ft, align 1, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 2 uses
  br label %mi_outc.exit41.i.1

mi_outc.exit41.i.1:                               ; preds = %bb.bu, %mi_outc.exit41.i
  %.17.1 = phi ptr [ %i.fx, %bb.bu ], [ %.17, %mi_outc.exit41.i ]
  %i.fy = phi ptr [ %i.fx, %bb.bu ], [ %i.ft, %mi_outc.exit41.i ] ; 4 uses
  %.not.i40.i.2 = icmp ult ptr %i.fy, %i.g
  br i1 %.not.i40.i.2, label %bb.bv, label %mi_outc.exit41.i.2

bb.bv:                                            ; preds = %mi_outc.exit41.i.1
  %i.fz = getelementptr i8, ptr %i.b, i64 %indvars.iv49.i
  %i.ga = getelementptr i8, ptr %i.fz, i64 -3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !8
  store i8 %i.gb, ptr %i.fy, align 1, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 1 ; 2 uses
  br label %mi_outc.exit41.i.2

mi_outc.exit41.i.2:                               ; preds = %bb.bv, %mi_outc.exit41.i.1
  %.17.2 = phi ptr [ %i.gc, %bb.bv ], [ %.17.1, %mi_outc.exit41.i.1 ]
  %i.gd = phi ptr [ %i.gc, %bb.bv ], [ %i.fy, %mi_outc.exit41.i.1 ] ; 4 uses
  %indvars.iv.next50.i.3 = add nsw i64 %indvars.iv49.i, -4 ; 2 uses
  %.not.i40.i.3 = icmp ult ptr %i.gd, %i.g
  br i1 %.not.i40.i.3, label %bb.bw, label %mi_outc.exit41.i.3

bb.bw:                                            ; preds = %mi_outc.exit41.i.2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next50.i.3
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !8
  store i8 %i.gf, ptr %i.gd, align 1, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 2 uses
  br label %mi_outc.exit41.i.3

mi_outc.exit41.i.3:                               ; preds = %bb.bw, %mi_outc.exit41.i.2
  %.17.3 = phi ptr [ %i.gg, %bb.bw ], [ %.17.2, %mi_outc.exit41.i.2 ] ; 2 uses
  %i.gh = phi ptr [ %i.gg, %bb.bw ], [ %i.gd, %mi_outc.exit41.i.2 ]
  %i.gi = icmp sgt i64 %indvars.iv49.i, 4
  br i1 %i.gi, label %mi_outc.exit39.split.i, label %.loopexit.i, !llvm.loop !35

.loopexit.i:                                      ; preds = %mi_outc.exit39.split.i.prol.loopexit, %mi_outc.exit41.i.3, %mi_outc.exit39.i, %bb.bp
  %.15 = phi ptr [ %.1343, %bb.bp ], [ %.14, %mi_outc.exit39.i ], [ %.17.lcssa.unr, %mi_outc.exit39.split.i.prol.loopexit ], [ %.17.3, %mi_outc.exit41.i.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %mi_outs.exit

bb.bx:                                            ; preds = %4, %4
  %i.gj = add i8 %.0215, -76                      ; 2 uses
  %i.gk = tail call i8 @llvm.fshl.i8(i8 %i.gj, i8 %i.gj, i8 7)
  %i.gl = load i32, ptr %3, align 8               ; 11 uses
  %i.gm = icmp ult i32 %i.gl, 41                  ; 5 uses
  switch i8 %i.gk, label %bb.co [
    i8 23, label %bb.by
    i8 20, label %bb.cc
    i8 0, label %bb.cg
    i8 16, label %bb.ck
  ]

bb.by:                                            ; preds = %bb.bx
  br i1 %i.gm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gn = load ptr, ptr %i.i, align 8
  %i.go = zext nneg i32 %i.gl to i64
  %i.gp = getelementptr i8, ptr %i.gn, i64 %i.go
  %i.gq = add nuw nsw i32 %i.gl, 8
  store i32 %i.gq, ptr %3, align 8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.gr = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  store ptr %i.gs, ptr %i.h, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.gt = phi ptr [ %i.gp, %bb.bz ], [ %i.gr, %bb.ca ]
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !22
  br label %bb.cs

bb.cc:                                            ; preds = %bb.bx
  br i1 %i.gm, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.gv = load ptr, ptr %i.i, align 8
  %i.gw = zext nneg i32 %i.gl to i64
  %i.gx = getelementptr i8, ptr %i.gv, i64 %i.gw
  %i.gy = add nuw nsw i32 %i.gl, 8
  store i32 %i.gy, ptr %3, align 8
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.gz = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 8
  store ptr %i.ha, ptr %i.h, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.hb = phi ptr [ %i.gx, %bb.cd ], [ %i.gz, %bb.ce ]
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !22
  br label %bb.cs

bb.cg:                                            ; preds = %bb.bx
  br i1 %i.gm, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.hd = load ptr, ptr %i.i, align 8
  %i.he = zext nneg i32 %i.gl to i64
  %i.hf = getelementptr i8, ptr %i.hd, i64 %i.he
  %i.hg = add nuw nsw i32 %i.gl, 8
  store i32 %i.hg, ptr %3, align 8
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.hh = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  store ptr %i.hi, ptr %i.h, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.hj = phi ptr [ %i.hf, %bb.ch ], [ %i.hh, %bb.ci ]
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !29
  br label %bb.cs

bb.ck:                                            ; preds = %bb.bx
  br i1 %i.gm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.hl = load ptr, ptr %i.i, align 8
  %i.hm = zext nneg i32 %i.gl to i64
  %i.hn = getelementptr i8, ptr %i.hl, i64 %i.hm
  %i.ho = add nuw nsw i32 %i.gl, 8
  store i32 %i.ho, ptr %3, align 8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.hp = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 8
  store ptr %i.hq, ptr %i.h, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.hr = phi ptr [ %i.hn, %bb.cl ], [ %i.hp, %bb.cm ]
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !22
  br label %bb.cs

bb.co:                                            ; preds = %bb.bx
  br i1 %i.gm, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ht = load ptr, ptr %i.i, align 8
  %i.hu = zext nneg i32 %i.gl to i64
  %i.hv = getelementptr i8, ptr %i.ht, i64 %i.hu
  %i.hw = add nuw nsw i32 %i.gl, 8
  store i32 %i.hw, ptr %3, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.hx = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  store ptr %i.hy, ptr %i.h, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.hz = phi ptr [ %i.hv, %bb.cp ], [ %i.hx, %bb.cq ]
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !18
  %i.ib = sext i32 %i.ia to i64
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cf, %bb.cn, %bb.cr, %bb.cj, %bb.cb
  %.0209 = phi i64 [ %i.gu, %bb.cb ], [ %i.hc, %bb.cf ], [ %i.hk, %bb.cj ], [ %i.hs, %bb.cn ], [ %i.ib, %bb.cr ] ; 4 uses
  %i.ic = icmp slt i64 %.0209, 0
  br i1 %i.ic, label %.thread353, label %bb.ct

.thread353:                                       ; preds = %bb.cs
  %i.id = sub i64 0, %.0209
  br label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.ie = icmp eq i64 %.0209, 0
  br i1 %i.ie, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %.not35.i310.not = icmp eq i8 %.0214, 0
  br i1 %.not35.i310.not, label %mi_outc.exit.i314, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i8 %.0214, ptr %.0342378, align 1, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_outc.exit.i314

mi_outc.exit.i314:                                ; preds = %bb.cv, %bb.cu
  %.24 = phi ptr [ %i.if, %bb.cv ], [ %.0342378, %bb.cu ] ; 4 uses
  %.not.i36.i315 = icmp ult ptr %.24, %i.g
  br i1 %.not.i36.i315, label %bb.cw, label %mi_outs.exit

bb.cw:                                            ; preds = %mi_outc.exit.i314
  store i8 48, ptr %.24, align 1, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %.24, i64 1
  br label %mi_outs.exit

bb.cx:                                            ; preds = %.thread353, %bb.ct
  %.0357 = phi i8 [ 45, %.thread353 ], [ %.0214, %bb.ct ] ; 2 uses
  %.1356 = phi i64 [ %i.id, %.thread353 ], [ %.0209, %bb.ct ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %bb.cx
  %indvars.iv47.i294 = phi i64 [ 1, %bb.cx ], [ %indvars.iv.next48.i298, %bb.cy ] ; 5 uses
  %indvars.iv.i295 = phi i64 [ 0, %bb.cx ], [ %indvars.iv.next.i297, %bb.cy ] ; 4 uses
  %.03042.i296 = phi i64 [ %.1356, %bb.cx ], [ %i.il, %bb.cy ] ; 3 uses
  %i.ih = urem i64 %.03042.i296, 10
  %i.ii = trunc nuw nsw i64 %i.ih to i8
  %i.ij = or disjoint i8 %i.ii, 48
  %indvars.iv.next.i297 = add nuw nsw i64 %indvars.iv.i295, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i295
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !8
  %i.il = udiv i64 %.03042.i296, 10
  %i.im = icmp ugt i64 %.03042.i296, 9
  %i.in = icmp samesign ult i64 %indvars.iv.i295, 159
  %i.io = select i1 %i.im, i1 %i.in, i1 false
  %indvars.iv.next48.i298 = add nuw nsw i64 %indvars.iv47.i294, 1
  br i1 %i.io, label %bb.cy, label %bb.cz, !llvm.loop !32

bb.cz:                                            ; preds = %bb.cy
  %i.ip = icmp samesign ugt i64 %indvars.iv.i295, 158
  br i1 %i.ip, label %.loopexit.i304, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.not.i299.not = icmp eq i8 %.0357, 0
  br i1 %.not.i299.not, label %mi_outc.exit39.i303, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i8 %.0357, ptr %.0342378, align 1, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %.0342378, i64 1
  br label %mi_outc.exit39.i303

mi_outc.exit39.i303:                              ; preds = %bb.db, %bb.da
  %.20 = phi ptr [ %i.iq, %bb.db ], [ %.0342378, %bb.da ] ; 6 uses
  %i.ir = icmp ult ptr %.20, %i.g
  br i1 %i.ir, label %mi_outc.exit39.split.i305.preheader, label %.loopexit.i304

mi_outc.exit39.split.i305.preheader:              ; preds = %mi_outc.exit39.i303
  %xtraiter = and i64 %indvars.iv47.i294, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mi_outc.exit39.split.i305.prol.loopexit, label %mi_outc.exit39.split.i305.prol

mi_outc.exit39.split.i305.prol:                   ; preds = %mi_outc.exit39.split.i305.preheader, %mi_outc.exit41.i309.prol
  %.22.prol = phi ptr [ %.23.prol, %mi_outc.exit41.i309.prol ], [ %.20, %mi_outc.exit39.split.i305.preheader ]
  %i.is = phi ptr [ %i.iw, %mi_outc.exit41.i309.prol ], [ %.20, %mi_outc.exit39.split.i305.preheader ] ; 4 uses
  %indvars.iv49.i306.prol = phi i64 [ %indvars.iv.next50.i307.prol, %mi_outc.exit41.i309.prol ], [ %indvars.iv47.i294, %mi_outc.exit39.split.i305.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %mi_outc.exit41.i309.prol ], [ 0, %mi_outc.exit39.split.i305.preheader ]
  %indvars.iv.next50.i307.prol = add nsw i64 %indvars.iv49.i306.prol, -1 ; 3 uses
  %.not.i40.i308.prol = icmp ult ptr %i.is, %i.g
  br i1 %.not.i40.i308.prol, label %bb.dc, label %mi_outc.exit41.i309.prol

bb.dc:                                            ; preds = %mi_outc.exit39.split.i305.prol
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next50.i307.prol
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !8
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.prol

mi_outc.exit41.i309.prol:                         ; preds = %bb.dc, %mi_outc.exit39.split.i305.prol
  %.23.prol = phi ptr [ %i.iv, %bb.dc ], [ %.22.prol, %mi_outc.exit39.split.i305.prol ] ; 3 uses
  %i.iw = phi ptr [ %i.iv, %bb.dc ], [ %i.is, %mi_outc.exit39.split.i305.prol ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %mi_outc.exit39.split.i305.prol.loopexit, label %mi_outc.exit39.split.i305.prol, !llvm.loop !37

mi_outc.exit39.split.i305.prol.loopexit:          ; preds = %mi_outc.exit41.i309.prol, %mi_outc.exit39.split.i305.preheader
  %.22.unr = phi ptr [ %.20, %mi_outc.exit39.split.i305.preheader ], [ %.23.prol, %mi_outc.exit41.i309.prol ]
  %.unr = phi ptr [ %.20, %mi_outc.exit39.split.i305.preheader ], [ %i.iw, %mi_outc.exit41.i309.prol ]
  %indvars.iv49.i306.unr = phi i64 [ %indvars.iv47.i294, %mi_outc.exit39.split.i305.preheader ], [ %indvars.iv.next50.i307.prol, %mi_outc.exit41.i309.prol ]
  %.23.lcssa.unr = phi ptr [ poison, %mi_outc.exit39.split.i305.preheader ], [ %.23.prol, %mi_outc.exit41.i309.prol ]
  %i.ix = icmp samesign ult i64 %indvars.iv47.i294, 4
  br i1 %i.ix, label %.loopexit.i304, label %mi_outc.exit39.split.i305

mi_outc.exit39.split.i305:                        ; preds = %mi_outc.exit39.split.i305.prol.loopexit, %mi_outc.exit41.i309.3
  %.22 = phi ptr [ %.23.3, %mi_outc.exit41.i309.3 ], [ %.22.unr, %mi_outc.exit39.split.i305.prol.loopexit ]
  %i.iy = phi ptr [ %i.jr, %mi_outc.exit41.i309.3 ], [ %.unr, %mi_outc.exit39.split.i305.prol.loopexit ] ; 4 uses
  %indvars.iv49.i306 = phi i64 [ %indvars.iv.next50.i307.3, %mi_outc.exit41.i309.3 ], [ %indvars.iv49.i306.unr, %mi_outc.exit39.split.i305.prol.loopexit ] ; 5 uses
  %.not.i40.i308 = icmp ult ptr %i.iy, %i.g
  br i1 %.not.i40.i308, label %bb.dd, label %mi_outc.exit41.i309

bb.dd:                                            ; preds = %mi_outc.exit39.split.i305
  %i.iz = getelementptr i8, ptr %i.a, i64 %indvars.iv49.i306
  %i.ja = getelementptr i8, ptr %i.iz, i64 -1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !8
  store i8 %i.jb, ptr %i.iy, align 1, !tbaa !8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309

mi_outc.exit41.i309:                              ; preds = %bb.dd, %mi_outc.exit39.split.i305
  %.23 = phi ptr [ %i.jc, %bb.dd ], [ %.22, %mi_outc.exit39.split.i305 ]
  %i.jd = phi ptr [ %i.jc, %bb.dd ], [ %i.iy, %mi_outc.exit39.split.i305 ] ; 4 uses
  %.not.i40.i308.1 = icmp ult ptr %i.jd, %i.g
  br i1 %.not.i40.i308.1, label %bb.de, label %mi_outc.exit41.i309.1

bb.de:                                            ; preds = %mi_outc.exit41.i309
  %i.je = getelementptr i8, ptr %i.a, i64 %indvars.iv49.i306
  %i.jf = getelementptr i8, ptr %i.je, i64 -2
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !8
  store i8 %i.jg, ptr %i.jd, align 1, !tbaa !8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.1

mi_outc.exit41.i309.1:                            ; preds = %bb.de, %mi_outc.exit41.i309
  %.23.1 = phi ptr [ %i.jh, %bb.de ], [ %.23, %mi_outc.exit41.i309 ]
  %i.ji = phi ptr [ %i.jh, %bb.de ], [ %i.jd, %mi_outc.exit41.i309 ] ; 4 uses
  %.not.i40.i308.2 = icmp ult ptr %i.ji, %i.g
  br i1 %.not.i40.i308.2, label %bb.df, label %mi_outc.exit41.i309.2

bb.df:                                            ; preds = %mi_outc.exit41.i309.1
  %i.jj = getelementptr i8, ptr %i.a, i64 %indvars.iv49.i306
  %i.jk = getelementptr i8, ptr %i.jj, i64 -3
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !8
  store i8 %i.jl, ptr %i.ji, align 1, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.2

mi_outc.exit41.i309.2:                            ; preds = %bb.df, %mi_outc.exit41.i309.1
  %.23.2 = phi ptr [ %i.jm, %bb.df ], [ %.23.1, %mi_outc.exit41.i309.1 ]
  %i.jn = phi ptr [ %i.jm, %bb.df ], [ %i.ji, %mi_outc.exit41.i309.1 ] ; 4 uses
  %indvars.iv.next50.i307.3 = add nsw i64 %indvars.iv49.i306, -4 ; 2 uses
  %.not.i40.i308.3 = icmp ult ptr %i.jn, %i.g
  br i1 %.not.i40.i308.3, label %bb.dg, label %mi_outc.exit41.i309.3

bb.dg:                                            ; preds = %mi_outc.exit41.i309.2
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next50.i307.3
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !8
  store i8 %i.jp, ptr %i.jn, align 1, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 1 ; 2 uses
  br label %mi_outc.exit41.i309.3

mi_outc.exit41.i309.3:                            ; preds = %bb.dg, %mi_outc.exit41.i309.2
  %.23.3 = phi ptr [ %i.jq, %bb.dg ], [ %.23.2, %mi_outc.exit41.i309.2 ] ; 2 uses
  %i.jr = phi ptr [ %i.jq, %bb.dg ], [ %i.jn, %mi_outc.exit41.i309.2 ]
  %i.js = icmp sgt i64 %indvars.iv49.i306, 4
  br i1 %i.js, label %mi_outc.exit39.split.i305, label %.loopexit.i304, !llvm.loop !35

.loopexit.i304:                                   ; preds = %mi_outc.exit39.split.i305.prol.loopexit, %mi_outc.exit41.i309.3, %mi_outc.exit39.i303, %bb.cz
  %.21 = phi ptr [ %.0342378, %bb.cz ], [ %.20, %mi_outc.exit39.i303 ], [ %.23.lcssa.unr, %mi_outc.exit39.split.i305.prol.loopexit ], [ %.23.3, %mi_outc.exit41.i309.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %mi_outs.exit

bb.dh:                                            ; preds = %4
  %i.jt = add i8 %.6229, -32
  %or.cond48 = icmp ult i8 %i.jt, 95
  br i1 %or.cond48, label %mi_outc.exit318, label %mi_outs.exit

mi_outc.exit318:                                  ; preds = %bb.dh
  store i8 37, ptr %.0342378, align 1, !tbaa !8
  %i.ju = getelementptr inbounds nuw i8, ptr %.0342378, i64 1 ; 3 uses
  %.not.i319 = icmp ult ptr %i.ju, %i.g
  br i1 %.not.i319, label %bb.di, label %mi_outs.exit

bb.di:                                            ; preds = %mi_outc.exit318
  store i8 %.6229, ptr %i.ju, align 1, !tbaa !8
  %i.jv = getelementptr inbounds nuw i8, ptr %.0342378, i64 2
  br label %mi_outs.exit

mi_outs.exit:                                     ; preds = %.lr.ph.i, %bb.di, %mi_outc.exit318, %.loopexit.i304, %bb.cw, %mi_outc.exit.i314, %.loopexit.i, %bb.bm, %mi_outc.exit.i, %bb.ag, %bb.ah, %bb.dh, %mi_outc.exit286
  %.2344 = phi ptr [ %.21, %.loopexit.i304 ], [ %.0342378, %bb.dh ], [ %i.ju, %mi_outc.exit318 ], [ %.15, %.loopexit.i ], [ %i.bj, %mi_outc.exit286 ], [ %.0342378, %bb.ag ], [ %.0342378, %bb.ah ], [ %i.et, %bb.bm ], [ %.18, %mi_outc.exit.i ], [ %i.ig, %bb.cw ], [ %.24, %mi_outc.exit.i314 ], [ %i.jv, %bb.di ], [ %i.by, %.lr.ph.i ]
  %.2220 = phi i8 [ %.0218, %.loopexit.i304 ], [ %.0218, %bb.dh ], [ %.0218, %mi_outc.exit318 ], [ %.1219, %.loopexit.i ], [ %.0218, %mi_outc.exit286 ], [ %.0218, %bb.ag ], [ %.0218, %bb.ah ], [ %.1219, %bb.bm ], [ %.1219, %mi_outc.exit.i ], [ %.0218, %bb.cw ], [ %.0218, %mi_outc.exit.i314 ], [ %.0218, %bb.di ], [ %.0218, %.lr.ph.i ] ; 2 uses
  %.7 = phi i64 [ %.3, %.loopexit.i304 ], [ %.3, %bb.dh ], [ %.3, %mi_outc.exit318 ], [ %.6, %.loopexit.i ], [ %.3, %mi_outc.exit286 ], [ %.3, %bb.ag ], [ %.3, %bb.ah ], [ %.6, %bb.bm ], [ %.6, %mi_outc.exit.i ], [ %.3, %bb.cw ], [ %.3, %mi_outc.exit.i314 ], [ %.3, %bb.di ], [ %.3, %.lr.ph.i ] ; 7 uses
  %.1212 = phi ptr [ %.0342378, %.loopexit.i304 ], [ %.0342378, %bb.dh ], [ %.0342378, %mi_outc.exit318 ], [ %.1343, %.loopexit.i ], [ %.0342378, %mi_outc.exit286 ], [ %.0342378, %bb.ag ], [ %.0342378, %bb.ah ], [ %.1343, %bb.bm ], [ %.1343, %mi_outc.exit.i ], [ %.0342378, %bb.cw ], [ %.0342378, %mi_outc.exit.i314 ], [ %.0342378, %bb.di ], [ %.0342378, %.lr.ph.i ] ; 10 uses
  %.fr.i = freeze ptr %.2344                      ; 7 uses
  %i.jw = ptrtoint ptr %.fr.i to i64              ; 3 uses
  %i.jx = ptrtoint ptr %.1212 to i64              ; 2 uses
  %i.jy = sub i64 %i.jw, %i.jx                    ; 13 uses
  %i.jz = icmp ult i64 %i.jy, %.7
  br i1 %i.jz, label %bb.dj, label %mi_out_alignright.exit

bb.dj:                                            ; preds = %mi_outs.exit
  %i.ka = sub nuw i64 %.7, %i.jy                  ; 2 uses
  %i.kb = icmp ult ptr %.fr.i, %i.g
  br i1 %i.kb, label %.lr.ph.preheader.i, label %mi_out_fill.exit

.lr.ph.preheader.i:                               ; preds = %bb.dj
  %i.kc = xor i64 %i.jw, -1
  %i.kd = add i64 %i.kc, %i.j
  %i.ke = add i64 %i.ka, -1
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.kd, i64 %i.ke)
  %i.kf = add nuw i64 %umin.i, 1                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.fr.i, i8 range(i8 32, 49) %.2220, i64 %i.kf, i1 false), !tbaa !8
  %scevgep.i = getelementptr i8, ptr %.fr.i, i64 %i.kf
  br label %mi_out_fill.exit

mi_out_fill.exit:                                 ; preds = %bb.dj, %.lr.ph.preheader.i
  %.09.lcssa.i = phi ptr [ %.fr.i, %bb.dj ], [ %scevgep.i, %.lr.ph.preheader.i ] ; 4 uses
  %.not270 = icmp ugt ptr %.09.lcssa.i, %i.g
  %or.cond272 = select i1 %.not269, i1 true, i1 %.not270
  br i1 %or.cond272, label %mi_out_alignright.exit, label %bb.dk

bb.dk:                                            ; preds = %mi_out_fill.exit
  %i.kg = icmp ne ptr %.fr.i, %.1212
  %i.kh = getelementptr inbounds nuw i8, ptr %.1212, i64 %.7
  %.not.i322 = icmp ult ptr %i.kh, %i.g
  %or.cond27.i = select i1 %i.kg, i1 %.not.i322, i1 false
  br i1 %or.cond27.i, label %iter.check, label %mi_out_alignright.exit

iter.check:                                       ; preds = %bb.dk
  %min.iters.check = icmp ult i64 %i.jy, 8
  br i1 %min.iters.check, label %.preheader31.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ki = add i64 %.7, %i.jx
  %i.kj = sub i64 %i.ki, %i.jw
  %diff.check = icmp ugt i64 %i.kj, -32
  br i1 %diff.check, label %.preheader31.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check453 = icmp ult i64 %i.jy, 32
  br i1 %min.iters.check453, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kk = and i64 %i.jy, 24
  %n.vec = and i64 %i.jy, -32                     ; 4 uses
  %i.kl = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.km = or disjoint i64 %index, 1               ; 2 uses
  %i.kn = sub nuw i64 %i.jy, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 -15
  %i.kq = getelementptr inbounds i8, ptr %i.ko, i64 -31
  %wide.load = load <16 x i8>, ptr %i.kp, align 1, !tbaa !8
  %wide.load454 = load <16 x i8>, ptr %i.kq, align 1, !tbaa !8
  %i.kr = sub i64 %.7, %i.km
  %i.ks = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.kr ; 2 uses
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 -15
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 -31
  store <16 x i8> %wide.load, ptr %i.kt, align 1, !tbaa !8
  store <16 x i8> %wide.load454, ptr %i.ku, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jy, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kk, 0
  br i1 %min.epilog.iters.check, label %.preheader31.i.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec455 = and i64 %i.jy, -8                   ; 3 uses
  %i.kw = or disjoint i64 %n.vec455, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index456 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next458, %vec.epilog.vector.body ] ; 2 uses
  %i.kx = or disjoint i64 %index456, 1            ; 2 uses
  %i.ky = sub nuw i64 %i.jy, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.ky
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 -7
  %wide.load457 = load <8 x i8>, ptr %i.la, align 1, !tbaa !8
  %i.lb = sub i64 %.7, %i.kx
  %i.lc = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.lb
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -7
  store <8 x i8> %wide.load457, ptr %i.ld, align 1, !tbaa !8
  %index.next458 = add nuw i64 %index456, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next458, %n.vec455
  br i1 %i.le, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n459 = icmp eq i64 %i.jy, %n.vec455
  br i1 %cmp.n459, label %.preheader.preheader.i, label %.preheader31.i.preheader

.preheader31.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02232.i.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.kl, %vec.epilog.iter.check ], [ %i.kw, %vec.epilog.middle.block ]
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %.02232.i = phi i64 [ %i.lk, %.preheader31.i ], [ %.02232.i.ph, %.preheader31.i.preheader ] ; 4 uses
  %i.lf = sub nuw i64 %i.jy, %.02232.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !8
  %i.li = sub i64 %.7, %.02232.i
  %i.lj = getelementptr inbounds nuw i8, ptr %.1212, i64 %i.li
  store i8 %i.lh, ptr %i.lj, align 1, !tbaa !8
  %i.lk = add nuw i64 %.02232.i, 1
  %exitcond.i = icmp eq i64 %.02232.i, %i.jy
  br i1 %exitcond.i, label %.preheader.preheader.i, label %.preheader31.i, !llvm.loop !43

.preheader.preheader.i:                           ; preds = %.preheader31.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1212, i8 range(i8 32, 49) %.2220, i64 %i.ka, i1 false), !tbaa !8
  br label %mi_out_alignright.exit

mi_out_alignright.exit:                           ; preds = %mi_out_fill.exit, %mi_outs.exit, %bb.dk, %.preheader.preheader.i, %mi_outc.exit284, %mi_outc.exit, %mi_outc.exit276, %mi_outc.exit278, %mi_outc.exit280, %mi_outc.exit282, %bb.f, %switch.early.test
  %.4346 = phi ptr [ %.09.lcssa.i, %mi_out_fill.exit ], [ %i.w, %mi_outc.exit284 ], [ %.0342378, %switch.early.test ], [ %.09.lcssa.i, %.preheader.preheader.i ], [ %i.u, %mi_outc.exit282 ], [ %.fr.i, %mi_outs.exit ], [ %.0342378, %bb.f ], [ %i.q, %mi_outc.exit ], [ %i.r, %mi_outc.exit276 ], [ %i.s, %mi_outc.exit278 ], [ %i.t, %mi_outc.exit280 ], [ %.09.lcssa.i, %bb.dk ] ; 3 uses
  %.9 = phi ptr [ %.6236, %mi_out_fill.exit ], [ %i.m, %mi_outc.exit284 ], [ %i.m, %switch.early.test ], [ %.6236, %.preheader.preheader.i ], [ %i.p, %mi_outc.exit282 ], [ %.6236, %mi_outs.exit ], [ %i.p, %bb.f ], [ %i.p, %mi_outc.exit ], [ %i.p, %mi_outc.exit276 ], [ %i.p, %mi_outc.exit278 ], [ %i.p, %mi_outc.exit280 ], [ %.6236, %bb.dk ]
  %.not = icmp ult ptr %.4346, %i.g
  br i1 %.not, label %bb.c, label %mi_out_alignright.exit.thread365

mi_out_alignright.exit.thread365:                 ; preds = %mi_out_alignright.exit, %bb.c, %bb.h, %bb.e, %bb.y, %bb.j, %bb.m, %bb.p, %bb.s, %bb.aa, %bb.w, %bb.v, %bb.b
  %.0342376 = phi ptr [ %.0342378, %bb.v ], [ %0, %bb.b ], [ %.4346, %mi_out_alignright.exit ], [ %.0342378, %bb.c ], [ %.0342378, %bb.h ], [ %.0342378, %bb.e ], [ %.0342378, %bb.y ], [ %.0342378, %bb.j ], [ %.0342378, %bb.m ], [ %.0342378, %bb.p ], [ %.0342378, %bb.s ], [ %.0342378, %bb.aa ], [ %.0342378, %bb.w ] ; 2 uses
  store i8 0, ptr %.0342376, align 1, !tbaa !8
  %i.ll = ptrtoint ptr %.0342376 to i64
  %i.lm = ptrtoint ptr %0 to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = trunc i64 %i.ln to i32
  br label %bb.dl

bb.dl:                                            ; preds = %bb.a, %mi_out_alignright.exit.thread365
  %.0238 = phi i32 [ %i.lo, %mi_out_alignright.exit.thread365 ], [ 0, %bb.a ]
  ret i32 %.0238
}

; Function Attrs: nofree nooutline norecurse nosync nounwind uwtable
define hidden noundef i32 @_mi_snprintf(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #10 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @_mi_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #16
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: mustprogress nofree noinline nooutline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 0, 65) i64 @_mi_popcount_generic(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ult i64 %0, 2
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, -1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
end_hunk_0
