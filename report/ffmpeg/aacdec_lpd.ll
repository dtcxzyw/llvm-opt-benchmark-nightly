inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1163346256, 1) i32 @ff_aac_parse_fac_data(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13
  %i.e = load ptr, ptr %1, align 8, !tbaa !14
  %i.f = lshr i32 %i.b, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1, !tbaa !15
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = and i32 %i.b, 7
  %i.l = shl i32 %i.j, %i.k
  %i.m = lshr i32 %i.l, 25
  %i.n = add i32 %i.b, 7
  %i.o = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.n)
  store i32 %i.o, ptr %i.a, align 8, !tbaa !9
  %i.p = trunc nuw nsw i32 %i.m to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.p, ptr %i.q, align 4, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %4 = sdiv i32 %3, 8
  %i.r = icmp sgt i32 %3, 71
  br i1 %i.r, label %parse_codebook_idx.exit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not1722 = icmp sgt i32 %3, 7
  br i1 %.not1722, label %.lr.ph, label %parse_codebook_idx.exit

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 19 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !14     ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv ; 8 uses
  %i.x = load i32, ptr %i.v, align 8, !tbaa !13   ; 4 uses
  %.promoted.i.i.i = load i32, ptr %i.t, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %spec.select.i6.i.i.i = phi i32 [ %.promoted.i.i.i, %bb.d ], [ %spec.select.i.i.i.i.1, %bb.g ] ; 4 uses
  %.05.i.i.i = phi i32 [ 0, %bb.d ], [ %i.as, %bb.g ] ; 3 uses
  %i.y = lshr i32 %spec.select.i6.i.i.i, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = icmp slt i32 %spec.select.i6.i.i.i, %i.x
  %i.ad = zext i1 %i.ac to i32
  %spec.select.i.i.i.i = add i32 %spec.select.i6.i.i.i, %i.ad ; 6 uses
  %i.ae = zext i8 %i.ab to i32
  %i.af = and i32 %spec.select.i6.i.i.i, 7
  store i32 %spec.select.i.i.i.i, ptr %i.t, align 8, !tbaa !9
  %i.ag = lshr exact i32 128, %i.af
  %i.ah = and i32 %i.ag, %i.ae
  %.not.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i, label %get_unary.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = lshr i32 %spec.select.i.i.i.i, 3
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.am = icmp slt i32 %spec.select.i.i.i.i, %i.x
  %i.an = zext i1 %i.am to i32
  %spec.select.i.i.i.i.1 = add i32 %spec.select.i.i.i.i, %i.an ; 4 uses
  %i.ao = zext i8 %i.al to i32
  %i.ap = and i32 %spec.select.i.i.i.i, 7
  store i32 %spec.select.i.i.i.i.1, ptr %i.t, align 8, !tbaa !9
  %i.aq = lshr exact i32 128, %i.ap
  %i.ar = and i32 %i.aq, %i.ao
  %.not.i.i.i.1 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.1, label %get_unary.exit.i.i.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = add nuw nsw i32 %.05.i.i.i, 2           ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i32 %i.as, 68
  br i1 %exitcond.not.i.i.i.1, label %parse_qn.exit.i, label %bb.e, !llvm.loop !23

get_unary.exit.i.i.split.loop.exit:               ; preds = %bb.f
  %i.at = or disjoint i32 %.05.i.i.i, 1
  br label %get_unary.exit.i.i

get_unary.exit.i.i:                               ; preds = %bb.e, %get_unary.exit.i.i.split.loop.exit
  %.05.i.i.i.lcssa = phi i32 [ %i.at, %get_unary.exit.i.i.split.loop.exit ], [ %.05.i.i.i, %bb.e ] ; 2 uses
  %spec.select.i.i.i.i.lcssa = phi i32 [ %spec.select.i.i.i.i.1, %get_unary.exit.i.i.split.loop.exit ], [ %spec.select.i.i.i.i, %bb.e ]
  %.not.i.i = icmp eq i32 %.05.i.i.i.lcssa, 0
  %i.au = add nuw nsw i32 %.05.i.i.i.lcssa, 1
  %spec.select.i.i = select i1 %.not.i.i, i32 0, i32 %i.au
  br label %parse_qn.exit.i

parse_qn.exit.i:                                  ; preds = %bb.g, %get_unary.exit.i.i
  %spec.select.i.i.i.i37 = phi i32 [ %spec.select.i.i.i.i.lcssa, %get_unary.exit.i.i ], [ %spec.select.i.i.i.i.1, %bb.g ]
  %i.av = phi i32 [ %spec.select.i.i, %get_unary.exit.i.i ], [ 69, %bb.g ] ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 4                   ; 2 uses
  %i.ax = add nsw i32 %i.av, -3                   ; 2 uses
  %i.ay = lshr i32 %i.ax, 1
  %.1.le.i = select i1 %i.aw, i32 %i.ay, i32 0    ; 11 uses
  %i.az = icmp samesign ugt i32 %.1.le.i, 25
  br i1 %i.az, label %parse_codebook_idx.exit, label %bb.h

bb.h:                                             ; preds = %parse_qn.exit.i
  %i.ba = and i32 %i.ax, -2
  %i.bb = select i1 %i.aw, i32 %i.ba, i32 0
  %.124.le.i = sub nsw i32 %i.av, %i.bb
  %i.bc = shl nsw i32 %.124.le.i, 2
  %i.bd = add i32 %i.bc, %spec.select.i.i.i.i37
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.bd) ; 4 uses
  store i32 %i.be, ptr %i.t, align 8, !tbaa !9
  %.not.i = icmp eq i32 %.1.le.i, 0
  br i1 %.not.i, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.bf = sub nuw nsw i32 32, %.1.le.i            ; 8 uses
  %i.bg = lshr i32 %i.be, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !15
  %i.bk = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bl = and i32 %i.be, 7
  %i.bm = shl i32 %i.bk, %i.bl
  %i.bn = lshr i32 %i.bm, %i.bf
  %i.bo = add i32 %i.be, %.1.le.i
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.bo)
  store i32 %i.bp, ptr %i.t, align 8, !tbaa !9
  store i32 %i.bn, ptr %i.w, align 4, !tbaa !25
  %i.bq = load i32, ptr %i.t, align 8, !tbaa !9   ; 3 uses
  %i.br = load i32, ptr %i.v, align 8, !tbaa !13
  %i.bs = lshr i32 %i.bq, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !15
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = and i32 %i.bq, 7
  %i.by = shl i32 %i.bw, %i.bx
  %i.bz = lshr i32 %i.by, %i.bf
  %i.ca = add i32 %i.bq, %.1.le.i
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.br, i32 %i.ca)
  store i32 %i.cb, ptr %i.t, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.bz, ptr %i.cc, align 4, !tbaa !25
  %i.cd = load i32, ptr %i.t, align 8, !tbaa !9   ; 3 uses
  %i.ce = load i32, ptr %i.v, align 8, !tbaa !13
  %i.cf = lshr i32 %i.cd, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !15
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ci)
  %i.ck = and i32 %i.cd, 7
  %i.cl = shl i32 %i.cj, %i.ck
  %i.cm = lshr i32 %i.cl, %i.bf
  %i.cn = add i32 %i.cd, %.1.le.i
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 %i.cn)
  store i32 %i.co, ptr %i.t, align 8, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.cm, ptr %i.cp, align 4, !tbaa !25
  %i.cq = load i32, ptr %i.t, align 8, !tbaa !9   ; 3 uses
  %i.cr = load i32, ptr %i.v, align 8, !tbaa !13
  %i.cs = lshr i32 %i.cq, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !15
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = and i32 %i.cq, 7
  %i.cy = shl i32 %i.cw, %i.cx
  %i.cz = lshr i32 %i.cy, %i.bf
  %i.da = add i32 %i.cq, %.1.le.i
  %i.db = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 %i.da)
  store i32 %i.db, ptr %i.t, align 8, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.cz, ptr %i.dc, align 4, !tbaa !25
  %i.dd = load i32, ptr %i.t, align 8, !tbaa !9   ; 3 uses
  %i.de = load i32, ptr %i.v, align 8, !tbaa !13
  %i.df = lshr i32 %i.dd, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !15
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dk = and i32 %i.dd, 7
  %i.dl = shl i32 %i.dj, %i.dk
  %i.dm = lshr i32 %i.dl, %i.bf
  %i.dn = add i32 %i.dd, %.1.le.i
  %i.do = tail call i32 @llvm.umin.i32(i32 %i.de, i32 %i.dn)
  store i32 %i.do, ptr %i.t, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.dm, ptr %i.dp, align 4, !tbaa !25
  %i.dq = load i32, ptr %i.t, align 8, !tbaa !9   ; 3 uses
  %i.dr = load i32, ptr %i.v, align 8, !tbaa !13
  %i.ds = lshr i32 %i.dq, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 1, !tbaa !15
  %i.dw = tail call i32 @llvm.bswap.i32(i32 %i.dv)
  %i.dx = and i32 %i.dq, 7
  %i.dy = shl i32 %i.dw, %i.dx
  %i.dz = lshr i32 %i.dy, %i.bf
  %i.ea = add i32 %i.dq, %.1.le.i
  %i.eb = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %i.ea)
  store i32 %i.eb, ptr %i.t, align 8, !tbaa !9
  %i.ec = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.dz, ptr %i.ec, align 4, !tbaa !25
  %i.ed = load i32, ptr %i.t, align 8, !tbaa !9   ; 3 uses
  %i.ee = load i32, ptr %i.v, align 8, !tbaa !13
  %i.ef = lshr i32 %i.ed, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 1, !tbaa !15
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei)
  %i.ek = and i32 %i.ed, 7
  %i.el = shl i32 %i.ej, %i.ek
  %i.em = lshr i32 %i.el, %i.bf
  %i.en = add i32 %i.ed, %.1.le.i
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 %i.en)
  store i32 %i.eo, ptr %i.t, align 8, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 %i.em, ptr %i.ep, align 4, !tbaa !25
  %i.eq = load i32, ptr %i.t, align 8, !tbaa !9   ; 3 uses
  %i.er = load i32, ptr %i.v, align 8, !tbaa !13
  %i.es = lshr i32 %i.eq, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !15
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  %i.ex = and i32 %i.eq, 7
  %i.ey = shl i32 %i.ew, %i.ex
  %i.ez = lshr i32 %i.ey, %i.bf
  %i.fa = add i32 %i.eq, %.1.le.i
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.er, i32 %i.fa)
  store i32 %i.fb, ptr %i.t, align 8, !tbaa !9
  %i.fc = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i32 %i.ez, ptr %i.fc, align 4, !tbaa !25
end_hunk_0
