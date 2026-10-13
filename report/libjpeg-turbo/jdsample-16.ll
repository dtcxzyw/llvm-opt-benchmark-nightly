Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdsample-16?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@h1v2_fancy_upsample:bb.a
  %.02632.us.us.unr = phi ptr [ %.02632.us.us.ph, %scalar.ph62.preheader ], [ %i.av, %scalar.ph62.prol ]
  %.12831.us.us.unr = phi ptr [ %.12831.us.us.ph, %scalar.ph62.preheader ], [ %i.ao, %scalar.ph62.prol ]
  %.02930.us.us.unr = phi ptr [ %.02930.us.us.ph, %scalar.ph62.preheader ], [ %i.ak, %scalar.ph62.prol ]
  %i.ax = icmp eq i32 %i.f, %.neg
  br i1 %i.ax, label %._crit_edge.us.us, label %scalar.ph62

scalar.ph62:                                      ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62
  %.02433.us.us = phi i32 [ %i.bw, %scalar.ph62 ], [ %.02433.us.us.unr, %scalar.ph62.prol.loopexit ]
  %.02632.us.us = phi ptr [ %i.bv, %scalar.ph62 ], [ %.02632.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %.12831.us.us = phi ptr [ %i.bo, %scalar.ph62 ], [ %.12831.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %.02930.us.us = phi ptr [ %i.bk, %scalar.ph62 ], [ %.02930.us.us.unr, %scalar.ph62.prol.loopexit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02930.us.us, i64 2
  %i.az = load i16, ptr %.02930.us.us, align 2, !tbaa !51
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.12831.us.us, i64 2
  %i.bd = load i16, ptr %.12831.us.us, align 2, !tbaa !51
  %i.be = zext i16 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.be, 1
  %i.bg = add nuw nsw i32 %i.bf, %i.bb
  %i.bh = lshr i32 %i.bg, 2
  %i.bi = trunc nuw i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 2
  store i16 %i.bi, ptr %.02632.us.us, align 2, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %.02930.us.us, i64 4
  %i.bl = load i16, ptr %i.ay, align 2, !tbaa !51
  %i.bm = zext i16 %i.bl to i32
  %i.bn = mul nuw nsw i32 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %.12831.us.us, i64 4
  %i.bp = load i16, ptr %i.bc, align 2, !tbaa !51
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bq, 1
  %i.bs = add nuw nsw i32 %i.br, %i.bn
  %i.bt = lshr i32 %i.bs, 2
  %i.bu = trunc nuw i32 %i.bt to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %.02632.us.us, i64 4
  store i16 %i.bu, ptr %i.bj, align 2, !tbaa !51
  %i.bw = add nuw i32 %.02433.us.us, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bw, %i.f
  br i1 %exitcond.not.1, label %._crit_edge.us.us, label %scalar.ph62, !llvm.loop !102

._crit_edge.us.us:                                ; preds = %scalar.ph62.prol.loopexit, %scalar.ph62, %middle.block74
  %.027.in.us.us.1 = getelementptr i8, ptr %i.p, i64 8
  %.027.us.us.1 = load ptr, ptr %.027.in.us.us.1, align 8, !tbaa !50 ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !50 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge.us.us
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 2 uses
  %.027.us.us.149 = ptrtoaddr ptr %.027.us.us.1 to i64
  %i.cb = sub i64 %i.r, %i.ca
  %diff.check = icmp ugt i64 %i.cb, -16
  %i.cc = sub i64 %.027.us.us.149, %i.ca
  %diff.check50 = icmp ugt i64 %i.cc, -16
  %conflict.rdx = or i1 %diff.check, %diff.check50
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cd = getelementptr i8, ptr %i.bz, i64 %i.o
  %i.ce = getelementptr i8, ptr %.027.us.us.1, i64 %i.o
  %i.cf = getelementptr i8, ptr %i.q, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 1                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.cg
  %next.gep51 = getelementptr i8, ptr %.027.us.us.1, i64 %i.cg
  %next.gep52 = getelementptr i8, ptr %i.q, i64 %i.cg
  %wide.load = load <8 x i16>, ptr %next.gep52, align 2, !tbaa !51
  %i.ch = zext <8 x i16> %wide.load to <8 x i32>
  %i.ci = mul nuw nsw <8 x i32> %i.ch, splat (i32 3)
  %wide.load53 = load <8 x i16>, ptr %next.gep51, align 2, !tbaa !51
  %i.cj = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.ck = add nuw nsw <8 x i32> %i.cj, splat (i32 2)
  %i.cl = add nuw nsw <8 x i32> %i.ck, %i.ci
  %i.cm = lshr <8 x i32> %i.cl, splat (i32 2)
  %i.cn = trunc nuw <8 x i32> %i.cm to <8 x i16>
  store <8 x i16> %i.cn, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.1, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %._crit_edge.us.us, %middle.block
  %.02433.us.us.1.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %._crit_edge.us.us ], [ %i.n, %middle.block ] ; 4 uses
  %.02632.us.us.1.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %._crit_edge.us.us ], [ %i.cd, %middle.block ] ; 3 uses
  %.12831.us.us.1.ph = phi ptr [ %.027.us.us.1, %vector.memcheck ], [ %.027.us.us.1, %._crit_edge.us.us ], [ %i.ce, %middle.block ] ; 3 uses
  %.02930.us.us.1.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %._crit_edge.us.us ], [ %i.cf, %middle.block ] ; 3 uses
  %i.cp = sub i32 %i.f, %.02433.us.us.1.ph
  %.neg86 = add i32 %.02433.us.us.1.ph, 1
  %xtraiter84 = and i32 %i.cp, 1
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %.02930.us.us.1.ph, i64 2
  %i.cr = load i16, ptr %.02930.us.us.1.ph, align 2, !tbaa !51
  %i.cs = zext i16 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %.12831.us.us.1.ph, i64 2
  %i.cv = load i16, ptr %.12831.us.us.1.ph, align 2, !tbaa !51
  %i.cw = zext i16 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cw, 2
  %i.cy = add nuw nsw i32 %i.cx, %i.ct
  %i.cz = lshr i32 %i.cy, 2
  %i.da = trunc nuw i32 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %.02632.us.us.1.ph, i64 2
  store i16 %i.da, ptr %.02632.us.us.1.ph, align 2, !tbaa !51
  %i.dc = add nuw i32 %.02433.us.us.1.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02433.us.us.1.unr = phi i32 [ %.02433.us.us.1.ph, %scalar.ph.preheader ], [ %i.dc, %scalar.ph.prol ]
  %.02632.us.us.1.unr = phi ptr [ %.02632.us.us.1.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %.12831.us.us.1.unr = phi ptr [ %.12831.us.us.1.ph, %scalar.ph.preheader ], [ %i.cu, %scalar.ph.prol ]
  %.02930.us.us.1.unr = phi ptr [ %.02930.us.us.1.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %i.dd = icmp eq i32 %i.f, %.neg86
  br i1 %i.dd, label %._crit_edge.us.us.1, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02433.us.us.1 = phi i32 [ %i.ec, %scalar.ph ], [ %.02433.us.us.1.unr, %scalar.ph.prol.loopexit ]
  %.02632.us.us.1 = phi ptr [ %i.eb, %scalar.ph ], [ %.02632.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.12831.us.us.1 = phi ptr [ %i.du, %scalar.ph ], [ %.12831.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.02930.us.us.1 = phi ptr [ %i.dq, %scalar.ph ], [ %.02930.us.us.1.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.02930.us.us.1, i64 2
  %i.df = load i16, ptr %.02930.us.us.1, align 2, !tbaa !51
  %i.dg = zext i16 %i.df to i32
  %i.dh = mul nuw nsw i32 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %.12831.us.us.1, i64 2
  %i.dj = load i16, ptr %.12831.us.us.1, align 2, !tbaa !51
  %i.dk = zext i16 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dk, 2
  %i.dm = add nuw nsw i32 %i.dl, %i.dh
  %i.dn = lshr i32 %i.dm, 2
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 2
  store i16 %i.do, ptr %.02632.us.us.1, align 2, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %.02930.us.us.1, i64 4
  %i.dr = load i16, ptr %i.de, align 2, !tbaa !51
  %i.ds = zext i16 %i.dr to i32
  %i.dt = mul nuw nsw i32 %i.ds, 3
  %i.du = getelementptr inbounds nuw i8, ptr %.12831.us.us.1, i64 4
  %i.dv = load i16, ptr %i.di, align 2, !tbaa !51
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dw, 2
  %i.dy = add nuw nsw i32 %i.dx, %i.dt
  %i.dz = lshr i32 %i.dy, 2
  %i.ea = trunc nuw i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %.02632.us.us.1, i64 4
  store i16 %i.ea, ptr %i.dp, align 2, !tbaa !51
  %i.ec = add nuw i32 %.02433.us.us.1, 2          ; 2 uses
  %exitcond.1.not.1 = icmp eq i32 %i.ec, %i.f
  br i1 %exitcond.1.not.1, label %._crit_edge.us.us.1, label %scalar.ph, !llvm.loop !104

._crit_edge.us.us.1:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv, 2
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count
  br i1 %exitcond47.not, label %._crit_edge, label %.preheader.us, !llvm.loop !105

._crit_edge:                                      ; preds = %._crit_edge.us.us.1, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !48     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.g = add i32 %i.f, -2                         ; 11 uses
  %.not53 = icmp eq i32 %i.g, 0
  %i.h = add nsw i32 %i.c, -1
  %i.i = lshr i32 %i.h, 1
  %i.j = add nuw nsw i32 %i.i, 1
  %wide.trip.count89 = zext nneg i32 %i.j to i64  ; 2 uses
  br i1 %.not53, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.k = add i32 %i.f, -3                         ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = shl nuw nsw i64 %i.l, 1
  %i.o = add nuw nsw i64 %i.n, 6                  ; 2 uses
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = shl nuw nsw i64 %i.p, 1
  %i.s = add nuw nsw i64 %i.r, 6                  ; 2 uses
  %i.t = zext i32 %i.g to i64                     ; 2 uses
  %min.iters.check124 = icmp ult i32 %i.g, 8
  %n.vec126 = and i64 %i.t, 4294967292            ; 5 uses
  %i.u = shl nuw nsw i64 %n.vec126, 2             ; 2 uses
  %i.v = trunc nuw i64 %n.vec126 to i32
  %i.w = sub i32 %i.g, %i.v
  %i.x = shl nuw nsw i64 %n.vec126, 1             ; 2 uses
  %cmp.n144 = icmp eq i64 %n.vec126, %i.t
  %i.y = zext i32 %i.g to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.g, 8
  %n.vec = and i64 %i.y, 4294967292               ; 5 uses
  %i.z = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.aa = trunc nuw i64 %n.vec to i32
  %i.ab = sub i32 %i.g, %i.aa
  %i.ac = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.preheader.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.preheader.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  %.049.in.us.us = getelementptr i8, ptr %i.ad, i64 -8
  %.049.us.us = load ptr, ptr %.049.in.us.us, align 8, !tbaa !50 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv82
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 4 uses
  %i.ai = load i16, ptr %i.ae, align 2, !tbaa !51
  %i.aj = zext i16 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %.049.us.us, i64 2
  %i.am = load i16, ptr %.049.us.us, align 2, !tbaa !51
  %i.an = zext i16 %i.am to i64
  %i.ao = add nuw nsw i64 %i.ak, %i.an            ; 3 uses
  %i.ap = load i16, ptr %i.af, align 2, !tbaa !51
  %i.aq = zext i16 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 3
  %i.as = load i16, ptr %i.al, align 2, !tbaa !51
  %i.at = zext i16 %i.as to i64
  %i.au = add nuw nsw i64 %i.ar, %i.at            ; 3 uses
  %i.av = shl nuw nsw i64 %i.ao, 2
  %i.aw = add nuw nsw i64 %i.av, 8
  %i.ax = lshr i64 %i.aw, 4
  %i.ay = trunc nuw i64 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i16 %i.ay, ptr %i.ah, align 2, !tbaa !51
  %i.ba = mul nuw nsw i64 %i.ao, 3
  %i.bb = add nuw nsw i64 %i.ba, 7
  %i.bc = add nuw nsw i64 %i.bb, %i.au
  %i.bd = lshr i64 %i.bc, 4
  %i.be = trunc nuw i64 %i.bd to i16
  store i16 %i.be, ptr %i.az, align 2, !tbaa !51
  %.04852.us.us = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.bf = mul nuw nsw i64 %i.au, 3
  %i.bg = add nuw nsw i64 %i.ao, 8
  %i.bh = add nuw nsw i64 %i.bg, %i.bf
  %i.bi = lshr i64 %i.bh, 4
  %i.bj = trunc nuw i64 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store i16 %i.bj, ptr %.04852.us.us, align 2, !tbaa !51
  %i.bl = shl nuw nsw i64 %i.au, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  %i.bn = lshr i64 %i.bm, 4
  %i.bo = trunc nuw i64 %i.bn to i16
  store i16 %i.bo, ptr %i.bk, align 2, !tbaa !51
  %.049.in.us.us.1 = getelementptr i8, ptr %i.ad, i64 8
  %.049.us.us.1 = load ptr, ptr %.049.in.us.us.1, align 8, !tbaa !50 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv82
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50 ; 4 uses
  %i.bs = load i16, ptr %i.ae, align 2, !tbaa !51
  %i.bt = zext i16 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %.049.us.us.1, i64 2
  %i.bw = load i16, ptr %.049.us.us.1, align 2, !tbaa !51
  %i.bx = zext i16 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bu, %i.bx            ; 3 uses
  %i.bz = load i16, ptr %i.af, align 2, !tbaa !51
  %i.ca = zext i16 %i.bz to i64
  %i.cb = mul nuw nsw i64 %i.ca, 3
  %i.cc = load i16, ptr %i.bv, align 2, !tbaa !51
  %i.cd = zext i16 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cb, %i.cd            ; 3 uses
  %i.cf = shl nuw nsw i64 %i.by, 2
  %i.cg = add nuw nsw i64 %i.cf, 8
  %i.ch = lshr i64 %i.cg, 4
  %i.ci = trunc nuw i64 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 %i.ci, ptr %i.br, align 2, !tbaa !51
  %i.ck = mul nuw nsw i64 %i.by, 3
  %i.cl = add nuw nsw i64 %i.ck, 7
  %i.cm = add nuw nsw i64 %i.cl, %i.ce
  %i.cn = lshr i64 %i.cm, 4
  %i.co = trunc nuw i64 %i.cn to i16
  store i16 %i.co, ptr %i.cj, align 2, !tbaa !51
  %.04852.us.us.1 = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cp = mul nuw nsw i64 %i.ce, 3
  %i.cq = add nuw nsw i64 %i.by, 8
  %i.cr = add nuw nsw i64 %i.cq, %i.cp
  %i.cs = lshr i64 %i.cr, 4
  %i.ct = trunc nuw i64 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store i16 %i.ct, ptr %.04852.us.us.1, align 2, !tbaa !51
  %i.cv = shl nuw nsw i64 %i.ce, 2
  %i.cw = add nuw nsw i64 %i.cv, 4
  %i.cx = lshr i64 %i.cw, 4
  %i.cy = trunc nuw i64 %i.cx to i16
  store i16 %i.cy, ptr %i.cu, align 2, !tbaa !51
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 2
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge68, label %.preheader.us, !llvm.loop !106

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.1
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.1 ], [ 0, %.preheader.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next73, %._crit_edge.1 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !50 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 4      ; 10 uses
  %.049.in = getelementptr i8, ptr %i.cz, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !50 ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !50 ; 7 uses
  %i.df = load i16, ptr %i.da, align 2, !tbaa !51
  %i.dg = zext i16 %i.df to i64
  %i.dh = mul nuw nsw i64 %i.dg, 3
  %i.di = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.dj = load i16, ptr %.049, align 2, !tbaa !51
  %i.dk = zext i16 %i.dj to i64
  %i.dl = add nuw nsw i64 %i.dh, %i.dk            ; 5 uses
  %i.dm = load i16, ptr %i.db, align 2, !tbaa !51
  %i.dn = zext i16 %i.dm to i64
  %i.do = mul nuw nsw i64 %i.dn, 3
  %i.dp = getelementptr i8, ptr %.049, i64 4      ; 5 uses
  %i.dq = load i16, ptr %i.di, align 2, !tbaa !51
  %i.dr = zext i16 %i.dq to i64
  %i.ds = add nuw nsw i64 %i.do, %i.dr            ; 4 uses
  %i.dt = shl nuw nsw i64 %i.dl, 2
  %i.du = add nuw nsw i64 %i.dt, 8
  %i.dv = lshr i64 %i.du, 4
  %i.dw = trunc nuw i64 %i.dv to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i16 %i.dw, ptr %i.de, align 2, !tbaa !51
  %i.dy = mul nuw nsw i64 %i.dl, 3
  %i.dz = add nuw nsw i64 %i.dy, 7
  %i.ea = add nuw nsw i64 %i.dz, %i.ds
  %i.eb = lshr i64 %i.ea, 4
  %i.ec = trunc nuw i64 %i.eb to i16
  store i16 %i.ec, ptr %i.dx, align 2, !tbaa !51
  %.04852 = getelementptr i8, ptr %i.de, i64 4    ; 6 uses
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.memcheck112

vector.memcheck112:                               ; preds = %.preheader
  %i.ed = getelementptr i8, ptr %i.de, i64 %i.q
  %scevgep113 = getelementptr i8, ptr %i.ed, i64 8 ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.da, i64 %i.s
  %scevgep115 = getelementptr i8, ptr %.049, i64 %i.s
  %bound0116 = icmp ult ptr %.04852, %scevgep114
  %bound1117 = icmp ult ptr %i.dc, %scevgep113
  %found.conflict118 = and i1 %bound0116, %bound1117
  %bound0119 = icmp ult ptr %.04852, %scevgep115
  %bound1120 = icmp ult ptr %i.dp, %scevgep113
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %found.conflict118, %found.conflict121
  br i1 %conflict.rdx122, label %scalar.ph123.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %vector.memcheck112
  %i.ee = getelementptr i8, ptr %.04852, i64 %i.u ; 2 uses
  %i.ef = getelementptr i8, ptr %i.de, i64 %i.u   ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dp, i64 %i.x
  %i.eh = getelementptr i8, ptr %i.dc, i64 %i.x
  %vector.recur.init129 = insertelement <4 x i64> poison, i64 %i.dl, i64 3
  %vector.recur.init131 = insertelement <4 x i64> poison, i64 %i.ds, i64 3
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next139, %vector.body127 ] ; 3 uses
  %vector.recur130 = phi <4 x i64> [ %vector.recur.init129, %vector.ph125 ], [ %i.eo, %vector.body127 ]
  %vector.recur132 = phi <4 x i64> [ %vector.recur.init131, %vector.ph125 ], [ %i.en, %vector.body127 ]
  %i.ei = shl i64 %index128, 2
  %next.gep133 = getelementptr i8, ptr %.04852, i64 %i.ei
  %i.ej = shl i64 %index128, 1                    ; 2 uses
  %next.gep134 = getelementptr i8, ptr %i.dp, i64 %i.ej
  %next.gep135 = getelementptr i8, ptr %i.dc, i64 %i.ej
  %wide.load136 = load <4 x i16>, ptr %next.gep135, align 2, !tbaa !51, !alias.scope !119
  %i.ek = zext <4 x i16> %wide.load136 to <4 x i64>
  %i.el = mul nuw nsw <4 x i64> %i.ek, splat (i64 3)
  %wide.load137 = load <4 x i16>, ptr %next.gep134, align 2, !tbaa !51, !alias.scope !120
  %i.em = zext <4 x i16> %wide.load137 to <4 x i64>
  %i.en = add nuw nsw <4 x i64> %i.el, %i.em      ; 6 uses
  %i.eo = shufflevector <4 x i64> %vector.recur132, <4 x i64> %i.en, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.ep = shufflevector <4 x i64> %vector.recur130, <4 x i64> %i.eo, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.eq = mul nuw nsw <4 x i64> %i.eo, splat (i64 3) ; 2 uses
  %i.er = add nuw nsw <4 x i64> %i.ep, splat (i64 8)
  %i.es = add nuw nsw <4 x i64> %i.er, %i.eq
  %i.et = lshr <4 x i64> %i.es, splat (i64 4)
  %i.eu = trunc nuw <4 x i64> %i.et to <4 x i16>
  %i.ev = add nuw nsw <4 x i64> %i.eq, splat (i64 7)
  %i.ew = add nuw nsw <4 x i64> %i.ev, %i.en
  %i.ex = lshr <4 x i64> %i.ew, splat (i64 4)
  %i.ey = trunc nuw <4 x i64> %i.ex to <4 x i16>
  %interleaved.vec138 = shufflevector <4 x i16> %i.eu, <4 x i16> %i.ey, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec138, ptr %next.gep133, align 2, !tbaa !51, !alias.scope !121, !noalias !122
  %index.next139 = add nuw i64 %index128, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next139, %n.vec126
  br i1 %i.ez, label %middle.block140, label %vector.body127, !llvm.loop !111

middle.block140:                                  ; preds = %vector.body127
end_hunk_0
