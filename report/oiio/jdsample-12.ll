loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@h1v2_fancy_upsample:bb.a
  %i.at = lshr i32 %i.as, 2
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %.02731.us.us.ph, i64 2
  store i16 %i.au, ptr %.02731.us.us.ph, align 2, !tbaa !80
  %i.aw = add nuw i32 %.02433.us.us.ph, 1
  br label %scalar.ph58.prol.loopexit

scalar.ph58.prol.loopexit:                        ; preds = %scalar.ph58.prol, %scalar.ph58.preheader
  %.02433.us.us.unr = phi i32 [ %.02433.us.us.ph, %scalar.ph58.preheader ], [ %i.aw, %scalar.ph58.prol ]
  %.02632.us.us.unr = phi ptr [ %.02632.us.us.ph, %scalar.ph58.preheader ], [ %i.ak, %scalar.ph58.prol ]
  %.02731.us.us.unr = phi ptr [ %.02731.us.us.ph, %scalar.ph58.preheader ], [ %i.av, %scalar.ph58.prol ]
  %.12930.us.us.unr = phi ptr [ %.12930.us.us.ph, %scalar.ph58.preheader ], [ %i.ao, %scalar.ph58.prol ]
  %i.ax = icmp eq i32 %i.f, %.neg
  br i1 %i.ax, label %._crit_edge.us.us, label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58
  %.02433.us.us = phi i32 [ %i.bw, %scalar.ph58 ], [ %.02433.us.us.unr, %scalar.ph58.prol.loopexit ]
  %.02632.us.us = phi ptr [ %i.bk, %scalar.ph58 ], [ %.02632.us.us.unr, %scalar.ph58.prol.loopexit ] ; 3 uses
  %.02731.us.us = phi ptr [ %i.bv, %scalar.ph58 ], [ %.02731.us.us.unr, %scalar.ph58.prol.loopexit ] ; 3 uses
  %.12930.us.us = phi ptr [ %i.bo, %scalar.ph58 ], [ %.12930.us.us.unr, %scalar.ph58.prol.loopexit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 2
  %i.az = load i16, ptr %.02632.us.us, align 2, !tbaa !80
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.12930.us.us, i64 2
  %i.bd = load i16, ptr %.12930.us.us, align 2, !tbaa !80
  %i.be = sext i16 %i.bd to i32
  %i.bf = add nsw i32 %i.be, 1
  %i.bg = add nsw i32 %i.bf, %i.bb
  %i.bh = lshr i32 %i.bg, 2
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %.02731.us.us, i64 2
  store i16 %i.bi, ptr %.02731.us.us, align 2, !tbaa !80
  %i.bk = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 4
  %i.bl = load i16, ptr %i.ay, align 2, !tbaa !80
  %i.bm = sext i16 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %.12930.us.us, i64 4
  %i.bp = load i16, ptr %i.bc, align 2, !tbaa !80
  %i.bq = sext i16 %i.bp to i32
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = add nsw i32 %i.br, %i.bn
  %i.bt = lshr i32 %i.bs, 2
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %.02731.us.us, i64 4
  store i16 %i.bu, ptr %i.bj, align 2, !tbaa !80
  %i.bw = add nuw i32 %.02433.us.us, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bw, %i.f
  br i1 %exitcond.not.1, label %._crit_edge.us.us, label %scalar.ph58, !llvm.loop !100

._crit_edge.us.us:                                ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58, %middle.block71
  %.028.in.us.us.1 = getelementptr i8, ptr %i.p, i64 8
  %.028.us.us.1 = load ptr, ptr %.028.in.us.us.1, align 8, !tbaa !78 ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02237.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !78 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge.us.us
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 2 uses
  %.028.us.us.145 = ptrtoaddr ptr %.028.us.us.1 to i64
  %i.cb = sub i64 %i.r, %i.ca
  %diff.check = icmp ugt i64 %i.cb, -16
  %i.cc = sub i64 %.028.us.us.145, %i.ca
  %diff.check46 = icmp ugt i64 %i.cc, -16
  %conflict.rdx = or i1 %diff.check, %diff.check46
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cd = getelementptr i8, ptr %i.q, i64 %i.o
  %i.ce = getelementptr i8, ptr %i.bz, i64 %i.o
  %i.cf = getelementptr i8, ptr %.028.us.us.1, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 1                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.cg
  %next.gep47 = getelementptr i8, ptr %i.bz, i64 %i.cg
  %next.gep48 = getelementptr i8, ptr %.028.us.us.1, i64 %i.cg
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !80
  %i.ch = sext <8 x i16> %wide.load to <8 x i32>
  %i.ci = mul nsw <8 x i32> %i.ch, splat (i32 3)
  %wide.load49 = load <8 x i16>, ptr %next.gep48, align 2, !tbaa !80
  %i.cj = sext <8 x i16> %wide.load49 to <8 x i32>
  %i.ck = add nsw <8 x i32> %i.cj, splat (i32 2)
  %i.cl = add nsw <8 x i32> %i.ck, %i.ci
  %i.cm = lshr <8 x i32> %i.cl, splat (i32 2)
  %i.cn = trunc <8 x i32> %i.cm to <8 x i16>
  store <8 x i16> %i.cn, ptr %next.gep47, align 2, !tbaa !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %._crit_edge.us.us, %middle.block
  %.02433.us.us.1.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %._crit_edge.us.us ], [ %i.n, %middle.block ] ; 4 uses
  %.02632.us.us.1.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %._crit_edge.us.us ], [ %i.cd, %middle.block ] ; 3 uses
  %.02731.us.us.1.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %._crit_edge.us.us ], [ %i.ce, %middle.block ] ; 3 uses
  %.12930.us.us.1.ph = phi ptr [ %.028.us.us.1, %vector.memcheck ], [ %.028.us.us.1, %._crit_edge.us.us ], [ %i.cf, %middle.block ] ; 3 uses
  %i.cp = sub i32 %i.f, %.02433.us.us.1.ph
  %.neg83 = add i32 %.02433.us.us.1.ph, 1
  %xtraiter81 = and i32 %i.cp, 1
  %lcmp.mod82.not = icmp eq i32 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %.02632.us.us.1.ph, i64 2
  %i.cr = load i16, ptr %.02632.us.us.1.ph, align 2, !tbaa !80
  %i.cs = sext i16 %i.cr to i32
  %i.ct = mul nsw i32 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %.12930.us.us.1.ph, i64 2
  %i.cv = load i16, ptr %.12930.us.us.1.ph, align 2, !tbaa !80
  %i.cw = sext i16 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, 2
  %i.cy = add nsw i32 %i.cx, %i.ct
  %i.cz = lshr i32 %i.cy, 2
  %i.da = trunc i32 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %.02731.us.us.1.ph, i64 2
  store i16 %i.da, ptr %.02731.us.us.1.ph, align 2, !tbaa !80
  %i.dc = add nuw i32 %.02433.us.us.1.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02433.us.us.1.unr = phi i32 [ %.02433.us.us.1.ph, %scalar.ph.preheader ], [ %i.dc, %scalar.ph.prol ]
  %.02632.us.us.1.unr = phi ptr [ %.02632.us.us.1.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %.02731.us.us.1.unr = phi ptr [ %.02731.us.us.1.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %.12930.us.us.1.unr = phi ptr [ %.12930.us.us.1.ph, %scalar.ph.preheader ], [ %i.cu, %scalar.ph.prol ]
  %i.dd = icmp eq i32 %i.f, %.neg83
  br i1 %i.dd, label %._crit_edge.us.us.1, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02433.us.us.1 = phi i32 [ %i.ec, %scalar.ph ], [ %.02433.us.us.1.unr, %scalar.ph.prol.loopexit ]
  %.02632.us.us.1 = phi ptr [ %i.dq, %scalar.ph ], [ %.02632.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02731.us.us.1 = phi ptr [ %i.eb, %scalar.ph ], [ %.02731.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.12930.us.us.1 = phi ptr [ %i.du, %scalar.ph ], [ %.12930.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 2
  %i.df = load i16, ptr %.02632.us.us.1, align 2, !tbaa !80
  %i.dg = sext i16 %i.df to i32
  %i.dh = mul nsw i32 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %.12930.us.us.1, i64 2
  %i.dj = load i16, ptr %.12930.us.us.1, align 2, !tbaa !80
  %i.dk = sext i16 %i.dj to i32
  %i.dl = add nsw i32 %i.dk, 2
  %i.dm = add nsw i32 %i.dl, %i.dh
  %i.dn = lshr i32 %i.dm, 2
  %i.do = trunc i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %.02731.us.us.1, i64 2
  store i16 %i.do, ptr %.02731.us.us.1, align 2, !tbaa !80
  %i.dq = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 4
  %i.dr = load i16, ptr %i.de, align 2, !tbaa !80
  %i.ds = sext i16 %i.dr to i32
  %i.dt = mul nsw i32 %i.ds, 3
  %i.du = getelementptr inbounds nuw i8, ptr %.12930.us.us.1, i64 4
  %i.dv = load i16, ptr %i.di, align 2, !tbaa !80
  %i.dw = sext i16 %i.dv to i32
  %i.dx = add nsw i32 %i.dw, 2
  %i.dy = add nsw i32 %i.dx, %i.dt
  %i.dz = lshr i32 %i.dy, 2
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %.02731.us.us.1, i64 4
  store i16 %i.ea, ptr %i.dp, align 2, !tbaa !80
  %i.ec = add nuw i32 %.02433.us.us.1, 2          ; 2 uses
  %exitcond.1.not.1 = icmp eq i32 %i.ec, %i.f
  br i1 %exitcond.1.not.1, label %._crit_edge.us.us.1, label %scalar.ph, !llvm.loop !102

._crit_edge.us.us.1:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.1 = add nuw nsw i64 %.02237.us, 2
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond43.not, label %._crit_edge, label %.preheader.us, !llvm.loop !103

._crit_edge:                                      ; preds = %._crit_edge.us.us.1, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !63
  %i.g = add i32 %i.f, -2                         ; 3 uses
  %.not53 = icmp eq i32 %i.g, 0
  %i.h = add nsw i32 %i.c, -1
  %i.i = lshr i32 %i.h, 1
  %i.j = add nuw nsw i32 %i.i, 1
  %wide.trip.count81 = zext nneg i32 %i.j to i64  ; 2 uses
  br i1 %.not53, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.04367.us = phi i64 [ %indvars.iv.next76.1, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv78 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %.049.in.us.us = getelementptr i8, ptr %i.k, i64 -8
  %.049.us.us = load ptr, ptr %.049.in.us.us, align 8, !tbaa !78 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04367.us
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 4 uses
  %i.p = load i16, ptr %i.l, align 2, !tbaa !80
  %i.q = sext i16 %i.p to i64
  %i.r = mul nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %.049.us.us, i64 2
  %i.t = load i16, ptr %.049.us.us, align 2, !tbaa !80
  %i.u = sext i16 %i.t to i64
  %i.v = add nsw i64 %i.r, %i.u                   ; 3 uses
  %i.w = load i16, ptr %i.m, align 2, !tbaa !80
  %i.x = sext i16 %i.w to i64
  %i.y = mul nsw i64 %i.x, 3
  %i.z = load i16, ptr %i.s, align 2, !tbaa !80
  %i.aa = sext i16 %i.z to i64
  %i.ab = add nsw i64 %i.y, %i.aa                 ; 3 uses
  %i.ac = shl nsw i64 %i.v, 2
  %i.ad = add nsw i64 %i.ac, 8
  %i.ae = lshr i64 %i.ad, 4
  %i.af = trunc i64 %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 %i.af, ptr %i.o, align 2, !tbaa !80
  %i.ah = mul nsw i64 %i.v, 3
  %i.ai = add nsw i64 %i.ah, 7
  %i.aj = add nsw i64 %i.ai, %i.ab
  %i.ak = lshr i64 %i.aj, 4
  %i.al = trunc i64 %i.ak to i16
  store i16 %i.al, ptr %i.ag, align 2, !tbaa !80
  %.04852.us.us = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.am = mul nsw i64 %i.ab, 3
  %i.an = add nsw i64 %i.v, 8
  %i.ao = add nsw i64 %i.an, %i.am
  %i.ap = lshr i64 %i.ao, 4
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  store i16 %i.aq, ptr %.04852.us.us, align 2, !tbaa !80
  %i.as = shl nsw i64 %i.ab, 2
  %i.at = add nsw i64 %i.as, 4
  %i.au = lshr i64 %i.at, 4
  %i.av = trunc i64 %i.au to i16
  store i16 %i.av, ptr %i.ar, align 2, !tbaa !80
  %.049.in.us.us.1 = getelementptr i8, ptr %i.k, i64 8
  %.049.us.us.1 = load ptr, ptr %.049.in.us.us.1, align 8, !tbaa !78 ; 2 uses
  %indvars.iv.next76.1 = add nuw nsw i64 %.04367.us, 2
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04367.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78 ; 4 uses
  %i.az = load i16, ptr %i.l, align 2, !tbaa !80
  %i.ba = sext i16 %i.az to i64
  %i.bb = mul nsw i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.049.us.us.1, i64 2
  %i.bd = load i16, ptr %.049.us.us.1, align 2, !tbaa !80
  %i.be = sext i16 %i.bd to i64
  %i.bf = add nsw i64 %i.bb, %i.be                ; 3 uses
  %i.bg = load i16, ptr %i.m, align 2, !tbaa !80
  %i.bh = sext i16 %i.bg to i64
  %i.bi = mul nsw i64 %i.bh, 3
  %i.bj = load i16, ptr %i.bc, align 2, !tbaa !80
  %i.bk = sext i16 %i.bj to i64
  %i.bl = add nsw i64 %i.bi, %i.bk                ; 3 uses
  %i.bm = shl nsw i64 %i.bf, 2
  %i.bn = add nsw i64 %i.bm, 8
  %i.bo = lshr i64 %i.bn, 4
  %i.bp = trunc i64 %i.bo to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 %i.bp, ptr %i.ay, align 2, !tbaa !80
  %i.br = mul nsw i64 %i.bf, 3
  %i.bs = add nsw i64 %i.br, 7
  %i.bt = add nsw i64 %i.bs, %i.bl
  %i.bu = lshr i64 %i.bt, 4
  %i.bv = trunc i64 %i.bu to i16
  store i16 %i.bv, ptr %i.bq, align 2, !tbaa !80
  %.04852.us.us.1 = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bw = mul nsw i64 %i.bl, 3
  %i.bx = add nsw i64 %i.bf, 8
  %i.by = add nsw i64 %i.bx, %i.bw
  %i.bz = lshr i64 %i.by, 4
  %i.ca = trunc i64 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  store i16 %i.ca, ptr %.04852.us.us.1, align 2, !tbaa !80
  %i.cc = shl nsw i64 %i.bl, 2
  %i.cd = add nsw i64 %i.cc, 4
  %i.ce = lshr i64 %i.cd, 4
  %i.cf = trunc i64 %i.ce to i16
  store i16 %i.cf, ptr %i.cb, align 2, !tbaa !80
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge68, label %.preheader.us, !llvm.loop !104

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.1
  %indvars.iv.a = phi i64 [ %indvars.iv.next73.a, %._crit_edge.1 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.04367 = phi i64 [ %indvars.iv.next.1, %._crit_edge.1 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.a ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !78 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %.049.in = getelementptr i8, ptr %i.cg, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !78 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04367
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !78 ; 4 uses
  %i.cm = load i16, ptr %i.ch, align 2, !tbaa !80
  %i.cn = sext i16 %i.cm to i64
  %i.co = mul nsw i64 %i.cn, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.cq = load i16, ptr %.049, align 2, !tbaa !80
  %i.cr = sext i16 %i.cq to i64
  %i.cs = add nsw i64 %i.co, %i.cr                ; 3 uses
  %i.ct = load i16, ptr %i.ci, align 2, !tbaa !80
  %i.cu = sext i16 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.cx = load i16, ptr %i.cp, align 2, !tbaa !80
  %i.cy = sext i16 %i.cx to i64
  %i.cz = add nsw i64 %i.cv, %i.cy                ; 2 uses
  %i.da = shl nsw i64 %i.cs, 2
  %i.db = add nsw i64 %i.da, 8
  %i.dc = lshr i64 %i.db, 4
  %i.dd = trunc i64 %i.dc to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i16 %i.dd, ptr %i.cl, align 2, !tbaa !80
  %i.df = mul nsw i64 %i.cs, 3
  %i.dg = add nsw i64 %i.df, 7
  %i.dh = add nsw i64 %i.dg, %i.cz
  %i.di = lshr i64 %i.dh, 4
  %i.dj = trunc i64 %i.di to i16
  store i16 %i.dj, ptr %i.de, align 2, !tbaa !80
  %.04852 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.04860 = phi ptr [ %.04852, %.preheader ], [ %.048, %bb.b ] ; 4 uses
  %.04559 = phi i32 [ %i.g, %.preheader ], [ %i.ec, %bb.b ]
  %.04658 = phi i64 [ %i.cs, %.preheader ], [ %.04757, %bb.b ]
  %.04757 = phi i64 [ %i.cz, %.preheader ], [ %i.dr, %bb.b ] ; 3 uses
  %.pn56 = phi ptr [ %i.cl, %.preheader ], [ %.04860, %bb.b ]
  %.15055 = phi ptr [ %i.cw, %.preheader ], [ %i.do, %bb.b ] ; 2 uses
  %.05154 = phi ptr [ %i.cj, %.preheader ], [ %i.dk, %bb.b ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.05154, i64 2
  %i.dl = load i16, ptr %.05154, align 2, !tbaa !80
  %i.dm = sext i16 %i.dl to i64
  %i.dn = mul nsw i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %.15055, i64 2
  %i.dp = load i16, ptr %.15055, align 2, !tbaa !80
  %i.dq = sext i16 %i.dp to i64
  %i.dr = add nsw i64 %i.dn, %i.dq                ; 4 uses
  %i.ds = mul nsw i64 %.04757, 3                  ; 2 uses
  %i.dt = add nsw i64 %.04658, 8
  %i.du = add nsw i64 %i.dt, %i.ds
  %i.dv = lshr i64 %i.du, 4
  %i.dw = trunc i64 %i.dv to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %.pn56, i64 6
  store i16 %i.dw, ptr %.04860, align 2, !tbaa !80
  %i.dy = add nsw i64 %i.ds, 7
  %i.dz = add nsw i64 %i.dy, %i.dr
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = trunc i64 %i.ea to i16
  store i16 %i.eb, ptr %i.dx, align 2, !tbaa !80
  %i.ec = add i32 %.04559, -1                     ; 2 uses
  %.048 = getelementptr inbounds nuw i8, ptr %.04860, i64 4 ; 2 uses
  %.not = icmp eq i32 %i.ec, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.b
  %i.ed = mul nsw i64 %i.dr, 3
  %i.ee = add nsw i64 %.04757, 8
  %i.ef = add nsw i64 %i.ee, %i.ed
  %i.eg = lshr i64 %i.ef, 4
  %i.eh = trunc i64 %i.eg to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %.04860, i64 6
  store i16 %i.eh, ptr %.048, align 2, !tbaa !80
  %i.ej = shl nsw i64 %i.dr, 2
  %i.ek = add nsw i64 %i.ej, 4
  %i.el = lshr i64 %i.ek, 4
  %i.em = trunc i64 %i.el to i16
  store i16 %i.em, ptr %i.ei, align 2, !tbaa !80
  %.049.in.1 = getelementptr i8, ptr %i.cg, i64 8
  %.049.1 = load ptr, ptr %.049.in.1, align 8, !tbaa !78 ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04367
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !78 ; 4 uses
  %i.eq = load i16, ptr %i.ch, align 2, !tbaa !80
  %i.er = sext i16 %i.eq to i64
  %i.es = mul nsw i64 %i.er, 3
  %i.et = getelementptr inbounds nuw i8, ptr %.049.1, i64 2
  %i.eu = load i16, ptr %.049.1, align 2, !tbaa !80
  %i.ev = sext i16 %i.eu to i64
  %i.ew = add nsw i64 %i.es, %i.ev                ; 3 uses
  %i.ex = load i16, ptr %i.ci, align 2, !tbaa !80
  %i.ey = sext i16 %i.ex to i64
  %i.ez = mul nsw i64 %i.ey, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %.049.1, i64 4
  %i.fb = load i16, ptr %i.et, align 2, !tbaa !80
  %i.fc = sext i16 %i.fb to i64
  %i.fd = add nsw i64 %i.ez, %i.fc                ; 2 uses
  %i.fe = shl nsw i64 %i.ew, 2
  %i.ff = add nsw i64 %i.fe, 8
  %i.fg = lshr i64 %i.ff, 4
  %i.fh = trunc i64 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i16 %i.fh, ptr %i.ep, align 2, !tbaa !80
  %i.fj = mul nsw i64 %i.ew, 3
  %i.fk = add nsw i64 %i.fj, 7
  %i.fl = add nsw i64 %i.fk, %i.fd
  %i.fm = lshr i64 %i.fl, 4
  %i.fn = trunc i64 %i.fm to i16
  store i16 %i.fn, ptr %i.fi, align 2, !tbaa !80
  %.04852.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.04860.1 = phi ptr [ %.04852.1, %._crit_edge ], [ %.048.1, %bb.c ] ; 4 uses
  %.04559.1 = phi i32 [ %i.g, %._crit_edge ], [ %i.gg, %bb.c ]
  %.04658.1 = phi i64 [ %i.ew, %._crit_edge ], [ %.04757.1, %bb.c ]
  %.04757.1 = phi i64 [ %i.fd, %._crit_edge ], [ %i.fv, %bb.c ] ; 3 uses
  %.pn56.1 = phi ptr [ %i.ep, %._crit_edge ], [ %.04860.1, %bb.c ]
  %.15055.1 = phi ptr [ %i.fa, %._crit_edge ], [ %i.fs, %bb.c ] ; 2 uses
  %.05154.1 = phi ptr [ %i.cj, %._crit_edge ], [ %i.fo, %bb.c ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05154.1, i64 2
  %i.fp = load i16, ptr %.05154.1, align 2, !tbaa !80
  %i.fq = sext i16 %i.fp to i64
  %i.fr = mul nsw i64 %i.fq, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %.15055.1, i64 2
  %i.ft = load i16, ptr %.15055.1, align 2, !tbaa !80
  %i.fu = sext i16 %i.ft to i64
  %i.fv = add nsw i64 %i.fr, %i.fu                ; 4 uses
  %i.fw = mul nsw i64 %.04757.1, 3                ; 2 uses
  %i.fx = add nsw i64 %.04658.1, 8
  %i.fy = add nsw i64 %i.fx, %i.fw
  %i.fz = lshr i64 %i.fy, 4
  %i.ga = trunc i64 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn56.1, i64 6
  store i16 %i.ga, ptr %.04860.1, align 2, !tbaa !80
  %i.gc = add nsw i64 %i.fw, 7
  %i.gd = add nsw i64 %i.gc, %i.fv
  %i.ge = lshr i64 %i.gd, 4
  %i.gf = trunc i64 %i.ge to i16
  store i16 %i.gf, ptr %i.gb, align 2, !tbaa !80
  %i.gg = add i32 %.04559.1, -1                   ; 2 uses
  %.048.1 = getelementptr inbounds nuw i8, ptr %.04860.1, i64 4 ; 2 uses
  %.not.1 = icmp eq i32 %i.gg, 0
  br i1 %.not.1, label %._crit_edge.1, label %bb.c, !llvm.loop !105

._crit_edge.1:                                    ; preds = %bb.c
  %indvars.iv.next.1 = add nuw nsw i64 %.04367, 2
  %i.gh = mul nsw i64 %i.fv, 3
  %i.gi = add nsw i64 %.04757.1, 8
  %i.gj = add nsw i64 %i.gi, %i.gh
  %i.gk = lshr i64 %i.gj, 4
  %i.gl = trunc i64 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %.04860.1, i64 6
  store i16 %i.gl, ptr %.048.1, align 2, !tbaa !80
  %i.gn = shl nsw i64 %i.fv, 2
  %i.go = add nsw i64 %i.gn, 4
  %i.gp = lshr i64 %i.go, 4
  %i.gq = trunc i64 %i.gp to i16
  store i16 %i.gq, ptr %i.gm, align 2, !tbaa !80
  %indvars.iv.next73.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next73.a, %wide.trip.count81
  br i1 %exitcond.not, label %._crit_edge68, label %.preheader, !llvm.loop !104

._crit_edge68:                                    ; preds = %._crit_edge.1, %.preheader.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next33, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %indvars34 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 9 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 6 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !66   ; 3 uses
  %i.j = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.j, 1                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 6 uses
  %i.n = add i64 %.idx, %i.h
  %i.o = add i64 %i.h, 4
  %umax40 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %i.h, -1
  %i.q = add i64 %umax40, %i.p                    ; 2 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 60
  br i1 %min.iters.check, label %.lr.ph.preheader46, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.g, i64 4
  %i.t = add i64 %.idx, %i.h
  %i.u = add i64 %i.h, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %i.h, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = and i64 %i.w, -4
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep38 = getelementptr i8, ptr %i.m, i64 2
  %i.y = lshr i64 %i.w, 1
  %i.z = and i64 %i.y, 9223372036854775806
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.z
  %bound0 = icmp ult ptr %i.g, %scevgep39
  %bound1 = icmp ult ptr %i.m, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader46, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 9223372036854775800      ; 4 uses
  %i.aa = shl nuw i64 %n.vec, 1
  %i.ab = getelementptr i8, ptr %i.m, i64 %i.aa
  %i.ac = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.g, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ae ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.g, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.g, i64 %i.af
  %next.gep42 = getelementptr i8, ptr %i.ag, i64 16
  %i.ah = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !80, !alias.scope !106
  %wide.load43 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !80, !alias.scope !106
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec, ptr %next.gep41, align 2, !tbaa !80, !alias.scope !109, !noalias !106
  %interleaved.vec44 = shufflevector <4 x i16> %wide.load43, <4 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i16> %interleaved.vec44, ptr %next.gep42, align 2, !tbaa !80, !alias.scope !109, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader46

.lr.ph.preheader46:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.02326.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.02425.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader46, %.lr.ph
  %.02326 = phi ptr [ %i.aj, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader46 ] ; 2 uses
  %.02425 = phi ptr [ %i.am, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader46 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02326, i64 2
  %i.ak = load i16, ptr %.02326, align 2, !tbaa !80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02425, i64 2
  store i16 %i.ak, ptr %.02425, align 2, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %.02425, i64 4 ; 2 uses
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !80
  %i.an = icmp ult ptr %i.am, %i.k
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %i.ao = or disjoint i32 %indvars34, 1
  tail call void @j12copy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.ao, i32 noundef 1, i32 noundef %i.i) #6
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !61
  %i.aq = trunc nuw i64 %indvars.iv.next to i32
  %i.ar = icmp sgt i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge31, !llvm.loop !113

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !72     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !114
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39
  %.fr50 = freeze i8 %i.i                         ; 8 uses
  %i.j = zext i8 %.fr50 to i32                    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 258
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39
  %.fr = freeze i8 %i.m                           ; 3 uses
  %i.n = zext i8 %.fr to i32                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !61   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge44

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %.not = icmp eq i8 %.fr50, 0
  %i.s = icmp ugt i8 %.fr, 1                      ; 2 uses
  %i.t = add nsw i32 %i.n, -1                     ; 2 uses
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = zext i8 %.fr to i64                      ; 2 uses
  br i1 %i.s, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.v = zext i8 %.fr50 to i64                    ; 5 uses
  %min.iters.check98 = icmp ult i8 %.fr50, 4
  %min.iters.check100 = icmp ult i8 %.fr50, 16
  %n.mod.vf102 = and i64 %i.v, 12
  %n.vec103 = and i64 %i.v, 240                   ; 5 uses
  %i.w = shl nuw nsw i64 %n.vec103, 1
  %i.x = trunc nuw nsw i64 %n.vec103 to i32
  %i.y = sub nsw i32 %i.j, %i.x
  %cmp.n111 = icmp eq i64 %n.vec103, %i.v
  %min.epilog.iters.check117 = icmp eq i64 %n.mod.vf102, 0
  %n.vec120 = and i64 %i.v, 252                   ; 4 uses
  %i.z = shl nuw nsw i64 %n.vec120, 1
  %i.aa = trunc nuw nsw i64 %n.vec120 to i32
  %i.ab = sub nsw i32 %i.j, %i.aa
  %cmp.n128 = icmp eq i64 %n.vec120, %i.v
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 2 uses
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 3 uses
  %indvars69 = trunc i64 %indvars.iv65 to i32     ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv65
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 2 uses
  %i.ae = load i32, ptr %i.r, align 8, !tbaa !66  ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %.idx54 = shl nuw nsw i64 %i.af, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx54
  %.not55 = icmp eq i32 %i.ae, 0
  br i1 %.not55, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78
  br label %iter.check114

._crit_edge.split.us.us.us:                       ; preds = %..loopexit_crit_edge.us.us.us, %.lr.ph.split.us.split.us
end_hunk_0
