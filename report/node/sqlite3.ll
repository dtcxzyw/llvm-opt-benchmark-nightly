Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 424
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@unicodeNext:bb.a
  %i.p = icmp ult ptr %.0105, %i.l
  br i1 %i.p, label %bb.c, label %.thread189

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0105, i64 1 ; 4 uses
  %i.r = load i8, ptr %.0105, align 1, !tbaa !741 ; 3 uses
  %i.s = zext i8 %i.r to i32
  %i.t = icmp ugt i8 %i.r, -65
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = zext i8 %i.r to i64
  %i.v = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -192
  %i.x = load i8, ptr %i.w, align 1, !tbaa !741
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = icmp ult ptr %i.q, %i.l
  br i1 %i.z, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.d
  %scevgep = getelementptr i8, ptr %.0105, i64 %i.o
  %i.aa = sub i64 0, %.0105265
  %scevgep266.a = getelementptr i8, ptr %scevgep, i64 %i.aa ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.1107249 = phi ptr [ %i.ag, %bb.e ], [ %i.q, %.lr.ph.preheader ] ; 3 uses
  %.1114248 = phi i32 [ %i.ai, %bb.e ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %i.ab = load i8, ptr %.1107249, align 1, !tbaa !741
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = and i32 %i.ac, 192
  %i.ae = icmp eq i32 %i.ad, 128
  br i1 %i.ae, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.af = shl i32 %.1114248, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %.1107249, i64 1 ; 2 uses
  %i.ah = and i32 %i.ac, 63
  %i.ai = or disjoint i32 %i.ah, %i.af            ; 2 uses
  %exitcond.not = icmp eq ptr %i.ag, %scevgep266.a
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !6345

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.d
  %.1114.lcssa = phi i32 [ %i.y, %bb.d ], [ %i.ai, %bb.e ], [ %.1114248, %.lr.ph ] ; 4 uses
  %.1107.lcssa = phi ptr [ %i.q, %bb.d ], [ %scevgep266.a, %bb.e ], [ %.1107249, %.lr.ph ] ; 2 uses
  %i.aj = icmp ult i32 %.1114.lcssa, 128
  %i.ak = and i32 %.1114.lcssa, -2048
  %i.al = icmp eq i32 %i.ak, 55296
  %or.cond = or i1 %i.aj, %i.al
  %i.am = and i32 %.1114.lcssa, -2
  %i.an = icmp eq i32 %i.am, 65534
  %or.cond143 = or i1 %i.an, %or.cond
  br i1 %or.cond143, label %.thread184, label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.c
  %.2115 = phi i32 [ %i.s, %bb.c ], [ %.1114.lcssa, %.critedge ] ; 7 uses
  %.2 = phi ptr [ %i.q, %bb.c ], [ %.1107.lcssa, %.critedge ] ; 3 uses
  %i.ao = icmp ult i32 %.2115, 128
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = lshr i32 %.2115, 5
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aAscii, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !576
  %i.at = and i32 %.2115, 31
  %i.au = xor i32 %i.as, -1
  %i.av = lshr i32 %i.au, %i.at
  %i.aw = and i32 %i.av, 1
  br label %sqlite3FtsUnicodeIsalnum.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ax = icmp ult i32 %.2115, 4194304
  br i1 %i.ax, label %.thread184, label %sqlite3FtsUnicodeIsalnum.exit.i

.thread184:                                       ; preds = %.critedge, %bb.h
  %.2115181188 = phi i32 [ %.2115, %bb.h ], [ 65533, %.critedge ] ; 3 uses
  %.2183187 = phi ptr [ %.2, %bb.h ], [ %.1107.lcssa, %.critedge ]
  %i.ay = shl nuw i32 %.2115181188, 10
  %i.az = or disjoint i32 %i.ay, 1023
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.thread184
  %.028.i.i = phi i32 [ 0, %.thread184 ], [ %.1.i.i, %bb.i ] ; 2 uses
  %.01827.i.i = phi i32 [ 405, %.thread184 ], [ %.119.i.i, %bb.i ] ; 2 uses
  %.02026.i.i = phi i32 [ 0, %.thread184 ], [ %.121.i.i, %bb.i ]
  %i.ba = add nuw nsw i32 %.01827.i.i, %.028.i.i
  %i.bb = lshr i32 %i.ba, 1                       ; 4 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aEntry, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !576
  %.not25.i.i = icmp ult i32 %i.az, %i.be         ; 3 uses
  %i.bf = add nuw nsw i32 %i.bb, 1
  %i.bg = add nsw i32 %i.bb, -1
  %.121.i.i = select i1 %.not25.i.i, i32 %.02026.i.i, i32 %i.bb ; 2 uses
  %.119.i.i = select i1 %.not25.i.i, i32 %i.bg, i32 %.01827.i.i ; 2 uses
  %.1.i.i = select i1 %.not25.i.i, i32 %.028.i.i, i32 %i.bf ; 2 uses
  %.not.i.i = icmp slt i32 %.119.i.i, %.1.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.i, !llvm.loop !388

bb.j:                                             ; preds = %bb.i
  %i.bh = zext nneg i32 %.121.i.i to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aEntry, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !576 ; 2 uses
  %i.bk = lshr i32 %i.bj, 10
  %i.bl = and i32 %i.bj, 1023
  %i.bm = add nuw nsw i32 %i.bk, %i.bl
  %i.bn = icmp samesign uge i32 %.2115181188, %i.bm
  %i.bo = zext i1 %i.bn to i32
  br label %sqlite3FtsUnicodeIsalnum.exit.i

sqlite3FtsUnicodeIsalnum.exit.i:                  ; preds = %bb.j, %bb.h, %bb.g
  %.2182 = phi ptr [ %.2, %bb.g ], [ %.2183187, %bb.j ], [ %.2, %bb.h ] ; 2 uses
  %.2115180 = phi i32 [ %.2115, %bb.g ], [ %.2115181188, %bb.j ], [ %.2115, %bb.h ] ; 3 uses
  %.022.i.i = phi i32 [ %i.aw, %bb.g ], [ %i.bo, %bb.j ], [ 1, %bb.h ] ; 2 uses
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !2768 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader.i.i, label %unicodeIsAlnum.exit

.lr.ph.preheader.i.i:                             ; preds = %sqlite3FtsUnicodeIsalnum.exit.i
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !2760
  %i.bs = add nsw i32 %i.bp, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.preheader.i.i
  %.01731.i.i = phi i32 [ %.118.i.i, %bb.k ], [ %i.bs, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01930.i.i = phi i32 [ %.120.i.i, %bb.k ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bt = add nuw nsw i32 %.01930.i.i, %.01731.i.i
  %i.bu = lshr i32 %i.bt, 1                       ; 3 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !576 ; 2 uses
  %.not28.i.i = icmp eq i32 %.2115180, %i.bx
  br i1 %.not28.i.i, label %unicodeIsException.exit.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.by = icmp sgt i32 %.2115180, %i.bx           ; 2 uses
  %i.bz = add nuw nsw i32 %i.bu, 1
  %i.ca = add nsw i32 %i.bu, -1
  %.120.i.i = select i1 %i.by, i32 %i.bz, i32 %.01930.i.i ; 2 uses
  %.118.i.i = select i1 %i.by, i32 %.01731.i.i, i32 %i.ca ; 2 uses
  %.not.not.i.i = icmp slt i32 %.118.i.i, %.120.i.i
  br i1 %.not.not.i.i, label %unicodeIsException.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !6346

unicodeIsException.exit.loopexit.i:               ; preds = %bb.k, %.lr.ph.i.i
  %.3.i.ph.i = phi i32 [ 1, %.lr.ph.i.i ], [ 0, %bb.k ]
  %i.cb = xor i32 %.3.i.ph.i, %.022.i.i
  br label %unicodeIsAlnum.exit

unicodeIsAlnum.exit:                              ; preds = %sqlite3FtsUnicodeIsalnum.exit.i, %unicodeIsException.exit.loopexit.i
  %.3.i.i = phi i32 [ %.022.i.i, %sqlite3FtsUnicodeIsalnum.exit.i ], [ %i.cb, %unicodeIsException.exit.loopexit.i ]
  %.not = icmp eq i32 %.3.i.i, 0
  br i1 %.not, label %bb.b, label %bb.l, !llvm.loop !6347

bb.l:                                             ; preds = %unicodeIsAlnum.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2767 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.backedge, %bb.l
  %i.cg = phi ptr [ %i.cd, %bb.l ], [ %.pre, %.critedge4.backedge ] ; 2 uses
  %.4117 = phi i32 [ %.2115180, %bb.l ], [ %.7120.ph226, %.critedge4.backedge ] ; 14 uses
  %.0108 = phi ptr [ %i.cd, %bb.l ], [ %.3111, %.critedge4.backedge ] ; 2 uses
  %.4 = phi ptr [ %.2182, %bb.l ], [ %.7.ph228, %.critedge4.backedge ] ; 7 uses
  %.4268 = ptrtoaddr ptr %.4 to i64
  %i.ch = ptrtoint ptr %.0108 to i64              ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = load i32, ptr %i.ce, align 8, !tbaa !6354 ; 2 uses
  %i.cl = add nsw i32 %i.ck, -4
  %i.cm = sext i32 %i.cl to i64
  %.not135 = icmp slt i64 %i.cj, %i.cm
  br i1 %.not135, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.critedge4
  %i.cn = tail call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread189

sqlite3_realloc64.exit:                           ; preds = %bb.m
  %i.co = add nsw i32 %i.ck, 64
  %i.cp = sext i32 %i.co to i64
  %i.cq = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.cg, i64 noundef %i.cp), !inline_history !1272 ; 3 uses
  %.not136.not = icmp eq ptr %i.cq, null
  br i1 %.not136.not, label %.thread189, label %bb.n

bb.n:                                             ; preds = %sqlite3_realloc64.exit
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !2767
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.ch, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %i.ct
  store ptr %i.cq, ptr %i.cc, align 8, !tbaa !2767
  %i.cv = load i32, ptr %i.ce, align 8, !tbaa !6354
  %i.cw = add nsw i32 %i.cv, 64
  store i32 %i.cw, ptr %i.ce, align 8, !tbaa !6354
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge4
  %.2110 = phi ptr [ %i.cu, %bb.n ], [ %.0108, %.critedge4 ] ; 12 uses
  %i.cx = load i32, ptr %i.cf, align 8, !tbaa !2757 ; 2 uses
  %i.cy = icmp slt i32 %.4117, 128
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = add i32 %.4117, -65
  %or.cond.i = icmp ult i32 %i.cz, 26
  %i.da = or disjoint i32 %.4117, 32
  br i1 %or.cond.i, label %sqlite3FtsUnicodeFold.exit.thread, label %sqlite3FtsUnicodeFold.exit

bb.q:                                             ; preds = %bb.o
  %i.db = icmp samesign ult i32 %.4117, 65536
  br i1 %i.db, label %.preheader.i, label %.thread242

.preheader.i:                                     ; preds = %bb.q, %.preheader.i
  %.048.i = phi i32 [ %.1.i, %.preheader.i ], [ -1, %bb.q ]
  %.03447.i = phi i32 [ %.135.i, %.preheader.i ], [ 0, %bb.q ] ; 2 uses
  %.03646.i = phi i32 [ %.137.i, %.preheader.i ], [ 162, %bb.q ] ; 2 uses
  %i.dc = add nsw i32 %.03646.i, %.03447.i
  %i.dd = sdiv i32 %i.dc, 2                       ; 4 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr @sqlite3FtsUnicodeFold.aEntry, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !2770
  %i.dh = zext i16 %i.dg to i32
  %.not43.i = icmp samesign ult i32 %.4117, %i.dh ; 3 uses
  %i.di = add nsw i32 %i.dd, 1
  %i.dj = add nsw i32 %i.dd, -1
  %.137.i = select i1 %.not43.i, i32 %i.dj, i32 %.03646.i ; 2 uses
  %.135.i = select i1 %.not43.i, i32 %.03447.i, i32 %i.di ; 2 uses
  %.1.i = select i1 %.not43.i, i32 %.048.i, i32 %i.dd ; 2 uses
  %.not.i149 = icmp slt i32 %.137.i, %.135.i
  br i1 %.not.i149, label %bb.r, label %.preheader.i, !llvm.loop !6348

bb.r:                                             ; preds = %.preheader.i
  %i.dk = sext i32 %.1.i to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr @sqlite3FtsUnicodeFold.aEntry, i64 %i.dk ; 3 uses
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !2770
  %i.dn = zext i16 %i.dm to i32                   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !2771
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dq, %i.dn
  %i.ds = icmp samesign ult i32 %.4117, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !2772
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = xor i32 %.4117, %i.dn
  %i.dx = and i32 %i.dw, 1
  %i.dy = and i32 %i.dx, %i.dv
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = lshr i32 %i.dv, 1
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr @sqlite3Fts5UnicodeFold.aiOff, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !789
  %.tr.i = trunc nuw i32 %.4117 to i16
  %.narrow.i = add i16 %i.ed, %.tr.i
  %i.ee = zext i16 %.narrow.i to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.038.i = phi i32 [ %i.ee, %bb.t ], [ %.4117, %bb.s ], [ %.4117, %bb.r ] ; 5 uses
  %.not42.i = icmp eq i32 %i.cx, 0
  br i1 %.not42.i, label %sqlite3FtsUnicodeFold.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = shl nuw nsw i32 %.038.i, 3
  %i.eg = or disjoint i32 %i.ef, 7
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.029.i.i = phi i32 [ 0, %bb.v ], [ %.1.i.i151, %bb.w ] ; 2 uses
  %.01928.i.i = phi i32 [ 125, %bb.v ], [ %.120.i.i150, %bb.w ] ; 2 uses
  %.02127.i.i = phi i32 [ 0, %bb.v ], [ %.122.i.i, %bb.w ]
  %i.eh = add nsw i32 %.01928.i.i, %.029.i.i
  %i.ei = sdiv i32 %i.eh, 2                       ; 4 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [2 x i8], ptr @__const.fts5_remove_diacritic.aDia, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !789
  %i.em = zext i16 %i.el to i32
  %.not26.i.i = icmp samesign ult i32 %i.eg, %i.em ; 3 uses
  %i.en = add nsw i32 %i.ei, 1
  %i.eo = add nsw i32 %i.ei, -1
  %.122.i.i = select i1 %.not26.i.i, i32 %.02127.i.i, i32 %i.ei ; 2 uses
  %.120.i.i150 = select i1 %.not26.i.i, i32 %i.eo, i32 %.01928.i.i ; 2 uses
  %.1.i.i151 = select i1 %.not26.i.i, i32 %.029.i.i, i32 %i.en ; 2 uses
  %.not.i.i152 = icmp slt i32 %.120.i.i150, %.1.i.i151
  br i1 %.not.i.i152, label %bb.x, label %bb.w, !llvm.loop !6349

bb.x:                                             ; preds = %bb.w
  %.not45.i = icmp eq i32 %i.cx, 2
  %i.ep = sext i32 %.122.i.i to i64               ; 3 uses
  br i1 %.not45.i, label %._crit_edge.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds i8, ptr @__const.fts5_remove_diacritic.aChar, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !741
  %.not25.i.i153 = icmp sgt i8 %i.er, -1
  br i1 %.not25.i.i153, label %._crit_edge.i.i, label %sqlite3FtsUnicodeFold.exit

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.x
  %i.es = getelementptr inbounds [2 x i8], ptr @__const.fts5_remove_diacritic.aDia, i64 %i.ep
  %i.et = load i16, ptr %i.es, align 2, !tbaa !789
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = lshr i32 %i.eu, 3
  %i.ew = and i32 %i.eu, 7
  %i.ex = add nuw nsw i32 %i.ev, %i.ew
  %i.ey = icmp samesign ugt i32 %.038.i, %i.ex
  br i1 %i.ey, label %sqlite3FtsUnicodeFold.exit.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.ez = getelementptr inbounds i8, ptr @__const.fts5_remove_diacritic.aChar, i64 %i.ep
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !741
  %i.fb = and i8 %i.fa, 127
  %i.fc = zext nneg i8 %i.fb to i32
  br label %sqlite3FtsUnicodeFold.exit

.thread242:                                       ; preds = %bb.q
  %6 = add nsw i32 %.4117, -66560
  %or.cond3.i = icmp ult i32 %6, 40
  %7 = add nuw nsw i32 %.4117, 40
  %spec.select44.i = select i1 %or.cond3.i, i32 %7, i32 %.4117
  br label %bb.ae

sqlite3FtsUnicodeFold.exit:                       ; preds = %bb.p, %bb.u, %bb.y, %bb.z
  %.2.i = phi i32 [ %.038.i, %bb.u ], [ %i.fc, %bb.z ], [ %.4117, %bb.p ], [ %.038.i, %bb.y ] ; 2 uses
  %.not137 = icmp eq i32 %.2.i, 0
  br i1 %.not137, label %bb.af, label %sqlite3FtsUnicodeFold.exit.thread

sqlite3FtsUnicodeFold.exit.thread:                ; preds = %bb.p, %._crit_edge.i.i, %sqlite3FtsUnicodeFold.exit
  %.2.i201 = phi i32 [ %.2.i, %sqlite3FtsUnicodeFold.exit ], [ %i.da, %bb.p ], [ %.038.i, %._crit_edge.i.i ] ; 10 uses
  %i.fd = icmp slt i32 %.2.i201, 128
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %sqlite3FtsUnicodeFold.exit.thread
  %i.fe = trunc i32 %.2.i201 to i8
  %8 = getelementptr inbounds nuw i8, ptr %.2110, i64 1
  store i8 %i.fe, ptr %.2110, align 1, !tbaa !741
  br label %bb.af

bb.ab:                                            ; preds = %sqlite3FtsUnicodeFold.exit.thread
  %i.ff = icmp samesign ult i32 %.2.i201, 2048
  br i1 %i.ff, label %bb.ac, label %10

bb.ac:                                            ; preds = %bb.ab
  %i.fg = lshr i32 %.2.i201, 6
  %i.fh = trunc nuw nsw i32 %i.fg to i8
  %i.fi = or disjoint i8 %i.fh, -64
  %9 = getelementptr inbounds nuw i8, ptr %.2110, i64 1
  store i8 %i.fi, ptr %.2110, align 1, !tbaa !741
  %i.fj = trunc i32 %.2.i201 to i8
  %i.fk = and i8 %i.fj, 63
  %i.fl = or disjoint i8 %i.fk, -128
  %i.fm = getelementptr inbounds nuw i8, ptr %.2110, i64 2
  store i8 %i.fl, ptr %9, align 1, !tbaa !741
  br label %bb.af

10:                                               ; preds = %bb.ab
  %11 = icmp samesign ult i32 %.2.i201, 65536
  br i1 %11, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %10
  %12 = lshr i32 %.2.i201, 12
  %13 = trunc nuw nsw i32 %12 to i8
  %14 = or disjoint i8 %13, -32
  %i.fn = getelementptr inbounds nuw i8, ptr %.2110, i64 1
  store i8 %14, ptr %.2110, align 1, !tbaa !741
  %i.fo = lshr i32 %.2.i201, 6
  %i.fp = trunc i32 %i.fo to i8
  %15 = and i8 %i.fp, 63
  %16 = or disjoint i8 %15, -128
  %17 = getelementptr inbounds nuw i8, ptr %.2110, i64 2
  store i8 %16, ptr %i.fn, align 1, !tbaa !741
  %18 = trunc i32 %.2.i201 to i8
  %19 = and i8 %18, 63
  %20 = or disjoint i8 %19, -128
  %21 = getelementptr inbounds nuw i8, ptr %.2110, i64 3
  store i8 %20, ptr %17, align 1, !tbaa !741
  br label %bb.af

bb.ae:                                            ; preds = %.thread242, %10
  %.2.i201238241244 = phi i32 [ %spec.select44.i, %.thread242 ], [ %.2.i201, %10 ] ; 4 uses
  %22 = getelementptr inbounds nuw i8, ptr %.2110, i64 4
  %23 = lshr i32 %.2.i201238241244, 6
  %24 = lshr i32 %.2.i201238241244, 12
  %i.fq = lshr i32 %.2.i201238241244, 18
  %25 = trunc i32 %.2.i201238241244 to i8
  %i.fr = trunc i32 %23 to i8
  %26 = trunc i32 %24 to i8
  %27 = trunc i32 %i.fq to i8
  %28 = insertelement <4 x i8> poison, i8 %27, i64 0
  %29 = insertelement <4 x i8> %28, i8 %26, i64 1
  %30 = insertelement <4 x i8> %29, i8 %i.fr, i64 2
  %31 = insertelement <4 x i8> %30, i8 %25, i64 3
  %32 = and <4 x i8> %31, <i8 7, i8 63, i8 63, i8 63>
  %33 = or disjoint <4 x i8> %32, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %33, ptr %.2110, align 1, !tbaa !741
  br label %bb.af

bb.af:                                            ; preds = %bb.aa, %bb.ad, %bb.ae, %bb.ac, %sqlite3FtsUnicodeFold.exit
  %.3111 = phi ptr [ %8, %bb.aa ], [ %i.fm, %bb.ac ], [ %21, %bb.ad ], [ %22, %bb.ae ], [ %.2110, %sqlite3FtsUnicodeFold.exit ] ; 2 uses
  %.not138 = icmp ult ptr %.4, %i.l
  br i1 %.not138, label %bb.ag, label %sqlite3FtsUnicodeIsdiacritic.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 4 uses
  %i.ft = load i8, ptr %.4, align 1, !tbaa !741   ; 3 uses
  %i.fu = zext i8 %i.ft to i32
  %i.fv = icmp ugt i8 %i.ft, -65
  br i1 %i.fv, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fw = zext i8 %i.ft to i64
  %i.fx = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 -192
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !741
  %i.ga = zext i8 %i.fz to i32                    ; 2 uses
  %i.gb = icmp ult ptr %i.fs, %i.l
  br i1 %i.gb, label %.lr.ph256.preheader, label %.critedge2

.lr.ph256.preheader:                              ; preds = %bb.ah
  %scevgep267 = getelementptr i8, ptr %.4, i64 %i.o
  %i.gc = sub i64 0, %.4268
  %scevgep269 = getelementptr i8, ptr %scevgep267, i64 %i.gc ; 2 uses
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph256.preheader, %bb.ai
  %.5255 = phi ptr [ %i.gi, %bb.ai ], [ %i.fs, %.lr.ph256.preheader ] ; 3 uses
  %.5118254 = phi i32 [ %i.gk, %bb.ai ], [ %i.ga, %.lr.ph256.preheader ] ; 2 uses
  %i.gd = load i8, ptr %.5255, align 1, !tbaa !741
  %i.ge = zext i8 %i.gd to i32                    ; 2 uses
  %i.gf = and i32 %i.ge, 192
  %i.gg = icmp eq i32 %i.gf, 128
  br i1 %i.gg, label %bb.ai, label %.critedge2

bb.ai:                                            ; preds = %.lr.ph256
  %i.gh = shl i32 %.5118254, 6
  %i.gi = getelementptr inbounds nuw i8, ptr %.5255, i64 1 ; 2 uses
  %i.gj = and i32 %i.ge, 63
  %i.gk = or disjoint i32 %i.gj, %i.gh            ; 2 uses
  %exitcond270.not = icmp eq ptr %i.gi, %scevgep269
  br i1 %exitcond270.not, label %.critedge2, label %.lr.ph256, !llvm.loop !6350

.critedge2:                                       ; preds = %.lr.ph256, %bb.ai, %bb.ah
  %.5118.lcssa = phi i32 [ %i.ga, %bb.ah ], [ %i.gk, %bb.ai ], [ %.5118254, %.lr.ph256 ] ; 4 uses
  %.5.lcssa = phi ptr [ %i.fs, %bb.ah ], [ %scevgep269, %bb.ai ], [ %.5255, %.lr.ph256 ] ; 2 uses
  %i.gl = icmp ult i32 %.5118.lcssa, 128
  %i.gm = and i32 %.5118.lcssa, -2048
  %i.gn = icmp eq i32 %i.gm, 55296
  %or.cond145 = or i1 %i.gl, %i.gn
  %i.go = and i32 %.5118.lcssa, -2
  %i.gp = icmp eq i32 %i.go, 65534
  %or.cond147 = or i1 %i.gp, %or.cond145
  br i1 %or.cond147, label %.thread230, label %bb.aj

bb.aj:                                            ; preds = %.critedge2, %bb.ag
  %.7120.ph = phi i32 [ %.5118.lcssa, %.critedge2 ], [ %i.fu, %bb.ag ] ; 7 uses
  %.7.ph = phi ptr [ %.5.lcssa, %.critedge2 ], [ %i.fs, %bb.ag ] ; 3 uses
  %i.gq = icmp ult i32 %.7120.ph, 128
  br i1 %i.gq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gr = lshr i32 %.7120.ph, 5
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aAscii, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !576
  %i.gv = and i32 %.7120.ph, 31
  %i.gw = xor i32 %i.gu, -1
  %i.gx = lshr i32 %i.gw, %i.gv
  %i.gy = and i32 %i.gx, 1
  br label %sqlite3FtsUnicodeIsalnum.exit.i154

bb.al:                                            ; preds = %bb.aj
  %i.gz = icmp ult i32 %.7120.ph, 4194304
  br i1 %i.gz, label %.thread230, label %sqlite3FtsUnicodeIsalnum.exit.i154

.thread230:                                       ; preds = %.critedge2, %bb.al
  %.7120.ph227234 = phi i32 [ %.7120.ph, %bb.al ], [ 65533, %.critedge2 ] ; 3 uses
  %.7.ph229233 = phi ptr [ %.7.ph, %bb.al ], [ %.5.lcssa, %.critedge2 ]
  %i.ha = shl nuw i32 %.7120.ph227234, 10
  %i.hb = or disjoint i32 %i.ha, 1023
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.thread230
  %.028.i.i167 = phi i32 [ 0, %.thread230 ], [ %.1.i.i173, %bb.am ] ; 2 uses
  %.01827.i.i168 = phi i32 [ 405, %.thread230 ], [ %.119.i.i172, %bb.am ] ; 2 uses
  %.02026.i.i169 = phi i32 [ 0, %.thread230 ], [ %.121.i.i171, %bb.am ]
  %i.hc = add nuw nsw i32 %.01827.i.i168, %.028.i.i167
  %i.hd = lshr i32 %i.hc, 1                       ; 4 uses
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aEntry, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !576
  %.not25.i.i170 = icmp ult i32 %i.hb, %i.hg      ; 3 uses
  %i.hh = add nuw nsw i32 %i.hd, 1
  %i.hi = add nsw i32 %i.hd, -1
  %.121.i.i171 = select i1 %.not25.i.i170, i32 %.02026.i.i169, i32 %i.hd ; 2 uses
  %.119.i.i172 = select i1 %.not25.i.i170, i32 %i.hi, i32 %.01827.i.i168 ; 2 uses
  %.1.i.i173 = select i1 %.not25.i.i170, i32 %.028.i.i167, i32 %i.hh ; 2 uses
  %.not.i.i174 = icmp slt i32 %.119.i.i172, %.1.i.i173
  br i1 %.not.i.i174, label %bb.an, label %bb.am, !llvm.loop !388

bb.an:                                            ; preds = %bb.am
  %i.hj = zext nneg i32 %.121.i.i171 to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aEntry, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !576 ; 2 uses
  %i.hm = lshr i32 %i.hl, 10
  %i.hn = and i32 %i.hl, 1023
  %i.ho = add nuw nsw i32 %i.hm, %i.hn
  %i.hp = icmp samesign uge i32 %.7120.ph227234, %i.ho
  %i.hq = zext i1 %i.hp to i32
  br label %sqlite3FtsUnicodeIsalnum.exit.i154

sqlite3FtsUnicodeIsalnum.exit.i154:               ; preds = %bb.an, %bb.al, %bb.ak
  %.7.ph228 = phi ptr [ %.7.ph, %bb.ak ], [ %.7.ph229233, %bb.an ], [ %.7.ph, %bb.al ] ; 3 uses
  %.7120.ph226 = phi i32 [ %.7120.ph, %bb.ak ], [ %.7120.ph227234, %bb.an ], [ %.7120.ph, %bb.al ] ; 6 uses
  %.022.i.i155 = phi i32 [ %i.gy, %bb.ak ], [ %i.hq, %bb.an ], [ 1, %bb.al ] ; 2 uses
  %i.hr = load i32, ptr %i.m, align 4, !tbaa !2768 ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.lr.ph.preheader.i.i157, label %unicodeIsAlnum.exit175

.lr.ph.preheader.i.i157:                          ; preds = %sqlite3FtsUnicodeIsalnum.exit.i154
  %i.ht = load ptr, ptr %i.n, align 8, !tbaa !2760
  %i.hu = add nsw i32 %i.hr, -1
  br label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %bb.ao, %.lr.ph.preheader.i.i157
  %.01731.i.i159 = phi i32 [ %.118.i.i163, %bb.ao ], [ %i.hu, %.lr.ph.preheader.i.i157 ] ; 2 uses
  %.01930.i.i160 = phi i32 [ %.120.i.i162, %bb.ao ], [ 0, %.lr.ph.preheader.i.i157 ] ; 2 uses
  %i.hv = add nuw nsw i32 %.01930.i.i160, %.01731.i.i159
  %i.hw = lshr i32 %i.hv, 1                       ; 3 uses
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !576 ; 2 uses
  %.not28.i.i161 = icmp eq i32 %.7120.ph226, %i.hz
  br i1 %.not28.i.i161, label %unicodeIsException.exit.loopexit.i165, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i158
  %i.ia = icmp sgt i32 %.7120.ph226, %i.hz        ; 2 uses
  %i.ib = add nuw nsw i32 %i.hw, 1
  %i.ic = add nsw i32 %i.hw, -1
  %.120.i.i162 = select i1 %i.ia, i32 %i.ib, i32 %.01930.i.i160 ; 2 uses
  %.118.i.i163 = select i1 %i.ia, i32 %.01731.i.i159, i32 %i.ic ; 2 uses
  %.not.not.i.i164 = icmp slt i32 %.118.i.i163, %.120.i.i162
  br i1 %.not.not.i.i164, label %unicodeIsException.exit.loopexit.i165, label %.lr.ph.i.i158, !llvm.loop !6346

unicodeIsException.exit.loopexit.i165:            ; preds = %bb.ao, %.lr.ph.i.i158
  %.3.i.ph.i166 = phi i32 [ 1, %.lr.ph.i.i158 ], [ 0, %bb.ao ]
  %i.id = xor i32 %.3.i.ph.i166, %.022.i.i155
  br label %unicodeIsAlnum.exit175

unicodeIsAlnum.exit175:                           ; preds = %sqlite3FtsUnicodeIsalnum.exit.i154, %unicodeIsException.exit.loopexit.i165
  %.3.i.i156 = phi i32 [ %.022.i.i155, %sqlite3FtsUnicodeIsalnum.exit.i154 ], [ %i.id, %unicodeIsException.exit.loopexit.i165 ]
  %.not139 = icmp eq i32 %.3.i.i156, 0
  br i1 %.not139, label %bb.ap, label %.critedge4.backedge

bb.ap:                                            ; preds = %unicodeIsAlnum.exit175
  %i.ie = add i32 %.7120.ph226, -818
  %or.cond.i176 = icmp ult i32 %i.ie, -50
  br i1 %or.cond.i176, label %sqlite3FtsUnicodeIsdiacritic.exit.thread, label %sqlite3FtsUnicodeIsdiacritic.exit

sqlite3FtsUnicodeIsdiacritic.exit:                ; preds = %bb.ap
  %i.if = icmp samesign ult i32 %.7120.ph226, 800 ; 2 uses
  %. = select i1 %i.if, i32 -768, i32 -800
  %.289 = select i1 %i.if, i32 134389727, i32 221688
  %i.ig = add nsw i32 %.7120.ph226, %.
  %i.ih = shl nuw i32 1, %i.ig
  %i.ii = and i32 %i.ih, %.289
  %.not140 = icmp eq i32 %i.ii, 0
  br i1 %.not140, label %sqlite3FtsUnicodeIsdiacritic.exit.thread, label %.critedge4.backedge

.critedge4.backedge:                              ; preds = %sqlite3FtsUnicodeIsdiacritic.exit, %unicodeIsAlnum.exit175
  %.pre = load ptr, ptr %i.cc, align 8, !tbaa !2767
  br label %.critedge4, !llvm.loop !6351

sqlite3FtsUnicodeIsdiacritic.exit.thread:         ; preds = %bb.ap, %bb.af, %sqlite3FtsUnicodeIsdiacritic.exit
  %.7213 = phi ptr [ %.7.ph228, %sqlite3FtsUnicodeIsdiacritic.exit ], [ %.4, %bb.af ], [ %.7.ph228, %bb.ap ]
  %i.ij = load ptr, ptr %i.b, align 8, !tbaa !2763
  %i.ik = ptrtoint ptr %.7213 to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = trunc i64 %i.im to i32
  store i32 %i.in, ptr %i.e, align 4, !tbaa !6353
  %i.io = load ptr, ptr %i.cc, align 8, !tbaa !2767 ; 2 uses
  store ptr %i.io, ptr %1, align 8, !tbaa !747
  %i.ip = ptrtoint ptr %.3111 to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = trunc i64 %i.ir to i32
  store i32 %i.is, ptr %2, align 4, !tbaa !576
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !2763
  %i.iu = ptrtoint ptr %.0105 to i64
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = trunc i64 %i.iw to i32
  store i32 %i.ix, ptr %3, align 4, !tbaa !576
  %i.iy = ptrtoint ptr %.4 to i64
  %i.iz = sub i64 %i.iy, %i.iv
  %i.ja = trunc i64 %i.iz to i32
  store i32 %i.ja, ptr %4, align 4, !tbaa !576
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !6355 ; 2 uses
end_hunk_0
