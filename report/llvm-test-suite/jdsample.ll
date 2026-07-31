loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@h2v1_fancy_upsample:bb.a
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.aa   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %n.vec  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.03032, i64 %i.ag
  %next.gep51 = getelementptr i8, ptr %i.j, i64 %index ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep51, i64 1
  %wide.load = load <8 x i8>, ptr %next.gep51, align 1, !tbaa !59, !alias.scope !73
  %i.ai = zext <8 x i8> %wide.load to <8 x i32>
  %i.aj = mul nuw nsw <8 x i32> %i.ai, splat (i32 3) ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %next.gep51, i64 -1
  %wide.load52 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !59, !alias.scope !73
  %i.al = zext <8 x i8> %wide.load52 to <8 x i32>
  %i.am = add nuw nsw <8 x i32> %i.al, splat (i32 1)
  %i.an = add nuw nsw <8 x i32> %i.am, %i.aj
  %wide.load53 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !59, !alias.scope !73
  %i.ao = zext <8 x i8> %wide.load53 to <8 x i32>
  %i.ap = add nuw nsw <8 x i32> %i.aj, splat (i32 2)
  %i.aq = add nuw nsw <8 x i32> %i.ap, %i.ao
  %i.ar = shufflevector <8 x i32> %i.an, <8 x i32> %i.aq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.as = lshr <16 x i32> %i.ar, splat (i32 2)
  %interleaved.vec = trunc nuw <16 x i32> %i.as to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !59, !alias.scope !76, !noalias !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.w
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03037.ph = phi ptr [ %.03032, %vector.memcheck ], [ %.03032, %.lr.ph.preheader ], [ %i.ab, %middle.block ] ; 5 uses
  %.02936.ph = phi i32 [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.preheader ], [ %i.ad, %middle.block ] ; 4 uses
  %.pn35.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.preheader ], [ %i.ae, %middle.block ] ; 2 uses
  %.03134.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.preheader ], [ %i.af, %middle.block ] ; 4 uses
  %xtraiter = and i32 %.02936.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader57
  %i.au = getelementptr inbounds nuw i8, ptr %.03134.ph, i64 1 ; 3 uses
  %i.av = load i8, ptr %.03134.ph, align 1, !tbaa !59
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %i.aw, 3                ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.03134.ph, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !59
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = add nuw nsw i32 %i.bb, %i.ax
  %i.bd = lshr i32 %i.bc, 2
  %i.be = trunc nuw i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn35.ph, i64 3
  store i8 %i.be, ptr %.03037.ph, align 1, !tbaa !59
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !59
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.ax, 2
  %i.bj = add nuw nsw i32 %i.bi, %i.bh
  %i.bk = lshr i32 %i.bj, 2
  %i.bl = trunc nuw i32 %i.bk to i8
  store i8 %i.bl, ptr %i.bf, align 1, !tbaa !59
  %i.bm = add nsw i32 %.02936.ph, -1
  %.030.prol = getelementptr inbounds nuw i8, ptr %.03037.ph, i64 2 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader57
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader57 ], [ %i.au, %.lr.ph.prol ]
  %.030.lcssa58.unr = phi ptr [ poison, %.lr.ph.preheader57 ], [ %.030.prol, %.lr.ph.prol ]
  %.03037.unr = phi ptr [ %.03037.ph, %.lr.ph.preheader57 ], [ %.030.prol, %.lr.ph.prol ]
  %.02936.unr = phi i32 [ %.02936.ph, %.lr.ph.preheader57 ], [ %i.bm, %.lr.ph.prol ]
  %.pn35.unr = phi ptr [ %.pn35.ph, %.lr.ph.preheader57 ], [ %.03037.ph, %.lr.ph.prol ]
  %.03134.unr = phi ptr [ %.03134.ph, %.lr.ph.preheader57 ], [ %i.au, %.lr.ph.prol ]
  %i.bn = icmp eq i32 %.02936.ph, 1
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03037 = phi ptr [ %.030.1, %.lr.ph ], [ %.03037.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02936 = phi i32 [ %i.cx, %.lr.ph ], [ %.02936.unr, %.lr.ph.prol.loopexit ]
  %.pn35 = phi ptr [ %.030, %.lr.ph ], [ %.pn35.unr, %.lr.ph.prol.loopexit ]
  %.03134 = phi ptr [ %i.cg, %.lr.ph ], [ %.03134.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.03134, i64 1 ; 2 uses
  %i.bp = load i8, ptr %.03134, align 1, !tbaa !59
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul nuw nsw i32 %i.bq, 3                ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.03134, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !59
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 1
  %i.bw = add nuw nsw i32 %i.bv, %i.br
  %i.bx = lshr i32 %i.bw, 2
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn35, i64 3
  store i8 %i.by, ptr %.03037, align 1, !tbaa !59
  %i.ca = load i8, ptr %i.bo, align 1, !tbaa !59
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.br, 2
  %i.cd = add nuw nsw i32 %i.cc, %i.cb
  %i.ce = lshr i32 %i.cd, 2
  %i.cf = trunc nuw i32 %i.ce to i8
  store i8 %i.cf, ptr %i.bz, align 1, !tbaa !59
  %.030 = getelementptr inbounds nuw i8, ptr %.03037, i64 2 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.03134, i64 2 ; 3 uses
  %i.ch = load i8, ptr %i.bo, align 1, !tbaa !59
  %i.ci = zext i8 %i.ch to i32
  %i.cj = mul nuw nsw i32 %i.ci, 3                ; 2 uses
  %i.ck = load i8, ptr %.03134, align 1, !tbaa !59
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nuw nsw i32 %i.cl, 1
  %i.cn = add nuw nsw i32 %i.cm, %i.cj
  %i.co = lshr i32 %i.cn, 2
  %i.cp = trunc nuw i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.03037, i64 3
  store i8 %i.cp, ptr %.030, align 1, !tbaa !59
  %i.cr = load i8, ptr %i.cg, align 1, !tbaa !59
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.cj, 2
  %i.cu = add nuw nsw i32 %i.ct, %i.cs
  %i.cv = lshr i32 %i.cu, 2
  %i.cw = trunc nuw i32 %i.cv to i8
  store i8 %i.cw, ptr %i.cq, align 1, !tbaa !59
  %i.cx = add i32 %.02936, -2                     ; 2 uses
  %.030.1 = getelementptr inbounds nuw i8, ptr %.03037, i64 4 ; 2 uses
  %.not.1 = icmp eq i32 %i.cx, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b
  %.031.lcssa = phi ptr [ %i.j, %bb.b ], [ %i.af, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cg, %.lr.ph ] ; 2 uses
  %.pn.lcssa = phi ptr [ %i.i, %bb.b ], [ %i.ae, %middle.block ], [ %.03037.ph, %.lr.ph.prol.loopexit ], [ %.030, %.lr.ph ]
  %.030.lcssa = phi ptr [ %.03032, %bb.b ], [ %i.ab, %middle.block ], [ %.030.lcssa58.unr, %.lr.ph.prol.loopexit ], [ %.030.1, %.lr.ph ]
  %i.cy = load i8, ptr %.031.lcssa, align 1, !tbaa !59 ; 2 uses
  %i.cz = zext i8 %i.cy to i16
  %i.da = mul nuw nsw i16 %i.cz, 3
  %i.db = getelementptr inbounds i8, ptr %.031.lcssa, i64 -1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !59
  %i.dd = zext i8 %i.dc to i16
  %i.de = add nuw nsw i16 %i.dd, 1
  %i.df = add nuw nsw i16 %i.de, %i.da
  %i.dg = lshr i16 %i.df, 2
  %i.dh = trunc nuw i16 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 3
  store i8 %i.dh, ptr %.030.lcssa, align 1, !tbaa !59
  store i8 %i.cy, ptr %i.di, align 1, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !55
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %bb.b, label %._crit_edge43, !llvm.loop !82

._crit_edge43:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %i.f = phi i32 [ %i.c, %.lr.ph22 ], [ %i.aq, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 11 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 6 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 8 uses
  %i.o = add i64 %i.i, %i.k
  %i.p = add i64 %i.i, 2
  %umax28 = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.p)
  %i.q = xor i64 %i.i, -1
  %i.r = add i64 %umax28, %i.q                    ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = add nuw i64 %i.s, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.r, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.h, i64 2
  %i.u = add i64 %i.i, %i.k
  %i.v = add i64 %i.i, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.w = xor i64 %i.i, -1
  %i.x = add i64 %umax, %i.w                      ; 2 uses
  %4 = lshr i64 %i.x, 1
  %i.y = and i64 %i.x, -2
  %scevgep25 = getelementptr i8, ptr %scevgep, i64 %i.y
  %scevgep26 = getelementptr i8, ptr %i.n, i64 1
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %4
  %bound0 = icmp ult ptr %i.h, %scevgep27
  %bound1 = icmp ult ptr %i.n, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %i.r, 30
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.t, 12
  %n.vec = and i64 %i.t, -16                      ; 5 uses
  %i.z = getelementptr i8, ptr %i.n, i64 %n.vec
  %i.aa = shl i64 %n.vec, 1
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.ac = shl i64 %index, 1                       ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.h, i64 %i.ac
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ac
  %next.gep31 = getelementptr i8, ptr %i.ad, i64 16
  %i.ae = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !59, !alias.scope !83
  %wide.load32 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !59, !alias.scope !83
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep30, align 1, !tbaa !59, !alias.scope !86, !noalias !83
  %interleaved.vec33 = shufflevector <8 x i8> %wide.load32, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec33, ptr %next.gep31, align 1, !tbaa !59, !alias.scope !86, !noalias !83
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.t, -4                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.n, i64 %n.vec36
  %i.ah = shl i64 %n.vec36, 1
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 3 uses
  %next.gep38 = getelementptr i8, ptr %i.n, i64 %index37
  %i.aj = shl i64 %index37, 1
  %next.gep39 = getelementptr i8, ptr %i.h, i64 %i.aj
  %wide.load40 = load <4 x i8>, ptr %next.gep38, align 1, !tbaa !59, !alias.scope !83
  %interleaved.vec41 = shufflevector <4 x i8> %wide.load40, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec41, ptr %next.gep39, align 1, !tbaa !59, !alias.scope !86, !noalias !83
  %index.next42 = add nuw i64 %index37, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next42, %n.vec36
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !90

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.t, %n.vec36
  br i1 %cmp.n43, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01619.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.01718.ph = phi ptr [ %i.h, %iter.check ], [ %i.h, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01619 = phi ptr [ %i.al, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader ] ; 2 uses
  %.01718 = phi ptr [ %i.ao, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01619, i64 1
  %i.am = load i8, ptr %.01619, align 1, !tbaa !59 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01718, i64 1
  store i8 %i.am, ptr %.01718, align 1, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %.01718, i64 2 ; 2 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !59
  %i.ap = icmp ult ptr %i.ao, %i.l
  br i1 %i.ap, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !91

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.b, align 8, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.aq = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge23, !llvm.loop !92

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.1
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next72, %._crit_edge.1 ] ; 2 uses
  %.04367 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 4 uses
  %.049.in = getelementptr i8, ptr %i.f, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !72 ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04367
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.g, align 1, !tbaa !59
  %i.l = zext i8 %i.k to i32
  %i.m = mul nuw nsw i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.049, i64 1
  %i.o = load i8, ptr %.049, align 1, !tbaa !59
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.m, %i.p               ; 6 uses
  %i.r = load i8, ptr %i.j, align 1, !tbaa !59
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, 3
  %i.u = load i8, ptr %i.n, align 1, !tbaa !59
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %i.t, %i.v               ; 5 uses
  %i.x = shl nuw nsw i32 %i.q, 2
  %i.y = add nuw nsw i32 %i.x, 8
  %i.z = lshr i32 %i.y, 4
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.aa, ptr %i.i, align 1, !tbaa !59
  %i.ac = mul nuw nsw i32 %i.q, 3
  %i.ad = add nuw nsw i32 %i.ac, 7
  %i.ae = add nuw nsw i32 %i.ad, %i.w
  %i.af = lshr i32 %i.ae, 4
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !59
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.ai = add i32 %i.ah, -2                       ; 6 uses
  %.04852 = getelementptr i8, ptr %i.i, i64 2     ; 7 uses
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.aj = getelementptr i8, ptr %.049, i64 2      ; 5 uses
  %i.ak = getelementptr i8, ptr %i.g, i64 2       ; 5 uses
  %i.al = zext i32 %i.ai to i64                   ; 2 uses
  %min.iters.check114 = icmp ult i32 %i.ai, 8
  br i1 %min.iters.check114, label %.lr.ph.preheader143, label %vector.memcheck99

vector.memcheck99:                                ; preds = %.lr.ph.preheader
  %scevgep100 = getelementptr i8, ptr %i.i, i64 4
  %i.am = add i32 %i.ah, -3
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = shl nuw nsw i64 %i.an, 1
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.ao ; 2 uses
  %scevgep102 = getelementptr i8, ptr %i.g, i64 3
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.an
  %scevgep104 = getelementptr i8, ptr %.049, i64 3
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.an
  %bound0106 = icmp ult ptr %.04852, %scevgep103
  %bound1107 = icmp ult ptr %i.ak, %scevgep101
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0109 = icmp ult ptr %.04852, %scevgep105
  %bound1110 = icmp ult ptr %i.aj, %scevgep101
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %found.conflict108, %found.conflict111
  br i1 %conflict.rdx112, label %.lr.ph.preheader143, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck99
  %n.vec117 = and i64 %i.al, 4294967288           ; 6 uses
  %i.ap = shl nuw nsw i64 %n.vec117, 1            ; 2 uses
  %i.aq = getelementptr i8, ptr %.04852, i64 %i.ap ; 2 uses
  %i.ar = trunc nuw i64 %n.vec117 to i32
  %i.as = sub i32 %i.ai, %i.ar
  %i.at = getelementptr i8, ptr %i.i, i64 %i.ap   ; 2 uses
  %i.au = getelementptr i8, ptr %i.aj, i64 %n.vec117
  %i.av = getelementptr i8, ptr %i.ak, i64 %n.vec117
  %vector.recur.init120 = insertelement <8 x i32> poison, i32 %i.q, i64 7
  %vector.recur.init122 = insertelement <8 x i32> poison, i32 %i.w, i64 7
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next130, %vector.body118 ] ; 4 uses
  %vector.recur121 = phi <8 x i32> [ %vector.recur.init120, %vector.ph115 ], [ %i.bb, %vector.body118 ]
  %vector.recur123 = phi <8 x i32> [ %vector.recur.init122, %vector.ph115 ], [ %i.ba, %vector.body118 ]
  %i.aw = shl i64 %index119, 1
  %next.gep124 = getelementptr i8, ptr %.04852, i64 %i.aw
  %next.gep125 = getelementptr i8, ptr %i.aj, i64 %index119
end_hunk_0
begin_hunk_1_@h2v2_fancy_upsample:bb.a
  %i.do = lshr i32 %i.dn, 4
  %i.dp = trunc nuw i32 %i.do to i8
  store i8 %i.dp, ptr %i.dk, align 1, !tbaa !59
  %i.dq = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.dr = add i32 %i.dq, -2                       ; 6 uses
  %.04852.1 = getelementptr i8, ptr %i.cr, i64 2  ; 7 uses
  %.not53.1 = icmp eq i32 %i.dr, 0
  br i1 %.not53.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.ds = getelementptr i8, ptr %.049.1, i64 2    ; 5 uses
  %i.dt = getelementptr i8, ptr %i.co, i64 2      ; 5 uses
  %i.du = zext i32 %i.dr to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.dr, 8
  br i1 %min.iters.check, label %.lr.ph.1.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.1
  %scevgep = getelementptr i8, ptr %i.cr, i64 4
  %i.dv = add i32 %i.dq, -3
  %i.dw = zext i32 %i.dv to i64                   ; 3 uses
  %i.dx = shl nuw nsw i64 %i.dw, 1
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.dx ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.co, i64 3
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.dw
  %scevgep83 = getelementptr i8, ptr %.049.1, i64 3
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.dw
  %bound0 = icmp ult ptr %.04852.1, %scevgep82
  %bound1 = icmp ult ptr %i.dt, %scevgep80
  %found.conflict = and i1 %bound0, %bound1
  %bound085 = icmp ult ptr %.04852.1, %scevgep84
  %bound186 = icmp ult ptr %i.ds, %scevgep80
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx = or i1 %found.conflict, %found.conflict87
  br i1 %conflict.rdx, label %.lr.ph.1.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.du, 4294967288              ; 6 uses
  %i.dy = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.dz = getelementptr i8, ptr %.04852.1, i64 %i.dy ; 2 uses
  %i.ea = trunc nuw i64 %n.vec to i32
  %i.eb = sub i32 %i.dr, %i.ea
  %i.ec = getelementptr i8, ptr %i.cr, i64 %i.dy  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ds, i64 %n.vec
  %i.ee = getelementptr i8, ptr %i.dt, i64 %n.vec
  %vector.recur.init = insertelement <8 x i32> poison, i32 %i.cz, i64 7
  %vector.recur.init88 = insertelement <8 x i32> poison, i32 %i.df, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph ], [ %i.ek, %vector.body ]
  %vector.recur89 = phi <8 x i32> [ %vector.recur.init88, %vector.ph ], [ %i.ej, %vector.body ]
  %i.ef = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.04852.1, i64 %i.ef
  %next.gep90 = getelementptr i8, ptr %i.ds, i64 %index
  %next.gep91 = getelementptr i8, ptr %i.dt, i64 %index
  %wide.load = load <8 x i8>, ptr %next.gep91, align 1, !tbaa !59, !alias.scope !103
  %i.eg = zext <8 x i8> %wide.load to <8 x i32>
  %i.eh = mul nuw nsw <8 x i32> %i.eg, splat (i32 3)
  %wide.load92 = load <8 x i8>, ptr %next.gep90, align 1, !tbaa !59, !alias.scope !106
  %i.ei = zext <8 x i8> %wide.load92 to <8 x i32>
  %i.ej = add nuw nsw <8 x i32> %i.eh, %i.ei      ; 6 uses
  %i.ek = shufflevector <8 x i32> %vector.recur89, <8 x i32> %i.ej, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.el = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.ek, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.em = mul nuw nsw <8 x i32> %i.ek, splat (i32 3) ; 2 uses
  %i.en = add nuw nsw <8 x i32> %i.el, splat (i32 8)
  %i.eo = add nuw nsw <8 x i32> %i.en, %i.em
  %i.ep = add nuw nsw <8 x i32> %i.em, splat (i32 7)
  %i.eq = add nuw nsw <8 x i32> %i.ep, %i.ej
  %i.er = shufflevector <8 x i32> %i.eo, <8 x i32> %i.eq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.es = lshr <16 x i32> %i.er, splat (i32 4)
  %interleaved.vec = trunc nuw <16 x i32> %i.es to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !59, !alias.scope !108, !noalias !110
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract.for.phi = extractelement <8 x i32> %i.ej, i64 6
  %vector.recur.extract = extractelement <8 x i32> %i.ej, i64 6
  %vector.recur.extract93 = extractelement <8 x i32> %i.ej, i64 7 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.du
  br i1 %cmp.n, label %._crit_edge.1, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.1, %middle.block
  %.04860.1.ph = phi ptr [ %.04852.1, %vector.memcheck ], [ %.04852.1, %.lr.ph.preheader.1 ], [ %i.dz, %middle.block ]
  %.04559.1.ph = phi i32 [ %i.dr, %vector.memcheck ], [ %i.dr, %.lr.ph.preheader.1 ], [ %i.eb, %middle.block ]
  %.04658.1.ph = phi i32 [ %i.cz, %vector.memcheck ], [ %i.cz, %.lr.ph.preheader.1 ], [ %vector.recur.extract, %middle.block ]
  %.04757.1.ph = phi i32 [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph.preheader.1 ], [ %vector.recur.extract93, %middle.block ]
  %.pn56.1.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.preheader.1 ], [ %i.ec, %middle.block ]
  %.15055.1.ph = phi ptr [ %i.ds, %vector.memcheck ], [ %i.ds, %.lr.ph.preheader.1 ], [ %i.ed, %middle.block ]
  %.05154.1.ph = phi ptr [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph.preheader.1 ], [ %i.ee, %middle.block ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader, %.lr.ph.1
  %.04860.1 = phi ptr [ %.048.1, %.lr.ph.1 ], [ %.04860.1.ph, %.lr.ph.1.preheader ] ; 4 uses
  %.04559.1 = phi i32 [ %i.fm, %.lr.ph.1 ], [ %.04559.1.ph, %.lr.ph.1.preheader ]
  %.04658.1 = phi i32 [ %.04757.1, %.lr.ph.1 ], [ %.04658.1.ph, %.lr.ph.1.preheader ]
  %.04757.1 = phi i32 [ %i.fb, %.lr.ph.1 ], [ %.04757.1.ph, %.lr.ph.1.preheader ] ; 3 uses
  %.pn56.1 = phi ptr [ %.04860.1, %.lr.ph.1 ], [ %.pn56.1.ph, %.lr.ph.1.preheader ]
  %.15055.1 = phi ptr [ %i.ey, %.lr.ph.1 ], [ %.15055.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %.05154.1 = phi ptr [ %i.eu, %.lr.ph.1 ], [ %.05154.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.05154.1, i64 1
  %i.ev = load i8, ptr %.05154.1, align 1, !tbaa !59
  %i.ew = zext i8 %i.ev to i32
  %i.ex = mul nuw nsw i32 %i.ew, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %.15055.1, i64 1
  %i.ez = load i8, ptr %.15055.1, align 1, !tbaa !59
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ex, %i.fa            ; 3 uses
  %i.fc = mul nuw nsw i32 %.04757.1, 3            ; 2 uses
  %i.fd = add nuw nsw i32 %.04658.1, 8
  %i.fe = add nuw nsw i32 %i.fd, %i.fc
  %i.ff = lshr i32 %i.fe, 4
  %i.fg = trunc nuw i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn56.1, i64 3
  store i8 %i.fg, ptr %.04860.1, align 1, !tbaa !59
  %i.fi = add nuw nsw i32 %i.fc, 7
  %i.fj = add nuw nsw i32 %i.fi, %i.fb
  %i.fk = lshr i32 %i.fj, 4
  %i.fl = trunc nuw i32 %i.fk to i8
  store i8 %i.fl, ptr %i.fh, align 1, !tbaa !59
  %i.fm = add i32 %.04559.1, -1                   ; 2 uses
  %.048.1 = getelementptr inbounds nuw i8, ptr %.04860.1, i64 2 ; 2 uses
  %.not.1 = icmp eq i32 %i.fm, 0
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !112

._crit_edge.1:                                    ; preds = %.lr.ph.1, %middle.block, %._crit_edge
  %.pn.lcssa.1 = phi ptr [ %i.cr, %._crit_edge ], [ %i.ec, %middle.block ], [ %.04860.1, %.lr.ph.1 ]
  %.047.lcssa.1 = phi i32 [ %i.df, %._crit_edge ], [ %vector.recur.extract93, %middle.block ], [ %i.fb, %.lr.ph.1 ] ; 2 uses
  %.046.lcssa.1 = phi i32 [ %i.cz, %._crit_edge ], [ %vector.recur.extract.for.phi, %middle.block ], [ %.04757.1, %.lr.ph.1 ]
  %.048.lcssa.1 = phi ptr [ %.04852.1, %._crit_edge ], [ %i.dz, %middle.block ], [ %.048.1, %.lr.ph.1 ]
  %i.fn = mul nuw nsw i32 %.047.lcssa.1, 3
  %i.fo = add nuw nsw i32 %.046.lcssa.1, 8
  %i.fp = add nuw nsw i32 %i.fo, %i.fn
  %i.fq = lshr i32 %i.fp, 4
  %i.fr = trunc nuw i32 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn.lcssa.1, i64 3
  store i8 %i.fr, ptr %.048.lcssa.1, align 1, !tbaa !59
  %i.ft = shl nuw nsw i32 %.047.lcssa.1, 2
  %i.fu = add nuw nsw i32 %i.ft, 4
  %i.fv = lshr i32 %i.fu, 4
  %i.fw = trunc nuw i32 %i.fv to i8
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !59
  %i.fx = trunc nsw i64 %indvars.iv.next.1 to i32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv, 1
  %i.fy = load i32, ptr %i.b, align 8, !tbaa !55
  %i.fz = icmp sgt i32 %i.fy, %i.fx
  br i1 %i.fz, label %.preheader, label %._crit_edge68, !llvm.loop !113

._crit_edge68:                                    ; preds = %._crit_edge.1, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !67     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next33, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %indvars34 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 11 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 6 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 8 uses
  %i.n = add i64 %i.h, %i.j
  %i.o = add i64 %i.h, 2
  %umax40 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %i.h, -1
  %i.q = add i64 %umax40, %i.p                    ; 3 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.g, i64 2
  %i.t = add i64 %i.h, %i.j
  %i.u = add i64 %i.h, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %i.h, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %4 = lshr i64 %i.w, 1
  %i.x = and i64 %i.w, -2
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep38 = getelementptr i8, ptr %i.m, i64 1
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %4
  %bound0 = icmp ult ptr %i.g, %scevgep39
  %bound1 = icmp ult ptr %i.m, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 5 uses
  %i.y = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.z = shl i64 %n.vec, 1
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.ab = shl i64 %index, 1                       ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.g, i64 %i.ab
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab
  %next.gep43 = getelementptr i8, ptr %i.ac, i64 16
  %i.ad = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !59, !alias.scope !114
  %wide.load44 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !59, !alias.scope !114
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep42, align 1, !tbaa !59, !alias.scope !117, !noalias !114
  %interleaved.vec45 = shufflevector <8 x i8> %wide.load44, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec45, ptr %next.gep43, align 1, !tbaa !59, !alias.scope !117, !noalias !114
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.s, -4                     ; 4 uses
  %i.af = getelementptr i8, ptr %i.m, i64 %n.vec48
  %i.ag = shl i64 %n.vec48, 1
  %i.ah = getelementptr i8, ptr %i.g, i64 %i.ag
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 3 uses
  %next.gep50 = getelementptr i8, ptr %i.m, i64 %index49
  %i.ai = shl i64 %index49, 1
  %next.gep51 = getelementptr i8, ptr %i.g, i64 %i.ai
  %wide.load52 = load <4 x i8>, ptr %next.gep50, align 1, !tbaa !59, !alias.scope !114
  %interleaved.vec53 = shufflevector <4 x i8> %wide.load52, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec53, ptr %next.gep51, align 1, !tbaa !59, !alias.scope !117, !noalias !114
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next54, %n.vec48
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %i.s, %n.vec48
  br i1 %cmp.n55, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02326.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.02425.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02326 = phi ptr [ %i.ak, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader ] ; 2 uses
  %.02425 = phi ptr [ %i.an, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02326, i64 1
  %i.al = load i8, ptr %.02326, align 1, !tbaa !59 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02425, i64 1
  store i8 %i.al, ptr %.02425, align 1, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %.02425, i64 2 ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !59
  %i.ao = icmp ult ptr %i.an, %i.k
  br i1 %i.ao, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !121

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.e, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ap = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.aq = or disjoint i32 %indvars34, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.aq, i32 noundef 1, i32 noundef %i.ap) #7
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !55
  %i.as = trunc nuw i64 %indvars.iv.next to i32
  %i.at = icmp sgt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.b, label %._crit_edge31, !llvm.loop !122

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !67     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !123
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !59
  %.fr50 = freeze i8 %i.i                         ; 4 uses
  %i.j = zext i8 %.fr50 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 242
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !59
  %.fr = freeze i8 %i.m                           ; 4 uses
  %i.n = zext i8 %.fr to i32                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge44

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %.not = icmp eq i8 %.fr50, 0
  %i.s = icmp ugt i8 %.fr, 1                      ; 2 uses
  %i.t = add nsw i32 %i.n, -1                     ; 2 uses
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.u = zext i8 %.fr50 to i64                    ; 2 uses
  br i1 %i.s, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.v = zext i8 %.fr50 to i64
  %i.w = zext nneg i8 %.fr to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %i.x = add nuw nsw i64 %i.j, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = zext i8 %.fr to i64
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv67 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next68, %._crit_edge.split.us.us.us ] ; 2 uses
  %indvars.iv65 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next66, %._crit_edge.split.us.us.us ] ; 3 uses
  %indvars69 = trunc i64 %indvars.iv65 to i32     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv65
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 2 uses
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !61  ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %.not54 = icmp eq i32 %i.ac, 0
  br i1 %.not54, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72
  br label %.lr.ph.us.us.us

._crit_edge.split.us.us.us.loopexit:              ; preds = %.lr.ph.us.us.us
  %.pre72 = load i32, ptr %i.r, align 8, !tbaa !61
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.loopexit, %.lr.ph.split.us.split.us
  %i.ah = phi i32 [ %.pre72, %._crit_edge.split.us.us.us.loopexit ], [ 0, %.lr.ph.split.us.split.us ]
  %i.ai = add nuw nsw i32 %indvars69, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.c, i32 noundef %indvars69, ptr noundef nonnull %i.c, i32 noundef %i.ai, i32 noundef %i.t, i32 noundef %i.ah) #7
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, %i.z ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !55
  %i.ak = trunc nuw i64 %indvars.iv.next66 to i32
  %i.al = icmp sgt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.split.us.split.us, label %._crit_edge44, !llvm.loop !124

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %.lr.ph.us.us.us
  %.03239.us.us.us = phi ptr [ %i.an, %.lr.ph.us.us.us ], [ %i.ag, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %.03338.us.us.us = phi ptr [ %scevgep64, %.lr.ph.us.us.us ], [ %i.ab, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.am = load i8, ptr %.03239.us.us.us, align 1, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr align 1 %.03338.us.us.us, i8 %i.am, i64 %i.u, i1 false), !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %.03239.us.us.us, i64 1
  %i.ao = getelementptr i8, ptr %.03338.us.us.us, i64 %i.y
  %scevgep64 = getelementptr i8, ptr %i.ao, i64 1 ; 2 uses
  %i.ap = icmp ult ptr %scevgep64, %i.ae
  br i1 %i.ap, label %.lr.ph.us.us.us, label %._crit_edge.split.us.us.us.loopexit, !llvm.loop !125

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %._crit_edge.split.us.us
  %i.aq = phi i32 [ %i.p, %.lr.ph.split.us.split.preheader ], [ %i.ay, %._crit_edge.split.us.us ]
  %indvars.iv59 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next60, %._crit_edge.split.us.us ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next, %._crit_edge.split.us.us ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %i.at = load i32, ptr %i.r, align 8, !tbaa !61  ; 2 uses
end_hunk_1
