Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdsample-8?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@h2v1_fancy_upsample:bb.a
  store i8 %i.t, ptr %i.m, align 1, !tbaa !32
  %i.u = load i32, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.v = add i32 %i.u, -2                         ; 6 uses
  %.03032 = getelementptr i8, ptr %i.i, i64 2     ; 6 uses
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %i.x = add i32 %i.u, -3
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1
  %scevgep48 = getelementptr i8, ptr %scevgep, i64 %i.z
  %scevgep49 = getelementptr i8, ptr %i.g, i64 3
  %scevgep50 = getelementptr i8, ptr %scevgep49, i64 %i.y
  %bound0 = icmp ult ptr %.03032, %scevgep50
  %bound1 = icmp ult ptr %i.g, %scevgep48
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4294967288               ; 5 uses
  %i.aa = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.ab = getelementptr i8, ptr %.03032, i64 %i.aa ; 2 uses
  %i.ac = trunc nuw i64 %n.vec to i32
  %i.ad = sub i32 %i.v, %i.ac
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.aa   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %n.vec  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.03032, i64 %i.ag
  %next.gep51 = getelementptr i8, ptr %i.j, i64 %index ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep51, i64 1
  %wide.load = load <8 x i8>, ptr %next.gep51, align 1, !tbaa !32, !alias.scope !89
  %i.ai = zext <8 x i8> %wide.load to <8 x i32>
  %i.aj = mul nuw nsw <8 x i32> %i.ai, splat (i32 3) ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %next.gep51, i64 -1
  %wide.load52 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !32, !alias.scope !89
  %i.al = zext <8 x i8> %wide.load52 to <8 x i32>
  %i.am = add nuw nsw <8 x i32> %i.al, splat (i32 1)
  %i.an = add nuw nsw <8 x i32> %i.am, %i.aj
  %wide.load53 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !32, !alias.scope !89
  %i.ao = zext <8 x i8> %wide.load53 to <8 x i32>
  %i.ap = add nuw nsw <8 x i32> %i.aj, splat (i32 2)
  %i.aq = add nuw nsw <8 x i32> %i.ap, %i.ao
  %i.ar = shufflevector <8 x i32> %i.an, <8 x i32> %i.aq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.as = lshr <16 x i32> %i.ar, splat (i32 2)
  %interleaved.vec = trunc nuw <16 x i32> %i.as to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !32, !alias.scope !90, !noalias !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !86

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
  %i.av = load i8, ptr %.03134.ph, align 1, !tbaa !32
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %i.aw, 3                ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.03134.ph, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !32
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = add nuw nsw i32 %i.bb, %i.ax
  %i.bd = lshr i32 %i.bc, 2
  %i.be = trunc nuw i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn35.ph, i64 3
  store i8 %i.be, ptr %.03037.ph, align 1, !tbaa !32
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !32
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.ax, 2
  %i.bj = add nuw nsw i32 %i.bi, %i.bh
  %i.bk = lshr i32 %i.bj, 2
  %i.bl = trunc nuw i32 %i.bk to i8
  store i8 %i.bl, ptr %i.bf, align 1, !tbaa !32
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
  %i.bp = load i8, ptr %.03134, align 1, !tbaa !32
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul nuw nsw i32 %i.bq, 3                ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.03134, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !32
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 1
  %i.bw = add nuw nsw i32 %i.bv, %i.br
  %i.bx = lshr i32 %i.bw, 2
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn35, i64 3
  store i8 %i.by, ptr %.03037, align 1, !tbaa !32
  %i.ca = load i8, ptr %i.bo, align 1, !tbaa !32
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.br, 2
  %i.cd = add nuw nsw i32 %i.cc, %i.cb
  %i.ce = lshr i32 %i.cd, 2
  %i.cf = trunc nuw i32 %i.ce to i8
  store i8 %i.cf, ptr %i.bz, align 1, !tbaa !32
  %.030 = getelementptr inbounds nuw i8, ptr %.03037, i64 2 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.03134, i64 2 ; 3 uses
  %i.ch = load i8, ptr %i.bo, align 1, !tbaa !32
  %i.ci = zext i8 %i.ch to i32
  %i.cj = mul nuw nsw i32 %i.ci, 3                ; 2 uses
  %i.ck = load i8, ptr %.03134, align 1, !tbaa !32
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nuw nsw i32 %i.cl, 1
  %i.cn = add nuw nsw i32 %i.cm, %i.cj
  %i.co = lshr i32 %i.cn, 2
  %i.cp = trunc nuw i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.03037, i64 3
  store i8 %i.cp, ptr %.030, align 1, !tbaa !32
  %i.cr = load i8, ptr %i.cg, align 1, !tbaa !32
  %i.cs = zext i8 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.cj, 2
  %i.cu = add nuw nsw i32 %i.ct, %i.cs
  %i.cv = lshr i32 %i.cu, 2
  %i.cw = trunc nuw i32 %i.cv to i8
  store i8 %i.cw, ptr %i.cq, align 1, !tbaa !32
  %i.cx = add i32 %.02936, -2                     ; 2 uses
  %.030.1 = getelementptr inbounds nuw i8, ptr %.03037, i64 4 ; 2 uses
  %.not.1 = icmp eq i32 %i.cx, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b
  %.031.lcssa = phi ptr [ %i.j, %bb.b ], [ %i.af, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cg, %.lr.ph ] ; 2 uses
  %.pn.lcssa = phi ptr [ %i.i, %bb.b ], [ %i.ae, %middle.block ], [ %.03037.ph, %.lr.ph.prol.loopexit ], [ %.030, %.lr.ph ]
  %.030.lcssa = phi ptr [ %.03032, %bb.b ], [ %i.ab, %middle.block ], [ %.030.lcssa58.unr, %.lr.ph.prol.loopexit ], [ %.030.1, %.lr.ph ]
  %i.cy = load i8, ptr %.031.lcssa, align 1, !tbaa !32 ; 2 uses
  %i.cz = zext i8 %i.cy to i16
  %i.da = mul nuw nsw i16 %i.cz, 3
  %i.db = getelementptr inbounds i8, ptr %.031.lcssa, i64 -1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !32
  %i.dd = zext i8 %i.dc to i16
  %i.de = add nuw nsw i16 %i.dd, 1
  %i.df = add nuw nsw i16 %i.de, %i.da
  %i.dg = lshr i16 %i.df, 2
  %i.dh = trunc nuw i16 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 3
  store i8 %i.dh, ptr %.030.lcssa, align 1, !tbaa !32
  store i8 %i.cy, ptr %i.di, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.b, align 4, !tbaa !39
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %bb.b, label %._crit_edge43, !llvm.loop !88

._crit_edge43:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

declare i32 @jsimd_set_h2v1_upsample(ptr noundef) local_unnamed_addr #3

declare void @jsimd_h2v1_upsample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %i.f = phi i32 [ %i.c, %.lr.ph22 ], [ %i.ar, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 11 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 6 uses
  %4 = load i32, ptr %i.e, align 8, !tbaa !43     ; 2 uses
  %i.j = zext i32 %4 to i64                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 8 uses
  %i.n = add i64 %i.i, %i.j
  %i.o = add i64 %i.i, 2
  %umax28 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.p = xor i64 %i.i, -1
  %i.q = add i64 %umax28, %i.p                    ; 3 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw i64 %i.r, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.h, i64 2
  %i.t = add i64 %i.i, %i.j
  %i.u = add i64 %i.i, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.u)
  %i.v = xor i64 %i.i, -1
  %i.w = add i64 %umax, %i.v                      ; 2 uses
  %i.x = and i64 %i.w, -2
  %scevgep25 = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep26 = getelementptr i8, ptr %i.m, i64 1
  %i.y = lshr i64 %i.w, 1
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %i.y
  %bound0 = icmp ult ptr %i.h, %scevgep27
  %bound1 = icmp ult ptr %i.m, %scevgep25
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 5 uses
  %i.aa = shl i64 %n.vec, 1
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ad
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ad
  %next.gep30 = getelementptr i8, ptr %i.ae, i64 16
  %next.gep31 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep31, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep31, align 1, !tbaa !32, !alias.scope !98
  %wide.load32 = load <8 x i8>, ptr %i.af, align 1, !tbaa !32, !alias.scope !98
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !32, !alias.scope !99, !noalias !98
  %interleaved.vec33 = shufflevector <8 x i8> %wide.load32, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec33, ptr %next.gep30, align 1, !tbaa !32, !alias.scope !99, !noalias !98
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.s, -4                     ; 4 uses
  %i.ah = shl i64 %n.vec35, 1
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.m, i64 %n.vec35
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = shl i64 %index36, 1
  %next.gep37 = getelementptr i8, ptr %i.h, i64 %i.ak
  %next.gep38 = getelementptr i8, ptr %i.m, i64 %index36
  %wide.load39 = load <4 x i8>, ptr %next.gep38, align 1, !tbaa !32, !alias.scope !98
  %interleaved.vec40 = shufflevector <4 x i8> %wide.load39, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec40, ptr %next.gep37, align 1, !tbaa !32, !alias.scope !99, !noalias !98
  %index.next41 = add nuw i64 %index36, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next41, %n.vec35
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.s, %n.vec35
  br i1 %cmp.n42, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01619.ph = phi ptr [ %i.h, %iter.check ], [ %i.h, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.01718.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01619 = phi ptr [ %i.ap, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader ] ; 3 uses
  %.01718 = phi ptr [ %i.am, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01718, i64 1
  %i.an = load i8, ptr %.01718, align 1, !tbaa !32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01619, i64 1
  store i8 %i.an, ptr %.01619, align 1, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %.01619, i64 2 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !32
  %i.aq = icmp ult ptr %i.ap, %i.k
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ar = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.b, label %._crit_edge23, !llvm.loop !97

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h1v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge38, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split.us
  %i.g = phi i32 [ %i.az, %.split.us ], [ %i.c, %.preheader.lr.ph ]
  %i.h = phi i32 [ %i.ba, %.split.us ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %i.i = phi i32 [ %i.bb, %.split.us ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %i.j = phi i32 [ %i.bc, %.split.us ], [ 1, %.preheader.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next46, %.split.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.02237 = phi i32 [ %.us-phi, %.split.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %.not39 = icmp eq i32 %i.j, 0
  br i1 %.not39, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.l = sext i32 %.02237 to i64                  ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %.not40 = icmp eq i32 %i.i, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.split.preheader
  %i.n = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %.027.in = getelementptr i8, ptr %i.k, i64 -8
  %.027 = load ptr, ptr %.027.in, align 8, !tbaa !48
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02433 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02632 = phi ptr [ %i.aa, %.lr.ph ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.12831 = phi ptr [ %i.t, %.lr.ph ], [ %.027, %.lr.ph.preheader ] ; 2 uses
  %.02930 = phi ptr [ %i.p, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02930, i64 1
  %i.q = load i8, ptr %.02930, align 1, !tbaa !32
  %i.r = zext i8 %i.q to i16
  %i.s = mul nuw nsw i16 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.12831, i64 1
  %i.u = load i8, ptr %.12831, align 1, !tbaa !32
  %i.v = zext i8 %i.u to i16
  %i.w = add nuw nsw i16 %i.v, 1
  %i.x = add nuw nsw i16 %i.w, %i.s
  %i.y = lshr i16 %i.x, 2
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.02632, i64 1
  store i8 %i.z, ptr %.02632, align 1, !tbaa !32
  %i.ab = add nuw i32 %.02433, 1                  ; 2 uses
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !41  ; 2 uses
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !100

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader.split.preheader
  %i.ae = phi i32 [ %i.ac, %._crit_edge.loopexit ], [ %i.h, %.preheader.split.preheader ]
  %i.af = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.m, %.preheader.split.preheader ]
  %.not40.1 = icmp eq i32 %i.ae, 0
  br i1 %.not40.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.ag = getelementptr [8 x i8], ptr %i.a, i64 %i.l
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %.027.in.1 = getelementptr i8, ptr %i.k, i64 8
  %.027.1 = load ptr, ptr %.027.in.1, align 8, !tbaa !48
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.02433.1 = phi i32 [ %i.av, %.lr.ph.1 ], [ 0, %.lr.ph.preheader.1 ]
  %.02632.1 = phi ptr [ %i.au, %.lr.ph.1 ], [ %i.ai, %.lr.ph.preheader.1 ] ; 2 uses
  %.12831.1 = phi ptr [ %i.an, %.lr.ph.1 ], [ %.027.1, %.lr.ph.preheader.1 ] ; 2 uses
  %.02930.1 = phi ptr [ %i.aj, %.lr.ph.1 ], [ %i.af, %.lr.ph.preheader.1 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02930.1, i64 1
  %i.ak = load i8, ptr %.02930.1, align 1, !tbaa !32
  %i.al = zext i8 %i.ak to i16
  %i.am = mul nuw nsw i16 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %.12831.1, i64 1
  %i.ao = load i8, ptr %.12831.1, align 1, !tbaa !32
  %i.ap = zext i8 %i.ao to i16
  %i.aq = add nuw nsw i16 %i.ap, 2
  %i.ar = add nuw nsw i16 %i.aq, %i.am
  %i.as = lshr i16 %i.ar, 2
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.02632.1, i64 1
  store i8 %i.at, ptr %.02632.1, align 1, !tbaa !32
  %i.av = add nuw i32 %.02433.1, 1                ; 2 uses
  %i.aw = load i32, ptr %i.e, align 8, !tbaa !41  ; 2 uses
  %i.ax = icmp ult i32 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !100

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %i.ay = phi i32 [ 0, %._crit_edge ], [ %i.aw, %.lr.ph.1 ] ; 3 uses
  %.pre48 = load i32, ptr %i.b, align 4, !tbaa !39
  br label %.split.us

.split.us:                                        ; preds = %.preheader, %._crit_edge.1
  %i.az = phi i32 [ %.pre48, %._crit_edge.1 ], [ %i.g, %.preheader ] ; 2 uses
  %i.ba = phi i32 [ %i.ay, %._crit_edge.1 ], [ %i.h, %.preheader ]
  %i.bb = phi i32 [ %i.ay, %._crit_edge.1 ], [ %i.i, %.preheader ]
  %i.bc = phi i32 [ %i.ay, %._crit_edge.1 ], [ 0, %.preheader ]
  %.us-phi = add i32 %.02237, 2                   ; 2 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv, 1
  %i.bd = icmp slt i32 %.us-phi, %i.az
  br i1 %i.bd, label %.preheader, label %._crit_edge38, !llvm.loop !101

._crit_edge38:                                    ; preds = %.split.us, %.preheader.lr.ph, %bb.a
  ret void
}

declare i32 @jsimd_set_h2v2_fancy_upsample(ptr noundef) local_unnamed_addr #3

declare void @jsimd_h2v2_fancy_upsample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_fancy_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge.1
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next72, %._crit_edge.1 ] ; 2 uses
  %.04367 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 4 uses
  %.049.in = getelementptr i8, ptr %i.f, i64 -8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !48 ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04367
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.g, align 1, !tbaa !32
  %i.l = zext i8 %i.k to i32
  %i.m = mul nuw nsw i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.049, i64 1
  %i.o = load i8, ptr %.049, align 1, !tbaa !32
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.m, %i.p               ; 6 uses
  %i.r = load i8, ptr %i.j, align 1, !tbaa !32
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, 3
  %i.u = load i8, ptr %i.n, align 1, !tbaa !32
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %i.t, %i.v               ; 5 uses
  %i.x = shl nuw nsw i32 %i.q, 2
  %i.y = add nuw nsw i32 %i.x, 8
  %i.z = lshr i32 %i.y, 4
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.aa, ptr %i.i, align 1, !tbaa !32
  %i.ac = mul nuw nsw i32 %i.q, 3
  %i.ad = add nuw nsw i32 %i.ac, 7
  %i.ae = add nuw nsw i32 %i.ad, %i.w
  %i.af = lshr i32 %i.ae, 4
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !32
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !41  ; 2 uses
  %i.ai = add i32 %i.ah, -2                       ; 6 uses
  %.04852 = getelementptr i8, ptr %i.i, i64 2     ; 7 uses
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.aj = getelementptr i8, ptr %.049, i64 2      ; 5 uses
  %i.ak = getelementptr i8, ptr %i.g, i64 2       ; 5 uses
  %i.al = zext i32 %i.ai to i64                   ; 2 uses
  %min.iters.check114 = icmp ult i32 %i.ai, 8
  br i1 %min.iters.check114, label %.lr.ph.preheader142, label %vector.memcheck99

vector.memcheck99:                                ; preds = %.lr.ph.preheader
  %scevgep100 = getelementptr i8, ptr %i.i, i64 4
  %i.am = add i32 %i.ah, -3
  %i.an = zext i32 %i.am to i64                   ; 3 uses
  %i.ao = shl nuw nsw i64 %i.an, 1
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.ao ; 2 uses
end_hunk_0
begin_hunk_1_@h2v2_fancy_upsample:bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %.pn.lcssa.1, i64 3
  store i8 %i.fr, ptr %.048.lcssa.1, align 1, !tbaa !32
  %i.ft = shl nuw nsw i32 %.047.lcssa.1, 2
  %i.fu = add nuw nsw i32 %i.ft, 4
  %i.fv = lshr i32 %i.fu, 4
  %i.fw = trunc nuw i32 %i.fv to i8
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !32
  %i.fx = trunc nsw i64 %indvars.iv.next.1 to i32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv, 1
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !39
  %i.fz = icmp sgt i32 %i.fy, %i.fx
  br i1 %i.fz, label %.preheader, label %._crit_edge68, !llvm.loop !115

._crit_edge68:                                    ; preds = %._crit_edge.1, %bb.a
  ret void
}

declare i32 @jsimd_set_h2v2_upsample(ptr noundef) local_unnamed_addr #3

declare void @jsimd_h2v2_upsample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @h2v2_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next33, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %indvars34 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 11 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 6 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 8 uses
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
  %i.x = and i64 %i.w, -2
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep38 = getelementptr i8, ptr %i.m, i64 1
  %i.y = lshr i64 %i.w, 1
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.y
  %bound0 = icmp ult ptr %i.g, %scevgep39
  %bound1 = icmp ult ptr %i.m, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 5 uses
  %i.aa = shl i64 %n.vec, 1
  %i.ab = getelementptr i8, ptr %i.g, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.m, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.ad
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ad
  %next.gep42 = getelementptr i8, ptr %i.ae, i64 16
  %next.gep43 = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep43, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep43, align 1, !tbaa !32, !alias.scope !131
  %wide.load44 = load <8 x i8>, ptr %i.af, align 1, !tbaa !32, !alias.scope !131
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !32, !alias.scope !132, !noalias !131
  %interleaved.vec45 = shufflevector <8 x i8> %wide.load44, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec45, ptr %next.gep42, align 1, !tbaa !32, !alias.scope !132, !noalias !131
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.s, -4                     ; 4 uses
  %i.ah = shl i64 %n.vec47, 1
  %i.ai = getelementptr i8, ptr %i.g, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.m, i64 %n.vec47
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 3 uses
  %i.ak = shl i64 %index48, 1
  %next.gep49 = getelementptr i8, ptr %i.g, i64 %i.ak
  %next.gep50 = getelementptr i8, ptr %i.m, i64 %index48
  %wide.load51 = load <4 x i8>, ptr %next.gep50, align 1, !tbaa !32, !alias.scope !131
  %interleaved.vec52 = shufflevector <4 x i8> %wide.load51, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec52, ptr %next.gep49, align 1, !tbaa !32, !alias.scope !132, !noalias !131
  %index.next53 = add nuw i64 %index48, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.s, %n.vec47
  br i1 %cmp.n54, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02326.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.02425.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02326 = phi ptr [ %i.ap, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader ] ; 3 uses
  %.02425 = phi ptr [ %i.am, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02425, i64 1
  %i.an = load i8, ptr %.02425, align 1, !tbaa !32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02326, i64 1
  store i8 %i.an, ptr %.02326, align 1, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %.02326, i64 2 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !32
  %i.aq = icmp ult ptr %i.ap, %i.k
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %i.e, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ar = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.as = or disjoint i32 %indvars34, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.a, i32 noundef %indvars34, ptr noundef nonnull %i.a, i32 noundef %i.as, i32 noundef 1, i32 noundef %i.ar) #7
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = load i32, ptr %i.b, align 4, !tbaa !39
  %i.au = trunc nuw i64 %indvars.iv.next to i32
  %i.av = icmp sgt i32 %i.at, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge31, !llvm.loop !130

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @int_upsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !47     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !135
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !32
  %.fr50 = freeze i8 %i.i                         ; 4 uses
  %i.j = zext i8 %.fr50 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 290
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32
  %.fr = freeze i8 %i.m                           ; 4 uses
  %i.n = zext i8 %.fr to i32                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !39   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge44

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !43  ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %.not54 = icmp eq i32 %i.ac, 0
  br i1 %.not54, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %.lr.ph.us.us.us
  %.03339.us.us.us = phi ptr [ %scevgep64, %.lr.ph.us.us.us ], [ %i.ab, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %.03438.us.us.us = phi ptr [ %i.ai, %.lr.ph.us.us.us ], [ %i.ag, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.ah = load i8, ptr %.03438.us.us.us, align 1, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr align 1 %.03339.us.us.us, i8 %i.ah, i64 %i.u, i1 false), !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %.03438.us.us.us, i64 1
  %i.aj = getelementptr i8, ptr %.03339.us.us.us, i64 %i.y
  %scevgep64 = getelementptr i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ak = icmp ult ptr %scevgep64, %i.ae
  br i1 %i.ak, label %.lr.ph.us.us.us, label %._crit_edge.split.us.us.us.loopexit, !llvm.loop !133

._crit_edge.split.us.us.us.loopexit:              ; preds = %.lr.ph.us.us.us
  %.pre72.a = load i32, ptr %i.r, align 8, !tbaa !43
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.loopexit, %.lr.ph.split.us.split.us
  %i.al = phi i32 [ %.pre72.a, %._crit_edge.split.us.us.us.loopexit ], [ 0, %.lr.ph.split.us.split.us ]
  %i.am = add nuw nsw i32 %indvars69, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %i.c, i32 noundef %indvars69, ptr noundef nonnull %i.c, i32 noundef %i.am, i32 noundef %i.t, i32 noundef %i.al) #7
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, %i.z ; 2 uses
  %i.an = load i32, ptr %i.o, align 4, !tbaa !39
  %i.ao = trunc nuw i64 %indvars.iv.next66 to i32
  %i.ap = icmp sgt i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.split.us.split.us, label %._crit_edge44, !llvm.loop !134

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %._crit_edge.split.us.us
  %i.aq = phi i32 [ %i.p, %.lr.ph.split.us.split.preheader ], [ %i.ba, %._crit_edge.split.us.us ]
  %indvars.iv59 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next60, %._crit_edge.split.us.us ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next, %._crit_edge.split.us.us ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %4 = load i32, ptr %i.r, align 8, !tbaa !43     ; 2 uses
  %i.at = zext i32 %4 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %.not53 = icmp eq i32 %4, 0
  br i1 %.not53, label %._crit_edge.split.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph.split.us.split
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !48
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %.03339.us.us = phi ptr [ %scevgep, %.lr.ph.us.us ], [ %i.as, %.lr.ph.us.us.preheader ] ; 2 uses
  %.03438.us.us = phi ptr [ %i.ay, %.lr.ph.us.us ], [ %i.aw, %.lr.ph.us.us.preheader ] ; 2 uses
  %i.ax = load i8, ptr %.03438.us.us, align 1, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr align 1 %.03339.us.us, i8 %i.ax, i64 %i.u, i1 false), !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.03438.us.us, i64 1
  %scevgep = getelementptr i8, ptr %.03339.us.us, i64 %i.v ; 2 uses
  %i.az = icmp ult ptr %scevgep, %i.au
  br i1 %i.az, label %.lr.ph.us.us, label %._crit_edge.split.us.us.loopexit, !llvm.loop !133

._crit_edge.split.us.us.loopexit:                 ; preds = %.lr.ph.us.us
  %.pre.a = load i32, ptr %i.o, align 4, !tbaa !39
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.lr.ph.split.us.split
  %i.ba = phi i32 [ %.pre.a, %._crit_edge.split.us.us.loopexit ], [ %i.aq, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.w ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %.lr.ph.split.us.split, label %._crit_edge44, !llvm.loop !134

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.b
  %.042.us45 = phi i32 [ %i.bf, %bb.b ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bd = load i32, ptr %i.r, align 8, !tbaa !43
  %.not52 = icmp eq i32 %i.bd, 0
  br i1 %.not52, label %bb.b, label %.loopexit.preheader

bb.b:                                             ; preds = %.lr.ph.split.split.us
  %i.be = add nuw nsw i32 %.042.us45, 1
  tail call void @jcopy_sample_rows(ptr noundef %i.c, i32 noundef %.042.us45, ptr noundef %i.c, i32 noundef %i.be, i32 noundef %i.t, i32 noundef 0) #7
  %i.bf = add nuw nsw i32 %.042.us45, %i.n        ; 2 uses
  %i.bg = load i32, ptr %i.o, align 4, !tbaa !39
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.split.split.us, label %._crit_edge44, !llvm.loop !134

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.bi = load i32, ptr %i.r, align 8, !tbaa !43
  %.not51 = icmp eq i32 %i.bi, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.split, %bb.d
  %.042 = phi i32 [ 0, %.lr.ph.split.split ], [ %i.bj, %bb.d ]
  br i1 %.not51, label %bb.d, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %bb.c, %.lr.ph.split.split.us
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %.loopexit
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.bj = add nuw nsw i32 %.042, %i.n             ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.p
  br i1 %i.bk, label %bb.c, label %._crit_edge44, !llvm.loop !134

._crit_edge44:                                    ; preds = %._crit_edge.split.us.us, %._crit_edge.split.us.us.us, %bb.d, %bb.b, %bb.a
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS15jpeg_source_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!"p1 int", !8, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!"p1 _ZTS18jpeg_marker_struct", !8, i64 0}
!19 = !{!"p1 omnipotent char", !8, i64 0}
!20 = !{!"p1 _ZTS18jpeg_decomp_master", !8, i64 0}
!21 = !{!"p1 _ZTS22jpeg_d_main_controller", !8, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_coef_controller", !8, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_post_controller", !8, i64 0}
!24 = !{!"p1 _ZTS21jpeg_input_controller", !8, i64 0}
!25 = !{!"p1 _ZTS18jpeg_marker_reader", !8, i64 0}
!26 = !{!"p1 _ZTS20jpeg_entropy_decoder", !8, i64 0}
!27 = !{!"p1 _ZTS16jpeg_inverse_dct", !8, i64 0}
!28 = !{!"p1 _ZTS14jpeg_upsampler", !8, i64 0}
!29 = !{!"p1 _ZTS22jpeg_color_deconverter", !8, i64 0}
!30 = !{!"p1 _ZTS20jpeg_color_quantizer", !8, i64 0}
!31 = !{!"jpeg_decompress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !15, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !16, i64 192, !4, i64 200, !4, i64 232, !4, i64 264, !5, i64 296, !8, i64 304, !5, i64 312, !5, i64 316, !4, i64 320, !4, i64 336, !4, i64 352, !5, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !4, i64 378, !17, i64 380, !17, i64 382, !5, i64 384, !4, i64 388, !5, i64 392, !18, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !19, i64 424, !5, i64 432, !4, i64 440, !5, i64 472, !5, i64 476, !5, i64 480, !4, i64 484, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !20, i64 544, !21, i64 552, !22, i64 560, !23, i64 568, !24, i64 576, !25, i64 584, !26, i64 592, !27, i64 600, !28, i64 608, !29, i64 616, !30, i64 624}
!32 = !{!4, !4, i64 0}
!33 = !{!31, !28, i64 608}
!34 = !{!"jpeg_upsampler", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !5, i64 64}
!35 = !{!"", !34, i64 0, !4, i64 72, !4, i64 152, !5, i64 232, !5, i64 236, !4, i64 240, !4, i64 280, !4, i64 290}
!36 = !{!31, !5, i64 56}
!37 = !{!31, !8, i64 304}
!38 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !8, i64 80, !8, i64 88}
!39 = !{!31, !5, i64 412}
!40 = !{!5, !5, i64 0}
!41 = !{!38, !5, i64 40}
!42 = !{!8, !8, i64 0}
!43 = !{!31, !5, i64 136}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!35, !5, i64 232}
!46 = !{!35, !5, i64 236}
!47 = !{!15, !15, i64 0}
!48 = !{!19, !19, i64 0}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!"branch_weights", i32 4, i32 12}
!52 = distinct !{!52, !44}
!53 = !{!31, !20, i64 544}
!54 = !{!"jpeg_decomp_master", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 72, !5, i64 112, !5, i64 116, !18, i64 120, !5, i64 128, !5, i64 132, !5, i64 136}
!55 = !{!54, !5, i64 20}
!56 = !{!31, !5, i64 296}
!57 = !{!31, !9, i64 0}
!58 = !{!"long", !4, i64 0}
!59 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !58, i64 128, !15, i64 136, !5, i64 144, !15, i64 152, !5, i64 160, !5, i64 164}
!60 = !{!59, !5, i64 40}
!61 = !{!59, !8, i64 0}
!62 = !{!54, !5, i64 112}
!63 = !{!31, !10, i64 8}
!64 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !58, i64 88, !58, i64 96}
!65 = !{!64, !8, i64 0}
!66 = !{!35, !8, i64 0}
!67 = !{!35, !8, i64 8}
!68 = !{!35, !5, i64 64}
!69 = !{!31, !5, i64 392}
!70 = !{!31, !5, i64 100}
!71 = !{!31, !5, i64 416}
!72 = !{!38, !5, i64 8}
!73 = !{!38, !5, i64 36}
!74 = !{!38, !5, i64 12}
!75 = !{!31, !5, i64 408}
!76 = !{!38, !5, i64 48}
!77 = !{!64, !8, i64 16}
!78 = !{!31, !5, i64 140}
!79 = distinct !{!79, !44}
!80 = !{!31, !29, i64 616}
!81 = !{!"jpeg_color_deconverter", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!82 = !{!81, !8, i64 8}
!83 = distinct !{!83, i1 false, !"LVerDomain"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !44, !49, !50}
!87 = distinct !{!87, !44, !49}
!88 = distinct !{!88, !44}
!89 = !{!84}
!90 = !{!85}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !44, !49, !50}
!95 = distinct !{!95, !44, !49, !50}
!96 = distinct !{!96, !44, !49}
!97 = distinct !{!97, !44}
!98 = !{!92}
!99 = !{!93}
!100 = distinct !{!100, !44}
!101 = distinct !{!101, !44, !102}
!102 = !{!"llvm.loop.unswitch.partial.disable"}
!103 = distinct !{!103, i1 false, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !103}
!107 = distinct !{!107, !44, !49, !50}
!108 = distinct !{!108, !44, !49}
!109 = distinct !{!109, i1 false, !"LVerDomain"}
!110 = distinct !{!110, !109}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !109}
!113 = distinct !{!113, !44, !49, !50}
!114 = distinct !{!114, !44, !49}
!115 = distinct !{!115, !44}
!116 = !{!104}
!117 = !{!105}
!118 = !{!106}
!119 = !{!104, !105}
!120 = !{!110}
!121 = !{!111}
!122 = !{!112}
!123 = !{!110, !111}
!124 = distinct !{!124, i1 false, !"LVerDomain"}
!125 = distinct !{!125, !124}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !44, !49, !50}
!128 = distinct !{!128, !44, !49, !50}
!129 = distinct !{!129, !44, !49}
end_hunk_1
