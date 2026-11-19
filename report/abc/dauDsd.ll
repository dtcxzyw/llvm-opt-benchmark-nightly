Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauDsd?download=true
inline.NumInlined: 326
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 82
begin_hunk_0_@Dau_DsdMinBase:bb.a
  %i.ao = lshr i64 %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next43
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45
  %i.ar = xor i64 %i.ao, %i.ak
  %i.as = and i64 %i.ar, %i.aq
  %.not29 = icmp eq i64 %i.as, 0
  br i1 %.not29, label %Abc_TtHasVar.exit.thread, label %Abc_TtHasVar.exit.thread26

Abc_TtHasVar.exit.thread:                         ; preds = %._crit_edge.us.i, %bb.d, %bb.c, %bb.f, %.preheader.lr.ph.i, %Abc_TtHasVar.exit
  %i.at = add nsw i32 %.02034, -1                 ; 3 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.next43 to i32
  tail call fastcc void @Abc_TtSwapVars(ptr noundef %0, i32 noundef %.02034, i32 noundef %i.au, i32 noundef %i.at)
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next43
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !37
  br label %Abc_TtHasVar.exit.thread26

Abc_TtHasVar.exit.thread26:                       ; preds = %bb.e, %bb.h, %Abc_TtHasVar.exit, %Abc_TtHasVar.exit.thread
  %.121 = phi i32 [ %.02034, %Abc_TtHasVar.exit ], [ %i.at, %Abc_TtHasVar.exit.thread ], [ %.02034, %bb.h ], [ %.02034, %bb.e ] ; 2 uses
  %i.az = icmp sgt i64 %indvars.iv42, 1
  br i1 %i.az, label %.lr.ph38, label %._crit_edge, !llvm.loop !312

._crit_edge:                                      ; preds = %Abc_TtHasVar.exit.thread26, %bb.a
  %.020.lcssa = phi i32 [ %1, %bb.a ], [ %.121, %Abc_TtHasVar.exit.thread26 ]
  ret i32 %.020.lcssa
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Abc_TtSwapVars(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 2147483647) %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %2, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 7 uses
  %spec.select117 = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 8 uses
  %i.b = icmp slt i32 %1, 7
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.d = sext i32 %spec.select117 to i64
  %i.e = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.d
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nuw i32 1, %spec.select
  %.neg.i = shl nsw i32 -1, %spec.select117
  %i.i = add i32 %i.h, %.neg.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !45
  %i.k = and i64 %i.j, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45
  %i.n = and i64 %i.m, %i.c
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = shl i64 %i.n, %i.o
  %i.q = or i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = and i64 %i.s, %i.c
  %i.u = lshr i64 %i.t, %i.o
  %i.v = or i64 %i.q, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !45
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = icmp slt i32 %spec.select, 6
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %1, -6                       ; 3 uses
  %.not135 = icmp eq i32 %i.x, 31
  br i1 %.not135, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = shl nuw i32 1, %i.x                      ; 3 uses
  %.neg = shl nsw i32 -1, %spec.select117
  %i.z = shl nuw nsw i32 1, %spec.select
  %i.aa = add nsw i32 %.neg, %i.z
  %i.ab = sext i32 %spec.select117 to i64
  %i.ac = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ab
  %i.ad = sext i32 %spec.select to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !45 ; 4 uses
  %i.ai = zext i32 %i.aa to i64                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !45 ; 4 uses
  %min.iters.check222 = icmp slt i32 %i.y, 4
  br i1 %min.iters.check222, label %scalar.ph221, label %vector.ph223

vector.ph223:                                     ; preds = %.lr.ph
  %i.al = and i32 %i.y, 2147483644
  %n.vec224 = zext nneg i32 %i.al to i64
  %broadcast.splatinsert225 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat226 = shufflevector <2 x i64> %broadcast.splatinsert225, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert227 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat228 = shufflevector <2 x i64> %broadcast.splatinsert227, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert229 = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat230 = shufflevector <2 x i64> %broadcast.splatinsert229, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert231 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat232 = shufflevector <2 x i64> %broadcast.splatinsert231, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph223
  %index234 = phi i64 [ 0, %vector.ph223 ], [ %index.next237, %vector.body233 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index234 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load235 = load <2 x i64>, ptr %i.am, align 8, !tbaa !45 ; 3 uses
  %wide.load236 = load <2 x i64>, ptr %i.an, align 8, !tbaa !45 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat226, %wide.load235
  %i.ap = and <2 x i64> %broadcast.splat226, %wide.load236
  %i.aq = and <2 x i64> %broadcast.splat228, %wide.load235
  %i.ar = and <2 x i64> %broadcast.splat228, %wide.load236
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat230
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat230
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat232, %wide.load235
  %i.ax = and <2 x i64> %broadcast.splat232, %wide.load236
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat230
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat230
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !45
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !45
  %index.next237 = add nuw i64 %index234, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next237, %n.vec224
  br i1 %i.bc, label %.loopexit, label %vector.body233, !llvm.loop !313

scalar.ph221:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !45    ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !45
  %exitcond160.not = icmp slt i32 %i.y, 2
  br i1 %exitcond160.not, label %.loopexit, label %scalar.ph221.1

scalar.ph221.1:                                   ; preds = %scalar.ph221
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !45 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !45
  %exitcond160.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond160.not.1, label %.loopexit, label %scalar.ph221.2

scalar.ph221.2:                                   ; preds = %scalar.ph221.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !45 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !45
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.cd = icmp slt i32 %spec.select117, 6
  %i.ce = add nsw i32 %1, -6                      ; 3 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.idx132 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.idx132 ; 2 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %spec.select, -6            ; 3 uses
  %i.cj = shl nuw i32 1, %i.ci                    ; 3 uses
  %.not133 = icmp eq i32 %i.ce, 31
  br i1 %.not133, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ck = shl nuw nsw i32 1, %spec.select117
  %.not134 = icmp eq i32 %i.ci, 31
  %i.cl = sext i32 %spec.select117 to i64         ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.cl ; 5 uses
  %i.cn = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.co = shl i32 2, %i.ci
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  br i1 %.not134, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.cq = sext i32 %i.cj to i64                   ; 2 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64 ; 3 uses
  %4 = shl nsw i64 %i.cq, 3                       ; 2 uses
  %5 = shl nuw nsw i64 %wide.trip.count153, 3     ; 3 uses
  %6 = add nsw i64 %4, %5                         ; 2 uses
  %i.cr = shl nsw i64 %i.cl, 3
  %i.cs = getelementptr i8, ptr @s_Truths6, i64 %i.cr
  %scevgep.a = getelementptr i8, ptr %i.cs, i64 8 ; 2 uses
  %i.ct = shl nsw i64 %i.cp, 3
  %scevgep200 = getelementptr i8, ptr %0, i64 %6
  %scevgep201 = getelementptr i8, ptr %0, i64 %4
  %scevgep202 = getelementptr i8, ptr %0, i64 %5
  %min.iters.check197 = icmp slt i32 %i.cj, 4
  %bound0206 = icmp ult ptr %0, %scevgep200
  %bound1207 = icmp ult ptr %scevgep201, %scevgep202
  %found.conflict208 = and i1 %bound0206, %bound1207
  %i.cu = getelementptr i8, ptr %0, i64 %5
  %i.cv = getelementptr i8, ptr %0, i64 %6
  %n.vec210 = and i64 %wide.trip.count153, 2147483646
  %broadcast.splatinsert211 = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat212 = shufflevector <2 x i64> %broadcast.splatinsert211, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar194 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next195, %._crit_edge.us ] ; 2 uses
  %.0128.us = phi ptr [ %0, %.preheader.us.preheader ], [ %i.dz, %._crit_edge.us ] ; 5 uses
  %invariant.gep169 = getelementptr [8 x i8], ptr %.0128.us, i64 %i.cq ; 3 uses
  br i1 %min.iters.check197, label %scalar.ph196.preheader, label %vector.memcheck198

scalar.ph196.preheader:                           ; preds = %vector.memcheck198, %.preheader.us
  br label %scalar.ph196

vector.memcheck198:                               ; preds = %.preheader.us
  %i.cw = mul i64 %indvar194, %i.ct               ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 %i.cw
  %bound0199 = icmp ult ptr %.0128.us, %scevgep.a
  %bound1200 = icmp ult ptr %i.cm, %i.cx
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx = or i1 %found.conflict208, %found.conflict201
  %7 = getelementptr i8, ptr %i.cv, i64 %i.cw
  %bound0205 = icmp ult ptr %invariant.gep169, %scevgep.a
  %bound1206 = icmp ult ptr %i.cm, %7
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx, %found.conflict207
  br i1 %conflict.rdx208, label %scalar.ph196.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %vector.memcheck198
  %i.cy = load i64, ptr %i.cm, align 8, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cy, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cz = xor <2 x i64> %broadcast.splat, splat (i64 -1)
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph209
  %index214 = phi i64 [ 0, %vector.ph209 ], [ %index.next217, %vector.body213 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %index214 ; 2 uses
  %wide.load215 = load <2 x i64>, ptr %i.da, align 8, !tbaa !45, !alias.scope !329, !noalias !330 ; 2 uses
  %i.db = and <2 x i64> %broadcast.splat, %wide.load215
  %i.dc = lshr <2 x i64> %i.db, %broadcast.splat212
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep169, i64 %index214 ; 2 uses
  %wide.load216 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !45, !alias.scope !331, !noalias !328 ; 2 uses
  %i.de = shl <2 x i64> %wide.load216, %broadcast.splat212
  %i.df = and <2 x i64> %i.de, %broadcast.splat
  %i.dg = and <2 x i64> %wide.load215, %i.cz
  %i.dh = or <2 x i64> %i.df, %i.dg
  store <2 x i64> %i.dh, ptr %i.da, align 8, !tbaa !45, !alias.scope !329, !noalias !330
  %i.di = and <2 x i64> %broadcast.splat, %wide.load216
  %i.dj = or <2 x i64> %i.di, %i.dc
  store <2 x i64> %i.dj, ptr %i.dd, align 8, !tbaa !45, !alias.scope !331, !noalias !328
  %index.next217 = add nuw i64 %index214, 2       ; 2 uses
  %i.dk = icmp eq i64 %index.next217, %n.vec210
  br i1 %i.dk, label %._crit_edge.us, label %vector.body213, !llvm.loop !318

scalar.ph196:                                     ; preds = %scalar.ph196.preheader, %scalar.ph196
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph196 ], [ 0, %scalar.ph196.preheader ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %indvars.iv149 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !45 ; 2 uses
  %i.dn = load i64, ptr %i.cm, align 8, !tbaa !45 ; 3 uses
  %i.do = and i64 %i.dn, %i.dm
  %i.dp = lshr i64 %i.do, %i.cn
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %indvars.iv149 ; 2 uses
  %i.dq = load i64, ptr %gep170, align 8, !tbaa !45 ; 2 uses
  %i.dr = shl i64 %i.dq, %i.cn
  %i.ds = and i64 %i.dr, %i.dn
  %i.dt = xor i64 %i.dn, -1
  %i.du = and i64 %i.dm, %i.dt
  %i.dv = or i64 %i.ds, %i.du
  store i64 %i.dv, ptr %i.dl, align 8, !tbaa !45
  %i.dw = load i64, ptr %i.cm, align 8, !tbaa !45
  %i.dx = and i64 %i.dw, %i.dq
  %i.dy = or i64 %i.dx, %i.dp
  store i64 %i.dy, ptr %gep170, align 8, !tbaa !45
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge.us, label %scalar.ph196, !llvm.loop !319

._crit_edge.us:                                   ; preds = %vector.body213, %scalar.ph196
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0128.us, i64 %i.cp ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %i.ch
  %indvar.next195 = add i64 %indvar194, 1
  br i1 %i.ea, label %.preheader.us, label %.loopexit, !llvm.loop !320

bb.h:                                             ; preds = %bb.f
  %i.eb = add nsw i32 %spec.select117, -6         ; 3 uses
  %i.ec = shl nuw i32 1, %i.eb                    ; 4 uses
  %i.ed = add nsw i32 %spec.select, -6            ; 3 uses
  %i.ee = shl nuw i32 1, %i.ed
  %.not = icmp eq i32 %i.ce, 31
  br i1 %.not, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %.not130 = icmp eq i32 %i.ed, 31
  %i.ef = shl i32 2, %i.ed
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %.not131 = icmp eq i32 %i.eb, 31
  %or.cond = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond, label %.loopexit, label %.preheader120.us.us.preheader

.preheader120.us.us.preheader:                    ; preds = %.preheader120.lr.ph
  %i.eh = shl i32 2, %i.eb
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 1) ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = sext i32 %i.ec to i64                   ; 2 uses
  %i.ek = sext i32 %i.ee to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %8 = add nsw i64 %i.ek, %wide.trip.count
  %9 = shl nsw i64 %8, 3
  %10 = shl nsw i64 %i.eg, 3
  %11 = add nsw i64 %i.ej, %wide.trip.count
  %12 = shl nsw i64 %11, 3
  %13 = getelementptr i8, ptr %0, i64 %9
  %14 = getelementptr i8, ptr %0, i64 %12
  %min.iters.check = icmp slt i32 %i.ec, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.el = icmp slt i32 %i.ec, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod246 = trunc i32 %smax to i1
  br label %.preheader120.us.us

.preheader120.us.us:                              ; preds = %.preheader120.us.us.preheader, %._crit_edge124.us.us
  %indvar = phi i64 [ 0, %.preheader120.us.us.preheader ], [ %indvar.next, %._crit_edge124.us.us ] ; 2 uses
  %.1125.us.us = phi ptr [ %0, %.preheader120.us.us.preheader ], [ %i.ff, %._crit_edge124.us.us ] ; 3 uses
  %i.em = mul i64 %10, %indvar                    ; 2 uses
  %scevgep = getelementptr i8, ptr %13, i64 %i.em
  %scevgep174 = getelementptr i8, ptr %14, i64 %i.em
  %invariant.gep = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.ej ; 2 uses
  %invariant.gep167 = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.ek ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep, %scevgep
  %bound1 = icmp ult ptr %invariant.gep167, %scevgep174
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader119.us.us

.preheader119.us.us:                              ; preds = %._crit_edge.us.us, %.preheader120.us.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %._crit_edge.us.us ], [ 0, %.preheader120.us.us ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146 ; 4 uses
  %gep168 = getelementptr [8 x i8], ptr %invariant.gep167, i64 %indvars.iv146 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vector.memcheck, label %vector.body

vector.memcheck:                                  ; preds = %.preheader119.us.us
  br i1 %i.el, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119.us.us ] ; 3 uses
  %i.en = getelementptr [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.en, align 8, !tbaa !45, !alias.scope !332, !noalias !333
  %wide.load176.a = load <2 x i64>, ptr %i.eo, align 8, !tbaa !45, !alias.scope !332, !noalias !333
  %i.ep = getelementptr [8 x i8], ptr %gep168, i64 %index ; 3 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 16     ; 2 uses
  %wide.load177.a = load <2 x i64>, ptr %i.ep, align 8, !tbaa !45, !alias.scope !333
  %wide.load178 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !45, !alias.scope !333
  store <2 x i64> %wide.load177.a, ptr %i.en, align 8, !tbaa !45, !alias.scope !332, !noalias !333
  store <2 x i64> %wide.load178, ptr %i.eo, align 8, !tbaa !45, !alias.scope !332, !noalias !333
  store <2 x i64> %wide.load, ptr %i.ep, align 8, !tbaa !45, !alias.scope !333
  store <2 x i64> %wide.load176.a, ptr %i.eq, align 8, !tbaa !45, !alias.scope !333
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %._crit_edge.us.us, label %vector.body, !llvm.loop !324

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %vector.memcheck ]
  %i.es = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !45
  %i.eu = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !45
  store i64 %i.ev, ptr %i.es, align 8, !tbaa !45
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !45
  %i.ey = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.next ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !45
  store i64 %i.ez, ptr %i.ew, align 8, !tbaa !45
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !325

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %vector.memcheck
  %indvars.iv.epil.init = phi i64 [ 0, %vector.memcheck ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.fa = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !45
  %i.fc = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.epil.init ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !45
  store i64 %i.fd, ptr %i.fa, align 8, !tbaa !45
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !45
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.ei ; 2 uses
  %i.fe = icmp slt i64 %indvars.iv.next147, %i.ek
  br i1 %i.fe, label %.preheader119.us.us, label %._crit_edge124.us.us, !llvm.loop !326

._crit_edge124.us.us:                             ; preds = %._crit_edge.us.us
  %i.ff = getelementptr inbounds [8 x i8], ptr %.1125.us.us, i64 %i.eg ; 2 uses
  %i.fg = icmp ult ptr %i.ff, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fg, label %.preheader120.us.us, label %.loopexit, !llvm.loop !327

.loopexit:                                        ; preds = %._crit_edge124.us.us, %._crit_edge.us, %vector.body233, %scalar.ph221, %scalar.ph221.1, %scalar.ph221.2, %.preheader120.lr.ph, %.preheader.lr.ph, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Dau_DsdDecomposeInt(ptr noundef initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 %2, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = icmp sgt i32 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %i.d, label %.lr.ph.i, label %Dau_DsdInitialize.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 13 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %2, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.c

.preheader.lr.ph.i.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.lr.ph.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.lr.ph.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %.preheader.lr.ph.i.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = trunc i64 %indvars.iv.i.epil to i8
  %i.h = add i8 %i.g, 97
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.epil ; 2 uses
  store i8 %i.h, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !36
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.lr.ph.i, label %bb.b, !llvm.loop !334

.preheader.lr.ph.i:                               ; preds = %bb.b, %.preheader.lr.ph.i.unr-lcssa
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 9 uses
  %xtraiter28 = and i64 %wide.trip.count.i, 7     ; 3 uses
  %i.l = icmp ult i32 %2, 8
  br i1 %i.l, label %.preheader.i.epil.preheader, label %.preheader.lr.ph.i.new

.preheader.lr.ph.i.new:                           ; preds = %.preheader.lr.ph.i
  %unroll_iter32 = and i64 %wide.trip.count.i, 2147483640
  br label %.preheader.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.m = trunc i64 %indvars.iv.i to i8
  %i.n = add i8 %i.m, 97
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  store i8 %i.n, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !36
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = trunc i64 %indvars.iv.next.i to i8
  %i.r = add i8 %i.q, 97
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i ; 2 uses
  store i8 %i.r, ptr %i.s, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.t, align 1, !tbaa !36
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next.i.1 to i8
  %i.v = add i8 %i.u, 97
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i.1 ; 2 uses
  store i8 %i.v, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %i.x, align 1, !tbaa !36
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.y = trunc i64 %indvars.iv.next.i.2 to i8
  %i.z = add i8 %i.y, 97
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i.2 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !36
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.lr.ph.i.unr-lcssa, label %bb.c, !llvm.loop !335

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.lr.ph.i.new
  %indvars.iv37.i = phi i64 [ 0, %.preheader.lr.ph.i.new ], [ %indvars.iv.next38.i.7, %.preheader.i ] ; 9 uses
  %niter33 = phi i64 [ 0, %.preheader.lr.ph.i.new ], [ %niter33.next.7, %.preheader.i ]
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv37.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 0, i64 %wide.trip.count.i, i1 false), !tbaa !36
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv37.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 0, i64 %wide.trip.count.i, i1 false), !tbaa !36
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv37.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %wide.trip.count.i, i1 false), !tbaa !36
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv37.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %wide.trip.count.i, i1 false), !tbaa !36
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv37.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %wide.trip.count.i, i1 false), !tbaa !36
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv37.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %wide.trip.count.i, i1 false), !tbaa !36
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv37.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 %wide.trip.count.i, i1 false), !tbaa !36
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv37.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 224
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %wide.trip.count.i, i1 false), !tbaa !36
  %indvars.iv.next38.i.7 = add nuw nsw i64 %indvars.iv37.i, 8 ; 2 uses
  %niter33.next.7 = add i64 %niter33, 8           ; 2 uses
  %niter33.ncmp.7 = icmp eq i64 %niter33.next.7, %unroll_iter32
  br i1 %niter33.ncmp.7, label %Dau_DsdInitialize.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !336

Dau_DsdInitialize.exit.loopexit.unr-lcssa:        ; preds = %.preheader.i
  %lcmp.mod30.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %Dau_DsdInitialize.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %Dau_DsdInitialize.exit.loopexit.unr-lcssa, %.preheader.lr.ph.i
  %indvars.iv37.i.epil.init = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next38.i.7, %Dau_DsdInitialize.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv37.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next38.i.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter29 = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter29.next, %.preheader.i.epil ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv37.i.epil
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ar, i8 0, i64 %wide.trip.count.i, i1 false), !tbaa !36
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter29.next = add i64 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i64 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %Dau_DsdInitialize.exit, label %.preheader.i.epil, !llvm.loop !337

Dau_DsdInitialize.exit:                           ; preds = %Dau_DsdInitialize.exit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.a
  %i.as = call i32 @Dau_DsdMinBase(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a) ; 4 uses
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Dau_DsdInitialize.exit
  %i.au = load i32, ptr %i.a, align 16, !tbaa !37
  %i.av = load i64, ptr %1, align 8, !tbaa !45
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 1
  tail call fastcc void @Dau_DsdWriteVar(ptr noundef nonnull %0, i32 noundef %i.au, i32 noundef %i.ax)
  br label %Dau_Dsd6DecomposeInternal.exit

bb.e:                                             ; preds = %Dau_DsdInitialize.exit
  %i.ay = icmp slt i32 %i.as, 7
  br i1 %i.ay, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.az = call i32 @Dau_Dsd6DecomposeSingleVar(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.as), !inline_history !339 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %Dau_Dsd6DecomposeInternal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = call i32 @Dau_Dsd6DecomposeDoubleVars(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.az), !inline_history !339 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %Dau_Dsd6DecomposeInternal.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = call i32 @Dau_Dsd6DecomposeTripleVars(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.bb), !inline_history !339 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %Dau_Dsd6DecomposeInternal.exit, label %bb.i

end_hunk_0
begin_hunk_1_@Abc_TtCheckEqualCofs:bb.a
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = zext nneg i32 %i.bn to i64
  %i.bs = shl i32 2, %i.bf
  %i.bt = sext i32 %i.bs to i64
  br i1 %.not139, label %.loopexit, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bu = sext i32 %2 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !45
  %i.bx = sext i32 %i.bi to i64
  %i.by = sext i32 %i.bk to i64
  %smax154 = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 1)
  %wide.trip.count155 = zext nneg i32 %smax154 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.0105133.us = phi ptr [ %0, %.preheader.lr.ph.split.us ], [ %i.cf, %._crit_edge.us ] ; 3 uses
  %invariant.gep173 = getelementptr [8 x i8], ptr %.0105133.us, i64 %i.bx
  %invariant.gep175 = getelementptr [8 x i8], ptr %.0105133.us, i64 %i.by
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count155
  br i1 %exitcond156.not, label %._crit_edge.us, label %bb.j, !llvm.loop !23

bb.j:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv151 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next152, %bb.i ] ; 3 uses
  %gep174 = getelementptr [8 x i8], ptr %invariant.gep173, i64 %indvars.iv151
  %i.bz = load i64, ptr %gep174, align 8, !tbaa !45
  %i.ca = lshr i64 %i.bz, %i.bq
  %gep176 = getelementptr [8 x i8], ptr %invariant.gep175, i64 %indvars.iv151
  %i.cb = load i64, ptr %gep176, align 8, !tbaa !45
  %i.cc = lshr i64 %i.cb, %i.br
  %i.cd = xor i64 %i.cc, %i.ca
  %i.ce = and i64 %i.cd, %i.bw
  %.not115.us = icmp eq i64 %i.ce, 0
  br i1 %.not115.us, label %bb.i, label %.loopexit

._crit_edge.us:                                   ; preds = %bb.i
  %i.cf = getelementptr inbounds [8 x i8], ptr %.0105133.us, i64 %i.bt ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.be
  br i1 %i.cg, label %.preheader.us, label %.loopexit, !llvm.loop !24

bb.k:                                             ; preds = %bb.g
  %i.ch = add nsw i32 %2, -6                      ; 3 uses
  %i.ci = shl nuw i32 1, %i.ch                    ; 3 uses
  %i.cj = lshr i32 %4, 1
  %i.ck = shl nuw i32 %i.cj, %i.bf
  %i.cl = trunc i32 %4 to i1
  %i.cm = select i1 %i.cl, i32 %i.ci, i32 0
  %i.cn = add nsw i32 %i.ck, %i.cm
  %i.co = lshr i32 %5, 1
  %i.cp = shl nuw i32 %i.co, %i.bf
  %i.cq = trunc i32 %5 to i1
  %i.cr = select i1 %i.cq, i32 %i.ci, i32 0
  %i.cs = add nsw i32 %i.cp, %i.cr
  %i.ct = icmp sgt i32 %1, 0
  br i1 %i.ct, label %.preheader121.lr.ph, label %.loopexit

.preheader121.lr.ph:                              ; preds = %bb.k
  %.not = icmp eq i32 %i.bf, 31
  %i.cu = shl i32 2, %i.ch
  %i.cv = shl i32 2, %i.bf
  %i.cw = sext i32 %i.cv to i64
  br i1 %.not, label %.loopexit, label %.preheader121.lr.ph.split.us

.preheader121.lr.ph.split.us:                     ; preds = %.preheader121.lr.ph
  %.not137 = icmp eq i32 %i.ch, 31
  br i1 %.not137, label %.loopexit, label %.preheader121.us.us.preheader

.preheader121.us.us.preheader:                    ; preds = %.preheader121.lr.ph.split.us
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 1)
  %i.cx = sext i32 %i.cu to i64
  %i.cy = sext i32 %i.cn to i64
  %i.cz = sext i32 %i.cs to i64
  %i.da = sext i32 %i.bg to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader121.us.us

.preheader121.us.us:                              ; preds = %.preheader121.us.us.preheader, %._crit_edge125.split.us.us.us
  %.1106126.us.us = phi ptr [ %i.dg, %._crit_edge125.split.us.us.us ], [ %0, %.preheader121.us.us.preheader ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.1106126.us.us, i64 %i.cy
  %invariant.gep171 = getelementptr [8 x i8], ptr %.1106126.us.us, i64 %i.cz
  br label %.preheader119.us.us.us

.preheader119.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader121.us.us
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %._crit_edge.us.us.us ], [ 0, %.preheader121.us.us ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv148
  %gep172 = getelementptr [8 x i8], ptr %invariant.gep171, i64 %indvars.iv148
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.preheader119.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.preheader119.us.us.us ] ; 3 uses
  %i.db = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !45
  %i.dd = getelementptr [8 x i8], ptr %gep172, i64 %indvars.iv
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !45
  %.not.us.us.us = icmp eq i64 %i.dc, %i.de
  br i1 %.not.us.us.us, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.l, !llvm.loop !25

._crit_edge.us.us.us:                             ; preds = %bb.m
  %indvars.iv.next149 = add nsw i64 %indvars.iv148, %i.cx ; 2 uses
  %i.df = icmp slt i64 %indvars.iv.next149, %i.da
  br i1 %i.df, label %.preheader119.us.us.us, label %._crit_edge125.split.us.us.us, !llvm.loop !26

._crit_edge125.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.dg = getelementptr inbounds [8 x i8], ptr %.1106126.us.us, i64 %i.cw ; 2 uses
  %i.dh = icmp ult ptr %i.dg, %i.be
  br i1 %i.dh, label %.preheader121.us.us, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %._crit_edge125.split.us.us.us, %bb.l, %._crit_edge.us, %bb.j, %bb.e, %bb.f, %.preheader121.lr.ph.split.us, %.preheader121.lr.ph, %.preheader.lr.ph, %bb.k, %bb.h, %bb.d, %bb.b
  %.3 = phi i32 [ %i.aa, %bb.b ], [ 0, %bb.l ], [ 0, %bb.j ], [ 1, %bb.h ], [ 1, %.preheader121.lr.ph ], [ 1, %bb.k ], [ 1, %bb.d ], [ 1, %._crit_edge.us ], [ poison, %.preheader121.lr.ph.split.us ], [ 1, %.preheader.lr.ph ], [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %._crit_edge125.split.us.us.us ]
  ret i32 %.3
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #18 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !37
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #31 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #31
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #31 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !64
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #32
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #31 ; 0 uses
  call void @free(ptr noundef %i.d) #31
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !64, !noalias !347
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #31, !inline_history !346 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #15

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #25

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #25

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #27

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nounwind }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!28, !29}
!llvm.ident = !{!30}
!llvm.errno.tbaa = !{!35}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = distinct !{!8, !38}
!9 = distinct !{!9, !38}
!10 = distinct !{!10, !38}
!11 = distinct !{!11, !38}
!12 = distinct !{!12, !38}
!13 = distinct !{!13, !38}
!14 = distinct !{!14, !38}
!15 = distinct !{!15, !38}
!16 = distinct !{!16, !38}
!17 = distinct !{!17, !38}
!18 = distinct !{!18, !38}
!19 = distinct !{!19, !38}
!20 = distinct !{!20, !38}
!21 = distinct !{!21, !38}
!22 = distinct !{!22, !38}
!23 = distinct !{!23, !38}
!24 = distinct !{!24, !38}
!25 = distinct !{!25, !38}
!26 = distinct !{!26, !38}
!27 = distinct !{!27, !38}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !{!"omnipotent char", !31, i64 0}
!33 = !{!"int", !32, i64 0}
!34 = !{!"__libc_errno", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!32, !32, i64 0}
!37 = !{!33, !33, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"any pointer", !32, i64 0}
!42 = !{!"p1 omnipotent char", !41, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"long", !32, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!"p1 long", !41, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 int", !41, i64 0}
!50 = !{!"Dau_Dsd_t_", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !33, i64 24, !33, i64 28, !49, i64 32, !32, i64 40, !32, i64 296, !32, i64 1320}
!51 = !{!50, !33, i64 24}
!52 = !{!50, !33, i64 28}
!53 = !{!50, !49, i64 32}
!54 = !{!50, !33, i64 12}
!55 = !{!50, !33, i64 0}
!56 = !{!50, !33, i64 4}
!57 = !{!"timespec", !44, i64 0, !44, i64 8}
!58 = !{!57, !44, i64 0}
!59 = !{!57, !44, i64 8}
!60 = !{!50, !33, i64 8}
!61 = !{!50, !33, i64 16}
!62 = !{!50, !33, i64 20}
!63 = !{!"p1 _ZTS8_IO_FILE", !41, i64 0}
!64 = !{!63, !63, i64 0}
!65 = distinct !{!65, !38, !39, !40}
!66 = distinct !{!66, !38, !40, !39}
!67 = distinct !{!67, !38, !39, !40}
!68 = distinct !{!68, !38, !40, !39}
!69 = distinct !{!69, !38}
!70 = distinct !{!70, !38, !39, !40}
!71 = distinct !{!71, !38, !40, !39}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38, !39, !40}
!75 = distinct !{!75, !38, !40, !39}
!76 = distinct !{!76, !38}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !38}
!80 = distinct !{!80, !38}
!81 = distinct !{!81, !38}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !38}
!84 = distinct !{!84, !38}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38, !39, !40}
!89 = distinct !{!89, !46}
!90 = distinct !{!90, !38, !39, !40}
!91 = distinct !{!91, !46}
!92 = distinct !{!92, !38, !39}
!93 = distinct !{!93, !38, !39}
!94 = distinct !{!94, !38, !39, !40}
!95 = distinct !{!95, !38, !39}
!96 = distinct !{!96, !38, !39, !40}
!97 = distinct !{!97, !38, !39}
!98 = distinct !{!98, !38, !39, !40}
!99 = distinct !{!99, !38, !39, !40}
!100 = distinct !{!100, !38, !39}
!101 = distinct !{!101, !38, !39}
!102 = distinct !{!102, !38, !39, !40}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38, !39, !40}
!105 = distinct !{!105, !38, !39, !40}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38, !39, !40}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38, !39, !40}
!110 = distinct !{!110, !38, !39, !40}
!111 = distinct !{!111, !38}
!112 = distinct !{!112, !38, !39, !40}
!113 = distinct !{!113, !46}
!114 = distinct !{!114, !46}
!115 = distinct !{!115, !38}
!116 = distinct !{!116, !38}
!117 = distinct !{!117, !38}
!118 = distinct !{!118, !38}
!119 = distinct !{!119, !38}
!120 = distinct !{!120, !38}
!121 = distinct !{!121, !38}
!122 = distinct !{!122, !38}
!123 = distinct !{!123, !38, !39, !40}
!124 = distinct !{!124, !38, !39, !40}
!125 = distinct !{!125, !46}
!126 = distinct !{!126, !38, !39}
!127 = !{!"branch_weights", i32 8, i32 24}
!128 = distinct !{!128, !38, !39, !40}
!129 = distinct !{!129, !38, !40, !39}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !46}
!132 = distinct !{!132, !38}
!133 = distinct !{!133, !38}
!134 = distinct !{!134, !38, !39, !40}
!135 = distinct !{!135, !38, !39, !40}
!136 = distinct !{!136, !38}
!137 = distinct !{!137, !38, !39, !40}
!138 = distinct !{!138, !38, !39, !40}
!139 = distinct !{!139, !38}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !38}
!142 = distinct !{!142, !38}
!143 = distinct !{!143, !38}
!144 = distinct !{!144, !38}
!145 = distinct !{null}
!146 = distinct !{!146, !38}
!147 = distinct !{!147, !38}
!148 = distinct !{!148, i1 false, !"LVerDomain"}
!149 = distinct !{!149, !148}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !38, !39, !40}
!152 = distinct !{!152, !38, !39}
!153 = distinct !{!153, !38, !39, !40}
!154 = distinct !{!154, !38, !39, !40}
!155 = distinct !{!155, !38}
!156 = distinct !{!156, !38, !39, !40}
!157 = distinct !{!157, !38, !39, !40}
!158 = distinct !{!158, i1 false, !"LVerDomain"}
!159 = distinct !{!159, !158}
!160 = distinct !{!160, !158}
end_hunk_1
