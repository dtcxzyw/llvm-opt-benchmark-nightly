inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@h2v2_smooth_downsample:bb.a
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.aj = getelementptr i8, ptr %i.ac, i64 %i.x
  %broadcast.splatinsert156 = insertelement <4 x i16> poison, i16 %i.ae, i64 0
  %broadcast.splat157 = shufflevector <4 x i16> %broadcast.splatinsert156, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index158 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index158, 1
  %next.gep159 = getelementptr i8, ptr %i.ac, i64 %i.ak
  store <4 x i16> %broadcast.splat157, ptr %next.gep159, align 2, !tbaa !66
  %index.next160 = add nuw i64 %index158, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n161, label %._crit_edge.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.us.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %.01517.us.i.ph = phi i32 [ %i.o, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018.us.i = phi ptr [ %i.am, %vec.epilog.scalar.ph ], [ %.018.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01517.us.i = phi i32 [ %i.an, %vec.epilog.scalar.ph ], [ %.01517.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.018.us.i, i64 2
  store i16 %i.ae, ptr %.018.us.i, align 2, !tbaa !66
  %i.an = add nsw i32 %.01517.us.i, -1
  %i.ao = icmp sgt i32 %.01517.us.i, 1
  br i1 %i.ao, label %vec.epilog.scalar.ph, label %._crit_edge.us.i, !llvm.loop !97

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %expand_right_edge.exit, label %iter.check, !llvm.loop !73

expand_right_edge.exit:                           ; preds = %._crit_edge.us.i, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !54 ; 2 uses
  %.neg = mul i32 %i.aq, -80
  %i.ar = add i32 %.neg, 16384                    ; 4 uses
  %i.as = shl nsw i32 %i.aq, 4                    ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !52 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %expand_right_edge.exit
  %i.aw = add i32 %i.h, -2                        ; 6 uses
  %.not115117 = icmp eq i32 %i.aw, 0
  %wide.trip.count = zext nneg i32 %i.au to i64
  %.pre = load ptr, ptr %2, align 8, !tbaa !64
  %i.ax = add i32 %i.h, -3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = shl nuw nsw i64 %i.ay, 2
  %i.bb = add nuw nsw i64 %i.ba, 10               ; 4 uses
  %i.bc = zext i32 %i.aw to i64                   ; 2 uses
  %min.iters.check183 = icmp ult i32 %i.aw, 4
  %n.vec186 = and i64 %i.bc, 4294967292           ; 5 uses
  %i.bd = shl nuw nsw i64 %n.vec186, 1
  %i.be = shl nuw nsw i64 %n.vec186, 2            ; 4 uses
  %i.bf = trunc nuw i64 %n.vec186 to i32
  %i.bg = sub i32 %i.aw, %i.bf
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n222 = icmp eq i64 %n.vec186, %i.bc
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph130, %._crit_edge
  %i.bh = phi ptr [ %.pre, %.lr.ph130 ], [ %i.bq, %._crit_edge ] ; 5 uses
  %indvars.iv136 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next137, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv136
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64 ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !64 ; 5 uses
  %i.bn = getelementptr i8, ptr %i.bk, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !64 ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !64 ; 6 uses
  %i.br = load i16, ptr %i.bh, align 2, !tbaa !66
  %i.bs = zext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !66
  %i.bv = zext i16 %i.bu to i32
  %i.bw = load i16, ptr %i.bm, align 2, !tbaa !66
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !66
  %i.ca = zext i16 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.bx, %i.bs            ; 2 uses
  %i.cc = add nuw nsw i32 %i.cb, %i.bv
  %i.cd = add nuw nsw i32 %i.cc, %i.ca
  %i.ce = load i16, ptr %i.bo, align 2, !tbaa !66
  %i.cf = zext i16 %i.ce to i32                   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !66
  %i.ci = zext i16 %i.ch to i32
  %i.cj = load i16, ptr %i.bq, align 2, !tbaa !66
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !66
  %i.cn = zext i16 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 6 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !66
  %i.cq = zext i16 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 6 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !66
  %i.ct = zext i16 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.cb, %i.cf
  %i.cv = add nuw nsw i32 %i.cu, %i.ci
  %i.cw = add nuw nsw i32 %i.cv, %i.ck
  %i.cx = add nuw nsw i32 %i.cw, %i.cn
  %i.cy = add nuw nsw i32 %i.cx, %i.cq
  %i.cz = add nuw nsw i32 %i.cy, %i.ct
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 6 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !66
  %i.dd = zext i16 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 6 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !66
  %i.dg = zext i16 %i.df to i32
  %i.dh = add nuw nsw i32 %i.ck, %i.cf
  %i.di = add nuw nsw i32 %i.dh, %i.dd
  %i.dj = add nuw nsw i32 %i.di, %i.dg
  %i.dk = add nuw nsw i32 %i.dj, %i.da
  %i.dl = mul i32 %i.cd, %i.ar
  %i.dm = mul i32 %i.dk, %i.as
  %i.dn = add i32 %i.dl, 32768
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = lshr i32 %i.do, 16
  %i.dq = trunc nuw i32 %i.dp to i16
  store i16 %i.dq, ptr %i.bj, align 2, !tbaa !66
  %.0109116 = getelementptr i8, ptr %i.bj, i64 2  ; 9 uses
  br i1 %.not115117, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check183, label %.lr.ph.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dr = getelementptr i8, ptr %i.bj, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.dr, i64 4   ; 4 uses
  %scevgep164 = getelementptr i8, ptr %i.bh, i64 2
  %scevgep165 = getelementptr i8, ptr %i.bh, i64 %i.bb
  %scevgep166 = getelementptr i8, ptr %i.bm, i64 2
  %scevgep167 = getelementptr i8, ptr %i.bm, i64 %i.bb
  %scevgep168 = getelementptr i8, ptr %i.bo, i64 2
  %scevgep169 = getelementptr i8, ptr %i.bo, i64 %i.bb
  %scevgep170 = getelementptr i8, ptr %i.bq, i64 2
  %scevgep171 = getelementptr i8, ptr %i.bq, i64 %i.bb
  %bound0 = icmp ult ptr %.0109116, %scevgep165
  %bound1 = icmp ult ptr %scevgep164, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0172 = icmp ult ptr %.0109116, %scevgep167
  %bound1173 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx = or i1 %found.conflict, %found.conflict174
  %bound0175 = icmp ult ptr %.0109116, %scevgep169
  %bound1176 = icmp ult ptr %scevgep168, %scevgep
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx, %found.conflict177
  %bound0179 = icmp ult ptr %.0109116, %scevgep171
  %bound1180 = icmp ult ptr %scevgep170, %scevgep
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  br i1 %conflict.rdx182, label %.lr.ph.preheader228, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck
  %i.ds = getelementptr i8, ptr %.0109116, i64 %i.bd ; 2 uses
  %i.dt = getelementptr i8, ptr %i.de, i64 %i.be  ; 2 uses
  %i.du = getelementptr i8, ptr %i.db, i64 %i.be  ; 2 uses
  %i.dv = getelementptr i8, ptr %i.cr, i64 %i.be  ; 2 uses
  %i.dw = getelementptr i8, ptr %i.co, i64 %i.be  ; 2 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph184
  %index192 = phi i64 [ 0, %vector.ph184 ], [ %index.next220, %vector.body191 ] ; 3 uses
  %i.dx = shl i64 %index192, 1
  %next.gep193 = getelementptr i8, ptr %.0109116, i64 %i.dx
  %i.dy = shl i64 %index192, 2                    ; 4 uses
  %next.gep194 = getelementptr i8, ptr %i.de, i64 %i.dy ; 2 uses
  %next.gep195 = getelementptr i8, ptr %i.db, i64 %i.dy ; 2 uses
  %next.gep196 = getelementptr i8, ptr %i.cr, i64 %i.dy ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.co, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep197, i64 -2
  %wide.vec = load <8 x i16>, ptr %i.dz, align 2, !tbaa !66, !alias.scope !98 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec198 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %4 = zext <4 x i16> %strided.vec198 to <4 x i32>
  %i.ea = getelementptr inbounds nuw i8, ptr %next.gep197, i64 2
  %wide.vec199 = load <8 x i16>, ptr %i.ea, align 2, !tbaa !66, !alias.scope !98 ; 2 uses
  %strided.vec200 = shufflevector <8 x i16> %wide.vec199, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec201 = shufflevector <8 x i16> %wide.vec199, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %5 = zext <4 x i16> %strided.vec200 to <4 x i32>
  %i.eb = add nuw nsw <4 x i32> %5, %4
  %i.ec = getelementptr i8, ptr %next.gep196, i64 -2
  %wide.vec202 = load <8 x i16>, ptr %i.ec, align 2, !tbaa !66, !alias.scope !101 ; 2 uses
  %strided.vec203 = shufflevector <8 x i16> %wide.vec202, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec204 = shufflevector <8 x i16> %wide.vec202, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %6 = zext <4 x i16> %strided.vec204 to <4 x i32>
  %i.ed = add nuw nsw <4 x i32> %i.eb, %6
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep196, i64 2
  %wide.vec205 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !66, !alias.scope !101 ; 2 uses
  %strided.vec206 = shufflevector <8 x i16> %wide.vec205, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec207 = shufflevector <8 x i16> %wide.vec205, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %7 = zext <4 x i16> %strided.vec206 to <4 x i32>
  %i.ef = add nuw nsw <4 x i32> %i.ed, %7
  %i.eg = getelementptr i8, ptr %next.gep195, i64 -2
  %wide.vec208 = load <8 x i16>, ptr %i.eg, align 2, !tbaa !66, !alias.scope !103 ; 2 uses
  %strided.vec209 = shufflevector <8 x i16> %wide.vec208, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec210 = shufflevector <8 x i16> %wide.vec208, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %8 = zext <4 x i16> %strided.vec210 to <4 x i32>
  %9 = getelementptr inbounds nuw i8, ptr %next.gep195, i64 2
  %wide.vec211 = load <8 x i16>, ptr %9, align 2, !tbaa !66, !alias.scope !103 ; 2 uses
  %strided.vec212 = shufflevector <8 x i16> %wide.vec211, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec213 = shufflevector <8 x i16> %wide.vec211, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %10 = zext <4 x i16> %strided.vec212 to <4 x i32>
  %11 = add nuw nsw <4 x i32> %10, %8
  %12 = getelementptr i8, ptr %next.gep194, i64 -2
  %wide.vec214 = load <8 x i16>, ptr %12, align 2, !tbaa !66, !alias.scope !105 ; 2 uses
  %strided.vec215 = shufflevector <8 x i16> %wide.vec214, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec216 = shufflevector <8 x i16> %wide.vec214, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %13 = zext <4 x i16> %strided.vec216 to <4 x i32>
  %14 = add nuw nsw <4 x i32> %11, %13
  %15 = getelementptr inbounds nuw i8, ptr %next.gep194, i64 2
  %wide.vec217 = load <8 x i16>, ptr %15, align 2, !tbaa !66, !alias.scope !105 ; 2 uses
  %strided.vec218 = shufflevector <8 x i16> %wide.vec217, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec219 = shufflevector <8 x i16> %wide.vec217, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %16 = zext <4 x i16> %strided.vec218 to <4 x i32>
  %i.eh = add nuw nsw <4 x i32> %14, %16
  %17 = zext <4 x i16> %strided.vec to <4 x i32>
  %18 = add nuw nsw <4 x i32> %i.eh, %17
  %19 = zext <4 x i16> %strided.vec201 to <4 x i32>
  %20 = add nuw nsw <4 x i32> %18, %19
  %21 = zext <4 x i16> %strided.vec203 to <4 x i32>
  %22 = add nuw nsw <4 x i32> %20, %21
  %23 = zext <4 x i16> %strided.vec207 to <4 x i32>
  %i.ei = add nuw nsw <4 x i32> %22, %23
  %24 = shl nuw nsw <4 x i32> %i.ei, splat (i32 1)
  %25 = zext <4 x i16> %strided.vec209 to <4 x i32>
  %26 = zext <4 x i16> %strided.vec213 to <4 x i32>
  %i.ej = add nuw nsw <4 x i32> %26, %25
  %27 = zext <4 x i16> %strided.vec215 to <4 x i32>
  %28 = zext <4 x i16> %strided.vec219 to <4 x i32>
  %i.ek = add nuw nsw <4 x i32> %i.ej, %24
  %i.el = add nuw nsw <4 x i32> %i.ek, %27
  %i.em = add nuw nsw <4 x i32> %i.el, %28
  %i.en = mul <4 x i32> %i.ef, %broadcast.splat188
  %i.eo = mul <4 x i32> %i.em, %broadcast.splat190
  %i.ep = add <4 x i32> %i.en, splat (i32 32768)
  %i.eq = add <4 x i32> %i.ep, %i.eo
  %i.er = lshr <4 x i32> %i.eq, splat (i32 16)
  %i.es = trunc nuw <4 x i32> %i.er to <4 x i16>
  store <4 x i16> %i.es, ptr %next.gep193, align 2, !tbaa !66, !alias.scope !107, !noalias !109
  %index.next220 = add nuw i64 %index192, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next220, %n.vec186
  br i1 %i.et, label %middle.block221, label %vector.body191, !llvm.loop !110

middle.block221:                                  ; preds = %vector.body191
  br i1 %cmp.n222, label %._crit_edge, label %.lr.ph.preheader228

.lr.ph.preheader228:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block221
  %.0109123.ph = phi ptr [ %.0109116, %vector.memcheck ], [ %.0109116, %.lr.ph.preheader ], [ %i.ds, %middle.block221 ]
  %.0110122.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.preheader ], [ %i.dt, %middle.block221 ]
  %.0111121.ph = phi ptr [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph.preheader ], [ %i.du, %middle.block221 ]
  %.0112120.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.preheader ], [ %i.dv, %middle.block221 ]
  %.0113119.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %.lr.ph.preheader ], [ %i.dw, %middle.block221 ]
  %.0114118.ph = phi i32 [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.preheader ], [ %i.bg, %middle.block221 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader228, %.lr.ph
  %.0109123 = phi ptr [ %.0109, %.lr.ph ], [ %.0109123.ph, %.lr.ph.preheader228 ] ; 2 uses
  %.0110122 = phi ptr [ %i.gv, %.lr.ph ], [ %.0110122.ph, %.lr.ph.preheader228 ] ; 4 uses
  %.0111121 = phi ptr [ %i.go, %.lr.ph ], [ %.0111121.ph, %.lr.ph.preheader228 ] ; 4 uses
  %.0112120 = phi ptr [ %i.gg, %.lr.ph ], [ %.0112120.ph, %.lr.ph.preheader228 ] ; 4 uses
  %.0113119 = phi ptr [ %i.fy, %.lr.ph ], [ %.0113119.ph, %.lr.ph.preheader228 ] ; 4 uses
  %.0114118 = phi i32 [ %i.hh, %.lr.ph ], [ %.0114118.ph, %.lr.ph.preheader228 ]
  %i.eu = load i16, ptr %.0113119, align 2, !tbaa !66
  %i.ev = zext i16 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %.0113119, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !66
  %i.ey = zext i16 %i.ex to i32
  %i.ez = add nuw nsw i32 %i.ey, %i.ev
  %i.fa = load i16, ptr %.0112120, align 2, !tbaa !66
  %i.fb = zext i16 %i.fa to i32
  %i.fc = add nuw nsw i32 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %.0112120, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !66
  %i.ff = zext i16 %i.fe to i32
  %i.fg = add nuw nsw i32 %i.fc, %i.ff
  %i.fh = load i16, ptr %.0111121, align 2, !tbaa !66
  %i.fi = zext i16 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %.0111121, i64 2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !66
  %i.fl = zext i16 %i.fk to i32
  %i.fm = add nuw nsw i32 %i.fl, %i.fi
  %i.fn = load i16, ptr %.0110122, align 2, !tbaa !66
  %i.fo = zext i16 %i.fn to i32
  %i.fp = add nuw nsw i32 %i.fm, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %.0110122, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !66
  %i.fs = zext i16 %i.fr to i32
  %i.ft = add nuw nsw i32 %i.fp, %i.fs
  %i.fu = getelementptr inbounds i8, ptr %.0113119, i64 -2
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !66
  %i.fw = zext i16 %i.fv to i32
  %i.fx = add nuw nsw i32 %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.0113119, i64 4 ; 3 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !66
  %i.ga = zext i16 %i.fz to i32
  %i.gb = add nuw nsw i32 %i.fx, %i.ga
  %i.gc = getelementptr inbounds i8, ptr %.0112120, i64 -2
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !66
  %i.ge = zext i16 %i.gd to i32
  %i.gf = add nuw nsw i32 %i.gb, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %.0112120, i64 4 ; 3 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !66
  %i.gi = zext i16 %i.gh to i32
  %i.gj = add nuw nsw i32 %i.gf, %i.gi
  %i.gk = shl nuw nsw i32 %i.gj, 1
  %i.gl = getelementptr inbounds i8, ptr %.0111121, i64 -2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !66
  %i.gn = zext i16 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %.0111121, i64 4 ; 3 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !66
  %i.gq = zext i16 %i.gp to i32
  %i.gr = add nuw nsw i32 %i.gq, %i.gn
  %i.gs = getelementptr inbounds i8, ptr %.0110122, i64 -2
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !66
  %i.gu = zext i16 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %.0110122, i64 4 ; 3 uses
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !66
  %i.gx = zext i16 %i.gw to i32
  %i.gy = add nuw nsw i32 %i.gr, %i.gk
  %i.gz = add nuw nsw i32 %i.gy, %i.gu
  %i.ha = add nuw nsw i32 %i.gz, %i.gx
  %i.hb = mul i32 %i.fg, %i.ar
  %i.hc = mul i32 %i.ha, %i.as
  %i.hd = add i32 %i.hb, 32768
  %i.he = add i32 %i.hd, %i.hc
  %i.hf = lshr i32 %i.he, 16
  %i.hg = trunc nuw i32 %i.hf to i16
  store i16 %i.hg, ptr %.0109123, align 2, !tbaa !66
  %i.hh = add i32 %.0114118, -1                   ; 2 uses
  %.0109 = getelementptr inbounds nuw i8, ptr %.0109123, i64 2 ; 2 uses
  %.not115 = icmp eq i32 %i.hh, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph, %middle.block221, %bb.b
  %.0113.lcssa = phi ptr [ %i.co, %bb.b ], [ %i.dw, %middle.block221 ], [ %i.fy, %.lr.ph ] ; 3 uses
  %.0112.lcssa = phi ptr [ %i.cr, %bb.b ], [ %i.dv, %middle.block221 ], [ %i.gg, %.lr.ph ] ; 3 uses
  %.0111.lcssa = phi ptr [ %i.db, %bb.b ], [ %i.du, %middle.block221 ], [ %i.go, %.lr.ph ] ; 3 uses
  %.0110.lcssa = phi ptr [ %i.de, %bb.b ], [ %i.dt, %middle.block221 ], [ %i.gv, %.lr.ph ] ; 3 uses
  %.0109.lcssa = phi ptr [ %.0109116, %bb.b ], [ %i.ds, %middle.block221 ], [ %.0109, %.lr.ph ]
  %i.hi = load i16, ptr %.0113.lcssa, align 2, !tbaa !66
  %i.hj = zext i16 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %.0113.lcssa, i64 2
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !66
  %i.hm = zext i16 %i.hl to i32
  %i.hn = load i16, ptr %.0112.lcssa, align 2, !tbaa !66
  %i.ho = zext i16 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %.0112.lcssa, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !66
  %i.hr = zext i16 %i.hq to i32
  %i.hs = add nuw nsw i32 %i.hr, %i.hm            ; 2 uses
  %i.ht = add nuw nsw i32 %i.hs, %i.hj
  %i.hu = add nuw nsw i32 %i.ht, %i.ho
  %i.hv = load i16, ptr %.0111.lcssa, align 2, !tbaa !66
  %i.hw = zext i16 %i.hv to i32
  %i.hx = getelementptr inbounds nuw i8, ptr %.0111.lcssa, i64 2
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !66
  %i.hz = zext i16 %i.hy to i32                   ; 2 uses
  %i.ia = load i16, ptr %.0110.lcssa, align 2, !tbaa !66
  %i.ib = zext i16 %i.ia to i32
  %i.ic = getelementptr inbounds nuw i8, ptr %.0110.lcssa, i64 2
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !66
  %i.ie = zext i16 %i.id to i32                   ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %.0113.lcssa, i64 -2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !66
  %i.ih = zext i16 %i.ig to i32
  %i.ii = getelementptr inbounds i8, ptr %.0112.lcssa, i64 -2
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !66
  %i.ik = zext i16 %i.ij to i32
  %i.il = add nuw nsw i32 %i.hs, %i.hw
  %i.im = add nuw nsw i32 %i.il, %i.hz
  %i.in = add nuw nsw i32 %i.im, %i.ib
  %i.io = add nuw nsw i32 %i.in, %i.ie
  %i.ip = add nuw nsw i32 %i.io, %i.ih
  %i.iq = add nuw nsw i32 %i.ip, %i.ik
  %i.ir = shl nuw nsw i32 %i.iq, 1
  %i.is = getelementptr inbounds i8, ptr %.0111.lcssa, i64 -2
  %i.it = load i16, ptr %i.is, align 2, !tbaa !66
  %i.iu = zext i16 %i.it to i32
  %i.iv = getelementptr inbounds i8, ptr %.0110.lcssa, i64 -2
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !66
  %i.ix = zext i16 %i.iw to i32
  %i.iy = add nuw nsw i32 %i.ie, %i.hz
  %i.iz = add nuw nsw i32 %i.iy, %i.iu
  %i.ja = add nuw nsw i32 %i.iz, %i.ix
  %i.jb = add nuw nsw i32 %i.ja, %i.ir
  %i.jc = mul i32 %i.hu, %i.ar
  %i.jd = mul i32 %i.jb, %i.as
  %i.je = add i32 %i.jc, 32768
  %i.jf = add i32 %i.je, %i.jd
  %i.jg = lshr i32 %i.jf, 16
  %i.jh = trunc nuw i32 %i.jg to i16
  store i16 %i.jh, ptr %.0109.lcssa, align 2, !tbaa !66
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge131, label %bb.b, !llvm.loop !112

._crit_edge131:                                   ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_downsample(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load i32, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !63   ; 2 uses
  %i.m = shl i32 %i.h, 1
  %i.n = sub i32 %i.m, %i.l                       ; 7 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = icmp sgt i32 %i.j, 0
  %or.cond.i = and i1 %i.p, %i.o
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.q = zext i32 %i.l to i64
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  %i.r = zext nneg i32 %i.n to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 4
  %min.iters.check54 = icmp ult i32 %i.n, 16
  %n.mod.vf = and i64 %i.r, 12
  %n.vec = and i64 %i.r, 2147483632               ; 5 uses
  %i.s = shl nuw nsw i64 %n.vec, 1
end_hunk_0
