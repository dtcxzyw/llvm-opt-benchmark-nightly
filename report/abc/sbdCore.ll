Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCore?download=true
inline.NumInlined: 748
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Sbd_ManMergeCuts:bb.a
  %i.az = ptrtoaddr ptr %.val95.val to i64
  %i.ba = shl nsw i64 %i.ag, 2
  %i.bb = add i64 %.idx.i, %i.az
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = add i64 %i.bc, 4
  %i.be = add i64 %.033.lcssa.i228, 4
  %i.bf = call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.be)
  %i.bg = xor i64 %.033.lcssa.i228, -1
  %i.bh = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 44
  %i.bk = sub i64 %.033.lcssa.i228, %.036.lcssa.i227
  %diff.check = icmp ugt i64 %i.bk, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph51.i.preheader385, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph51.i.preheader
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bl = shl i64 %n.vec, 2                       ; 2 uses
  %i.bm = getelementptr i8, ptr %.033.lcssa.i, i64 %i.bl
  %i.bn = getelementptr i8, ptr %.036.lcssa.i, i64 %i.bl ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.033.lcssa.i, i64 %i.bo ; 2 uses
  %next.gep229 = getelementptr i8, ptr %.036.lcssa.i, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !8
  %wide.load230 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !8
  %i.bq = getelementptr i8, ptr %next.gep229, i64 16
  store <4 x i32> %wide.load, ptr %next.gep229, align 4, !tbaa !8
  store <4 x i32> %wide.load230, ptr %i.bq, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph51.i.preheader385

.lr.ph51.i.preheader385:                          ; preds = %.lr.ph51.i.preheader, %middle.block
  %.23550.i.ph = phi ptr [ %.033.lcssa.i, %.lr.ph51.i.preheader ], [ %i.bm, %middle.block ]
  %.23849.i.ph = phi ptr [ %.036.lcssa.i, %.lr.ph51.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph51.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.03646.i = phi ptr [ %.036.i, %bb.f ], [ %.03643.i, %bb.a ] ; 4 uses
  %.045.i = phi ptr [ %.1.i, %bb.f ], [ %i.ao, %bb.a ] ; 4 uses
  %.03344.i = phi ptr [ %.134.i, %bb.f ], [ %i.an, %bb.a ] ; 4 uses
  %i.bs = load i32, ptr %.03344.i, align 4, !tbaa !8 ; 4 uses
  %i.bt = load i32, ptr %.045.i, align 4, !tbaa !8 ; 3 uses
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.03344.i, i64 4
  store i32 %i.bs, ptr %.03646.i, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %.045.i, i64 4
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.i
  %i.bx = icmp slt i32 %i.bs, %i.bt
  br i1 %i.bx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %.03344.i, i64 4
  store i32 %i.bs, ptr %.03646.i, align 4, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %.045.i, i64 4
  store i32 %i.bt, ptr %.03646.i, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.134.i = phi ptr [ %i.bv, %bb.b ], [ %i.by, %bb.d ], [ %.03344.i, %bb.e ] ; 3 uses
  %.1.i = phi ptr [ %i.bw, %bb.b ], [ %.045.i, %bb.d ], [ %i.bz, %bb.e ] ; 3 uses
  %.036.i = getelementptr inbounds nuw i8, ptr %.03646.i, i64 4 ; 2 uses
  %i.ca = icmp ult ptr %.134.i, %i.ar
  %i.cb = icmp ult ptr %.1.i, %i.au
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.lr.ph.i, label %.preheader42.i, !llvm.loop !336

.preheader.i:                                     ; preds = %.lr.ph51.i, %middle.block, %.preheader42.i
  %.238.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader42.i ], [ %i.bn, %middle.block ], [ %i.cz, %.lr.ph51.i ] ; 5 uses
  %i.cd = icmp ult ptr %.0.lcssa.i, %i.au
  br i1 %i.cd, label %.lr.ph55.i.preheader, label %Sbd_CutMergeSimple.exit

.lr.ph55.i.preheader:                             ; preds = %.preheader.i
  %.238.lcssa.i233 = ptrtoaddr ptr %.238.lcssa.i to i64
  %i.ce = ptrtoaddr ptr %.val95.val to i64
  %i.cf = shl nsw i64 %i.aj, 2
  %i.cg = add i64 %.idx57.i, %i.ce
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = add i64 %i.ch, 4
  %i.cj = add i64 %.0.lcssa.i234, 4
  %i.ck = call i64 @llvm.umax.i64(i64 %i.ci, i64 %i.cj)
  %i.cl = xor i64 %.0.lcssa.i234, -1
  %i.cm = add i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check237 = icmp ult i64 %i.cm, 44
  %i.cp = sub i64 %.0.lcssa.i234, %.238.lcssa.i233
  %diff.check235 = icmp ugt i64 %i.cp, -32
  %or.cond365 = select i1 %min.iters.check237, i1 true, i1 %diff.check235
  br i1 %or.cond365, label %.lr.ph55.i.preheader383, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph55.i.preheader
  %n.vec239 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cq = shl i64 %n.vec239, 2                    ; 2 uses
  %i.cr = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cq
  %i.cs = getelementptr i8, ptr %.238.lcssa.i, i64 %i.cq ; 2 uses
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next246, %vector.body240 ] ; 2 uses
  %i.ct = shl i64 %index241, 2                    ; 2 uses
  %next.gep242 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ct ; 2 uses
  %next.gep243 = getelementptr i8, ptr %.238.lcssa.i, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep242, i64 16
  %wide.load244 = load <4 x i32>, ptr %next.gep242, align 4, !tbaa !8
  %wide.load245 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !8
  %i.cv = getelementptr i8, ptr %next.gep243, i64 16
  store <4 x i32> %wide.load244, ptr %next.gep243, align 4, !tbaa !8
  store <4 x i32> %wide.load245, ptr %i.cv, align 4, !tbaa !8
  %index.next246 = add nuw i64 %index241, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next246, %n.vec239
  br i1 %i.cw, label %middle.block247, label %vector.body240, !llvm.loop !341

middle.block247:                                  ; preds = %vector.body240
  %cmp.n248 = icmp eq i64 %i.co, %n.vec239
  br i1 %cmp.n248, label %Sbd_CutMergeSimple.exit.loopexit, label %.lr.ph55.i.preheader383

.lr.ph55.i.preheader383:                          ; preds = %.lr.ph55.i.preheader, %middle.block247
  %.254.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph55.i.preheader ], [ %i.cr, %middle.block247 ]
  %.353.i.ph = phi ptr [ %.238.lcssa.i, %.lr.ph55.i.preheader ], [ %i.cs, %middle.block247 ]
  br label %.lr.ph55.i

.lr.ph51.i:                                       ; preds = %.lr.ph51.i.preheader385, %.lr.ph51.i
  %.23550.i = phi ptr [ %i.cx, %.lr.ph51.i ], [ %.23550.i.ph, %.lr.ph51.i.preheader385 ] ; 2 uses
  %.23849.i = phi ptr [ %i.cz, %.lr.ph51.i ], [ %.23849.i.ph, %.lr.ph51.i.preheader385 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.23550.i, i64 4 ; 2 uses
  %i.cy = load i32, ptr %.23550.i, align 4, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %.23849.i, i64 4 ; 2 uses
  store i32 %i.cy, ptr %.23849.i, align 4, !tbaa !8
  %i.da = icmp ult ptr %i.cx, %i.ar
  br i1 %i.da, label %.lr.ph51.i, label %.preheader.i, !llvm.loop !342

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.preheader383, %.lr.ph55.i
  %.254.i = phi ptr [ %i.db, %.lr.ph55.i ], [ %.254.i.ph, %.lr.ph55.i.preheader383 ] ; 2 uses
  %.353.i = phi ptr [ %i.dd, %.lr.ph55.i ], [ %.353.i.ph, %.lr.ph55.i.preheader383 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.254.i, i64 4 ; 2 uses
  %i.dc = load i32, ptr %.254.i, align 4, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %.353.i, i64 4 ; 2 uses
  store i32 %i.dc, ptr %.353.i, align 4, !tbaa !8
  %i.de = icmp ult ptr %i.db, %i.au
  br i1 %i.de, label %.lr.ph55.i, label %Sbd_CutMergeSimple.exit.loopexit, !llvm.loop !343

Sbd_CutMergeSimple.exit.loopexit:                 ; preds = %.lr.ph55.i, %middle.block247
  %.lcssa225 = phi ptr [ %i.cs, %middle.block247 ], [ %i.dd, %.lr.ph55.i ]
  %.pre = load i32, ptr %i.e, align 4, !tbaa !8
  %.pre182 = load i32, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %.pre184 = sext i32 %.pre182 to i64
  %.pre185 = shl nsw i64 %.pre184, 2
  br label %Sbd_CutMergeSimple.exit

Sbd_CutMergeSimple.exit:                          ; preds = %Sbd_CutMergeSimple.exit.loopexit, %.preheader.i
  %.idx57.i97.pre-phi = phi i64 [ %.pre185, %Sbd_CutMergeSimple.exit.loopexit ], [ %.idx57.i, %.preheader.i ] ; 2 uses
  %i.df = phi i32 [ %.pre182, %Sbd_CutMergeSimple.exit.loopexit ], [ %i.as, %.preheader.i ]
  %i.dg = phi i32 [ %.pre, %Sbd_CutMergeSimple.exit.loopexit ], [ 1, %.preheader.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.lcssa225, %Sbd_CutMergeSimple.exit.loopexit ], [ %.238.lcssa.i, %.preheader.i ]
  %i.dh = ptrtoint ptr %.3.lcssa.i to i64
  %i.di = ptrtoint ptr %i.a to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = lshr exact i64 %i.dj, 2
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dm, ptr %i.a, align 16, !tbaa !8
  %i.dn = sext i32 %i.dg to i64
  %.idx.i96 = shl nsw i64 %i.dn, 2                ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.al, i64 %.idx.i96 ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %i.ao, i64 %.idx57.i97.pre-phi ; 3 uses
  %.03643.i98 = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.dq = icmp sgt i32 %i.dg, 0
  %i.dr = icmp sgt i32 %i.df, 0
  %i.ds = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %i.ds, label %.lr.ph.i112, label %.preheader42.i99

.preheader42.i99:                                 ; preds = %bb.k, %Sbd_CutMergeSimple.exit
  %.033.lcssa.i100 = phi ptr [ %i.al, %Sbd_CutMergeSimple.exit ], [ %.134.i116, %bb.k ] ; 5 uses
  %.0.lcssa.i101 = phi ptr [ %i.ao, %Sbd_CutMergeSimple.exit ], [ %.1.i117, %bb.k ] ; 5 uses
  %.036.lcssa.i102 = phi ptr [ %.03643.i98, %Sbd_CutMergeSimple.exit ], [ %.036.i118, %bb.k ] ; 5 uses
  %.0.lcssa.i101272 = ptrtoaddr ptr %.0.lcssa.i101 to i64 ; 3 uses
  %i.dt = icmp ult ptr %.033.lcssa.i100, %i.do
  br i1 %i.dt, label %.lr.ph51.i109.preheader, label %.preheader.i103

.lr.ph51.i109.preheader:                          ; preds = %.preheader42.i99
  %.033.lcssa.i100253 = ptrtoaddr ptr %.033.lcssa.i100 to i64 ; 2 uses
  %.036.lcssa.i102252 = ptrtoaddr ptr %.036.lcssa.i102 to i64
  %i.du = ptrtoaddr ptr %i.e to i64
  %i.dv = add i64 %.idx.i96, %i.du
  %2 = or disjoint i64 %i.dv, 3
  %3 = sub i64 %2, %.033.lcssa.i100253            ; 2 uses
  %i.dw = lshr i64 %3, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check256 = icmp ult i64 %3, 44
  %i.dy = sub i64 %.033.lcssa.i100253, %.036.lcssa.i102252
  %diff.check254 = icmp ugt i64 %i.dy, -32
  %or.cond366 = select i1 %min.iters.check256, i1 true, i1 %diff.check254
  br i1 %or.cond366, label %.lr.ph51.i109.preheader381, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph51.i109.preheader
  %n.vec258 = and i64 %i.dx, 9223372036854775800  ; 3 uses
  %i.dz = shl i64 %n.vec258, 2                    ; 2 uses
  %i.ea = getelementptr i8, ptr %.033.lcssa.i100, i64 %i.dz
  %i.eb = getelementptr i8, ptr %.036.lcssa.i102, i64 %i.dz ; 2 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next265, %vector.body259 ] ; 2 uses
  %i.ec = shl i64 %index260, 2                    ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.033.lcssa.i100, i64 %i.ec ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.036.lcssa.i102, i64 %i.ec ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep261, i64 16
  %wide.load263 = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !8
  %wide.load264 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !8
  %i.ee = getelementptr i8, ptr %next.gep262, i64 16
  store <4 x i32> %wide.load263, ptr %next.gep262, align 4, !tbaa !8
  store <4 x i32> %wide.load264, ptr %i.ee, align 4, !tbaa !8
  %index.next265 = add nuw i64 %index260, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.ef, label %middle.block266, label %vector.body259, !llvm.loop !344

middle.block266:                                  ; preds = %vector.body259
  %cmp.n267 = icmp eq i64 %i.dx, %n.vec258
  br i1 %cmp.n267, label %.preheader.i103, label %.lr.ph51.i109.preheader381

.lr.ph51.i109.preheader381:                       ; preds = %.lr.ph51.i109.preheader, %middle.block266
  %.23550.i110.ph = phi ptr [ %.033.lcssa.i100, %.lr.ph51.i109.preheader ], [ %i.ea, %middle.block266 ]
  %.23849.i111.ph = phi ptr [ %.036.lcssa.i102, %.lr.ph51.i109.preheader ], [ %i.eb, %middle.block266 ]
  br label %.lr.ph51.i109

.lr.ph.i112:                                      ; preds = %Sbd_CutMergeSimple.exit, %bb.k
  %.03646.i113 = phi ptr [ %.036.i118, %bb.k ], [ %.03643.i98, %Sbd_CutMergeSimple.exit ] ; 4 uses
  %.045.i114 = phi ptr [ %.1.i117, %bb.k ], [ %i.ao, %Sbd_CutMergeSimple.exit ] ; 4 uses
  %.03344.i115 = phi ptr [ %.134.i116, %bb.k ], [ %i.al, %Sbd_CutMergeSimple.exit ] ; 4 uses
  %i.eg = load i32, ptr %.03344.i115, align 4, !tbaa !8 ; 4 uses
  %i.eh = load i32, ptr %.045.i114, align 4, !tbaa !8 ; 3 uses
  %i.ei = icmp eq i32 %i.eg, %i.eh
  br i1 %i.ei, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i112
  %i.ej = getelementptr inbounds nuw i8, ptr %.03344.i115, i64 4
  store i32 %i.eg, ptr %.03646.i113, align 4, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %.045.i114, i64 4
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i112
  %i.el = icmp slt i32 %i.eg, %i.eh
  br i1 %i.el, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.em = getelementptr inbounds nuw i8, ptr %.03344.i115, i64 4
  store i32 %i.eg, ptr %.03646.i113, align 4, !tbaa !8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.en = getelementptr inbounds nuw i8, ptr %.045.i114, i64 4
  store i32 %i.eh, ptr %.03646.i113, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i116 = phi ptr [ %i.ej, %bb.g ], [ %i.em, %bb.i ], [ %.03344.i115, %bb.j ] ; 3 uses
  %.1.i117 = phi ptr [ %i.ek, %bb.g ], [ %.045.i114, %bb.i ], [ %i.en, %bb.j ] ; 3 uses
  %.036.i118 = getelementptr inbounds nuw i8, ptr %.03646.i113, i64 4 ; 2 uses
  %i.eo = icmp ult ptr %.134.i116, %i.do
  %i.ep = icmp ult ptr %.1.i117, %i.dp
  %i.eq = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %i.eq, label %.lr.ph.i112, label %.preheader42.i99, !llvm.loop !336

.preheader.i103:                                  ; preds = %.lr.ph51.i109, %middle.block266, %.preheader42.i99
  %.238.lcssa.i104 = phi ptr [ %.036.lcssa.i102, %.preheader42.i99 ], [ %i.eb, %middle.block266 ], [ %i.fn, %.lr.ph51.i109 ] ; 5 uses
  %i.er = icmp ult ptr %.0.lcssa.i101, %i.dp
  br i1 %i.er, label %.lr.ph55.i106.preheader, label %Sbd_CutMergeSimple.exit119

.lr.ph55.i106.preheader:                          ; preds = %.preheader.i103
  %.238.lcssa.i104271 = ptrtoaddr ptr %.238.lcssa.i104 to i64
  %i.es = ptrtoaddr ptr %.val95.val to i64
  %i.et = shl nsw i64 %i.aj, 2
  %i.eu = add i64 %.idx57.i97.pre-phi, %i.es
  %i.ev = add i64 %i.eu, %i.et
  %i.ew = add i64 %i.ev, 4
  %i.ex = add i64 %.0.lcssa.i101272, 4
  %i.ey = call i64 @llvm.umax.i64(i64 %i.ew, i64 %i.ex)
  %i.ez = xor i64 %.0.lcssa.i101272, -1
  %i.fa = add i64 %i.ey, %i.ez                    ; 2 uses
  %i.fb = lshr i64 %i.fa, 2
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check275 = icmp ult i64 %i.fa, 44
  %i.fd = sub i64 %.0.lcssa.i101272, %.238.lcssa.i104271
  %diff.check273 = icmp ugt i64 %i.fd, -32
  %or.cond367 = select i1 %min.iters.check275, i1 true, i1 %diff.check273
  br i1 %or.cond367, label %.lr.ph55.i106.preheader379, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph55.i106.preheader
  %n.vec277 = and i64 %i.fc, 9223372036854775800  ; 3 uses
  %i.fe = shl i64 %n.vec277, 2                    ; 2 uses
  %i.ff = getelementptr i8, ptr %.0.lcssa.i101, i64 %i.fe
  %i.fg = getelementptr i8, ptr %.238.lcssa.i104, i64 %i.fe ; 2 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 2 uses
  %i.fh = shl i64 %index279, 2                    ; 2 uses
  %next.gep280 = getelementptr i8, ptr %.0.lcssa.i101, i64 %i.fh ; 2 uses
  %next.gep281 = getelementptr i8, ptr %.238.lcssa.i104, i64 %i.fh ; 2 uses
  %i.fi = getelementptr i8, ptr %next.gep280, i64 16
  %wide.load282 = load <4 x i32>, ptr %next.gep280, align 4, !tbaa !8
  %wide.load283 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !8
  %i.fj = getelementptr i8, ptr %next.gep281, i64 16
  store <4 x i32> %wide.load282, ptr %next.gep281, align 4, !tbaa !8
  store <4 x i32> %wide.load283, ptr %i.fj, align 4, !tbaa !8
  %index.next284 = add nuw i64 %index279, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.fk, label %middle.block285, label %vector.body278, !llvm.loop !345

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %i.fc, %n.vec277
  br i1 %cmp.n286, label %Sbd_CutMergeSimple.exit119, label %.lr.ph55.i106.preheader379

.lr.ph55.i106.preheader379:                       ; preds = %.lr.ph55.i106.preheader, %middle.block285
  %.254.i107.ph = phi ptr [ %.0.lcssa.i101, %.lr.ph55.i106.preheader ], [ %i.ff, %middle.block285 ]
  %.353.i108.ph = phi ptr [ %.238.lcssa.i104, %.lr.ph55.i106.preheader ], [ %i.fg, %middle.block285 ]
  br label %.lr.ph55.i106

.lr.ph51.i109:                                    ; preds = %.lr.ph51.i109.preheader381, %.lr.ph51.i109
  %.23550.i110 = phi ptr [ %i.fl, %.lr.ph51.i109 ], [ %.23550.i110.ph, %.lr.ph51.i109.preheader381 ] ; 2 uses
  %.23849.i111 = phi ptr [ %i.fn, %.lr.ph51.i109 ], [ %.23849.i111.ph, %.lr.ph51.i109.preheader381 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.23550.i110, i64 4 ; 2 uses
  %i.fm = load i32, ptr %.23550.i110, align 4, !tbaa !8
  %i.fn = getelementptr inbounds nuw i8, ptr %.23849.i111, i64 4 ; 2 uses
  store i32 %i.fm, ptr %.23849.i111, align 4, !tbaa !8
  %i.fo = icmp ult ptr %i.fl, %i.do
  br i1 %i.fo, label %.lr.ph51.i109, label %.preheader.i103, !llvm.loop !346

.lr.ph55.i106:                                    ; preds = %.lr.ph55.i106.preheader379, %.lr.ph55.i106
  %.254.i107 = phi ptr [ %i.fp, %.lr.ph55.i106 ], [ %.254.i107.ph, %.lr.ph55.i106.preheader379 ] ; 2 uses
  %.353.i108 = phi ptr [ %i.fr, %.lr.ph55.i106 ], [ %.353.i108.ph, %.lr.ph55.i106.preheader379 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.254.i107, i64 4 ; 2 uses
  %i.fq = load i32, ptr %.254.i107, align 4, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %.353.i108, i64 4 ; 2 uses
  store i32 %i.fq, ptr %.353.i108, align 4, !tbaa !8
  %i.fs = icmp ult ptr %i.fp, %i.dp
  br i1 %i.fs, label %.lr.ph55.i106, label %Sbd_CutMergeSimple.exit119, !llvm.loop !347

Sbd_CutMergeSimple.exit119:                       ; preds = %.lr.ph55.i106, %middle.block285, %.preheader.i103
  %.3.lcssa.i105 = phi ptr [ %.238.lcssa.i104, %.preheader.i103 ], [ %i.fg, %middle.block285 ], [ %i.fr, %.lr.ph55.i106 ]
  %i.ft = ptrtoint ptr %.3.lcssa.i105 to i64
  %i.fu = ptrtoint ptr %i.b to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = lshr exact i64 %i.fv, 2
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = add i32 %i.fx, -1                       ; 2 uses
  store i32 %i.fy, ptr %i.b, align 16, !tbaa !8
  %i.fz = load i32, ptr %i.ah, align 4, !tbaa !8  ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %.idx.i120 = shl nsw i64 %i.ga, 2               ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.an, i64 %.idx.i120 ; 3 uses
  %i.gc = load i32, ptr %i.f, align 4, !tbaa !8   ; 3 uses
  %i.gd = sext i32 %i.gc to i64
  %.idx57.i121 = shl nsw i64 %i.gd, 2             ; 3 uses
  %i.ge = getelementptr inbounds i8, ptr %i.am, i64 %.idx57.i121 ; 3 uses
  %.03643.i122 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.gf = icmp sgt i32 %i.fz, 0
  %i.gg = icmp sgt i32 %i.gc, 0
  %i.gh = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %i.gh, label %.lr.ph.i136, label %.preheader42.i123

.preheader42.i123:                                ; preds = %bb.p, %Sbd_CutMergeSimple.exit119
  %.033.lcssa.i124 = phi ptr [ %i.an, %Sbd_CutMergeSimple.exit119 ], [ %.134.i140, %bb.p ] ; 5 uses
  %.0.lcssa.i125 = phi ptr [ %i.am, %Sbd_CutMergeSimple.exit119 ], [ %.1.i141, %bb.p ] ; 5 uses
  %.036.lcssa.i126 = phi ptr [ %.03643.i122, %Sbd_CutMergeSimple.exit119 ], [ %.036.i142, %bb.p ] ; 5 uses
  %.0.lcssa.i125310 = ptrtoaddr ptr %.0.lcssa.i125 to i64 ; 2 uses
  %i.gi = icmp ult ptr %.033.lcssa.i124, %i.gb
  br i1 %i.gi, label %.lr.ph51.i133.preheader, label %.preheader.i127

.lr.ph51.i133.preheader:                          ; preds = %.preheader42.i123
  %.033.lcssa.i124291 = ptrtoaddr ptr %.033.lcssa.i124 to i64 ; 3 uses
  %.036.lcssa.i126290 = ptrtoaddr ptr %.036.lcssa.i126 to i64
  %i.gj = ptrtoaddr ptr %.val95.val to i64
  %i.gk = shl nsw i64 %i.ag, 2
  %i.gl = add i64 %.idx.i120, %i.gj
  %i.gm = add i64 %i.gl, %i.gk
  %i.gn = add i64 %i.gm, 4
  %i.go = add i64 %.033.lcssa.i124291, 4
  %i.gp = call i64 @llvm.umax.i64(i64 %i.gn, i64 %i.go)
  %i.gq = xor i64 %.033.lcssa.i124291, -1
  %i.gr = add i64 %i.gp, %i.gq                    ; 2 uses
  %i.gs = lshr i64 %i.gr, 2
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %min.iters.check294 = icmp ult i64 %i.gr, 44
  %i.gu = sub i64 %.033.lcssa.i124291, %.036.lcssa.i126290
  %diff.check292 = icmp ugt i64 %i.gu, -32
  %or.cond368 = select i1 %min.iters.check294, i1 true, i1 %diff.check292
  br i1 %or.cond368, label %.lr.ph51.i133.preheader377, label %vector.ph295

vector.ph295:                                     ; preds = %.lr.ph51.i133.preheader
  %n.vec296 = and i64 %i.gt, 9223372036854775800  ; 3 uses
  %i.gv = shl i64 %n.vec296, 2                    ; 2 uses
  %i.gw = getelementptr i8, ptr %.033.lcssa.i124, i64 %i.gv
  %i.gx = getelementptr i8, ptr %.036.lcssa.i126, i64 %i.gv ; 2 uses
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next303, %vector.body297 ] ; 2 uses
  %i.gy = shl i64 %index298, 2                    ; 2 uses
  %next.gep299 = getelementptr i8, ptr %.033.lcssa.i124, i64 %i.gy ; 2 uses
  %next.gep300 = getelementptr i8, ptr %.036.lcssa.i126, i64 %i.gy ; 2 uses
  %i.gz = getelementptr i8, ptr %next.gep299, i64 16
  %wide.load301 = load <4 x i32>, ptr %next.gep299, align 4, !tbaa !8
  %wide.load302 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !8
  %i.ha = getelementptr i8, ptr %next.gep300, i64 16
  store <4 x i32> %wide.load301, ptr %next.gep300, align 4, !tbaa !8
  store <4 x i32> %wide.load302, ptr %i.ha, align 4, !tbaa !8
  %index.next303 = add nuw i64 %index298, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next303, %n.vec296
  br i1 %i.hb, label %middle.block304, label %vector.body297, !llvm.loop !348

middle.block304:                                  ; preds = %vector.body297
  %cmp.n305 = icmp eq i64 %i.gt, %n.vec296
  br i1 %cmp.n305, label %.preheader.i127, label %.lr.ph51.i133.preheader377

.lr.ph51.i133.preheader377:                       ; preds = %.lr.ph51.i133.preheader, %middle.block304
  %.23550.i134.ph = phi ptr [ %.033.lcssa.i124, %.lr.ph51.i133.preheader ], [ %i.gw, %middle.block304 ]
  %.23849.i135.ph = phi ptr [ %.036.lcssa.i126, %.lr.ph51.i133.preheader ], [ %i.gx, %middle.block304 ]
  br label %.lr.ph51.i133

.lr.ph.i136:                                      ; preds = %Sbd_CutMergeSimple.exit119, %bb.p
  %.03646.i137 = phi ptr [ %.036.i142, %bb.p ], [ %.03643.i122, %Sbd_CutMergeSimple.exit119 ] ; 4 uses
  %.045.i138 = phi ptr [ %.1.i141, %bb.p ], [ %i.am, %Sbd_CutMergeSimple.exit119 ] ; 4 uses
  %.03344.i139 = phi ptr [ %.134.i140, %bb.p ], [ %i.an, %Sbd_CutMergeSimple.exit119 ] ; 4 uses
  %i.hc = load i32, ptr %.03344.i139, align 4, !tbaa !8 ; 4 uses
  %i.hd = load i32, ptr %.045.i138, align 4, !tbaa !8 ; 3 uses
  %i.he = icmp eq i32 %i.hc, %i.hd
  br i1 %i.he, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i136
  %i.hf = getelementptr inbounds nuw i8, ptr %.03344.i139, i64 4
  store i32 %i.hc, ptr %.03646.i137, align 4, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %.045.i138, i64 4
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i136
  %i.hh = icmp slt i32 %i.hc, %i.hd
  br i1 %i.hh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hi = getelementptr inbounds nuw i8, ptr %.03344.i139, i64 4
  store i32 %i.hc, ptr %.03646.i137, align 4, !tbaa !8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.hj = getelementptr inbounds nuw i8, ptr %.045.i138, i64 4
  store i32 %i.hd, ptr %.03646.i137, align 4, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.134.i140 = phi ptr [ %i.hf, %bb.l ], [ %i.hi, %bb.n ], [ %.03344.i139, %bb.o ] ; 3 uses
  %.1.i141 = phi ptr [ %i.hg, %bb.l ], [ %.045.i138, %bb.n ], [ %i.hj, %bb.o ] ; 3 uses
  %.036.i142 = getelementptr inbounds nuw i8, ptr %.03646.i137, i64 4 ; 2 uses
  %i.hk = icmp ult ptr %.134.i140, %i.gb
  %i.hl = icmp ult ptr %.1.i141, %i.ge
  %i.hm = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %i.hm, label %.lr.ph.i136, label %.preheader42.i123, !llvm.loop !336

.preheader.i127:                                  ; preds = %.lr.ph51.i133, %middle.block304, %.preheader42.i123
  %.238.lcssa.i128 = phi ptr [ %.036.lcssa.i126, %.preheader42.i123 ], [ %i.gx, %middle.block304 ], [ %i.ic, %.lr.ph51.i133 ] ; 5 uses
  %i.hn = icmp ult ptr %.0.lcssa.i125, %i.ge
  br i1 %i.hn, label %.lr.ph55.i130.preheader, label %Sbd_CutMergeSimple.exit143

.lr.ph55.i130.preheader:                          ; preds = %.preheader.i127
  %.238.lcssa.i128309 = ptrtoaddr ptr %.238.lcssa.i128 to i64
  %i.ho = ptrtoaddr ptr %i.f to i64
  %i.hp = add i64 %.idx57.i121, %i.ho
  %4 = or disjoint i64 %i.hp, 3
  %5 = sub i64 %4, %.0.lcssa.i125310              ; 2 uses
  %i.hq = lshr i64 %5, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check313 = icmp ult i64 %5, 44
  %i.hs = sub i64 %.0.lcssa.i125310, %.238.lcssa.i128309
  %diff.check311 = icmp ugt i64 %i.hs, -32
  %or.cond369 = select i1 %min.iters.check313, i1 true, i1 %diff.check311
  br i1 %or.cond369, label %.lr.ph55.i130.preheader375, label %vector.ph314

vector.ph314:                                     ; preds = %.lr.ph55.i130.preheader
  %n.vec315 = and i64 %i.hr, 9223372036854775800  ; 3 uses
  %i.ht = shl i64 %n.vec315, 2                    ; 2 uses
  %i.hu = getelementptr i8, ptr %.0.lcssa.i125, i64 %i.ht
  %i.hv = getelementptr i8, ptr %.238.lcssa.i128, i64 %i.ht ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next322, %vector.body316 ] ; 2 uses
  %i.hw = shl i64 %index317, 2                    ; 2 uses
  %next.gep318 = getelementptr i8, ptr %.0.lcssa.i125, i64 %i.hw ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.238.lcssa.i128, i64 %i.hw ; 2 uses
  %i.hx = getelementptr i8, ptr %next.gep318, i64 16
  %wide.load320 = load <4 x i32>, ptr %next.gep318, align 4, !tbaa !8
  %wide.load321 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !8
  %i.hy = getelementptr i8, ptr %next.gep319, i64 16
  store <4 x i32> %wide.load320, ptr %next.gep319, align 4, !tbaa !8
  store <4 x i32> %wide.load321, ptr %i.hy, align 4, !tbaa !8
  %index.next322 = add nuw i64 %index317, 8       ; 2 uses
  %i.hz = icmp eq i64 %index.next322, %n.vec315
  br i1 %i.hz, label %middle.block323, label %vector.body316, !llvm.loop !349

middle.block323:                                  ; preds = %vector.body316
  %cmp.n324 = icmp eq i64 %i.hr, %n.vec315
  br i1 %cmp.n324, label %Sbd_CutMergeSimple.exit143.loopexit, label %.lr.ph55.i130.preheader375

.lr.ph55.i130.preheader375:                       ; preds = %.lr.ph55.i130.preheader, %middle.block323
  %.254.i131.ph = phi ptr [ %.0.lcssa.i125, %.lr.ph55.i130.preheader ], [ %i.hu, %middle.block323 ]
  %.353.i132.ph = phi ptr [ %.238.lcssa.i128, %.lr.ph55.i130.preheader ], [ %i.hv, %middle.block323 ]
  br label %.lr.ph55.i130

.lr.ph51.i133:                                    ; preds = %.lr.ph51.i133.preheader377, %.lr.ph51.i133
  %.23550.i134 = phi ptr [ %i.ia, %.lr.ph51.i133 ], [ %.23550.i134.ph, %.lr.ph51.i133.preheader377 ] ; 2 uses
  %.23849.i135 = phi ptr [ %i.ic, %.lr.ph51.i133 ], [ %.23849.i135.ph, %.lr.ph51.i133.preheader377 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.23550.i134, i64 4 ; 2 uses
  %i.ib = load i32, ptr %.23550.i134, align 4, !tbaa !8
  %i.ic = getelementptr inbounds nuw i8, ptr %.23849.i135, i64 4 ; 2 uses
  store i32 %i.ib, ptr %.23849.i135, align 4, !tbaa !8
  %i.id = icmp ult ptr %i.ia, %i.gb
  br i1 %i.id, label %.lr.ph51.i133, label %.preheader.i127, !llvm.loop !350

.lr.ph55.i130:                                    ; preds = %.lr.ph55.i130.preheader375, %.lr.ph55.i130
  %.254.i131 = phi ptr [ %i.ie, %.lr.ph55.i130 ], [ %.254.i131.ph, %.lr.ph55.i130.preheader375 ] ; 2 uses
  %.353.i132 = phi ptr [ %i.ig, %.lr.ph55.i130 ], [ %.353.i132.ph, %.lr.ph55.i130.preheader375 ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.254.i131, i64 4 ; 2 uses
  %i.if = load i32, ptr %.254.i131, align 4, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %.353.i132, i64 4 ; 2 uses
  store i32 %i.if, ptr %.353.i132, align 4, !tbaa !8
  %i.ih = icmp ult ptr %i.ie, %i.ge
  br i1 %i.ih, label %.lr.ph55.i130, label %Sbd_CutMergeSimple.exit143.loopexit, !llvm.loop !351

Sbd_CutMergeSimple.exit143.loopexit:              ; preds = %.lr.ph55.i130, %middle.block323
  %.lcssa221 = phi ptr [ %i.hv, %middle.block323 ], [ %i.ig, %.lr.ph55.i130 ]
  %.pre183 = load i32, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %.pre186 = sext i32 %.pre183 to i64
  %.pre188 = shl nsw i64 %.pre186, 2
  br label %Sbd_CutMergeSimple.exit143

Sbd_CutMergeSimple.exit143:                       ; preds = %Sbd_CutMergeSimple.exit143.loopexit, %.preheader.i127
  %.idx57.i145.pre-phi = phi i64 [ %.pre188, %Sbd_CutMergeSimple.exit143.loopexit ], [ %.idx57.i121, %.preheader.i127 ] ; 2 uses
  %i.ii = phi i32 [ %.pre183, %Sbd_CutMergeSimple.exit143.loopexit ], [ %i.gc, %.preheader.i127 ]
  %.3.lcssa.i129 = phi ptr [ %.lcssa221, %Sbd_CutMergeSimple.exit143.loopexit ], [ %.238.lcssa.i128, %.preheader.i127 ]
  %i.ij = ptrtoint ptr %.3.lcssa.i129 to i64
  %i.ik = ptrtoint ptr %i.c to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = lshr exact i64 %i.il, 2
  %i.in = trunc i64 %i.im to i32
  %i.io = add i32 %i.in, -1                       ; 2 uses
  store i32 %i.io, ptr %i.c, align 16, !tbaa !8
  %i.ip = load i32, ptr %i.e, align 4, !tbaa !8   ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %.idx.i144 = shl nsw i64 %i.iq, 2               ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.al, i64 %.idx.i144 ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %i.am, i64 %.idx57.i145.pre-phi ; 3 uses
  %.03643.i146 = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.it = icmp sgt i32 %i.ip, 0
  %i.iu = icmp sgt i32 %i.ii, 0
  %i.iv = select i1 %i.it, i1 %i.iu, i1 false
  br i1 %i.iv, label %.lr.ph.i160, label %.preheader42.i147

.preheader42.i147:                                ; preds = %bb.u, %Sbd_CutMergeSimple.exit143
  %.033.lcssa.i148 = phi ptr [ %i.al, %Sbd_CutMergeSimple.exit143 ], [ %.134.i164, %bb.u ] ; 5 uses
  %.0.lcssa.i149 = phi ptr [ %i.am, %Sbd_CutMergeSimple.exit143 ], [ %.1.i165, %bb.u ] ; 5 uses
  %.036.lcssa.i150 = phi ptr [ %.03643.i146, %Sbd_CutMergeSimple.exit143 ], [ %.036.i166, %bb.u ] ; 5 uses
  %.0.lcssa.i149348 = ptrtoaddr ptr %.0.lcssa.i149 to i64 ; 2 uses
  %i.iw = icmp ult ptr %.033.lcssa.i148, %i.ir
  br i1 %i.iw, label %.lr.ph51.i157.preheader, label %.preheader.i151

.lr.ph51.i157.preheader:                          ; preds = %.preheader42.i147
  %.033.lcssa.i148329 = ptrtoaddr ptr %.033.lcssa.i148 to i64 ; 2 uses
  %.036.lcssa.i150328 = ptrtoaddr ptr %.036.lcssa.i150 to i64
  %i.ix = ptrtoaddr ptr %i.e to i64
  %i.iy = add i64 %.idx.i144, %i.ix
  %6 = or disjoint i64 %i.iy, 3
  %7 = sub i64 %6, %.033.lcssa.i148329            ; 2 uses
  %i.iz = lshr i64 %7, 2
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check332 = icmp ult i64 %7, 44
  %i.jb = sub i64 %.033.lcssa.i148329, %.036.lcssa.i150328
  %diff.check330 = icmp ugt i64 %i.jb, -32
  %or.cond370 = select i1 %min.iters.check332, i1 true, i1 %diff.check330
  br i1 %or.cond370, label %.lr.ph51.i157.preheader373, label %vector.ph333

vector.ph333:                                     ; preds = %.lr.ph51.i157.preheader
  %n.vec334 = and i64 %i.ja, 9223372036854775800  ; 3 uses
  %i.jc = shl i64 %n.vec334, 2                    ; 2 uses
  %i.jd = getelementptr i8, ptr %.033.lcssa.i148, i64 %i.jc
  %i.je = getelementptr i8, ptr %.036.lcssa.i150, i64 %i.jc ; 2 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body335 ] ; 2 uses
  %i.jf = shl i64 %index336, 2                    ; 2 uses
  %next.gep337 = getelementptr i8, ptr %.033.lcssa.i148, i64 %i.jf ; 2 uses
  %next.gep338 = getelementptr i8, ptr %.036.lcssa.i150, i64 %i.jf ; 2 uses
  %i.jg = getelementptr i8, ptr %next.gep337, i64 16
  %wide.load339 = load <4 x i32>, ptr %next.gep337, align 4, !tbaa !8
  %wide.load340 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !8
  %i.jh = getelementptr i8, ptr %next.gep338, i64 16
  store <4 x i32> %wide.load339, ptr %next.gep338, align 4, !tbaa !8
  store <4 x i32> %wide.load340, ptr %i.jh, align 4, !tbaa !8
  %index.next341 = add nuw i64 %index336, 8       ; 2 uses
  %i.ji = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.ji, label %middle.block342, label %vector.body335, !llvm.loop !352

middle.block342:                                  ; preds = %vector.body335
  %cmp.n343 = icmp eq i64 %i.ja, %n.vec334
  br i1 %cmp.n343, label %.preheader.i151, label %.lr.ph51.i157.preheader373

.lr.ph51.i157.preheader373:                       ; preds = %.lr.ph51.i157.preheader, %middle.block342
  %.23550.i158.ph = phi ptr [ %.033.lcssa.i148, %.lr.ph51.i157.preheader ], [ %i.jd, %middle.block342 ]
  %.23849.i159.ph = phi ptr [ %.036.lcssa.i150, %.lr.ph51.i157.preheader ], [ %i.je, %middle.block342 ]
  br label %.lr.ph51.i157

.lr.ph.i160:                                      ; preds = %Sbd_CutMergeSimple.exit143, %bb.u
  %.03646.i161 = phi ptr [ %.036.i166, %bb.u ], [ %.03643.i146, %Sbd_CutMergeSimple.exit143 ] ; 4 uses
  %.045.i162 = phi ptr [ %.1.i165, %bb.u ], [ %i.am, %Sbd_CutMergeSimple.exit143 ] ; 4 uses
  %.03344.i163 = phi ptr [ %.134.i164, %bb.u ], [ %i.al, %Sbd_CutMergeSimple.exit143 ] ; 4 uses
  %i.jj = load i32, ptr %.03344.i163, align 4, !tbaa !8 ; 4 uses
  %i.jk = load i32, ptr %.045.i162, align 4, !tbaa !8 ; 3 uses
  %i.jl = icmp eq i32 %i.jj, %i.jk
  br i1 %i.jl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i160
  %i.jm = getelementptr inbounds nuw i8, ptr %.03344.i163, i64 4
  store i32 %i.jj, ptr %.03646.i161, align 4, !tbaa !8
  %i.jn = getelementptr inbounds nuw i8, ptr %.045.i162, i64 4
  br label %bb.u

bb.r:                                             ; preds = %.lr.ph.i160
  %i.jo = icmp slt i32 %i.jj, %i.jk
  br i1 %i.jo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jp = getelementptr inbounds nuw i8, ptr %.03344.i163, i64 4
  store i32 %i.jj, ptr %.03646.i161, align 4, !tbaa !8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.jq = getelementptr inbounds nuw i8, ptr %.045.i162, i64 4
  store i32 %i.jk, ptr %.03646.i161, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.134.i164 = phi ptr [ %i.jm, %bb.q ], [ %i.jp, %bb.s ], [ %.03344.i163, %bb.t ] ; 3 uses
  %.1.i165 = phi ptr [ %i.jn, %bb.q ], [ %.045.i162, %bb.s ], [ %i.jq, %bb.t ] ; 3 uses
  %.036.i166 = getelementptr inbounds nuw i8, ptr %.03646.i161, i64 4 ; 2 uses
  %i.jr = icmp ult ptr %.134.i164, %i.ir
  %i.js = icmp ult ptr %.1.i165, %i.is
  %i.jt = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %i.jt, label %.lr.ph.i160, label %.preheader42.i147, !llvm.loop !336

.preheader.i151:                                  ; preds = %.lr.ph51.i157, %middle.block342, %.preheader42.i147
  %.238.lcssa.i152 = phi ptr [ %.036.lcssa.i150, %.preheader42.i147 ], [ %i.je, %middle.block342 ], [ %i.kj, %.lr.ph51.i157 ] ; 5 uses
  %i.ju = icmp ult ptr %.0.lcssa.i149, %i.is
  br i1 %i.ju, label %.lr.ph55.i154.preheader, label %Sbd_CutMergeSimple.exit167

.lr.ph55.i154.preheader:                          ; preds = %.preheader.i151
  %.238.lcssa.i152347 = ptrtoaddr ptr %.238.lcssa.i152 to i64
  %i.jv = ptrtoaddr ptr %i.f to i64
  %i.jw = add i64 %.idx57.i145.pre-phi, %i.jv
  %8 = or disjoint i64 %i.jw, 3
  %9 = sub i64 %8, %.0.lcssa.i149348              ; 2 uses
  %i.jx = lshr i64 %9, 2
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check351 = icmp ult i64 %9, 44
  %i.jz = sub i64 %.0.lcssa.i149348, %.238.lcssa.i152347
  %diff.check349 = icmp ugt i64 %i.jz, -32
  %or.cond371 = select i1 %min.iters.check351, i1 true, i1 %diff.check349
  br i1 %or.cond371, label %.lr.ph55.i154.preheader372, label %vector.ph352

vector.ph352:                                     ; preds = %.lr.ph55.i154.preheader
  %n.vec353 = and i64 %i.jy, 9223372036854775800  ; 3 uses
  %i.ka = shl i64 %n.vec353, 2                    ; 2 uses
  %i.kb = getelementptr i8, ptr %.0.lcssa.i149, i64 %i.ka
  %i.kc = getelementptr i8, ptr %.238.lcssa.i152, i64 %i.ka ; 2 uses
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next360, %vector.body354 ] ; 2 uses
  %i.kd = shl i64 %index355, 2                    ; 2 uses
  %next.gep356 = getelementptr i8, ptr %.0.lcssa.i149, i64 %i.kd ; 2 uses
  %next.gep357 = getelementptr i8, ptr %.238.lcssa.i152, i64 %i.kd ; 2 uses
  %i.ke = getelementptr i8, ptr %next.gep356, i64 16
  %wide.load358 = load <4 x i32>, ptr %next.gep356, align 4, !tbaa !8
  %wide.load359 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !8
  %i.kf = getelementptr i8, ptr %next.gep357, i64 16
  store <4 x i32> %wide.load358, ptr %next.gep357, align 4, !tbaa !8
  store <4 x i32> %wide.load359, ptr %i.kf, align 4, !tbaa !8
  %index.next360 = add nuw i64 %index355, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next360, %n.vec353
  br i1 %i.kg, label %middle.block361, label %vector.body354, !llvm.loop !353

middle.block361:                                  ; preds = %vector.body354
  %cmp.n362 = icmp eq i64 %i.jy, %n.vec353
  br i1 %cmp.n362, label %Sbd_CutMergeSimple.exit167, label %.lr.ph55.i154.preheader372

.lr.ph55.i154.preheader372:                       ; preds = %.lr.ph55.i154.preheader, %middle.block361
  %.254.i155.ph = phi ptr [ %.0.lcssa.i149, %.lr.ph55.i154.preheader ], [ %i.kb, %middle.block361 ]
  %.353.i156.ph = phi ptr [ %.238.lcssa.i152, %.lr.ph55.i154.preheader ], [ %i.kc, %middle.block361 ]
  br label %.lr.ph55.i154

.lr.ph51.i157:                                    ; preds = %.lr.ph51.i157.preheader373, %.lr.ph51.i157
  %.23550.i158 = phi ptr [ %i.kh, %.lr.ph51.i157 ], [ %.23550.i158.ph, %.lr.ph51.i157.preheader373 ] ; 2 uses
  %.23849.i159 = phi ptr [ %i.kj, %.lr.ph51.i157 ], [ %.23849.i159.ph, %.lr.ph51.i157.preheader373 ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.23550.i158, i64 4 ; 2 uses
  %i.ki = load i32, ptr %.23550.i158, align 4, !tbaa !8
  %i.kj = getelementptr inbounds nuw i8, ptr %.23849.i159, i64 4 ; 2 uses
  store i32 %i.ki, ptr %.23849.i159, align 4, !tbaa !8
  %i.kk = icmp ult ptr %i.kh, %i.ir
  br i1 %i.kk, label %.lr.ph51.i157, label %.preheader.i151, !llvm.loop !354

.lr.ph55.i154:                                    ; preds = %.lr.ph55.i154.preheader372, %.lr.ph55.i154
  %.254.i155 = phi ptr [ %i.kl, %.lr.ph55.i154 ], [ %.254.i155.ph, %.lr.ph55.i154.preheader372 ] ; 2 uses
  %.353.i156 = phi ptr [ %i.kn, %.lr.ph55.i154 ], [ %.353.i156.ph, %.lr.ph55.i154.preheader372 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.254.i155, i64 4 ; 2 uses
  %i.km = load i32, ptr %.254.i155, align 4, !tbaa !8
  %i.kn = getelementptr inbounds nuw i8, ptr %.353.i156, i64 4 ; 2 uses
  store i32 %i.km, ptr %.353.i156, align 4, !tbaa !8
  %i.ko = icmp ult ptr %i.kl, %i.is
  br i1 %i.ko, label %.lr.ph55.i154, label %Sbd_CutMergeSimple.exit167, !llvm.loop !355

Sbd_CutMergeSimple.exit167:                       ; preds = %.lr.ph55.i154, %middle.block361, %.preheader.i151
  %.3.lcssa.i153 = phi ptr [ %.238.lcssa.i152, %.preheader.i151 ], [ %i.kc, %middle.block361 ], [ %i.kn, %.lr.ph55.i154 ]
  %i.kp = ptrtoint ptr %.3.lcssa.i153 to i64
  %i.kq = ptrtoint ptr %i.d to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = lshr exact i64 %i.kr, 2
  %i.kt = trunc i64 %i.ks to i32
  %i.ku = add i32 %i.kt, -1                       ; 3 uses
  store i32 %i.ku, ptr %i.d, align 16, !tbaa !8
  %i.kv = load i32, ptr %.val94, align 4, !tbaa !78 ; 4 uses
  %.not78 = icmp sgt i32 %i.dm, %i.kv
  %i.kw = call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.ab) ; 2 uses
  %i.kx = select i1 %.not78, i32 1000000000, i32 %i.kw ; 4 uses
  %.not79 = icmp sgt i32 %i.fy, %i.kv
  %i.ky = add nsw i32 %spec.select, 1
  %i.kz = call i32 @llvm.smax.i32(i32 %i.ky, i32 %i.ab)
  %i.la = select i1 %.not79, i32 1000000000, i32 %i.kz ; 3 uses
  %.not80 = icmp sgt i32 %i.io, %i.kv
  %i.lb = add nsw i32 %i.ab, 1
  %i.lc = call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.lb)
  %i.ld = select i1 %.not80, i32 1000000000, i32 %i.lc ; 4 uses
  %.not81 = icmp sgt i32 %i.ku, %i.kv
  %i.le = add nsw i32 %i.kw, 1
  %i.lf = select i1 %.not81, i32 1000000000, i32 %i.le ; 4 uses
  %i.lg = icmp slt i32 %i.la, %i.kx
  br i1 %i.lg, label %bb.x, label %bb.v

bb.v:                                             ; preds = %Sbd_CutMergeSimple.exit167
  %i.lh = icmp eq i32 %i.la, %i.kx
  br i1 %i.lh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.li = load i32, ptr %i.b, align 16, !tbaa !8
  %i.lj = load i32, ptr %i.a, align 16, !tbaa !8
  %i.lk = icmp slt i32 %i.li, %i.lj
  br i1 %i.lk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %Sbd_CutMergeSimple.exit167
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.070 = phi ptr [ %i.b, %bb.x ], [ %i.a, %bb.w ], [ %i.a, %bb.v ] ; 3 uses
  %.0 = phi i32 [ %i.la, %bb.x ], [ %i.kx, %bb.w ], [ %i.kx, %bb.v ] ; 3 uses
  %i.ll = icmp slt i32 %i.ld, %.0
  br i1 %i.ll, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lm = icmp eq i32 %i.ld, %.0
  br i1 %i.lm, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ln = load i32, ptr %i.c, align 16, !tbaa !8
  %i.lo = load i32, ptr %.070, align 16, !tbaa !8
  %i.lp = icmp slt i32 %i.ln, %i.lo
  br i1 %i.lp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.y
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.171 = phi ptr [ %i.c, %bb.ab ], [ %.070, %bb.aa ], [ %.070, %bb.z ] ; 3 uses
  %.1 = phi i32 [ %i.ld, %bb.ab ], [ %i.ld, %bb.aa ], [ %.0, %bb.z ] ; 3 uses
  %i.lq = icmp slt i32 %i.lf, %.1
  br i1 %i.lq, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lr = icmp eq i32 %i.lf, %.1
  br i1 %i.lr, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ls = load i32, ptr %.171, align 4, !tbaa !8
  %i.lt = icmp slt i32 %i.ku, %i.ls
  br i1 %i.lt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ac
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.272 = phi ptr [ %i.d, %bb.af ], [ %.171, %bb.ae ], [ %.171, %bb.ad ] ; 2 uses
  %.2 = phi i32 [ %i.lf, %bb.af ], [ %i.lf, %bb.ae ], [ %.1, %bb.ad ] ; 2 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr %.val84, i64 %i.j
  store i32 %.2, ptr %i.lu, align 4, !tbaa !8
  %.val90.val = load i32, ptr %.val94, align 4, !tbaa !78
  %i.lv = add nsw i32 %.val90.val, 1
  %i.lw = mul nsw i32 %i.lv, %1
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [4 x i8], ptr %.val95.val, i64 %i.lx
  %i.lz = load i32, ptr %.272, align 4, !tbaa !8
  %i.ma = add nsw i32 %i.lz, 1
  %i.mb = sext i32 %i.ma to i64
  %i.mc = shl nsw i64 %i.mb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ly, ptr nonnull align 4 %.272, i64 %i.mc, i1 false)
  %i.md = icmp eq i32 %.2, 1
  %i.me = zext i1 %i.md to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %i.me
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @Sbd_ManDelay(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !43  ; 4 uses
  %i.f = icmp sgt i32 %.val, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 32
  %.val11 = load ptr, ptr %i.g, align 8, !tbaa !49 ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val12.val = load ptr, ptr %i.h, align 8, !tbaa !44 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val10 = load ptr, ptr %i.k, align 8, !tbaa !44 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %.val, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.015 = phi i32 [ 0, %.lr.ph.new ], [ %i.ai, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val12.val, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8    ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [12 x i8], ptr %.val11, i64 %i.o
end_hunk_0
