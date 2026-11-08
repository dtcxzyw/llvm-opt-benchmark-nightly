Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/crx?download=true
inline.NumInlined: 287
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_Z21crxDecodeGolombNormalP12CrxBitstreamiPiS1_S1_:bb.a
  %i.au = add i32 %i.an, %.neg.i35
  %i.av = lshr i32 %i.aq, %i.an                   ; 2 uses
  %i.aw = icmp samesign ugt i32 %i.av, 2
  %i.ax = zext i1 %i.aw to i32
  %i.ay = add nsw i32 %i.au, %i.ax
  %i.az = icmp samesign ugt i32 %i.av, 5
  %i.ba = zext i1 %i.az to i32
  %i.bb = add nsw i32 %i.ay, %i.ba
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 7)
  store i32 %i.bc, ptr %4, align 4, !tbaa !29
  br label %bb.b, !llvm.loop !311

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.bd = load i32, ptr %4, align 4, !tbaa !29    ; 3 uses
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = ashr i32 %i.be, 1
  %i.bg = icmp slt i32 %i.ac, %i.bf
  %.neg.i = sext i1 %i.bg to i32
  %i.bh = ashr i32 %i.ac, %i.bd                   ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 2
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp sgt i32 %i.bh, 5
  %i.bl = zext i1 %i.bk to i32
  %i.bm = add i32 %i.bd, %i.bj
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = add i32 %i.bn, %.neg.i
  %i.bp = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 7)
  store i32 %i.bp, ptr %4, align 4, !tbaa !29
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bq = phi i32 [ %i.c, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.032.lcssa = phi ptr [ %3, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_Z12crxMakeQStepP8CrxImageP7CrxTilePij(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !144   ; 5 uses
  %i.c = add i8 %i.b, -4
  %or.cond = icmp ult i8 %i.c, -3
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i16, ptr %i.d, align 4, !tbaa !163
  %i.f = zext i16 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 7
  %i.h = lshr i32 %i.g, 3                         ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.j = load i16, ptr %i.i, align 2, !tbaa !150
  %i.k = zext i16 %i.j to i32                     ; 4 uses
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.k, 1
  %i.n = add nuw nsw i32 %i.l, %i.m               ; 6 uses
  %i.o = add nuw nsw i32 %i.k, 3
  %i.p = lshr i32 %i.o, 2                         ; 4 uses
  %i.q = add nuw nsw i32 %i.k, 7
  %i.r = lshr i32 %i.q, 3                         ; 4 uses
  %.not = icmp eq i8 %i.b, 1
  %i.s = select i1 %.not, i32 0, i32 %i.p
  %spec.select = add nuw nsw i32 %i.s, %i.n
  %i.t = icmp samesign ugt i8 %i.b, 2
  %i.u = select i1 %i.t, i32 %i.r, i32 0
  %.1149 = add nuw nsw i32 %spec.select, %i.u
  %i.v = mul nuw nsw i32 %.1149, %i.h
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !140
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.z, %i.ac
  %i.ae = add nuw nsw i64 %i.ad, %i.x
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #25 ; 11 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN13libraw_memmgr6mallocEm.exit.thread, label %.preheader.i.i

_ZN13libraw_memmgr6mallocEm.exit.thread:          ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.ag, align 8, !tbaa !162
  br label %.loopexit

.preheader.i.i:                                   ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !141 ; 9 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !142
  %.not10.i.i.1 = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i.1, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.1
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !142
  %.not10.i.i.2 = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.2, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.2
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !142
  %.not10.i.i.3 = icmp eq ptr %i.ao, null
  br i1 %.not10.i.i.3, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.3
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !142
  %.not10.i.i.4 = icmp eq ptr %i.aq, null
  br i1 %.not10.i.i.4, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.4
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !142
  %.not10.i.i.5 = icmp eq ptr %i.as, null
  br i1 %.not10.i.i.5, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.5
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !142
  %.not10.i.i.6 = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.6, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %exitcond.not.i.i.6 = icmp eq i64 %indvars.iv.next.i.i.6, 511
  br i1 %exitcond.not.i.i.6, label %bb.k, label %bb.j, !llvm.loop !5

bb.j:                                             ; preds = %bb.i, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i.6, %bb.i ] ; 9 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !142
  %.not10.i.i = icmp eq ptr %i.aw, null
  br i1 %.not10.i.i, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.c

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 4088 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !142
  %.not11.i.i = icmp eq ptr %i.ay, null
  br i1 %.not11.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.ax, align 8, !tbaa !142
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.az = tail call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 11, ptr %i.az, align 16, !tbaa !63
  tail call void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #23
  unreachable

_ZN13libraw_memmgr6mallocEm.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.j
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.j ], [ %indvars.iv.next.i.i, %bb.c ], [ %indvars.iv.next.i.i.1, %bb.d ], [ %indvars.iv.next.i.i.2, %bb.e ], [ %indvars.iv.next.i.i.3, %bb.f ], [ %indvars.iv.next.i.i.4, %bb.g ], [ %indvars.iv.next.i.i.5, %bb.h ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i.i.lcssa
  store ptr %i.af, ptr %i.ba, align 8, !tbaa !142
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.af, ptr %i.bb, align 8, !tbaa !162
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.y ; 6 uses
  switch i8 %i.b, label %.loopexit [
    i8 3, label %bb.n
    i8 2, label %bb.s
    i8 1, label %bb.x
  ]

bb.n:                                             ; preds = %_ZN13libraw_memmgr6mallocEm.exit
  store ptr %i.bc, ptr %i.af, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.h, ptr %i.bd, align 8, !tbaa !94
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 %i.r, ptr %i.be, align 4, !tbaa !318
  %.not209 = icmp eq i32 %i.r, 0
  br i1 %.not209, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.n
  %i.bf = add nsw i32 %i.n, -1
  %.not210 = icmp eq i32 %i.h, 0
  br i1 %.not210, label %._crit_edge185, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph184
  %i.bg = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %i.bh = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bi = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %i.bj = shufflevector <4 x i32> %i.bi, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0144182.us = phi i32 [ %i.cm, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0146181.us = phi ptr [ %i.cl, %._crit_edge.us ], [ %i.bc, %.lr.ph.us.preheader ]
  %4 = phi <4 x i32> [ %5, %._crit_edge.us ], [ <i32 1, i32 0, i32 2, i32 3>, %.lr.ph.us.preheader ] ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %4, <4 x i32> %i.bh)
  %i.bl = mul <4 x i32> %i.bj, %i.bk
  %i.bm = sext <4 x i32> %i.bl to <4 x i64>
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.us, %bb.r
  %.0139180.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ck, %bb.r ]
  %.1147175.us = phi ptr [ %.0146181.us, %.lr.ph.us ], [ %i.cl, %bb.r ] ; 2 uses
  %i.bn = phi <4 x i64> [ %i.bm, %.lr.ph.us ], [ %i.bp, %bb.r ] ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %2, <4 x i64> %i.bn
  %i.bp = add nsw <4 x i64> %i.bn, splat (i64 1)
  %i.bq = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.bo, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !29
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bq) ; 2 uses
  %isneg.us = icmp slt i32 %i.br, 0
  %i.bs = select i1 %isneg.us, i32 3, i32 0
  %i.bt = add nsw i32 %i.bs, %i.br
  %i.bu = ashr i32 %i.bt, 2                       ; 4 uses
  %i.bv = sdiv i32 %i.bu, 6                       ; 2 uses
  %i.bw = srem i32 %i.bu, 6
  %i.bx = icmp sgt i32 %i.bu, 35
  br i1 %i.bx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr @q_step_tbl, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29
  %i.cb = sub nsw i32 6, %i.bv
  %i.cc = ashr i32 %i.ca, %i.cb
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cd = urem i32 %i.bu, 6
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @q_step_tbl, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !29
  %i.ch = add nuw nsw i32 %i.bv, 26
  %i.ci = and i32 %i.ch, 31
  %i.cj = shl i32 %i.cg, %i.ci
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge172.us = phi i32 [ %i.cc, %bb.p ], [ %i.cj, %bb.q ]
  store i32 %storemerge172.us, ptr %.1147175.us, align 4, !tbaa !29
  %i.ck = add nuw nsw i32 %.0139180.us, 1         ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1147175.us, i64 4 ; 3 uses
  %exitcond.not = icmp eq i32 %i.ck, %i.h
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.o, !llvm.loop !312

._crit_edge.us:                                   ; preds = %bb.r
  %i.cm = add nuw nsw i32 %.0144182.us, 1         ; 2 uses
  %5 = add nuw nsw <4 x i32> %4, splat (i32 4)
  %exitcond243.not.a = icmp eq i32 %i.cm, %i.r
  br i1 %exitcond243.not.a, label %._crit_edge185, label %.lr.ph.us, !llvm.loop !313

._crit_edge185:                                   ; preds = %._crit_edge.us, %.lr.ph184, %bb.n
  %.0146.lcssa = phi ptr [ %i.bc, %bb.n ], [ %i.bc, %.lr.ph184 ], [ %i.cl, %._crit_edge.us ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge185, %_ZN13libraw_memmgr6mallocEm.exit
  %.2 = phi ptr [ %.0146.lcssa, %._crit_edge185 ], [ %i.bc, %_ZN13libraw_memmgr6mallocEm.exit ] ; 4 uses
  %.0145 = phi ptr [ %i.cn, %._crit_edge185 ], [ %i.af, %_ZN13libraw_memmgr6mallocEm.exit ] ; 4 uses
  store ptr %.2, ptr %.0145, align 8, !tbaa !93
  %i.co = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  store i32 %i.h, ptr %i.co, align 8, !tbaa !94
  %i.cp = getelementptr inbounds nuw i8, ptr %.0145, i64 12
  store i32 %i.p, ptr %i.cp, align 4, !tbaa !318
  %.not211 = icmp eq i32 %i.p, 0
  br i1 %.not211, label %._crit_edge195, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.s
  %i.cq = add nsw i32 %i.n, -1                    ; 2 uses
  %.not212 = icmp eq i32 %i.h, 0
  br i1 %.not212, label %._crit_edge195, label %.lr.ph.us197

.lr.ph.us197:                                     ; preds = %.lr.ph194, %._crit_edge.us198
  %indvars.iv249 = phi i32 [ %indvars.iv.next250, %._crit_edge.us198 ], [ 0, %.lr.ph194 ] ; 2 uses
  %indvars.iv244 = phi i32 [ %indvars.iv.next245, %._crit_edge.us198 ], [ 1, %.lr.ph194 ] ; 2 uses
  %.0138192.us = phi i32 [ %7, %._crit_edge.us198 ], [ 0, %.lr.ph194 ]
  %.3191.us = phi ptr [ %i.dq, %._crit_edge.us198 ], [ %.2, %.lr.ph194 ]
  %smin246 = tail call i32 @llvm.smin.i32(i32 %indvars.iv244, i32 %i.cq)
  %i.cr = mul i32 %i.h, %smin246
  %6 = sext i32 %i.cr to i64
  %smin251 = tail call i32 @llvm.smin.i32(i32 %indvars.iv249, i32 %i.cq)
  %i.cs = mul i32 %i.h, %smin251
  %i.ct = sext i32 %i.cs to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.us197, %bb.w
  %indvars.iv252 = phi i64 [ %i.ct, %.lr.ph.us197 ], [ %indvars.iv.next253, %bb.w ] ; 2 uses
  %indvars.iv247 = phi i64 [ %6, %.lr.ph.us197 ], [ %indvars.iv.next248, %bb.w ] ; 2 uses
  %.0135190.us = phi i32 [ 0, %.lr.ph.us197 ], [ %i.dp, %bb.w ]
  %.4187.us = phi ptr [ %.3191.us, %.lr.ph.us197 ], [ %i.dq, %bb.w ] ; 2 uses
  %indvars.iv.next253 = add nsw i64 %indvars.iv252, 1
  %i.cu = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv252
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !29
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, 1
  %i.cw = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv247
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !29
  %i.cy = add nsw i32 %i.cx, %i.cv                ; 3 uses
  %i.cz = sdiv i32 %i.cy, 2                       ; 2 uses
  %i.da = sdiv i32 %i.cy, 12                      ; 2 uses
  %i.db = icmp sgt i32 %i.cy, 71
  br i1 %i.db, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = srem i32 %i.cz, 6
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr @q_step_tbl, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !29
  %i.dg = sub nsw i32 6, %i.da
  %i.dh = ashr i32 %i.df, %i.dg
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.di = urem i32 %i.cz, 6
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @q_step_tbl, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !29
  %i.dm = add nuw nsw i32 %i.da, 26
  %i.dn = and i32 %i.dm, 31
  %i.do = shl i32 %i.dl, %i.dn
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge171.us = phi i32 [ %i.dh, %bb.u ], [ %i.do, %bb.v ]
  store i32 %storemerge171.us, ptr %.4187.us, align 4, !tbaa !29
  %i.dp = add nuw nsw i32 %.0135190.us, 1         ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.4187.us, i64 4 ; 3 uses
  %exitcond257.not = icmp eq i32 %i.dp, %i.h
  br i1 %exitcond257.not, label %._crit_edge.us198, label %bb.t, !llvm.loop !314

._crit_edge.us198:                                ; preds = %bb.w
  %7 = add nuw nsw i32 %.0138192.us, 1            ; 2 uses
  %indvars.iv.next245 = add nuw nsw i32 %indvars.iv244, 2
  %indvars.iv.next250 = add nuw nsw i32 %indvars.iv249, 2
  %exitcond258.not = icmp eq i32 %7, %i.p
  br i1 %exitcond258.not, label %._crit_edge195, label %.lr.ph.us197, !llvm.loop !315

._crit_edge195:                                   ; preds = %._crit_edge.us198, %.lr.ph194, %bb.s
  %.3.lcssa = phi ptr [ %.2, %bb.s ], [ %.2, %.lr.ph194 ], [ %i.dq, %._crit_edge.us198 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge195, %_ZN13libraw_memmgr6mallocEm.exit
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge195 ], [ %i.bc, %_ZN13libraw_memmgr6mallocEm.exit ] ; 2 uses
  %.1 = phi ptr [ %i.dr, %._crit_edge195 ], [ %i.af, %_ZN13libraw_memmgr6mallocEm.exit ] ; 3 uses
  store ptr %.5, ptr %.1, align 8, !tbaa !93
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i32 %i.h, ptr %i.ds, align 8, !tbaa !94
  %i.dt = getelementptr inbounds nuw i8, ptr %.1, i64 12
  store i32 %i.n, ptr %i.dt, align 4, !tbaa !318
  %i.du = icmp ne i32 %i.n, 0
  %i.dv = icmp ne i32 %i.h, 0
  %or.cond208 = and i1 %i.du, %i.dv
  br i1 %or.cond208, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.x, %._crit_edge
  %.0134207 = phi i32 [ %i.dw, %._crit_edge ], [ 0, %bb.x ]
  %.6206 = phi ptr [ %i.eo, %._crit_edge ], [ %.5, %bb.x ]
  %.0152205 = phi ptr [ %i.ep, %._crit_edge ], [ %2, %bb.x ]
  br label %bb.y

._crit_edge:                                      ; preds = %bb.ab
  %i.dw = add nuw nsw i32 %.0134207, 1            ; 2 uses
  %exitcond260.not = icmp eq i32 %i.dw, %i.n
  br i1 %exitcond260.not, label %.loopexit, label %.preheader, !llvm.loop !316

bb.y:                                             ; preds = %.preheader, %bb.ab
  %.0203 = phi i32 [ 0, %.preheader ], [ %i.en, %bb.ab ]
  %.7202 = phi ptr [ %.6206, %.preheader ], [ %i.eo, %bb.ab ] ; 2 uses
  %.1153201 = phi ptr [ %.0152205, %.preheader ], [ %i.ep, %bb.ab ] ; 2 uses
  %i.dx = load i32, ptr %.1153201, align 4, !tbaa !29 ; 4 uses
  %i.dy = sdiv i32 %i.dx, 6                       ; 2 uses
  %i.dz = srem i32 %i.dx, 6
  %i.ea = icmp sgt i32 %i.dx, 35
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = urem i32 %i.dx, 6
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @q_step_tbl, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !29
  %i.ef = add nuw nsw i32 %i.dy, 26
  %i.eg = and i32 %i.ef, 31
  %i.eh = shl i32 %i.ee, %i.eg
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ei = sext i32 %i.dz to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr @q_step_tbl, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !29
  %i.el = sub nsw i32 6, %i.dy
  %i.em = ashr i32 %i.ek, %i.el
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %storemerge = phi i32 [ %i.em, %bb.aa ], [ %i.eh, %bb.z ]
  store i32 %storemerge, ptr %.7202, align 4, !tbaa !29
  %i.en = add nuw nsw i32 %.0203, 1               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.7202, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1153201, i64 4 ; 2 uses
  %exitcond259.not = icmp eq i32 %i.en, %i.h
  br i1 %exitcond259.not, label %._crit_edge, label %bb.y, !llvm.loop !317

.loopexit:                                        ; preds = %._crit_edge, %bb.x, %_ZN13libraw_memmgr6mallocEm.exit.thread, %_ZN13libraw_memmgr6mallocEm.exit, %bb.a
  %.1151 = phi i32 [ -1, %bb.a ], [ -1, %_ZN13libraw_memmgr6mallocEm.exit.thread ], [ 0, %_ZN13libraw_memmgr6mallocEm.exit ], [ 0, %bb.x ], [ 0, %._crit_edge ]
  ret i32 %.1151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z18crxProcessSubbandsP17crx_data_header_tP8CrxImageP7CrxTileP12CrxPlaneComp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !131
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.h = load i16, ptr %i.g, align 2, !tbaa !150  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.j = load i16, ptr %i.i, align 4, !tbaa !163  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !144   ; 5 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -64
  store i16 %i.j, ptr %i.m, align 8, !tbaa !91
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -62
  store i16 %i.h, ptr %i.n, align 2, !tbaa !96
  br label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 -88 ; 4 uses
  %i.p = zext i16 %i.j to i32                     ; 5 uses
  %i.q = zext i16 %i.h to i32                     ; 5 uses
  %i.r = zext i8 %i.l to i64                      ; 2 uses
  %.idx = mul nuw nsw i64 %i.r, 192
  %i.s = getelementptr i8, ptr @exCoefNumTbl, i64 %.idx
  %i.t = getelementptr i8, ptr %i.s, i64 -192     ; 2 uses
  %i.u = and i32 %i.p, 7
  %i.v = mul nuw nsw i32 %i.u, 6
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.w ; 4 uses
  %i.y = and i32 %i.q, 7
  %i.z = mul nuw nsw i32 %i.y, 6
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aa ; 4 uses
  %i.ac = zext i8 %i.l to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !164 ; 4 uses
  %i.af = and i8 %i.ae, 1
  %.not123 = icmp eq i8 %i.af, 0                  ; 3 uses
  %i.ag = lshr i8 %i.ae, 1
  %.lobit = and i8 %i.ag, 1                       ; 2 uses
  %i.ah = zext nneg i8 %.lobit to i32             ; 4 uses
  %i.ai = and i8 %i.ae, 4
  %.not125 = icmp eq i8 %i.ai, 0                  ; 4 uses
  %i.aj = lshr i8 %i.ae, 3
  %.lobit139 = and i8 %i.aj, 1                    ; 2 uses
  %i.ak = zext nneg i8 %.lobit139 to i32          ; 4 uses
  %i.al = load i32, ptr %0, align 8, !tbaa !167
  %i.am = icmp eq i32 %i.al, 512                  ; 2 uses
  %i.an = zext nneg i8 %.lobit139 to i16          ; 2 uses
  %i.ao = zext nneg i8 %.lobit to i16             ; 2 uses
  %wide.trip.count219 = zext i8 %i.l to i64       ; 4 uses
  br i1 %i.am, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit130.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit130.us ], [ 0, %bb.b ] ; 4 uses
  %.0110144.us = phi i32 [ %i.as, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit130.us ], [ %i.p, %bb.b ] ; 2 uses
  %.0112143.us = phi i32 [ %i.au, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit130.us ], [ %i.q, %bb.b ] ; 2 uses
  %.0114142.us = phi ptr [ %i.co, %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit130.us ], [ %i.o, %bb.b ] ; 22 uses
  %i.ap = and i32 %.0110144.us, 1                 ; 2 uses
  %i.aq = and i32 %.0112143.us, 1                 ; 2 uses
  %i.ar = add nuw nsw i32 %i.ap, %.0110144.us
  %i.as = lshr i32 %i.ar, 1                       ; 4 uses
  %i.at = add nuw nsw i32 %i.aq, %.0112143.us
  %i.au = lshr i32 %i.at, 1                       ; 4 uses
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.split.us
  %.idx223 = shl nuw nsw i64 %indvars.iv216, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx223 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us
  %.0103.us = phi i32 [ %i.aw, %bb.c ], [ 0, %.split.us ] ; 2 uses
  %.0102.us = phi i32 [ %i.ay, %bb.c ], [ 0, %.split.us ] ; 2 uses
  %spec.select.us = add nsw i32 %.0103.us, %i.ah
  br i1 %.not125, label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit130.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.idx224 = shl nuw nsw i64 %indvars.iv216, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx224 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !29
  br label %_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit130.us

_Z18crxSetupSubbandIdxP17crx_data_header_tP8CrxImageP10CrxSubbandissss.exit130.us: ; preds = %bb.e, %bb.d
  %.0101.us = phi i32 [ %i.ba, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.0100.us = phi i32 [ %i.bc, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %spec.select128.us = add nsw i32 %.0101.us, %i.ak
  %i.bd = sub nsw i32 %i.as, %i.ap
  %i.be = add i32 %i.bd, %spec.select.us
  %i.bf = trunc i32 %i.be to i16                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0114142.us, i64 24
  store i16 %i.bf, ptr %i.bg, align 8, !tbaa !91
  %i.bh = sub nsw i32 %i.au, %i.aq
  %i.bi = add i32 %i.bh, %spec.select128.us
  %i.bj = trunc i32 %i.bi to i16                  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0114142.us, i64 26
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !96
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %i.bl = trunc i32 %.0101.us to i16              ; 2 uses
  %i.bm = trunc i32 %.0103.us to i16              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0114142.us, i64 72
  store i16 %i.an, ptr %i.bn, align 8, !tbaa !95
  %i.bo = getelementptr inbounds nuw i8, ptr %.0114142.us, i64 74
  store i16 %i.bl, ptr %i.bo, align 2, !tbaa !97
  %i.bp = getelementptr inbounds nuw i8, ptr %.0114142.us, i64 76
  store i16 %i.ao, ptr %i.bp, align 4, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %.0114142.us, i64 78
  store i16 %i.bm, ptr %i.bq, align 2, !tbaa !102
  %i.br = getelementptr inbounds nuw i8, ptr %.0114142.us, i64 80
  %i.bs = trunc i64 %indvars.iv216 to i16
  %i.bt = sub i16 2, %i.bs                        ; 3 uses
  store i16 %i.bt, ptr %i.br, align 8, !tbaa !103
  %i.bu = add i32 %.0102.us, %i.as
  %i.bv = trunc i32 %i.bu to i16
end_hunk_0
