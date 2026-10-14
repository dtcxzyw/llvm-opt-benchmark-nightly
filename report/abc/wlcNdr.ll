Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcNdr?download=true
inline.NumInlined: 328
inline.NumDeleted: 80
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Wlc_NtkFromNdr:bb.a
  %.val269.pre = load ptr, ptr %i.ax, align 8, !tbaa !21
  br label %bb.v

bb.h:                                             ; preds = %.lr.ph, %Ndr_DataSize.exit
  %.val273691 = phi ptr [ %.val273610, %.lr.ph ], [ %.val273832, %Ndr_DataSize.exit ] ; 7 uses
  %.val.i302689 = phi ptr [ %.val270.pre, %.lr.ph ], [ %.val.i302834, %Ndr_DataSize.exit ] ; 5 uses
  %.0226611 = phi i32 [ 3, %.lr.ph ], [ %i.ds, %Ndr_DataSize.exit ] ; 5 uses
  %i.bf = sext i32 %.0226611 to i64               ; 5 uses
  %i.bg = getelementptr inbounds i8, ptr %.val.i302689, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14  ; 2 uses
  %.not245 = icmp eq i8 %i.bh, 3
  br i1 %.not245, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.bi = add nsw i32 %.0226611, 1                ; 5 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.val273691, i64 %i.bf
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !13
  %i.bl = add i32 %i.bk, %.0226611                ; 3 uses
  %i.bm = icmp slt i32 %i.bi, %i.bl
  br i1 %i.bm, label %.lr.ph.i292, label %Ndr_ObjReadRange.exit

.lr.ph.i292:                                      ; preds = %bb.i, %Ndr_DataSize.exit.i293
  %.016.i = phi i32 [ %i.bv, %Ndr_DataSize.exit.i293 ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bn = sext i32 %.016.i to i64                 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.val.i302689, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14  ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 6
  br i1 %i.bq, label %Ndr_ObjIsType.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i292
  %i.br = icmp ugt i8 %i.bp, 3
  br i1 %i.br, label %Ndr_DataSize.exit.i293, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds [4 x i8], ptr %.val273691, i64 %i.bn
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i293

Ndr_DataSize.exit.i293:                           ; preds = %bb.k, %bb.j
  %i.bu = phi i32 [ %i.bt, %bb.k ], [ 1, %bb.j ]
  %i.bv = add nsw i32 %i.bu, %.016.i              ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.bl
  br i1 %i.bw, label %.lr.ph.i292, label %.lr.ph.i.i295.preheader, !llvm.loop !1

Ndr_ObjIsType.exit:                               ; preds = %.lr.ph.i292
  %i.bx = getelementptr inbounds [4 x i8], ptr %.val273691, i64 %i.bn
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !13
  %.not589 = icmp eq i32 %i.by, 3
  br i1 %.not589, label %.lr.ph.i.i295.preheader, label %.thread

.lr.ph.i.i295.preheader:                          ; preds = %Ndr_DataSize.exit.i293, %Ndr_ObjIsType.exit
  br label %.lr.ph.i.i295

.lr.ph.i.i295:                                    ; preds = %.lr.ph.i.i295.preheader, %Ndr_DataSize.exit.i.i
  %.015.i = phi ptr [ %.127.i, %Ndr_DataSize.exit.i.i ], [ null, %.lr.ph.i.i295.preheader ] ; 4 uses
  %i.bz = phi ptr [ %i.cm, %Ndr_DataSize.exit.i.i ], [ null, %.lr.ph.i.i295.preheader ] ; 5 uses
  %i.ca = phi ptr [ %i.cl, %Ndr_DataSize.exit.i.i ], [ null, %.lr.ph.i.i295.preheader ]
  %.024.i.i = phi i32 [ %.1.i28.i, %Ndr_DataSize.exit.i.i ], [ 0, %.lr.ph.i.i295.preheader ] ; 4 uses
  %.01923.i.i = phi i32 [ %i.co, %Ndr_DataSize.exit.i.i ], [ %i.bi, %.lr.ph.i.i295.preheader ] ; 2 uses
  %i.cb = sext i32 %.01923.i.i to i64             ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.val.i302689, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !14  ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 8
  br i1 %i.ce, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i.i295
  %i.cf = add nsw i32 %.024.i.i, 1                ; 2 uses
  %i.cg = icmp eq ptr %i.bz, null
  br i1 %i.cg, label %bb.m, label %Ndr_DataSize.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds [4 x i8], ptr %.val273691, i64 %i.cb ; 3 uses
  br label %Ndr_DataSize.exit.i.i

bb.n:                                             ; preds = %.lr.ph.i.i295
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %bb.o, label %Ndr_ObjReadArray.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp ugt i8 %i.cd, 3
  br i1 %i.ci, label %Ndr_DataSize.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds [4 x i8], ptr %.val273691, i64 %i.cb
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i.i

Ndr_DataSize.exit.i.i:                            ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.1.i28.i = phi i32 [ %.024.i.i, %bb.p ], [ %.024.i.i, %bb.o ], [ %i.cf, %bb.m ], [ %i.cf, %bb.l ] ; 2 uses
  %i.cl = phi ptr [ null, %bb.p ], [ null, %bb.o ], [ %i.ch, %bb.m ], [ %i.bz, %bb.l ]
  %i.cm = phi ptr [ %i.bz, %bb.p ], [ %i.bz, %bb.o ], [ %i.ch, %bb.m ], [ %i.bz, %bb.l ]
  %.127.i = phi ptr [ %.015.i, %bb.p ], [ %.015.i, %bb.o ], [ %i.ch, %bb.m ], [ %.015.i, %bb.l ] ; 2 uses
  %i.cn = phi i32 [ %i.ck, %bb.p ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.l ]
  %i.co = add nsw i32 %i.cn, %.01923.i.i          ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.bl
  br i1 %i.cp, label %.lr.ph.i.i295, label %Ndr_ObjReadArray.exit.i, !llvm.loop !3

Ndr_ObjReadArray.exit.i:                          ; preds = %Ndr_DataSize.exit.i.i, %bb.n
  %.2.i = phi ptr [ %.127.i, %Ndr_DataSize.exit.i.i ], [ %.015.i, %bb.n ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %.1.i28.i, %Ndr_DataSize.exit.i.i ], [ %.024.i.i, %bb.n ] ; 4 uses
  switch i32 %.0.lcssa.i.i, label %.thread.fold.split.i [
    i32 0, label %Ndr_ObjReadRange.exit
    i32 3, label %.thread.i
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %Ndr_ObjReadArray.exit.i
  %i.cq = load i32, ptr %.2.i, align 4, !tbaa !13 ; 2 uses
  br label %Ndr_ObjReadRange.exit

.thread.fold.split.i:                             ; preds = %Ndr_ObjReadArray.exit.i
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.fold.split.i, %Ndr_ObjReadArray.exit.i
  %.019.i = phi i32 [ 1, %Ndr_ObjReadArray.exit.i ], [ 0, %.thread.fold.split.i ]
  %i.cr = load i32, ptr %.2.i, align 4, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13
  br label %Ndr_ObjReadRange.exit

Ndr_ObjReadRange.exit:                            ; preds = %bb.i, %Ndr_ObjReadArray.exit.i, %bb.q, %.thread.i
  %.0536.a = phi i32 [ %i.cr, %.thread.i ], [ %.0.lcssa.i.i, %Ndr_ObjReadArray.exit.i ], [ %i.cq, %bb.q ], [ 0, %bb.i ]
  %.0535.a = phi i32 [ %i.ct, %.thread.i ], [ %.0.lcssa.i.i, %Ndr_ObjReadArray.exit.i ], [ %i.cq, %bb.q ], [ 0, %bb.i ]
  %.012.i294 = phi i32 [ %.019.i, %.thread.i ], [ %.0.lcssa.i.i, %Ndr_ObjReadArray.exit.i ], [ 0, %bb.q ], [ 0, %bb.i ]
  %i.cu = tail call i32 @Wlc_ObjAlloc(ptr noundef %i.x, i32 noundef 1, i32 noundef %.012.i294, i32 noundef %.0536.a, i32 noundef %.0535.a) #22
  %.val14.i296 = load ptr, ptr %i.g, align 8, !tbaa !22 ; 4 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.val14.i296, i64 %i.bf
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13
  %i.cx = add i32 %i.cw, %.0226611                ; 2 uses
  %i.cy = icmp slt i32 %i.bi, %i.cx
  %.val.i302.pre.pre = load ptr, ptr %i.au, align 8, !tbaa !21 ; 3 uses
  br i1 %i.cy, label %.lr.ph.i298, label %Ndr_ObjReadBody.exit

.lr.ph.i298:                                      ; preds = %Ndr_ObjReadRange.exit, %Ndr_DataSize.exit.i301
  %.016.i300 = phi i32 [ %i.dj, %Ndr_DataSize.exit.i301 ], [ %i.bi, %Ndr_ObjReadRange.exit ] ; 2 uses
  %i.cz = sext i32 %.016.i300 to i64              ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %.val.i302.pre.pre, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !14  ; 2 uses
  %i.dc = icmp eq i8 %i.db, 5
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i298
  %i.dd = getelementptr inbounds [4 x i8], ptr %.val14.i296, i64 %i.cz
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !13
  br label %Ndr_ObjReadBody.exit

bb.s:                                             ; preds = %.lr.ph.i298
  %i.df = icmp ugt i8 %i.db, 3
  br i1 %i.df, label %Ndr_DataSize.exit.i301, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds [4 x i8], ptr %.val14.i296, i64 %i.cz
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i301

Ndr_DataSize.exit.i301:                           ; preds = %bb.t, %bb.s
  %i.di = phi i32 [ %i.dh, %bb.t ], [ 1, %bb.s ]
  %i.dj = add nsw i32 %i.di, %.016.i300           ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.cx
  br i1 %i.dk, label %.lr.ph.i298, label %Ndr_ObjReadBody.exit, !llvm.loop !2

Ndr_ObjReadBody.exit:                             ; preds = %Ndr_DataSize.exit.i301, %Ndr_ObjReadRange.exit, %bb.r
  %.012.i297 = phi i32 [ %i.de, %bb.r ], [ -1, %Ndr_ObjReadRange.exit ], [ -1, %Ndr_DataSize.exit.i301 ]
  %.val279.a = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.dl = sext i32 %i.cu to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %.val279.a, i64 %i.dl
  store i32 %.012.i297, ptr %i.dm, align 4, !tbaa !13
  %.phi.trans.insert726 = getelementptr inbounds i8, ptr %.val.i302.pre.pre, i64 %i.bf
  %.pre727 = load i8, ptr %.phi.trans.insert726, align 1, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %Ndr_ObjReadBody.exit
  %i.dn = phi i8 [ %i.bh, %bb.h ], [ %.pre727, %Ndr_ObjReadBody.exit ]
  %.val273.a = phi ptr [ %.val273691, %bb.h ], [ %.val14.i296, %Ndr_ObjReadBody.exit ] ; 2 uses
  %.val.i302 = phi ptr [ %.val.i302689, %bb.h ], [ %.val.i302.pre.pre, %Ndr_ObjReadBody.exit ] ; 2 uses
  %i.do = icmp ugt i8 %i.dn, 3
  br i1 %i.do, label %Ndr_DataSize.exit, label %.thread

.thread:                                          ; preds = %Ndr_ObjIsType.exit, %bb.u
  %.val.i302833 = phi ptr [ %.val.i302, %bb.u ], [ %.val.i302689, %Ndr_ObjIsType.exit ]
  %.val273831 = phi ptr [ %.val273.a, %bb.u ], [ %.val273691, %Ndr_ObjIsType.exit ] ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %.val273831, i64 %i.bf
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !13
  br label %Ndr_DataSize.exit

Ndr_DataSize.exit:                                ; preds = %bb.u, %.thread
  %.val.i302834 = phi ptr [ %.val.i302833, %.thread ], [ %.val.i302, %bb.u ]
  %.val273832 = phi ptr [ %.val273831, %.thread ], [ %.val273.a, %bb.u ] ; 4 uses
  %i.dr = phi i32 [ %i.dq, %.thread ], [ 1, %bb.u ]
  %i.ds = add nsw i32 %i.dr, %.0226611            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val273832, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !13
  %i.dv = add i32 %i.du, 2                        ; 2 uses
  %i.dw = icmp slt i32 %i.ds, %i.dv
  br i1 %i.dw, label %bb.h, label %.preheader591, !llvm.loop !71

bb.v:                                             ; preds = %.lr.ph620, %Ndr_DataSize.exit423
  %.val269 = phi ptr [ %.val269.pre, %.lr.ph620 ], [ %.val.i422, %Ndr_DataSize.exit423 ] ; 6 uses
  %.val272619 = phi ptr [ %.val273832, %.lr.ph620 ], [ %.val272.pre.a, %Ndr_DataSize.exit423 ] ; 11 uses
  %.1227617 = phi i32 [ 3, %.lr.ph620 ], [ %i.st, %Ndr_DataSize.exit423 ] ; 7 uses
  %.sroa.5519.0616 = phi i32 [ 0, %.lr.ph620 ], [ %.sroa.5519.6, %Ndr_DataSize.exit423 ] ; 11 uses
  %.sroa.0518.0615 = phi i32 [ 0, %.lr.ph620 ], [ %.sroa.0518.6, %Ndr_DataSize.exit423 ] ; 11 uses
  %.0537614 = phi ptr [ null, %.lr.ph620 ], [ %.7, %Ndr_DataSize.exit423 ] ; 12 uses
  %i.dx = sext i32 %.1227617 to i64               ; 7 uses
  %i.dy = getelementptr inbounds i8, ptr %.val269, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !14
  %.not241 = icmp eq i8 %i.dz, 3
  br i1 %.not241, label %bb.w, label %Ndr_ObjIsType.exit309.thread

bb.w:                                             ; preds = %bb.v
  %i.ea = add nsw i32 %.1227617, 1                ; 12 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.dx
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !13
  %i.ed = add i32 %i.ec, %.1227617                ; 6 uses
  %i.ee = icmp slt i32 %i.ea, %i.ed
  br i1 %i.ee, label %.lr.ph.i305, label %Ndr_ObjIsType.exit309.thread

.lr.ph.i305:                                      ; preds = %bb.w, %Ndr_DataSize.exit.i308
  %.016.i307 = phi i32 [ %i.en, %Ndr_DataSize.exit.i308 ], [ %i.ea, %bb.w ] ; 2 uses
  %i.ef = sext i32 %.016.i307 to i64              ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.val269, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !14  ; 2 uses
  %i.ei = icmp eq i8 %i.eh, 6
  br i1 %i.ei, label %Ndr_ObjIsType.exit309, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i305
  %i.ej = icmp ugt i8 %i.eh, 3
  br i1 %i.ej, label %Ndr_DataSize.exit.i308, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.ef
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i308

Ndr_DataSize.exit.i308:                           ; preds = %bb.y, %bb.x
  %i.em = phi i32 [ %i.el, %bb.y ], [ 1, %bb.x ]
  %i.en = add nsw i32 %i.em, %.016.i307           ; 2 uses
  %i.eo = icmp slt i32 %i.en, %i.ed
  br i1 %i.eo, label %.lr.ph.i305, label %Ndr_ObjIsType.exit309.thread, !llvm.loop !1

Ndr_ObjIsType.exit309:                            ; preds = %.lr.ph.i305
  %i.ep = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.ef
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !13
  %.not585 = icmp eq i32 %i.eq, 3
  br i1 %.not585, label %Ndr_ObjIsType.exit309.thread, label %.lr.ph.i312

.lr.ph.i312:                                      ; preds = %Ndr_ObjIsType.exit309, %Ndr_DataSize.exit.i315
  %.016.i314 = phi i32 [ %i.ez, %Ndr_DataSize.exit.i315 ], [ %i.ea, %Ndr_ObjIsType.exit309 ] ; 2 uses
  %i.er = sext i32 %.016.i314 to i64              ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %.val269, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !14  ; 2 uses
  %i.eu = icmp eq i8 %i.et, 6
  br i1 %i.eu, label %Ndr_ObjIsType.exit316, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i312
  %i.ev = icmp ugt i8 %i.et, 3
  br i1 %i.ev, label %Ndr_DataSize.exit.i315, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ew = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.er
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i315

Ndr_DataSize.exit.i315:                           ; preds = %bb.aa, %bb.z
  %i.ey = phi i32 [ %i.ex, %bb.aa ], [ 1, %bb.z ]
  %i.ez = add nsw i32 %i.ey, %.016.i314           ; 2 uses
  %i.fa = icmp slt i32 %i.ez, %i.ed
  br i1 %i.fa, label %.lr.ph.i312, label %Ndr_ObjIsType.exit309.thread, !llvm.loop !1

Ndr_ObjIsType.exit316:                            ; preds = %.lr.ph.i312
  %i.fb = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.er
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !13
  %.not586 = icmp eq i32 %i.fc, 4
  br i1 %.not586, label %Ndr_ObjIsType.exit309.thread, label %.lr.ph.i.i320

.lr.ph.i.i320:                                    ; preds = %Ndr_ObjIsType.exit316, %Ndr_DataSize.exit.i.i332
  %.015.i322 = phi ptr [ %.127.i334, %Ndr_DataSize.exit.i.i332 ], [ null, %Ndr_ObjIsType.exit316 ] ; 4 uses
  %i.fd = phi ptr [ %i.fq, %Ndr_DataSize.exit.i.i332 ], [ null, %Ndr_ObjIsType.exit316 ] ; 5 uses
  %i.fe = phi ptr [ %i.fp, %Ndr_DataSize.exit.i.i332 ], [ null, %Ndr_ObjIsType.exit316 ]
  %.024.i.i323 = phi i32 [ %.1.i28.i333, %Ndr_DataSize.exit.i.i332 ], [ 0, %Ndr_ObjIsType.exit316 ] ; 4 uses
  %.01923.i.i324 = phi i32 [ %i.fs, %Ndr_DataSize.exit.i.i332 ], [ %i.ea, %Ndr_ObjIsType.exit316 ] ; 2 uses
  %i.ff = sext i32 %.01923.i.i324 to i64          ; 3 uses
  %i.fg = getelementptr inbounds i8, ptr %.val269, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !14  ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 8
  br i1 %i.fi, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i.i320
  %i.fj = add nsw i32 %.024.i.i323, 1             ; 2 uses
  %i.fk = icmp eq ptr %i.fd, null
  br i1 %i.fk, label %bb.ac, label %Ndr_DataSize.exit.i.i332

bb.ac:                                            ; preds = %bb.ab
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.ff ; 3 uses
  br label %Ndr_DataSize.exit.i.i332

bb.ad:                                            ; preds = %.lr.ph.i.i320
  %.not.i.i325 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i325, label %bb.ae, label %Ndr_ObjReadArray.exit.i326

bb.ae:                                            ; preds = %bb.ad
  %i.fm = icmp ugt i8 %i.fh, 3
  br i1 %i.fm, label %Ndr_DataSize.exit.i.i332, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fn = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.ff
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i.i332

Ndr_DataSize.exit.i.i332:                         ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %.1.i28.i333 = phi i32 [ %.024.i.i323, %bb.af ], [ %.024.i.i323, %bb.ae ], [ %i.fj, %bb.ac ], [ %i.fj, %bb.ab ] ; 2 uses
  %i.fp = phi ptr [ null, %bb.af ], [ null, %bb.ae ], [ %i.fl, %bb.ac ], [ %i.fd, %bb.ab ]
  %i.fq = phi ptr [ %i.fd, %bb.af ], [ %i.fd, %bb.ae ], [ %i.fl, %bb.ac ], [ %i.fd, %bb.ab ]
  %.127.i334 = phi ptr [ %.015.i322, %bb.af ], [ %.015.i322, %bb.ae ], [ %i.fl, %bb.ac ], [ %.015.i322, %bb.ab ] ; 2 uses
  %i.fr = phi i32 [ %i.fo, %bb.af ], [ 1, %bb.ae ], [ 1, %bb.ac ], [ 1, %bb.ab ]
  %i.fs = add nsw i32 %i.fr, %.01923.i.i324       ; 2 uses
  %i.ft = icmp slt i32 %i.fs, %i.ed
  br i1 %i.ft, label %.lr.ph.i.i320, label %Ndr_ObjReadArray.exit.i326, !llvm.loop !3

Ndr_ObjReadArray.exit.i326:                       ; preds = %Ndr_DataSize.exit.i.i332, %bb.ad
  %.2.i327 = phi ptr [ %.127.i334, %Ndr_DataSize.exit.i.i332 ], [ %.015.i322, %bb.ad ] ; 3 uses
  %.0.lcssa.i.i328 = phi i32 [ %.1.i28.i333, %Ndr_DataSize.exit.i.i332 ], [ %.024.i.i323, %bb.ad ] ; 4 uses
  switch i32 %.0.lcssa.i.i328, label %.thread.fold.split.i331 [
    i32 0, label %Ndr_ObjReadRange.exit335
    i32 3, label %.thread.i329
    i32 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %Ndr_ObjReadArray.exit.i326
  %i.fu = load i32, ptr %.2.i327, align 4, !tbaa !13 ; 2 uses
  br label %Ndr_ObjReadRange.exit335

.thread.fold.split.i331:                          ; preds = %Ndr_ObjReadArray.exit.i326
  br label %.thread.i329

.thread.i329:                                     ; preds = %.thread.fold.split.i331, %Ndr_ObjReadArray.exit.i326
  %.019.i330 = phi i32 [ 1, %Ndr_ObjReadArray.exit.i326 ], [ 0, %.thread.fold.split.i331 ]
  %i.fv = load i32, ptr %.2.i327, align 4, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %.2.i327, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !13
  br label %Ndr_ObjReadRange.exit335

Ndr_ObjReadRange.exit335:                         ; preds = %Ndr_ObjReadArray.exit.i326, %bb.ag, %.thread.i329
  %.0534.a = phi i32 [ %i.fv, %.thread.i329 ], [ %.0.lcssa.i.i328, %Ndr_ObjReadArray.exit.i326 ], [ %i.fu, %bb.ag ] ; 3 uses
  %.0533.a = phi i32 [ %i.fx, %.thread.i329 ], [ %.0.lcssa.i.i328, %Ndr_ObjReadArray.exit.i326 ], [ %i.fu, %bb.ag ] ; 3 uses
  %.012.i319 = phi i32 [ %.019.i330, %.thread.i329 ], [ %.0.lcssa.i.i328, %Ndr_ObjReadArray.exit.i326 ], [ 0, %bb.ag ]
  br label %.lr.ph.i338

.lr.ph.i338:                                      ; preds = %Ndr_ObjReadRange.exit335, %Ndr_DataSize.exit.i341
  %.016.i340 = phi i32 [ %i.gi, %Ndr_DataSize.exit.i341 ], [ %i.ea, %Ndr_ObjReadRange.exit335 ] ; 2 uses
  %i.fy = sext i32 %.016.i340 to i64              ; 3 uses
  %i.fz = getelementptr inbounds i8, ptr %.val269, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !14  ; 2 uses
  %i.gb = icmp eq i8 %i.ga, 6
  br i1 %i.gb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i338
  %i.gc = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.fy
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !13
  br label %Ndr_ObjReadBody.exit342

bb.ai:                                            ; preds = %.lr.ph.i338
  %i.ge = icmp ugt i8 %i.ga, 3
  br i1 %i.ge, label %Ndr_DataSize.exit.i341, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gf = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.fy
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i341

Ndr_DataSize.exit.i341:                           ; preds = %bb.aj, %bb.ai
  %i.gh = phi i32 [ %i.gg, %bb.aj ], [ 1, %bb.ai ]
  %i.gi = add nsw i32 %i.gh, %.016.i340           ; 2 uses
  %i.gj = icmp slt i32 %i.gi, %i.ed
  br i1 %i.gj, label %.lr.ph.i338, label %Ndr_ObjReadBody.exit342, !llvm.loop !2

Ndr_ObjReadBody.exit342:                          ; preds = %Ndr_DataSize.exit.i341, %bb.ah
  %.012.i337 = phi i32 [ %i.gd, %bb.ah ], [ -1, %Ndr_DataSize.exit.i341 ] ; 4 uses
  br label %.lr.ph.i344

.lr.ph.i344:                                      ; preds = %Ndr_ObjReadBody.exit342, %Ndr_DataSize.exit.i347
  %.0543 = phi ptr [ %.1544839, %Ndr_DataSize.exit.i347 ], [ null, %Ndr_ObjReadBody.exit342 ] ; 4 uses
  %i.gk = phi ptr [ %i.gx, %Ndr_DataSize.exit.i347 ], [ null, %Ndr_ObjReadBody.exit342 ] ; 5 uses
  %i.gl = phi ptr [ %i.gw, %Ndr_DataSize.exit.i347 ], [ null, %Ndr_ObjReadBody.exit342 ]
  %.024.i = phi i32 [ %.1.i840, %Ndr_DataSize.exit.i347 ], [ 0, %Ndr_ObjReadBody.exit342 ] ; 4 uses
  %.01923.i = phi i32 [ %i.gz, %Ndr_DataSize.exit.i347 ], [ %i.ea, %Ndr_ObjReadBody.exit342 ] ; 2 uses
  %i.gm = sext i32 %.01923.i to i64               ; 3 uses
  %i.gn = getelementptr inbounds i8, ptr %.val269, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !14  ; 2 uses
  %i.gp = icmp eq i8 %i.go, 4
  br i1 %i.gp, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.lr.ph.i344
  %i.gq = add nsw i32 %.024.i, 1                  ; 2 uses
  %i.gr = icmp eq ptr %i.gk, null
  br i1 %i.gr, label %bb.al, label %Ndr_DataSize.exit.i347

bb.al:                                            ; preds = %bb.ak
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.gm ; 3 uses
  br label %Ndr_DataSize.exit.i347

bb.am:                                            ; preds = %.lr.ph.i344
  %.not.i346 = icmp eq ptr %i.gl, null
  br i1 %.not.i346, label %bb.an, label %Ndr_ObjReadArray.exit

bb.an:                                            ; preds = %bb.am
  %i.gt = icmp ugt i8 %i.go, 3
  br i1 %i.gt, label %Ndr_DataSize.exit.i347, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = getelementptr inbounds [4 x i8], ptr %.val272619, i64 %i.gm
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i347

Ndr_DataSize.exit.i347:                           ; preds = %bb.ak, %bb.al, %bb.ao, %bb.an
  %.1.i840 = phi i32 [ %.024.i, %bb.ao ], [ %.024.i, %bb.an ], [ %i.gq, %bb.al ], [ %i.gq, %bb.ak ] ; 2 uses
  %i.gw = phi ptr [ null, %bb.ao ], [ null, %bb.an ], [ %i.gs, %bb.al ], [ %i.gk, %bb.ak ]
  %i.gx = phi ptr [ %i.gk, %bb.ao ], [ %i.gk, %bb.an ], [ %i.gs, %bb.al ], [ %i.gk, %bb.ak ]
  %.1544839 = phi ptr [ %.0543, %bb.ao ], [ %.0543, %bb.an ], [ %i.gs, %bb.al ], [ %.0543, %bb.ak ] ; 2 uses
  %i.gy = phi i32 [ %i.gv, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.al ], [ 1, %bb.ak ]
  %i.gz = add nsw i32 %i.gy, %.01923.i            ; 2 uses
  %i.ha = icmp slt i32 %i.gz, %i.ed
  br i1 %i.ha, label %.lr.ph.i344, label %Ndr_ObjReadArray.exit, !llvm.loop !3

Ndr_ObjReadArray.exit:                            ; preds = %bb.am, %Ndr_DataSize.exit.i347
  %.2545 = phi ptr [ %.1544839, %Ndr_DataSize.exit.i347 ], [ %.0543, %bb.am ]
  %.0.lcssa.i343 = phi i32 [ %.1.i840, %Ndr_DataSize.exit.i347 ], [ %.024.i, %bb.am ] ; 2 uses
  %i.hb = tail call i32 @Ndr_TypeNdr2Wlc(i32 noundef %.012.i337)
  %i.hc = tail call i32 @Wlc_ObjAlloc(ptr noundef %i.x, i32 noundef %i.hb, i32 noundef %.012.i319, i32 noundef %.0534.a, i32 noundef %.0533.a) #22 ; 3 uses
  %.val14.i348 = load ptr, ptr %i.g, align 8, !tbaa !22 ; 3 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %.val14.i348, i64 %i.dx
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !13
  %i.hf = add i32 %i.he, %.1227617                ; 2 uses
  %i.hg = icmp slt i32 %i.ea, %i.hf
  br i1 %i.hg, label %.lr.ph.i350, label %Ndr_ObjReadBody.exit354

.lr.ph.i350:                                      ; preds = %Ndr_ObjReadArray.exit
  %.val13.i351 = load ptr, ptr %i.ax, align 8, !tbaa !21
  br label %bb.ap

bb.ap:                                            ; preds = %Ndr_DataSize.exit.i353, %.lr.ph.i350
  %.016.i352 = phi i32 [ %i.ea, %.lr.ph.i350 ], [ %i.hr, %Ndr_DataSize.exit.i353 ] ; 2 uses
  %i.hh = sext i32 %.016.i352 to i64              ; 3 uses
  %i.hi = getelementptr inbounds i8, ptr %.val13.i351, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !14  ; 2 uses
  %i.hk = icmp eq i8 %i.hj, 5
  br i1 %i.hk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hl = getelementptr inbounds [4 x i8], ptr %.val14.i348, i64 %i.hh
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !13
  br label %Ndr_ObjReadBody.exit354

bb.ar:                                            ; preds = %bb.ap
  %i.hn = icmp ugt i8 %i.hj, 3
  br i1 %i.hn, label %Ndr_DataSize.exit.i353, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ho = getelementptr inbounds [4 x i8], ptr %.val14.i348, i64 %i.hh
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i353

Ndr_DataSize.exit.i353:                           ; preds = %bb.as, %bb.ar
  %i.hq = phi i32 [ %i.hp, %bb.as ], [ 1, %bb.ar ]
  %i.hr = add nsw i32 %i.hq, %.016.i352           ; 2 uses
  %i.hs = icmp slt i32 %i.hr, %i.hf
  br i1 %i.hs, label %bb.ap, label %Ndr_ObjReadBody.exit354, !llvm.loop !2

Ndr_ObjReadBody.exit354:                          ; preds = %Ndr_DataSize.exit.i353, %Ndr_ObjReadArray.exit, %bb.aq
  %.012.i349 = phi i32 [ %i.hm, %bb.aq ], [ -1, %Ndr_ObjReadArray.exit ], [ -1, %Ndr_DataSize.exit.i353 ] ; 7 uses
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.ht = icmp sgt i32 %.0.lcssa.i343, 0
  br i1 %i.ht, label %.lr.ph.i355, label %Vec_IntAppend.exit

.lr.ph.i355:                                      ; preds = %Ndr_ObjReadBody.exit354
  %wide.trip.count.i = zext nneg i32 %.0.lcssa.i343 to i64
  br label %bb.at

thread-pre-split:                                 ; preds = %Vec_IntPush.exit.i
  %.pr = load i32, ptr %i.d, align 4, !tbaa !25
  br label %bb.at

bb.at:                                            ; preds = %thread-pre-split, %.lr.ph.i355
  %i.hu = phi i32 [ %.pr, %thread-pre-split ], [ 0, %.lr.ph.i355 ] ; 7 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %thread-pre-split ], [ 0, %.lr.ph.i355 ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.2545, i64 %indvars.iv.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !13
  %i.hx = load i32, ptr %i.c, align 8, !tbaa !26
  %i.hy = icmp eq i32 %i.hu, %i.hx
  br i1 %i.hy, label %bb.au, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.at
  %.pre.i356 = load ptr, ptr %i.f, align 8, !tbaa !27
  br label %Vec_IntPush.exit.i

bb.au:                                            ; preds = %bb.at
  %i.hz = icmp slt i32 %i.hu, 16
  br i1 %i.hz, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ia = load ptr, ptr %i.f, align 8, !tbaa !27  ; 2 uses
  %.not9.i.i.i357 = icmp eq ptr %i.ia, null
  br i1 %.not9.i.i.i357, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ib = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ia, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ax:                                            ; preds = %bb.av
  %i.ic = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ay:                                            ; preds = %bb.au
  %i.id = icmp samesign ult i32 %i.hu, 1073741823
  %i.ie = shl nuw nsw i32 %i.hu, 1
  %spec.select.i.i = select i1 %i.id, i32 %i.ie, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.hu, %spec.select.i.i
  %.pre3.i = load ptr, ptr %i.f, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.az, label %Vec_IntPush.exit.i

bb.az:                                            ; preds = %bb.ay
  %.not9.i10.i.i = icmp eq ptr %.pre3.i, null
  %i.if = zext nneg i32 %spec.select.i.i to i64
  %i.ig = shl nuw nsw i64 %i.if, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ih = tail call ptr @realloc(ptr noundef nonnull %.pre3.i, i64 noundef %i.ig) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ii = tail call noalias ptr @malloc(i64 noundef %i.ig) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.bb, %bb.ba, %bb.ax, %bb.aw
  %i.ij = phi ptr [ %i.ic, %bb.ax ], [ %i.ib, %bb.aw ], [ %i.ih, %bb.ba ], [ %i.ii, %bb.bb ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.ax ], [ 16, %bb.aw ], [ %spec.select.i.i, %bb.ba ], [ %spec.select.i.i, %bb.bb ]
  store ptr %i.ij, ptr %i.f, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i, ptr %i.c, align 8, !tbaa !26
  %.pre4.i = load i32, ptr %i.d, align 4, !tbaa !25
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.ay, %.Vec_IntPush.exit_crit_edge.i
  %i.ik = phi i32 [ %i.hu, %.Vec_IntPush.exit_crit_edge.i ], [ %i.hu, %bb.ay ], [ %.pre4.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.il = phi ptr [ %.pre.i356, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre3.i, %bb.ay ], [ %i.ij, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.im = add nsw i32 %i.ik, 1
  store i32 %i.im, ptr %i.d, align 4, !tbaa !25
  %i.in = sext i32 %i.ik to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.in
  store i32 %i.hw, ptr %i.io, align 4, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntAppend.exit, label %thread-pre-split, !llvm.loop !72

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %Ndr_ObjReadBody.exit354
  switch i32 %.012.i337, label %1 [
    i32 88, label %bb.bc
    i32 89, label %bb.cl
    i32 75, label %bb.cu
  ]

bb.bc:                                            ; preds = %Vec_IntAppend.exit
  %i.ip = load ptr, ptr %i.bb, align 8, !tbaa !90 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ir = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i32 0, ptr %i.is, align 4, !tbaa !25
  store i32 100, ptr %i.ir, align 8, !tbaa !26
  %i.it = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #24
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !27
  store ptr %i.ir, ptr %i.bb, align 8, !tbaa !90
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.iv = phi ptr [ %i.ir, %bb.bd ], [ %i.ip, %bb.bc ] ; 12 uses
  %.val250 = load i32, ptr %i.d, align 4, !tbaa !25
  %i.iw = icmp eq i32 %.val250, 2
  br i1 %i.iw, label %bb.bf, label %bb.bp

bb.bf:                                            ; preds = %bb.be
  %i.ix = load ptr, ptr %i.f, align 8, !tbaa !27
  store i32 1, ptr %i.d, align 4, !tbaa !25
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !13
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 3 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !25 ; 7 uses
  %i.jc = load i32, ptr %i.iv, align 8, !tbaa !26
  %i.jd = icmp eq i32 %i.jb, %i.jc
  br i1 %i.jd, label %bb.bg, label %Vec_IntPush.exit

bb.bg:                                            ; preds = %bb.bf
  %i.je = icmp slt i32 %i.jb, 16
  br i1 %i.je, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.jg, null
  br i1 %.not9.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.jg, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.ji = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.bj, %bb.bi
  %i.jj = phi ptr [ %i.jh, %bb.bi ], [ %i.ji, %bb.bj ]
  store ptr %i.jj, ptr %i.jf, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.bk:                                            ; preds = %bb.bg
  %i.jk = icmp samesign ult i32 %i.jb, 1073741823
  %i.jl = shl nuw nsw i32 %i.jb, 1
  %spec.select.i358 = select i1 %i.jk, i32 %i.jl, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.jb, %spec.select.i358
  br i1 %.not.i9.i, label %bb.bl, label %Vec_IntPush.exit

bb.bl:                                            ; preds = %bb.bk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.jn, null
  %i.jo = zext nneg i32 %spec.select.i358 to i64
  %i.jp = shl nuw nsw i64 %i.jo, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jq = tail call ptr @realloc(ptr noundef nonnull %i.jn, i64 noundef %i.jp) #25
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.jr = tail call noalias ptr @malloc(i64 noundef %i.jp) #24
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.js = phi ptr [ %i.jq, %bb.bm ], [ %i.jr, %bb.bn ]
  store ptr %i.js, ptr %i.jm, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.bo, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i358, %bb.bo ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.iv, align 8, !tbaa !26
  %.pre706 = load i32, ptr %i.ja, align 4, !tbaa !25
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.bf, %bb.bk, %Vec_IntGrow.exit11.sink.split.i
  %i.jt = phi i32 [ %i.jb, %bb.bf ], [ %i.jb, %bb.bk ], [ %.pre706, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !27
  %i.jw = add nsw i32 %i.jt, 1
  store i32 %i.jw, ptr %i.ja, align 4, !tbaa !25
  br label %bb.bz

bb.bp:                                            ; preds = %bb.be
  %i.jx = xor i32 %.0534.a, -1
  %i.jy = add i32 %.0533.a, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !25 ; 7 uses
  %i.kb = load i32, ptr %i.iv, align 8, !tbaa !26
  %i.kc = icmp eq i32 %i.ka, %i.kb
  br i1 %i.kc, label %bb.bq, label %Vec_IntPush.exit366

bb.bq:                                            ; preds = %bb.bp
  %i.kd = icmp slt i32 %i.ka, 16
  br i1 %i.kd, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i364 = icmp eq ptr %i.kf, null
  br i1 %.not9.i.i364, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.kf, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i365

bb.bt:                                            ; preds = %bb.br
  %i.kh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i365

Vec_IntGrow.exit.i365:                            ; preds = %bb.bt, %bb.bs
  %i.ki = phi ptr [ %i.kg, %bb.bs ], [ %i.kh, %bb.bt ]
  store ptr %i.ki, ptr %i.ke, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i362

bb.bu:                                            ; preds = %bb.bq
  %i.kj = icmp samesign ult i32 %i.ka, 1073741823
  %i.kk = shl nuw nsw i32 %i.ka, 1
  %spec.select.i359 = select i1 %i.kj, i32 %i.kk, i32 2147483647 ; 3 uses
  %.not.i9.i360 = icmp samesign ult i32 %i.ka, %spec.select.i359
  br i1 %.not.i9.i360, label %bb.bv, label %Vec_IntPush.exit366

bb.bv:                                            ; preds = %bb.bu
  %i.kl = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i361 = icmp eq ptr %i.km, null
  %i.kn = zext nneg i32 %spec.select.i359 to i64
  %i.ko = shl nuw nsw i64 %i.kn, 2                ; 2 uses
  br i1 %.not9.i10.i361, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kp = tail call ptr @realloc(ptr noundef nonnull %i.km, i64 noundef %i.ko) #25
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.kq = tail call noalias ptr @malloc(i64 noundef %i.ko) #24
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.kr = phi ptr [ %i.kp, %bb.bw ], [ %i.kq, %bb.bx ]
  store ptr %i.kr, ptr %i.kl, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i362

Vec_IntGrow.exit11.sink.split.i362:               ; preds = %bb.by, %Vec_IntGrow.exit.i365
  %spec.select.sink.i363 = phi i32 [ %spec.select.i359, %bb.by ], [ 16, %Vec_IntGrow.exit.i365 ]
  store i32 %spec.select.sink.i363, ptr %i.iv, align 8, !tbaa !26
  %.pre705 = load i32, ptr %i.jz, align 4, !tbaa !25
  br label %Vec_IntPush.exit366

Vec_IntPush.exit366:                              ; preds = %bb.bp, %bb.bu, %Vec_IntGrow.exit11.sink.split.i362
  %i.ks = phi i32 [ %i.ka, %bb.bp ], [ %i.ka, %bb.bu ], [ %.pre705, %Vec_IntGrow.exit11.sink.split.i362 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !27
  %i.kv = add nsw i32 %i.ks, 1
  store i32 %i.kv, ptr %i.jz, align 4, !tbaa !25
  br label %bb.bz

bb.bz:                                            ; preds = %Vec_IntPush.exit366, %Vec_IntPush.exit
  %.sink887 = phi i32 [ %i.ks, %Vec_IntPush.exit366 ], [ %i.jt, %Vec_IntPush.exit ]
  %.sink885 = phi ptr [ %i.ku, %Vec_IntPush.exit366 ], [ %i.jv, %Vec_IntPush.exit ]
  %.sink = phi i32 [ %i.jy, %Vec_IntPush.exit366 ], [ %i.iz, %Vec_IntPush.exit ]
  %i.kw = sext i32 %.sink887 to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %.sink885, i64 %i.kw
  store i32 %.sink, ptr %i.kx, align 4, !tbaa !13
  %i.ky = sext i32 %i.hc to i64
  %.val278 = load ptr, ptr %i.bc, align 8, !tbaa !27
  %i.kz = getelementptr inbounds [4 x i8], ptr %.val278, i64 %i.ky
  store i32 %.012.i349, ptr %i.kz, align 4, !tbaa !13
  %i.la = load i32, ptr %i.z, align 4, !tbaa !25  ; 7 uses
  %i.lb = load i32, ptr %i.y, align 8, !tbaa !26
  %i.lc = icmp eq i32 %i.la, %i.lb
  br i1 %i.lc, label %bb.ca, label %.Vec_IntPush.exit374_crit_edge

.Vec_IntPush.exit374_crit_edge:                   ; preds = %bb.bz
  %.pre707 = load ptr, ptr %i.bd, align 8, !tbaa !27
  br label %Vec_IntPush.exit374

bb.ca:                                            ; preds = %bb.bz
  %i.ld = icmp slt i32 %i.la, 16
  br i1 %i.ld, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.le = load ptr, ptr %i.bd, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i372 = icmp eq ptr %i.le, null
  br i1 %.not9.i.i372, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.le, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i370

bb.cd:                                            ; preds = %bb.cb
  %i.lg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i370

bb.ce:                                            ; preds = %bb.ca
  %i.lh = icmp samesign ult i32 %i.la, 1073741823
  %i.li = shl nuw nsw i32 %i.la, 1
  %spec.select.i367 = select i1 %i.lh, i32 %i.li, i32 2147483647 ; 4 uses
  %.not.i9.i368 = icmp samesign ult i32 %i.la, %spec.select.i367
  %.pre708 = load ptr, ptr %i.bd, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i368, label %bb.cf, label %Vec_IntPush.exit374

bb.cf:                                            ; preds = %bb.ce
  %.not9.i10.i369 = icmp eq ptr %.pre708, null
  %i.lj = zext nneg i32 %spec.select.i367 to i64
  %i.lk = shl nuw nsw i64 %i.lj, 2                ; 2 uses
  br i1 %.not9.i10.i369, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ll = tail call ptr @realloc(ptr noundef nonnull %.pre708, i64 noundef %i.lk) #25
  br label %Vec_IntGrow.exit11.sink.split.i370

bb.ch:                                            ; preds = %bb.cf
  %i.lm = tail call noalias ptr @malloc(i64 noundef %i.lk) #24
  br label %Vec_IntGrow.exit11.sink.split.i370

Vec_IntGrow.exit11.sink.split.i370:               ; preds = %bb.cg, %bb.ch, %bb.cc, %bb.cd
  %i.ln = phi ptr [ %i.lg, %bb.cd ], [ %i.lf, %bb.cc ], [ %i.ll, %bb.cg ], [ %i.lm, %bb.ch ] ; 2 uses
  %spec.select.sink.i371 = phi i32 [ 16, %bb.cd ], [ 16, %bb.cc ], [ %spec.select.i367, %bb.cg ], [ %spec.select.i367, %bb.ch ]
  store ptr %i.ln, ptr %i.bd, align 8, !tbaa !27
  store i32 %spec.select.sink.i371, ptr %i.y, align 8, !tbaa !26
  %.pre709.a = load i32, ptr %i.z, align 4, !tbaa !25
  br label %Vec_IntPush.exit374

Vec_IntPush.exit374:                              ; preds = %.Vec_IntPush.exit374_crit_edge, %bb.ce, %Vec_IntGrow.exit11.sink.split.i370
  %i.lo = phi i32 [ %i.la, %.Vec_IntPush.exit374_crit_edge ], [ %i.la, %bb.ce ], [ %.pre709.a, %Vec_IntGrow.exit11.sink.split.i370 ] ; 2 uses
  %i.lp = phi ptr [ %.pre707, %.Vec_IntPush.exit374_crit_edge ], [ %.pre708, %bb.ce ], [ %i.ln, %Vec_IntGrow.exit11.sink.split.i370 ] ; 4 uses
  %i.lq = add nsw i32 %i.lo, 1
  store i32 %i.lq, ptr %i.z, align 4, !tbaa !25
  %i.lr = sext i32 %i.lo to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.lr
  store i32 %.012.i349, ptr %i.ls, align 4, !tbaa !13
  %.val256 = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.lt = load i32, ptr %.val256, align 4, !tbaa !13
  %i.lu = load i32, ptr %i.z, align 4, !tbaa !25  ; 7 uses
  %i.lv = load i32, ptr %i.y, align 8, !tbaa !26
  %i.lw = icmp eq i32 %i.lu, %i.lv
  br i1 %i.lw, label %bb.ci, label %Vec_IntPush.exit382

bb.ci:                                            ; preds = %Vec_IntPush.exit374
  %i.lx = icmp slt i32 %i.lu, 16
  br i1 %i.lx, label %Vec_IntGrow.exit11.sink.split.i378, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ly = icmp samesign ult i32 %i.lu, 1073741823
  %i.lz = shl nuw nsw i32 %i.lu, 1
  %spec.select.i375 = select i1 %i.ly, i32 %i.lz, i32 2147483647 ; 3 uses
  %.not.i9.i376 = icmp samesign ult i32 %i.lu, %spec.select.i375
  br i1 %.not.i9.i376, label %bb.ck, label %Vec_IntPush.exit382

bb.ck:                                            ; preds = %bb.cj
  %i.ma = zext nneg i32 %spec.select.i375 to i64
  %i.mb = shl nuw nsw i64 %i.ma, 2
  br label %Vec_IntGrow.exit11.sink.split.i378

Vec_IntGrow.exit11.sink.split.i378:               ; preds = %bb.ci, %bb.ck
  %.sink888 = phi i64 [ %i.mb, %bb.ck ], [ 64, %bb.ci ]
  %spec.select.sink.i379 = phi i32 [ %spec.select.i375, %bb.ck ], [ 16, %bb.ci ]
  %i.mc = tail call ptr @realloc(ptr noundef nonnull %i.lp, i64 noundef %.sink888) #25 ; 2 uses
  store ptr %i.mc, ptr %i.bd, align 8, !tbaa !27
  store i32 %spec.select.sink.i379, ptr %i.y, align 8, !tbaa !26
  %.pre710.a = load i32, ptr %i.z, align 4, !tbaa !25
  br label %Vec_IntPush.exit382

Vec_IntPush.exit382:                              ; preds = %Vec_IntPush.exit374, %bb.cj, %Vec_IntGrow.exit11.sink.split.i378
  %i.md = phi i32 [ %i.lu, %Vec_IntPush.exit374 ], [ %i.lu, %bb.cj ], [ %.pre710.a, %Vec_IntGrow.exit11.sink.split.i378 ] ; 2 uses
  %i.me = phi ptr [ %i.lp, %Vec_IntPush.exit374 ], [ %i.lp, %bb.cj ], [ %i.mc, %Vec_IntGrow.exit11.sink.split.i378 ]
  %i.mf = add nsw i32 %i.md, 1
  store i32 %i.mf, ptr %i.z, align 4, !tbaa !25
  %i.mg = sext i32 %i.md to i64
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.mg
  store i32 %i.lt, ptr %i.mh, align 4, !tbaa !13
  br label %Ndr_ObjIsType.exit309.thread

bb.cl:                                            ; preds = %Vec_IntAppend.exit
  %i.mi = load i32, ptr %i.az, align 4, !tbaa !25 ; 7 uses
  %i.mj = load i32, ptr %i.ay, align 8, !tbaa !26
  %i.mk = icmp eq i32 %i.mi, %i.mj
  br i1 %i.mk, label %bb.cm, label %.Vec_IntPush.exit390_crit_edge

.Vec_IntPush.exit390_crit_edge:                   ; preds = %bb.cl
  %.pre702 = load ptr, ptr %i.ba, align 8, !tbaa !27
  br label %Vec_IntPush.exit390

bb.cm:                                            ; preds = %bb.cl
  %i.ml = icmp slt i32 %i.mi, 16
  br i1 %i.ml, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.mm = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i388 = icmp eq ptr %i.mm, null
  br i1 %.not9.i.i388, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mm, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i386

bb.cp:                                            ; preds = %bb.cn
  %i.mo = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i386

bb.cq:                                            ; preds = %bb.cm
  %i.mp = icmp samesign ult i32 %i.mi, 1073741823
  %i.mq = shl nuw nsw i32 %i.mi, 1
  %spec.select.i383 = select i1 %i.mp, i32 %i.mq, i32 2147483647 ; 4 uses
  %.not.i9.i384 = icmp samesign ult i32 %i.mi, %spec.select.i383
  %.pre703 = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i384, label %bb.cr, label %Vec_IntPush.exit390

bb.cr:                                            ; preds = %bb.cq
  %.not9.i10.i385 = icmp eq ptr %.pre703, null
  %i.mr = zext nneg i32 %spec.select.i383 to i64
  %i.ms = shl nuw nsw i64 %i.mr, 2                ; 2 uses
  br i1 %.not9.i10.i385, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mt = tail call ptr @realloc(ptr noundef nonnull %.pre703, i64 noundef %i.ms) #25
  br label %Vec_IntGrow.exit11.sink.split.i386

bb.ct:                                            ; preds = %bb.cr
  %i.mu = tail call noalias ptr @malloc(i64 noundef %i.ms) #24
  br label %Vec_IntGrow.exit11.sink.split.i386

Vec_IntGrow.exit11.sink.split.i386:               ; preds = %bb.cs, %bb.ct, %bb.co, %bb.cp
  %i.mv = phi ptr [ %i.mo, %bb.cp ], [ %i.mn, %bb.co ], [ %i.mt, %bb.cs ], [ %i.mu, %bb.ct ] ; 2 uses
  %spec.select.sink.i387 = phi i32 [ 16, %bb.cp ], [ 16, %bb.co ], [ %spec.select.i383, %bb.cs ], [ %spec.select.i383, %bb.ct ]
  store ptr %i.mv, ptr %i.ba, align 8, !tbaa !27
  store i32 %spec.select.sink.i387, ptr %i.ay, align 8, !tbaa !26
  %.pre704 = load i32, ptr %i.az, align 4, !tbaa !25
  br label %Vec_IntPush.exit390

Vec_IntPush.exit390:                              ; preds = %.Vec_IntPush.exit390_crit_edge, %Vec_IntGrow.exit11.sink.split.i386, %bb.cq
  %i.mw = phi i32 [ %i.mi, %.Vec_IntPush.exit390_crit_edge ], [ %.pre704, %Vec_IntGrow.exit11.sink.split.i386 ], [ %i.mi, %bb.cq ] ; 2 uses
  %i.mx = phi ptr [ %.pre702, %.Vec_IntPush.exit390_crit_edge ], [ %i.mv, %Vec_IntGrow.exit11.sink.split.i386 ], [ %.pre703, %bb.cq ]
  %i.my = add nsw i32 %i.mw, 1
  store i32 %i.my, ptr %i.az, align 4, !tbaa !25
  %i.mz = sext i32 %i.mw to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.mz
  store i32 %i.hc, ptr %i.na, align 4, !tbaa !13
  br label %.cont

bb.cu:                                            ; preds = %Vec_IntAppend.exit
  %i.nb = icmp eq ptr %.0537614, null
  br i1 %i.nb, label %bb.cv, label %._crit_edge695

._crit_edge695:                                   ; preds = %bb.cu
  %.phi.trans.insert = getelementptr i8, ptr %.0537614, i64 4
  %.val282.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !93
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.nc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 4 uses
  store i32 1000, ptr %i.nc, align 8, !tbaa !94
  %calloc = tail call dereferenceable_or_null(8000) ptr @calloc(i64 1, i64 8000)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store ptr %calloc, ptr %i.ne, align 8, !tbaa !95
  store i32 1000, ptr %i.nd, align 4, !tbaa !93
  br label %bb.cw

bb.cw:                                            ; preds = %._crit_edge695, %bb.cv
  %.val282 = phi i32 [ 1000, %bb.cv ], [ %.val282.pre, %._crit_edge695 ] ; 5 uses
  %.1538 = phi ptr [ %i.nc, %bb.cv ], [ %.0537614, %._crit_edge695 ] ; 10 uses
  %i.nf = getelementptr i8, ptr %.1538, i64 4     ; 2 uses
  %.not244.a = icmp slt i32 %.012.i349, %.val282
  br i1 %.not244.a, label %Vec_WrdFillExtra.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ng = shl nsw i32 %.012.i349, 1               ; 8 uses
  %.not.i391 = icmp sgt i32 %i.ng, %.val282
  br i1 %.not.i391, label %bb.cy, label %Vec_WrdFillExtra.exit

bb.cy:                                            ; preds = %bb.cx
  %i.nh = load i32, ptr %.1538, align 8, !tbaa !94 ; 4 uses
  %i.ni = shl nsw i32 %i.nh, 1                    ; 2 uses
  %i.nj = icmp sgt i32 %i.ng, %i.ni
  %.not.i.i392 = icmp slt i32 %i.nh, %i.ng        ; 2 uses
  br i1 %i.nj, label %bb.cz, label %bb.de

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i392, label %bb.da, label %Vec_WrdGrow.exit.i

bb.da:                                            ; preds = %bb.cz
  %i.nk = getelementptr inbounds nuw i8, ptr %.1538, i64 8 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !95 ; 2 uses
  %.not9.i.i396 = icmp eq ptr %i.nl, null
  %i.nm = sext i32 %i.ng to i64
  %i.nn = shl nsw i64 %i.nm, 3                    ; 2 uses
  br i1 %.not9.i.i396, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.no = tail call ptr @realloc(ptr noundef nonnull %i.nl, i64 noundef %i.nn) #25
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.np = tail call noalias ptr @malloc(i64 noundef %i.nn) #24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.nq = phi ptr [ %i.no, %bb.db ], [ %i.np, %bb.dc ]
  store ptr %i.nq, ptr %i.nk, align 8, !tbaa !95
  br label %Vec_WrdGrow.exit.sink.split.i

bb.de:                                            ; preds = %bb.cy
  br i1 %.not.i.i392, label %bb.df, label %Vec_WrdGrow.exit.i

bb.df:                                            ; preds = %bb.de
  %i.nr = icmp slt i32 %i.nh, 1073741823
  %spec.select.i394 = select i1 %i.nr, i32 %i.ni, i32 2147483647 ; 3 uses
  %.not.i22.i = icmp slt i32 %i.nh, %spec.select.i394
  br i1 %.not.i22.i, label %bb.dg, label %Vec_WrdGrow.exit.i

bb.dg:                                            ; preds = %bb.df
  %i.ns = getelementptr inbounds nuw i8, ptr %.1538, i64 8 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !95 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.nt, null
  %i.nu = sext i32 %spec.select.i394 to i64
  %i.nv = shl nuw nsw i64 %i.nu, 3                ; 2 uses
  br i1 %.not9.i23.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nw = tail call ptr @realloc(ptr noundef nonnull %i.nt, i64 noundef %i.nv) #25
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.nx = tail call noalias ptr @malloc(i64 noundef %i.nv) #24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ny = phi ptr [ %i.nw, %bb.dh ], [ %i.nx, %bb.di ]
  store ptr %i.ny, ptr %i.ns, align 8, !tbaa !95
  br label %Vec_WrdGrow.exit.sink.split.i

Vec_WrdGrow.exit.sink.split.i:                    ; preds = %bb.dj, %bb.dd
  %spec.select.sink.i395 = phi i32 [ %spec.select.i394, %bb.dj ], [ %i.ng, %bb.dd ]
  store i32 %spec.select.sink.i395, ptr %.1538, align 8, !tbaa !94
  %.pre = load i32, ptr %i.nf, align 4, !tbaa !93
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %Vec_WrdGrow.exit.sink.split.i, %bb.df, %bb.de, %bb.cz
  %i.nz = phi i32 [ %.pre, %Vec_WrdGrow.exit.sink.split.i ], [ %.val282, %bb.df ], [ %.val282, %bb.de ], [ %.val282, %bb.cz ] ; 3 uses
  %i.oa = icmp slt i32 %i.nz, %i.ng
  br i1 %i.oa, label %.lr.ph.i393, label %._crit_edge.i

.lr.ph.i393:                                      ; preds = %Vec_WrdGrow.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.1538, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !95
  %i.od = sext i32 %i.nz to i64
  %i.oe = shl nsw i64 %i.od, 3
  %scevgep.i = getelementptr i8, ptr %i.oc, i64 %i.oe
  %i.of = xor i32 %i.nz, -1
  %i.og = add i32 %i.ng, %i.of
  %i.oh = zext i32 %i.og to i64
  %i.oi = shl nuw nsw i64 %i.oh, 3
  %i.oj = add nuw nsw i64 %i.oi, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.oj, i1 false), !tbaa !97
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i393, %Vec_WrdGrow.exit.i
  store i32 %i.ng, ptr %i.nf, align 4, !tbaa !93
  br label %Vec_WrdFillExtra.exit

Vec_WrdFillExtra.exit:                            ; preds = %._crit_edge.i, %bb.cx, %bb.cw
  %.val13.i397 = load ptr, ptr %i.g, align 8, !tbaa !22 ; 4 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %.val13.i397, i64 %i.dx
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !13
  %i.om = add i32 %i.ol, %.1227617                ; 2 uses
  %i.on = icmp slt i32 %i.ea, %i.om
  br i1 %i.on, label %.lr.ph.i399, label %.else

.lr.ph.i399:                                      ; preds = %Vec_WrdFillExtra.exit
  %.val.i400 = load ptr, ptr %i.ax, align 8, !tbaa !21
  br label %bb.dk

bb.dk:                                            ; preds = %Ndr_DataSize.exit.i402, %.lr.ph.i399
  %.016.i401 = phi i32 [ %i.ea, %.lr.ph.i399 ], [ %i.ow, %Ndr_DataSize.exit.i402 ] ; 2 uses
  %i.oo = sext i32 %.016.i401 to i64              ; 3 uses
  %i.op = getelementptr inbounds i8, ptr %.val.i400, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !14  ; 2 uses
  %i.or = icmp eq i8 %i.oq, 9
  br i1 %i.or, label %Ndr_ObjReadBodyP.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.os = icmp ugt i8 %i.oq, 3
  br i1 %i.os, label %Ndr_DataSize.exit.i402, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ot = getelementptr inbounds [4 x i8], ptr %.val13.i397, i64 %i.oo
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i402

Ndr_DataSize.exit.i402:                           ; preds = %bb.dm, %bb.dl
  %i.ov = phi i32 [ %i.ou, %bb.dm ], [ 1, %bb.dl ]
  %i.ow = add nsw i32 %i.ov, %.016.i401           ; 2 uses
  %i.ox = icmp slt i32 %i.ow, %i.om
  br i1 %i.ox, label %bb.dk, label %.else, !llvm.loop !4

Ndr_ObjReadBodyP.exit:                            ; preds = %bb.dk
  %.not587 = icmp eq ptr %.val13.i397, null
  br i1 %.not587, label %.else, label %.then

.then:                                            ; preds = %Ndr_ObjReadBodyP.exit
  %i.oy = getelementptr inbounds [4 x i8], ptr %.val13.i397, i64 %i.oo
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !97
  %i.pa = getelementptr i8, ptr %.1538, i64 8
  %.val284 = load ptr, ptr %i.pa, align 8, !tbaa !95
  %i.pb = sext i32 %.012.i349 to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %.val284, i64 %i.pb
  store i64 %i.oz, ptr %i.pc, align 8, !tbaa !97
  %i.pd = add nsw i32 %.sroa.5519.0616, 1
  br label %1

.else:                                            ; preds = %Ndr_DataSize.exit.i402, %Vec_WrdFillExtra.exit, %Ndr_ObjReadBodyP.exit
  %i.pe = getelementptr i8, ptr %.1538, i64 8
  %.val284570 = load ptr, ptr %i.pe, align 8, !tbaa !95
  %i.pf = sext i32 %.012.i349 to i64
  %i.pg = getelementptr inbounds [8 x i8], ptr %.val284570, i64 %i.pf
  store i64 0, ptr %i.pg, align 8, !tbaa !97
  %i.ph = add nsw i32 %.sroa.0518.0615, 1
  br label %1

1:                                                ; preds = %.else, %.then, %Vec_IntAppend.exit
  %.2540 = phi ptr [ %.0537614, %Vec_IntAppend.exit ], [ %.1538, %.else ], [ %.1538, %.then ] ; 5 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0518.0615, %Vec_IntAppend.exit ], [ %i.ph, %.else ], [ %.sroa.0518.0615, %.then ] ; 5 uses
  %.sroa.8.1 = phi i32 [ %.sroa.5519.0616, %Vec_IntAppend.exit ], [ %.sroa.5519.0616, %.else ], [ %i.pd, %.then ] ; 5 uses
  switch i32 %.012.i337, label %.cont [
    i32 91, label %bb.dn
    i32 97, label %bb.dz
    i32 21, label %bb.ee
  ]

bb.dn:                                            ; preds = %1
  %i.pi = load i32, ptr %i.d, align 4, !tbaa !25  ; 7 uses
  %i.pj = load i32, ptr %i.c, align 8, !tbaa !26
  %i.pk = icmp eq i32 %i.pi, %i.pj
  br i1 %i.pk, label %bb.do, label %.Vec_IntPush.exit.i403_crit_edge

.Vec_IntPush.exit.i403_crit_edge:                 ; preds = %bb.dn
  %.pre700 = load ptr, ptr %i.f, align 8, !tbaa !27
  br label %Vec_IntPush.exit.i403

bb.do:                                            ; preds = %bb.dn
  %i.pl = icmp slt i32 %i.pi, 16
  br i1 %i.pl, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.pm = load ptr, ptr %i.f, align 8, !tbaa !27  ; 2 uses
  %.not9.i.i.i410 = icmp eq ptr %i.pm, null
  br i1 %.not9.i.i.i410, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.pm, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i407

bb.dr:                                            ; preds = %bb.dp
  %i.po = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i407

bb.ds:                                            ; preds = %bb.do
  %i.pp = icmp samesign ult i32 %i.pi, 1073741823
  %i.pq = shl nuw nsw i32 %i.pi, 1
  %spec.select.i.i404 = select i1 %i.pp, i32 %i.pq, i32 2147483647 ; 4 uses
  %.not.i9.i.i405 = icmp samesign ult i32 %i.pi, %spec.select.i.i404
  %.pre701 = load ptr, ptr %i.f, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i.i405, label %bb.dt, label %Vec_IntPush.exit.i403

bb.dt:                                            ; preds = %bb.ds
  %.not9.i10.i.i406 = icmp eq ptr %.pre701, null
  %i.pr = zext nneg i32 %spec.select.i.i404 to i64
  %i.ps = shl nuw nsw i64 %i.pr, 2                ; 2 uses
  br i1 %.not9.i10.i.i406, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pt = tail call ptr @realloc(ptr noundef nonnull %.pre701, i64 noundef %i.ps) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i407

bb.dv:                                            ; preds = %bb.dt
  %i.pu = tail call noalias ptr @malloc(i64 noundef %i.ps) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i407

Vec_IntGrow.exit11.sink.split.i.i407:             ; preds = %bb.du, %bb.dv, %bb.dq, %bb.dr
  %storemerge = phi ptr [ %i.po, %bb.dr ], [ %i.pn, %bb.dq ], [ %i.pt, %bb.du ], [ %i.pu, %bb.dv ] ; 2 uses
  %spec.select.sink.i.i408 = phi i32 [ 16, %bb.dr ], [ 16, %bb.dq ], [ %spec.select.i.i404, %bb.du ], [ %spec.select.i.i404, %bb.dv ]
  store ptr %storemerge, ptr %i.f, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i408, ptr %i.c, align 8, !tbaa !26
  %.pre.i409 = load i32, ptr %i.d, align 4, !tbaa !25
  br label %Vec_IntPush.exit.i403

Vec_IntPush.exit.i403:                            ; preds = %.Vec_IntPush.exit.i403_crit_edge, %Vec_IntGrow.exit11.sink.split.i.i407, %bb.ds
  %i.pv = phi ptr [ %.pre700, %.Vec_IntPush.exit.i403_crit_edge ], [ %.pre701, %bb.ds ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i.i407 ] ; 4 uses
  %i.pw = phi i32 [ %i.pi, %.Vec_IntPush.exit.i403_crit_edge ], [ %i.pi, %bb.ds ], [ %.pre.i409, %Vec_IntGrow.exit11.sink.split.i.i407 ] ; 2 uses
  %i.px = add nsw i32 %i.pw, 1
  store i32 %i.px, ptr %i.d, align 4, !tbaa !25
  %i.py = sext i32 %i.pw to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.pv, i64 %i.py
  store i32 %.0534.a, ptr %i.pz, align 4, !tbaa !13
  %i.qa = load i32, ptr %i.d, align 4, !tbaa !25  ; 7 uses
  %i.qb = load i32, ptr %i.c, align 8, !tbaa !26
  %i.qc = icmp eq i32 %i.qa, %i.qb
  br i1 %i.qc, label %bb.dw, label %Vec_IntPushTwo.exit

bb.dw:                                            ; preds = %Vec_IntPush.exit.i403
  %i.qd = icmp slt i32 %i.qa, 16
  br i1 %i.qd, label %Vec_IntGrow.exit11.sink.split.i6.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qe = icmp samesign ult i32 %i.qa, 1073741823
  %i.qf = shl nuw nsw i32 %i.qa, 1
  %spec.select.i3.i = select i1 %i.qe, i32 %i.qf, i32 2147483647 ; 3 uses
  %.not.i9.i4.i = icmp samesign ult i32 %i.qa, %spec.select.i3.i
  br i1 %.not.i9.i4.i, label %bb.dy, label %Vec_IntPushTwo.exit

bb.dy:                                            ; preds = %bb.dx
  %i.qg = zext nneg i32 %spec.select.i3.i to i64
  %i.qh = shl nuw nsw i64 %i.qg, 2
  br label %Vec_IntGrow.exit11.sink.split.i6.i

Vec_IntGrow.exit11.sink.split.i6.i:               ; preds = %bb.dy, %bb.dw
  %.sink.i = phi i64 [ %i.qh, %bb.dy ], [ 64, %bb.dw ]
  %spec.select.sink.i7.i = phi i32 [ %spec.select.i3.i, %bb.dy ], [ 16, %bb.dw ]
  %i.qi = tail call ptr @realloc(ptr noundef nonnull %i.pv, i64 noundef %.sink.i) #25 ; 2 uses
  store ptr %i.qi, ptr %i.f, align 8, !tbaa !27
  store i32 %spec.select.sink.i7.i, ptr %i.c, align 8, !tbaa !26
  %.pre11.i = load i32, ptr %i.d, align 4, !tbaa !25
  br label %Vec_IntPushTwo.exit

Vec_IntPushTwo.exit:                              ; preds = %Vec_IntPush.exit.i403, %bb.dx, %Vec_IntGrow.exit11.sink.split.i6.i
  %i.qj = phi i32 [ %i.qa, %Vec_IntPush.exit.i403 ], [ %i.qa, %bb.dx ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i6.i ] ; 2 uses
  %i.qk = phi ptr [ %i.pv, %Vec_IntPush.exit.i403 ], [ %i.pv, %bb.dx ], [ %i.qi, %Vec_IntGrow.exit11.sink.split.i6.i ]
  %i.ql = add nsw i32 %i.qj, 1
  store i32 %i.ql, ptr %i.d, align 4, !tbaa !25
  %i.qm = sext i32 %i.qj to i64
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.qm
  store i32 %.0533.a, ptr %i.qn, align 4, !tbaa !13
  br label %.cont

bb.dz:                                            ; preds = %1
  %.val13.i412.pre = load ptr, ptr %i.g, align 8, !tbaa !22 ; 3 uses
  %.phi.trans.insert698 = getelementptr inbounds [4 x i8], ptr %.val13.i412.pre, i64 %i.dx
  %.pre699 = load i32, ptr %.phi.trans.insert698, align 4, !tbaa !13
  %.pre732 = add i32 %.pre699, %.1227617          ; 2 uses
  %i.qo = icmp slt i32 %i.ea, %.pre732
  br i1 %i.qo, label %.lr.ph.i414, label %Ndr_ObjReadBodyP.exit418

.lr.ph.i414:                                      ; preds = %bb.dz
  %.val.i415 = load ptr, ptr %i.ax, align 8, !tbaa !21
  br label %bb.ea

bb.ea:                                            ; preds = %Ndr_DataSize.exit.i417, %.lr.ph.i414
  %.016.i416 = phi i32 [ %i.ea, %.lr.ph.i414 ], [ %i.qy, %Ndr_DataSize.exit.i417 ] ; 2 uses
  %i.qp = sext i32 %.016.i416 to i64              ; 3 uses
  %i.qq = getelementptr inbounds i8, ptr %.val.i415, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !14  ; 2 uses
  %i.qs = icmp eq i8 %i.qr, 9
  br i1 %i.qs, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.qt = getelementptr inbounds [4 x i8], ptr %.val13.i412.pre, i64 %i.qp
  br label %Ndr_ObjReadBodyP.exit418

bb.ec:                                            ; preds = %bb.ea
  %i.qu = icmp ugt i8 %i.qr, 3
  br i1 %i.qu, label %Ndr_DataSize.exit.i417, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.qv = getelementptr inbounds [4 x i8], ptr %.val13.i412.pre, i64 %i.qp
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i417

Ndr_DataSize.exit.i417:                           ; preds = %bb.ed, %bb.ec
  %i.qx = phi i32 [ %i.qw, %bb.ed ], [ 1, %bb.ec ]
  %i.qy = add nsw i32 %i.qx, %.016.i416           ; 2 uses
  %i.qz = icmp slt i32 %i.qy, %.pre732
  br i1 %i.qz, label %bb.ea, label %Ndr_ObjReadBodyP.exit418, !llvm.loop !4

Ndr_ObjReadBodyP.exit418:                         ; preds = %Ndr_DataSize.exit.i417, %bb.dz, %bb.eb
  %.012.i413 = phi ptr [ %i.qt, %bb.eb ], [ null, %bb.dz ], [ null, %Ndr_DataSize.exit.i417 ]
  tail call void @Ndr_ObjReadConstant(ptr noundef nonnull %i.c, ptr noundef %.012.i413)
  br label %.cont

bb.ee:                                            ; preds = %1
  %.val249 = load i32, ptr %i.d, align 4, !tbaa !25
  %i.ra = icmp eq i32 %.val249, 3
  br i1 %i.ra, label %bb.ef, label %.cont

bb.ef:                                            ; preds = %bb.ee
  %.val288 = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.rb = getelementptr inbounds nuw i8, ptr %.val288, i64 4 ; 2 uses
  %i.rc = load <2 x i32>, ptr %i.rb, align 4, !tbaa !13
  %i.rd = shufflevector <2 x i32> %i.rc, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.rd, ptr %i.rb, align 4, !tbaa !13
  br label %.cont

.cont:                                            ; preds = %Vec_IntPush.exit390, %1, %Ndr_ObjReadBodyP.exit418, %bb.ef, %bb.ee, %Vec_IntPushTwo.exit
  %.sroa.8.1584 = phi i32 [ %.sroa.5519.0616, %Vec_IntPush.exit390 ], [ %.sroa.8.1, %1 ], [ %.sroa.8.1, %Ndr_ObjReadBodyP.exit418 ], [ %.sroa.8.1, %bb.ef ], [ %.sroa.8.1, %bb.ee ], [ %.sroa.8.1, %Vec_IntPushTwo.exit ] ; 2 uses
  %.sroa.0.1583 = phi i32 [ %.sroa.0518.0615, %Vec_IntPush.exit390 ], [ %.sroa.0.1, %1 ], [ %.sroa.0.1, %Ndr_ObjReadBodyP.exit418 ], [ %.sroa.0.1, %bb.ef ], [ %.sroa.0.1, %bb.ee ], [ %.sroa.0.1, %Vec_IntPushTwo.exit ] ; 2 uses
  %.2540582 = phi ptr [ %.0537614, %Vec_IntPush.exit390 ], [ %.2540, %1 ], [ %.2540, %Ndr_ObjReadBodyP.exit418 ], [ %.2540, %bb.ef ], [ %.2540, %bb.ee ], [ %.2540, %Vec_IntPushTwo.exit ] ; 2 uses
  %.val261 = load ptr, ptr %i.be, align 8, !tbaa !36
  %i.re = sext i32 %i.hc to i64                   ; 3 uses
  %i.rf = getelementptr inbounds [24 x i8], ptr %.val261, i64 %i.re
  tail call void @Wlc_ObjAddFanins(ptr noundef %i.x, ptr noundef %i.rf, ptr noundef nonnull %i.c) #22
  %.val277 = load ptr, ptr %i.bc, align 8, !tbaa !27
  %i.rg = getelementptr inbounds [4 x i8], ptr %.val277, i64 %i.re
  store i32 %.012.i349, ptr %i.rg, align 4, !tbaa !13
  %i.rh = icmp eq i32 %.012.i337, 53
  br i1 %i.rh, label %bb.eg, label %Ndr_ObjIsType.exit309.thread

bb.eg:                                            ; preds = %.cont
  %.val260.a = load ptr, ptr %i.be, align 8, !tbaa !36 ; 3 uses
  %i.ri = getelementptr inbounds [24 x i8], ptr %.val260.a, i64 %i.re ; 7 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !38
  %i.rl = icmp ugt i32 %i.rk, 2
  br i1 %i.rl, label %Wlc_ObjFanin0.exit.thread572, label %bb.eh

Wlc_ObjFanin0.exit.thread572:                     ; preds = %bb.eg
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !14
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !13
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds [24 x i8], ptr %.val260.a, i64 %i.rp ; 2 uses
  %i.rr = load i16, ptr %i.rq, align 8
  %i.rs = or i16 %i.rr, 64
  store i16 %i.rs, ptr %i.rq, align 8
  br label %Wlc_ObjHasArray.exit.thread.i.i.i420

bb.eh:                                            ; preds = %bb.eg
  %i.rt = load i16, ptr %i.ri, align 8
  %i.ru = and i16 %i.rt, 63
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ri, i64 16 ; 2 uses
  switch i16 %i.ru, label %Wlc_ObjFanin0.exit.thread [
    i16 6, label %Wlc_ObjFanin0.exit
    i16 22, label %Wlc_ObjFanin0.exit
  ]

Wlc_ObjFanin0.exit:                               ; preds = %bb.eh, %bb.eh
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !14
  br label %Wlc_ObjFanin0.exit.thread

Wlc_ObjFanin0.exit.thread:                        ; preds = %bb.eh, %Wlc_ObjFanin0.exit
  %.sink894.in = phi ptr [ %i.rw, %Wlc_ObjFanin0.exit ], [ %i.rv, %bb.eh ]
  %.sink894 = load i32, ptr %.sink894.in, align 4, !tbaa !13
  %i.rx = sext i32 %.sink894 to i64
  %i.ry = getelementptr inbounds [24 x i8], ptr %.val260.a, i64 %i.rx ; 2 uses
  %i.rz = load i16, ptr %i.ry, align 8
  %i.sa = or i16 %i.rz, 64
  store i16 %i.sa, ptr %i.ry, align 8
  %i.sb = load i16, ptr %i.ri, align 8
  %i.sc = and i16 %i.sb, 63
  switch i16 %i.sc, label %bb.ei [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i420
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i420
  ]

Wlc_ObjHasArray.exit.thread.i.i.i420:             ; preds = %Wlc_ObjFanin0.exit.thread572, %Wlc_ObjFanin0.exit.thread, %Wlc_ObjFanin0.exit.thread
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !14
  br label %Wlc_ObjFanin1.exit

bb.ei:                                            ; preds = %Wlc_ObjFanin0.exit.thread
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  br label %Wlc_ObjFanin1.exit

Wlc_ObjFanin1.exit:                               ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i420, %bb.ei
  %i.sg = phi ptr [ %i.se, %Wlc_ObjHasArray.exit.thread.i.i.i420 ], [ %i.sf, %bb.ei ]
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !13
  %.val.i421 = load ptr, ptr %i.be, align 8, !tbaa !36
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [24 x i8], ptr %.val.i421, i64 %i.sj ; 2 uses
  %i.sl = load i16, ptr %i.sk, align 8
  %i.sm = or i16 %i.sl, 64
  store i16 %i.sm, ptr %i.sk, align 8
  br label %Ndr_ObjIsType.exit309.thread

Ndr_ObjIsType.exit309.thread:                     ; preds = %Ndr_DataSize.exit.i308, %Ndr_DataSize.exit.i315, %Ndr_ObjIsType.exit309, %bb.w, %Vec_IntPush.exit382, %Wlc_ObjFanin1.exit, %.cont, %bb.v, %Ndr_ObjIsType.exit316
  %.7 = phi ptr [ %.0537614, %Ndr_DataSize.exit.i315 ], [ %.0537614, %Ndr_ObjIsType.exit316 ], [ %.0537614, %Ndr_ObjIsType.exit309 ], [ %.0537614, %bb.v ], [ %.0537614, %Vec_IntPush.exit382 ], [ %.2540582, %Wlc_ObjFanin1.exit ], [ %.2540582, %.cont ], [ %.0537614, %bb.w ], [ %.0537614, %Ndr_DataSize.exit.i308 ] ; 3 uses
  %.sroa.0518.6 = phi i32 [ %.sroa.0518.0615, %Ndr_DataSize.exit.i315 ], [ %.sroa.0518.0615, %Ndr_ObjIsType.exit316 ], [ %.sroa.0518.0615, %Ndr_ObjIsType.exit309 ], [ %.sroa.0518.0615, %bb.v ], [ %.sroa.0518.0615, %Vec_IntPush.exit382 ], [ %.sroa.0.1583, %Wlc_ObjFanin1.exit ], [ %.sroa.0.1583, %.cont ], [ %.sroa.0518.0615, %bb.w ], [ %.sroa.0518.0615, %Ndr_DataSize.exit.i308 ] ; 4 uses
  %.sroa.5519.6 = phi i32 [ %.sroa.5519.0616, %Ndr_DataSize.exit.i315 ], [ %.sroa.5519.0616, %Ndr_ObjIsType.exit316 ], [ %.sroa.5519.0616, %Ndr_ObjIsType.exit309 ], [ %.sroa.5519.0616, %bb.v ], [ %.sroa.5519.0616, %Vec_IntPush.exit382 ], [ %.sroa.8.1584, %Wlc_ObjFanin1.exit ], [ %.sroa.8.1584, %.cont ], [ %.sroa.5519.0616, %bb.w ], [ %.sroa.5519.0616, %Ndr_DataSize.exit.i308 ] ; 2 uses
  %.val.i422 = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 2 uses
  %i.sn = getelementptr inbounds i8, ptr %.val.i422, i64 %i.dx
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !14
  %i.sp = icmp ugt i8 %i.so, 3
  %.val272.pre.a = load ptr, ptr %i.g, align 8, !tbaa !22 ; 4 uses
  br i1 %i.sp, label %Ndr_DataSize.exit423, label %bb.ej

bb.ej:                                            ; preds = %Ndr_ObjIsType.exit309.thread
  %i.sq = getelementptr inbounds [4 x i8], ptr %.val272.pre.a, i64 %i.dx
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !13
  br label %Ndr_DataSize.exit423

Ndr_DataSize.exit423:                             ; preds = %Ndr_ObjIsType.exit309.thread, %bb.ej
  %i.ss = phi i32 [ %i.sr, %bb.ej ], [ 1, %Ndr_ObjIsType.exit309.thread ]
  %i.st = add nsw i32 %i.ss, %.1227617            ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.val272.pre.a, i64 8
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !13
  %i.sw = add i32 %i.sv, 2
  %i.sx = icmp slt i32 %i.st, %i.sw
  br i1 %i.sx, label %bb.v, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %Ndr_DataSize.exit423
  %.not = icmp eq i32 %.sroa.0518.6, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge
  %i.sy = add nsw i32 %.sroa.5519.6, %.sroa.0518.6
  %i.sz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %.sroa.0518.6, i32 noundef %i.sy) ; 0 uses
  %.val271623.pre = load ptr, ptr %i.g, align 8, !tbaa !22
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %Wlc_NtkCleanNameId.exit, %.preheader591, %bb.ek, %._crit_edge
  %.0537.lcssa846 = phi ptr [ %.7, %bb.ek ], [ %.7, %._crit_edge ], [ null, %.preheader591 ], [ null, %Wlc_NtkCleanNameId.exit ] ; 4 uses
  %.val271623 = phi ptr [ %.val271623.pre, %bb.ek ], [ %.val272.pre.a, %._crit_edge ], [ %.val273832, %.preheader591 ], [ %.val273610, %Wlc_NtkCleanNameId.exit ] ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.val271623, i64 8
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !13
  %i.tc = add i32 %i.tb, 2
  %i.td = icmp sgt i32 %i.tc, 3
  br i1 %i.td, label %.lr.ph627, label %._crit_edge628

.lr.ph627:                                        ; preds = %._crit_edge.thread
  %i.te = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.tf = getelementptr i8, ptr %i.x, i64 640
  %.val268.pre = load ptr, ptr %i.te, align 8, !tbaa !21
  br label %bb.el

bb.el:                                            ; preds = %.lr.ph627, %Ndr_DataSize.exit481
  %.val271.pre730 = phi ptr [ %.val271623, %.lr.ph627 ], [ %.val271.pre857, %Ndr_DataSize.exit481 ] ; 9 uses
  %.val.i480715 = phi ptr [ %.val268.pre, %.lr.ph627 ], [ %.val.i480859, %Ndr_DataSize.exit481 ] ; 6 uses
  %.2228624 = phi i32 [ 3, %.lr.ph627 ], [ %i.vz, %Ndr_DataSize.exit481 ] ; 4 uses
  %i.tg = sext i32 %.2228624 to i64               ; 4 uses
  %i.th = getelementptr inbounds i8, ptr %.val.i480715, i64 %i.tg
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !14  ; 2 uses
  %.not239 = icmp eq i8 %i.ti, 3
  br i1 %.not239, label %bb.em, label %bb.fe

bb.em:                                            ; preds = %bb.el
  %i.tj = add nsw i32 %.2228624, 1                ; 4 uses
  %i.tk = getelementptr inbounds [4 x i8], ptr %.val271.pre730, i64 %i.tg
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !13
  %i.tm = add i32 %i.tl, %.2228624                ; 4 uses
  %i.tn = icmp slt i32 %i.tj, %i.tm
  br i1 %i.tn, label %.lr.ph.i426, label %Ndr_ObjReadArray.exit464

.lr.ph.i426:                                      ; preds = %bb.em, %Ndr_DataSize.exit.i429
  %.016.i428 = phi i32 [ %i.tw, %Ndr_DataSize.exit.i429 ], [ %i.tj, %bb.em ] ; 2 uses
  %i.to = sext i32 %.016.i428 to i64              ; 3 uses
  %i.tp = getelementptr inbounds i8, ptr %.val.i480715, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !14  ; 2 uses
  %i.tr = icmp eq i8 %i.tq, 6
  br i1 %i.tr, label %Ndr_ObjIsType.exit430, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i426
  %i.ts = icmp ugt i8 %i.tq, 3
  br i1 %i.ts, label %Ndr_DataSize.exit.i429, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.tt = getelementptr inbounds [4 x i8], ptr %.val271.pre730, i64 %i.to
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i429

Ndr_DataSize.exit.i429:                           ; preds = %bb.eo, %bb.en
  %i.tv = phi i32 [ %i.tu, %bb.eo ], [ 1, %bb.en ]
  %i.tw = add nsw i32 %i.tv, %.016.i428           ; 2 uses
  %i.tx = icmp slt i32 %i.tw, %i.tm
  br i1 %i.tx, label %.lr.ph.i426, label %.lr.ph.i.i434.preheader, !llvm.loop !1

Ndr_ObjIsType.exit430:                            ; preds = %.lr.ph.i426
  %i.ty = getelementptr inbounds [4 x i8], ptr %.val271.pre730, i64 %i.to
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !13
  %.not584 = icmp eq i32 %i.tz, 4
  br i1 %.not584, label %.lr.ph.i.i434.preheader, label %.thread853

.lr.ph.i.i434.preheader:                          ; preds = %Ndr_DataSize.exit.i429, %Ndr_ObjIsType.exit430
  br label %.lr.ph.i.i434

.lr.ph.i.i434:                                    ; preds = %.lr.ph.i.i434.preheader, %Ndr_DataSize.exit.i.i446
  %.015.i436 = phi ptr [ %.127.i448, %Ndr_DataSize.exit.i.i446 ], [ null, %.lr.ph.i.i434.preheader ] ; 4 uses
  %i.ua = phi ptr [ %i.un, %Ndr_DataSize.exit.i.i446 ], [ null, %.lr.ph.i.i434.preheader ] ; 5 uses
  %i.ub = phi ptr [ %i.um, %Ndr_DataSize.exit.i.i446 ], [ null, %.lr.ph.i.i434.preheader ]
  %.024.i.i437 = phi i32 [ %.1.i28.i447, %Ndr_DataSize.exit.i.i446 ], [ 0, %.lr.ph.i.i434.preheader ] ; 4 uses
  %.01923.i.i438 = phi i32 [ %i.up, %Ndr_DataSize.exit.i.i446 ], [ %i.tj, %.lr.ph.i.i434.preheader ] ; 2 uses
  %i.uc = sext i32 %.01923.i.i438 to i64          ; 3 uses
  %i.ud = getelementptr inbounds i8, ptr %.val.i480715, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !14  ; 2 uses
  %i.uf = icmp eq i8 %i.ue, 8
  br i1 %i.uf, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %.lr.ph.i.i434
  %i.ug = add nsw i32 %.024.i.i437, 1             ; 2 uses
  %i.uh = icmp eq ptr %i.ua, null
  br i1 %i.uh, label %bb.eq, label %Ndr_DataSize.exit.i.i446

bb.eq:                                            ; preds = %bb.ep
  %i.ui = getelementptr inbounds [4 x i8], ptr %.val271.pre730, i64 %i.uc ; 3 uses
  br label %Ndr_DataSize.exit.i.i446

bb.er:                                            ; preds = %.lr.ph.i.i434
  %.not.i.i439 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i439, label %bb.es, label %Ndr_ObjReadArray.exit.i440

bb.es:                                            ; preds = %bb.er
  %i.uj = icmp ugt i8 %i.ue, 3
  br i1 %i.uj, label %Ndr_DataSize.exit.i.i446, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.uk = getelementptr inbounds [4 x i8], ptr %.val271.pre730, i64 %i.uc
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i.i446

Ndr_DataSize.exit.i.i446:                         ; preds = %bb.et, %bb.es, %bb.eq, %bb.ep
  %.1.i28.i447 = phi i32 [ %.024.i.i437, %bb.et ], [ %.024.i.i437, %bb.es ], [ %i.ug, %bb.eq ], [ %i.ug, %bb.ep ] ; 2 uses
  %i.um = phi ptr [ null, %bb.et ], [ null, %bb.es ], [ %i.ui, %bb.eq ], [ %i.ua, %bb.ep ]
  %i.un = phi ptr [ %i.ua, %bb.et ], [ %i.ua, %bb.es ], [ %i.ui, %bb.eq ], [ %i.ua, %bb.ep ]
  %.127.i448 = phi ptr [ %.015.i436, %bb.et ], [ %.015.i436, %bb.es ], [ %i.ui, %bb.eq ], [ %.015.i436, %bb.ep ] ; 2 uses
  %i.uo = phi i32 [ %i.ul, %bb.et ], [ 1, %bb.es ], [ 1, %bb.eq ], [ 1, %bb.ep ]
  %i.up = add nsw i32 %i.uo, %.01923.i.i438       ; 2 uses
  %i.uq = icmp slt i32 %i.up, %i.tm
  br i1 %i.uq, label %.lr.ph.i.i434, label %Ndr_ObjReadArray.exit.i440, !llvm.loop !3

Ndr_ObjReadArray.exit.i440:                       ; preds = %Ndr_DataSize.exit.i.i446, %bb.er
  %.2.i441 = phi ptr [ %.127.i448, %Ndr_DataSize.exit.i.i446 ], [ %.015.i436, %bb.er ] ; 3 uses
  %.0.lcssa.i.i442 = phi i32 [ %.1.i28.i447, %Ndr_DataSize.exit.i.i446 ], [ %.024.i.i437, %bb.er ] ; 4 uses
  switch i32 %.0.lcssa.i.i442, label %.thread.fold.split.i445 [
    i32 0, label %Ndr_ObjReadRange.exit449
    i32 3, label %.thread.i443
    i32 1, label %bb.eu
  ]

bb.eu:                                            ; preds = %Ndr_ObjReadArray.exit.i440
  %i.ur = load i32, ptr %.2.i441, align 4, !tbaa !13 ; 2 uses
  br label %Ndr_ObjReadRange.exit449

.thread.fold.split.i445:                          ; preds = %Ndr_ObjReadArray.exit.i440
  br label %.thread.i443

.thread.i443:                                     ; preds = %.thread.fold.split.i445, %Ndr_ObjReadArray.exit.i440
  %.019.i444 = phi i32 [ 1, %Ndr_ObjReadArray.exit.i440 ], [ 0, %.thread.fold.split.i445 ]
  %i.us = load i32, ptr %.2.i441, align 4, !tbaa !13
  %i.ut = getelementptr inbounds nuw i8, ptr %.2.i441, i64 4
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !13
  br label %Ndr_ObjReadRange.exit449

Ndr_ObjReadRange.exit449:                         ; preds = %Ndr_ObjReadArray.exit.i440, %bb.eu, %.thread.i443
  %.0532.a = phi i32 [ %i.us, %.thread.i443 ], [ %.0.lcssa.i.i442, %Ndr_ObjReadArray.exit.i440 ], [ %i.ur, %bb.eu ] ; 2 uses
  %.0531 = phi i32 [ %i.uu, %.thread.i443 ], [ %.0.lcssa.i.i442, %Ndr_ObjReadArray.exit.i440 ], [ %i.ur, %bb.eu ] ; 2 uses
  %.012.i433 = phi i32 [ %.019.i444, %.thread.i443 ], [ %.0.lcssa.i.i442, %Ndr_ObjReadArray.exit.i440 ], [ 0, %bb.eu ] ; 2 uses
  br label %.lr.ph.i453

.lr.ph.i453:                                      ; preds = %Ndr_ObjReadRange.exit449, %Ndr_DataSize.exit.i461
  %.3546 = phi ptr [ %.4547852, %Ndr_DataSize.exit.i461 ], [ null, %Ndr_ObjReadRange.exit449 ] ; 4 uses
  %i.uv = phi ptr [ %i.vh, %Ndr_DataSize.exit.i461 ], [ null, %Ndr_ObjReadRange.exit449 ] ; 5 uses
  %i.uw = phi ptr [ %i.vg, %Ndr_DataSize.exit.i461 ], [ null, %Ndr_ObjReadRange.exit449 ]
  %.01923.i457 = phi i32 [ %i.vj, %Ndr_DataSize.exit.i461 ], [ %i.tj, %Ndr_ObjReadRange.exit449 ] ; 2 uses
  %i.ux = sext i32 %.01923.i457 to i64            ; 3 uses
  %i.uy = getelementptr inbounds i8, ptr %.val.i480715, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !14  ; 2 uses
  %i.va = icmp eq i8 %i.uz, 4
  br i1 %i.va, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %.lr.ph.i453
  %i.vb = icmp eq ptr %i.uv, null
  br i1 %i.vb, label %bb.ew, label %Ndr_DataSize.exit.i461

bb.ew:                                            ; preds = %bb.ev
  %i.vc = getelementptr inbounds [4 x i8], ptr %.val271.pre730, i64 %i.ux ; 3 uses
  br label %Ndr_DataSize.exit.i461

bb.ex:                                            ; preds = %.lr.ph.i453
  %.not.i458 = icmp eq ptr %i.uw, null
  br i1 %.not.i458, label %bb.ey, label %Ndr_ObjReadArray.exit464

bb.ey:                                            ; preds = %bb.ex
  %i.vd = icmp ugt i8 %i.uz, 3
  br i1 %i.vd, label %Ndr_DataSize.exit.i461, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ve = getelementptr inbounds [4 x i8], ptr %.val271.pre730, i64 %i.ux
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !13
  br label %Ndr_DataSize.exit.i461
end_hunk_0
