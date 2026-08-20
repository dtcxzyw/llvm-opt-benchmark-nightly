inline.NumInlined: 50
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 32
begin_hunk_0_@snow_horizontal_compose97i:bb.a
  %i.ii = zext nneg i32 %.1.lcssa to i64
  %i.ij = getelementptr [2 x i8], ptr %0, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 -4
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !149
  %i.im = mul i16 %i.il, 3
  %i.in = add i16 %i.im, %i.ih
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink118 = phi i64 [ %i.if, %bb.f ], [ %i.hk, %bb.e ]
  %.sink116 = phi i16 [ %i.in, %bb.f ], [ %i.id, %bb.e ]
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sink118
  store i16 %.sink116, ptr %i.io, align 2, !tbaa !149
  ret void
}

declare void @ff_snow_inner_add_yblock_c(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @horizontal_decompose97i(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = add nsw i32 %2, 1
  %i.d = ashr i32 %i.c, 1
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr [4 x i8], ptr %1, i64 %i.e ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 11 uses
  %i.h = and i32 %2, 1                            ; 2 uses
  %i.i = ashr i32 %2, 1                           ; 4 uses
  %i.j = add nsw i32 %i.i, -1                     ; 7 uses
  %i.k = add nsw i32 %i.j, %i.h                   ; 7 uses
  %i.l = icmp sgt i32 %i.k, 0                     ; 2 uses
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 7 uses
  %min.iters.check = icmp ult i32 %i.k, 9
  br i1 %min.iters.check, label %.lr.ph.preheader148, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = add nsw i64 %i.e, %wide.trip.count
  %i.n = shl nsw i64 %i.m, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.n
  %i.o = shl nuw nsw i64 %wide.trip.count, 3
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %scevgep61 = getelementptr i8, ptr %i.p, i64 4
  %bound0 = icmp ult ptr %i.f, %scevgep61
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader148, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.q = and i64 %wide.trip.count, 7              ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 8, i64 %i.q
  %n.vec = sub nsw i64 %wide.trip.count, %i.s     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.t = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.u = shl i64 %index, 1
  %i.v = or disjoint i64 %i.u, 8                  ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.t
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.v
  %wide.vec = load <8 x i32>, ptr %i.w, align 4, !tbaa !28, !alias.scope !392 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec62 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec63 = load <8 x i32>, ptr %i.x, align 4, !tbaa !28, !alias.scope !392 ; 2 uses
  %strided.vec64 = shufflevector <8 x i32> %wide.vec63, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec65 = shufflevector <8 x i32> %wide.vec63, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %wide.vec66 = load <8 x i32>, ptr %i.y, align 4, !tbaa !28, !alias.scope !392
  %strided.vec67 = shufflevector <8 x i32> %wide.vec66, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec68 = load <8 x i32>, ptr %i.z, align 4, !tbaa !28, !alias.scope !392
  %strided.vec69 = shufflevector <8 x i32> %wide.vec68, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aa = add nsw <4 x i32> %strided.vec62, %strided.vec67 ; 2 uses
  %i.ab = add nsw <4 x i32> %strided.vec65, %strided.vec69 ; 2 uses
  %i.ac = ashr <4 x i32> %i.aa, splat (i32 1)
  %i.ad = ashr <4 x i32> %i.ab, splat (i32 1)
  %i.ae = add <4 x i32> %i.aa, %i.ac
  %i.af = add <4 x i32> %i.ab, %i.ad
  %i.ag = sub <4 x i32> %strided.vec, %i.ae
  %i.ah = sub <4 x i32> %strided.vec64, %i.af
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %i.ag, ptr %i.ai, align 4, !tbaa !28, !alias.scope !395, !noalias !392
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !28, !alias.scope !395, !noalias !392
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %.lr.ph.preheader148, label %vector.body, !llvm.loop !397

.lr.ph.preheader148:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.al = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader148
  %i.am = shl nuw nsw i64 %indvars.iv.ph, 1       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %.idx.prol = shl nuw nsw i64 %indvars.iv.next.prol, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.at = add nsw i32 %i.as, %i.aq                ; 2 uses
  %i.au = ashr i32 %i.at, 1
  %i.av = add i32 %i.at, %i.au
  %i.aw = sub i32 %i.ao, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.ph
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !28
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader148
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader148 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ay = add nsw i64 %wide.trip.count, -1
  %i.az = icmp eq i64 %indvars.iv.ph, %i.ay
  br i1 %i.az, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ba = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !28
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv.next, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !28
  %i.bh = add nsw i32 %i.bg, %i.be                ; 2 uses
  %i.bi = ashr i32 %i.bh, 1
  %i.bj = add i32 %i.bh, %i.bi
  %i.bk = sub i32 %i.bc, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !28
  %i.bm = shl nuw nsw i64 %indvars.iv.next, 1     ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !28
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next.1, 3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !28
  %i.bt = add nsw i32 %i.bs, %i.bq                ; 2 uses
  %i.bu = ashr i32 %i.bt, 1
  %i.bv = add i32 %i.bt, %i.bu
  %i.bw = sub i32 %i.bo, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !28
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !398

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.not73.i25.not = icmp eq i32 %i.h, 0           ; 4 uses
  br i1 %.not73.i25.not, label %bb.b, label %lift.exit26

bb.b:                                             ; preds = %._crit_edge
  %i.by = shl nsw i32 %i.j, 1
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !28
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bz
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = mul nsw i32 %i.cd, 6
  %i.cf = ashr exact i32 %i.ce, 1
  %i.cg = sub nsw i32 %i.cb, %i.cf
  %i.ch = sext i32 %i.k to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ch
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !28
  br label %lift.exit26

lift.exit26:                                      ; preds = %._crit_edge, %bb.b
  %i.cj = load i32, ptr %i.f, align 4, !tbaa !28
  %i.ck = shl nsw i32 %i.cj, 1
  %i.cl = load i32, ptr %0, align 4, !tbaa !28
  %i.cm = add i32 %i.ck, 167772171
  %i.cn = shl i32 %i.cl, 4
  %i.co = sub i32 %i.cm, %i.cn
  %.neg.i = sdiv i32 %i.co, -20
  %i.cp = add nsw i32 %.neg.i, 8388608
  store i32 %i.cp, ptr %1, align 4, !tbaa !28
  %i.cq = getelementptr i8, ptr %1, i64 4         ; 11 uses
  %i.cr = getelementptr i8, ptr %0, i64 8         ; 4 uses
  %i.cs = icmp sgt i32 %i.i, 1                    ; 2 uses
  br i1 %i.cs, label %.lr.ph35.preheader, label %._crit_edge36

.lr.ph35.preheader:                               ; preds = %lift.exit26
  %wide.trip.count48 = zext nneg i32 %i.j to i64  ; 5 uses
  %min.iters.check87 = icmp ult i32 %i.i, 14
  br i1 %min.iters.check87, label %.lr.ph35.preheader147, label %vector.memcheck70

vector.memcheck70:                                ; preds = %.lr.ph35.preheader
  %i.ct = shl nuw nsw i64 %wide.trip.count48, 2   ; 3 uses
  %i.cu = getelementptr i8, ptr %1, i64 %i.ct
  %scevgep71 = getelementptr i8, ptr %i.cu, i64 4 ; 3 uses
  %i.cv = shl nsw i64 %i.e, 2                     ; 3 uses
  %3 = getelementptr i8, ptr %1, i64 %i.cv
  %scevgep72 = getelementptr i8, ptr %3, i64 %i.ct
  %scevgep72.a = getelementptr i8, ptr %1, i64 %i.cv
  %i.cw = getelementptr i8, ptr %scevgep72.a, i64 4
  %scevgep73 = getelementptr i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %scevgep73, i64 %i.ct
  %scevgep74 = getelementptr i8, ptr %i.cx, i64 4
  %i.cy = shl nuw nsw i64 %wide.trip.count48, 3
  %i.cz = getelementptr i8, ptr %0, i64 %i.cy
  %scevgep75 = getelementptr i8, ptr %i.cz, i64 4
  %bound076 = icmp ult ptr %i.cq, %scevgep72
  %bound177 = icmp ult ptr %i.f, %scevgep71
  %found.conflict78 = and i1 %bound076, %bound177
  %bound079 = icmp ult ptr %i.cq, %scevgep74
  %bound180 = icmp ult ptr %i.cw, %scevgep71
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict78, %found.conflict81
  %bound082 = icmp ult ptr %i.cq, %scevgep75
  %bound183 = icmp ult ptr %i.cr, %scevgep71
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %.lr.ph35.preheader147, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck70
  %i.da = and i64 %wide.trip.count48, 3           ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = select i1 %i.db, i64 4, i64 %i.da
  %n.vec89 = sub nsw i64 %wide.trip.count48, %i.dc ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next95, %vector.body90 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index91 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dd, align 4, !tbaa !28, !alias.scope !399
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %wide.load92 = load <4 x i32>, ptr %i.de, align 4, !tbaa !28, !alias.scope !402
  %i.df = shl nuw nsw i64 %index91, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.df
  %wide.vec93 = load <8 x i32>, ptr %i.dg, align 4, !tbaa !28, !alias.scope !404
  %strided.vec94 = shufflevector <8 x i32> %wide.vec93, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dh = add <4 x i32> %wide.load, splat (i32 167772171)
  %i.di = add <4 x i32> %i.dh, %wide.load92
  %i.dj = shl <4 x i32> %strided.vec94, splat (i32 4)
  %i.dk = sub <4 x i32> %i.di, %i.dj
  %i.dl = sdiv <4 x i32> %i.dk, splat (i32 -20)
  %i.dm = add nsw <4 x i32> %i.dl, splat (i32 8388608)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index91
  store <4 x i32> %i.dm, ptr %i.dn, align 4, !tbaa !28, !alias.scope !406, !noalias !408
  %index.next95 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next95, %n.vec89
  br i1 %i.do, label %.lr.ph35.preheader147, label %vector.body90, !llvm.loop !409

.lr.ph35.preheader147:                            ; preds = %vector.body90, %vector.memcheck70, %.lr.ph35.preheader
  %indvars.iv45.ph = phi i64 [ 0, %vector.memcheck70 ], [ 0, %.lr.ph35.preheader ], [ %n.vec89, %vector.body90 ]
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader147, %.lr.ph35
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph35 ], [ %indvars.iv45.ph, %.lr.ph35.preheader147 ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv45 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !28
  %.idx60 = shl nuw nsw i64 %indvars.iv45, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx60
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !28
  %i.dv = add i32 %i.dq, 167772171
  %i.dw = add i32 %i.dv, %i.ds
  %i.dx = shl i32 %i.du, 4
  %i.dy = sub i32 %i.dw, %i.dx
  %.neg87.i = sdiv i32 %i.dy, -20
  %i.dz = add nsw i32 %.neg87.i, 8388608
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv45
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !28
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %._crit_edge36, label %.lr.ph35, !llvm.loop !410

._crit_edge36:                                    ; preds = %.lr.ph35, %lift.exit26
  br i1 %.not73.i25.not, label %liftS.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge36
  %i.eb = sext i32 %i.j to i64                    ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !28
  %i.ee = shl nsw i32 %i.ed, 1
  %i.ef = shl nsw i32 %i.j, 1
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !28
  %i.ej = add i32 %i.ee, 167772171
  %i.ek = shl i32 %i.ei, 4
  %i.el = sub i32 %i.ej, %i.ek
  %.neg86.i = sdiv i32 %i.el, -20
  %i.em = add nsw i32 %.neg86.i, 8388608
  %i.en = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.eb
  store i32 %i.em, ptr %i.en, align 4, !tbaa !28
  br label %liftS.exit

liftS.exit:                                       ; preds = %._crit_edge36, %bb.c
  %i.eo = getelementptr [4 x i8], ptr %0, i64 %i.e ; 17 uses
  br i1 %i.l, label %.lr.ph38.preheader, label %._crit_edge39

.lr.ph38.preheader:                               ; preds = %liftS.exit
  %wide.trip.count53 = zext nneg i32 %i.k to i64  ; 7 uses
  %min.iters.check110 = icmp ult i32 %i.k, 16
  br i1 %min.iters.check110, label %.lr.ph38.preheader146, label %vector.memcheck98

vector.memcheck98:                                ; preds = %.lr.ph38.preheader
  %i.ep = shl nuw nsw i64 %wide.trip.count53, 2
  %i.eq = add nsw i64 %i.e, %wide.trip.count53
  %i.er = shl nsw i64 %i.eq, 2                    ; 2 uses
  %scevgep99 = getelementptr i8, ptr %0, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %1, i64 %i.ep
  %scevgep100 = getelementptr i8, ptr %i.es, i64 4
  %scevgep101 = getelementptr i8, ptr %1, i64 %i.er
  %bound0102 = icmp ult ptr %i.eo, %scevgep100
  %bound1103 = icmp ult ptr %1, %scevgep99
  %found.conflict104 = and i1 %bound0102, %bound1103
  %bound0105 = icmp ult ptr %i.eo, %scevgep101
  %bound1106 = icmp ult ptr %i.f, %scevgep99
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %found.conflict104, %found.conflict107
  br i1 %conflict.rdx108, label %.lr.ph38.preheader146, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck98
  %n.vec112 = and i64 %wide.trip.count53, 2147483640 ; 3 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next121, %vector.body113 ] ; 5 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index114 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load115 = load <4 x i32>, ptr %i.et, align 4, !tbaa !28, !alias.scope !411
  %wide.load116 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !28, !alias.scope !411
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index114 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load117 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !28, !alias.scope !414
  %wide.load118 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !28, !alias.scope !414
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index114 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %wide.load119 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !28, !alias.scope !414
  %wide.load120 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !28, !alias.scope !414
  %i.fa = add <4 x i32> %wide.load117, %wide.load115
  %i.fb = add <4 x i32> %wide.load118, %wide.load116
  %i.fc = add <4 x i32> %i.fa, %wide.load119
  %i.fd = add <4 x i32> %i.fb, %wide.load120
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %index114 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <4 x i32> %i.fc, ptr %i.fe, align 4, !tbaa !28, !alias.scope !416, !noalias !418
  store <4 x i32> %i.fd, ptr %i.ff, align 4, !tbaa !28, !alias.scope !416, !noalias !418
  %index.next121 = add nuw i64 %index114, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next121, %n.vec112
  br i1 %i.fg, label %middle.block122, label %vector.body113, !llvm.loop !419

middle.block122:                                  ; preds = %vector.body113
  %cmp.n = icmp eq i64 %n.vec112, %wide.trip.count53
  br i1 %cmp.n, label %._crit_edge39, label %.lr.ph38.preheader146

.lr.ph38.preheader146:                            ; preds = %vector.memcheck98, %.lr.ph38.preheader, %middle.block122
  %indvars.iv50.ph = phi i64 [ 0, %vector.memcheck98 ], [ 0, %.lr.ph38.preheader ], [ %n.vec112, %middle.block122 ] ; 6 uses
  %xtraiter149 = and i64 %wide.trip.count53, 1
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol

.lr.ph38.prol:                                    ; preds = %.lr.ph38.preheader146
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv50.ph
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !28
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50.ph
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !28
  %indvars.iv.next51.prol = or disjoint i64 %indvars.iv50.ph, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next51.prol
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !28
  %i.fn = add i32 %i.fk, %i.fi
  %i.fo = add i32 %i.fn, %i.fm
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv50.ph
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !28
  br label %.lr.ph38.prol.loopexit

.lr.ph38.prol.loopexit:                           ; preds = %.lr.ph38.prol, %.lr.ph38.preheader146
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph38.preheader146 ], [ %indvars.iv.next51.prol, %.lr.ph38.prol ]
  %i.fq = add nsw i64 %wide.trip.count53, -1
  %i.fr = icmp eq i64 %indvars.iv50.ph, %i.fq
  br i1 %i.fr, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph38 ], [ %indvars.iv50.unr, %.lr.ph38.prol.loopexit ] ; 5 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv50
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !28
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !28
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 4 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next51
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !28
  %i.fy = add i32 %i.fv, %i.ft
  %i.fz = add i32 %i.fy, %i.fx
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv50
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !28
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next51
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !28
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next51
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !28
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next51.1
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !28
  %i.gh = add i32 %i.ge, %i.gc
  %i.gi = add i32 %i.gh, %i.gg
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next51
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !28
  %exitcond54.not.1 = icmp eq i64 %indvars.iv.next51.1, %wide.trip.count53
  br i1 %exitcond54.not.1, label %._crit_edge39, label %.lr.ph38, !llvm.loop !420

._crit_edge39:                                    ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38, %middle.block122, %liftS.exit
  br i1 %.not73.i25.not, label %bb.d, label %lift.exit23

end_hunk_0
