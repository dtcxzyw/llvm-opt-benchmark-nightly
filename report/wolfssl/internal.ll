Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@DoCertificateVerify:bb.a
  store i32 %i.hr, ptr %2, align 4, !tbaa !56
  store i8 5, ptr %i.d, align 4, !tbaa !226
  br label %.thread147

.thread147:                                       ; preds = %bb.aq, %bb.ap, %bb.ar, %InServerCertReqHashSigAlgo.exit.thread, %bb.am, %bb.ah, %bb.x, %SetDigest.exit, %bb.v, %bb.r, %bb.q, %IsAtLeastTLSv1_2.exit, %bb.as
  %.7 = phi i32 [ -329, %bb.ar ], [ -229, %bb.am ], [ -425, %InServerCertReqHashSigAlgo.exit.thread ], [ -316, %bb.v ], [ -328, %SetDigest.exit ], [ -328, %bb.x ], [ -229, %bb.ah ], [ -425, %bb.r ], [ 0, %bb.as ], [ -425, %bb.q ], [ -329, %bb.aq ], [ -328, %IsAtLeastTLSv1_2.exit ], [ -329, %bb.ap ]
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 16, !tbaa !159 ; 2 uses
  %.not128 = icmp eq ptr %i.ht, null
  br i1 %.not128, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.thread147
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.hv = load i64, ptr %i.hu, align 16
  %i.hw = and i64 %i.hv, 1099511627776
  %.not129 = icmp eq i64 %i.hw, 0
  br i1 %.not129, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @wolfSSL_Free(ptr noundef nonnull %i.ht) #27
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %.thread147
  store ptr null, ptr %i.hs, align 16, !tbaa !159
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 0, ptr %i.hx, align 8, !tbaa !160
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 16
  %i.ia = and i64 %i.hz, -1099511627777
  store i64 %i.ia, ptr %i.hy, align 16
  call void @FreeKeyExchange(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i32 %.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @SendFatalAlertOnly(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ChachaAEADEncrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [13 x i8], align 8                ; 18 uses
  %i.c = alloca [12 x i8], align 1                ; 72 uses
  %i.d = alloca [32 x i8], align 16               ; 13 uses
  %i.e = zext i16 %3 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.g = load i16, ptr %i.f, align 2, !tbaa !254
  %i.h = zext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 131072
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %writeAeadAuthData.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !186  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !187  ; 3 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !187
  %i.r = icmp eq i32 %i.p, -1
  br i1 %i.r, label %bb.c, label %writeAeadAuthData.exit

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %i.n, 1
  store i32 %i.s, ptr %i.m, align 4, !tbaa !186
  br label %writeAeadAuthData.exit

writeAeadAuthData.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.6.0.i.i = phi i32 [ 0, %bb.a ], [ -1, %bb.c ], [ %i.p, %bb.b ] ; 4 uses
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.a ], [ %i.n, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.t = lshr i32 %.sroa.0.0.i.i, 24
  %i.u = trunc nuw i32 %i.t to i8
  store i8 %i.u, ptr %i.b, align 8, !tbaa !52
  %i.v = lshr i32 %.sroa.0.0.i.i, 16
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !52
  %i.y = lshr i32 %.sroa.0.0.i.i, 8
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !52
  %i.ab = trunc i32 %.sroa.0.0.i.i to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ae = lshr i32 %.sroa.6.0.i.i, 24
  %i.af = trunc nuw i32 %i.ae to i8
  store i8 %i.af, ptr %i.ad, align 4, !tbaa !52
  %i.ag = lshr i32 %.sroa.6.0.i.i, 16
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !52
  %i.aj = lshr i32 %.sroa.6.0.i.i, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.ak, ptr %i.al, align 2, !tbaa !52
  %i.am = trunc i32 %.sroa.6.0.i.i to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.am, ptr %i.an, align 1, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %4, ptr %i.ap, align 8, !tbaa !52
  %.in29.i = load i8, ptr %i.ao, align 2, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %.in29.i, ptr %i.aq, align 1, !tbaa !52
  %.in30.in.i = getelementptr inbounds nuw i8, ptr %0, i64 727
  %.in30.i = load i8, ptr %.in30.in.i, align 1, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %.in30.i, ptr %i.ar, align 2, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.at = lshr i32 %i.i, 8
  %i.au = trunc i32 %i.at to i8
  store i8 %i.au, ptr %i.as, align 1, !tbaa !52
  %i.av = trunc i32 %i.i to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.av, ptr %i.aw, align 4, !tbaa !52
  %i.ax = and i64 %i.k, 4398046511104
  %.not = icmp eq i64 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.az = load i64, ptr %i.b, align 8
  store i64 %i.az, ptr %i.ay, align 1
  br i1 %.not, label %bb.d, label %xorbuf.exit

bb.d:                                             ; preds = %writeAeadAuthData.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 5 uses
  %i.bb = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = or i64 %i.bb, %i.bc
  %i.be = and i64 %i.bd, 7
  %or.cond.i = icmp eq i64 %i.be, 0
  br i1 %or.cond.i, label %.lr.ph.i.i, label %bb.e

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !80
  %i.bj = xor i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !80
  br label %.lr.ph53.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.bk = xor i64 %i.bb, %i.bc
  %i.bl = and i64 %i.bk, 7
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.preheader.i, label %.lr.ph53.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %i.bn = and i64 %i.bb, 7
  %.not55.i = icmp eq i64 %i.bn, 0
  br i1 %.not55.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 988
  br label %.lr.ph.i30.preheader.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.046.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.ba, %.preheader.i ] ; 2 uses
  %.02245.i = phi ptr [ %i.br, %.lr.ph.i ], [ %i.c, %.preheader.i ] ; 3 uses
  %.02544.i = phi i32 [ %i.bu, %.lr.ph.i ], [ 12, %.preheader.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.046.i, i64 1 ; 4 uses
  %i.bq = load i8, ptr %.046.i, align 1, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %.02245.i, i64 1 ; 4 uses
  %i.bs = load i8, ptr %.02245.i, align 1, !tbaa !52
  %i.bt = xor i8 %i.bs, %i.bq
  store i8 %i.bt, ptr %.02245.i, align 1, !tbaa !52
  %i.bu = add nsw i32 %.02544.i, -1               ; 6 uses
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = and i64 %i.bv, 7
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = icmp ne i32 %i.bu, 0
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ca = and i32 %i.bu, -8
  %.idx.i.i = zext i32 %i.ca to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i
  %.not.i.i59 = icmp ult i32 %i.bu, 8
  br i1 %.not.i.i59, label %XorWords.exit.i, label %.lr.ph.i30.preheader.i

.lr.ph.i30.preheader.i:                           ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.cc = phi ptr [ %i.bo, %._crit_edge.thread.i ], [ %i.cb, %._crit_edge.i ] ; 2 uses
  %.0.lcssa68.i = phi ptr [ %i.ba, %._crit_edge.thread.i ], [ %i.bp, %._crit_edge.i ] ; 7 uses
  %.022.lcssa67.i = phi ptr [ %i.c, %._crit_edge.thread.i ], [ %i.br, %._crit_edge.i ] ; 6 uses
  %.025.lcssa65.i = phi i32 [ 12, %._crit_edge.thread.i ], [ %i.bu, %._crit_edge.i ] ; 2 uses
  %i.cd = ptrtoaddr ptr %i.cc to i64
  %.0.lcssa68.i286 = ptrtoaddr ptr %.0.lcssa68.i to i64 ; 2 uses
  %i.ce = add nuw i64 %.0.lcssa68.i286, 8
  %i.cf = call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.ce)
  %i.cg = xor i64 %.0.lcssa68.i286, -1
  %i.ch = add i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 136
  br i1 %min.iters.check, label %.lr.ph.i30.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i30.preheader.i
  %i.ck = and i64 %i.ch, -8
  %i.cl = add i64 %i.ck, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.cl
  %scevgep287 = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.cl
  %bound0 = icmp ult ptr %.022.lcssa67.i, %scevgep287
  %bound1 = icmp ult ptr %.0.lcssa68.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i30.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 3 uses
  %i.cm = shl i64 %n.vec, 3                       ; 2 uses
  %i.cn = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.cm ; 2 uses
  %i.co = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.cm ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.cp ; 3 uses
  %next.gep288 = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep288, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep288, align 8, !tbaa !80, !alias.scope !416
  %wide.load289 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !80, !alias.scope !416
  %i.cr = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load290 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !80, !alias.scope !417, !noalias !416
  %wide.load291 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !80, !alias.scope !417, !noalias !416
  %i.cs = xor <2 x i64> %wide.load290, %wide.load
  %i.ct = xor <2 x i64> %wide.load291, %wide.load289
  store <2 x i64> %i.cs, ptr %next.gep, align 8, !tbaa !80, !alias.scope !417, !noalias !416
  store <2 x i64> %i.ct, ptr %i.cr, align 8, !tbaa !80, !alias.scope !417, !noalias !416
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !412

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %XorWords.exit.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i30.preheader.i, %middle.block
  %.sroa.037.1.i.ph = phi ptr [ %.022.lcssa67.i, %vector.memcheck ], [ %.022.lcssa67.i, %.lr.ph.i30.preheader.i ], [ %i.cn, %middle.block ]
  %.ph = phi ptr [ %.0.lcssa68.i, %vector.memcheck ], [ %.0.lcssa68.i, %.lr.ph.i30.preheader.i ], [ %i.co, %middle.block ]
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i.preheader, %.lr.ph.i30.i
  %.sroa.037.1.i = phi ptr [ %i.cy, %.lr.ph.i30.i ], [ %.sroa.037.1.i.ph, %.lr.ph.i30.i.preheader ] ; 3 uses
  %i.cv = phi ptr [ %i.cw, %.lr.ph.i30.i ], [ %.ph, %.lr.ph.i30.i.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !80
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i, i64 8 ; 2 uses
  %i.cz = load i64, ptr %.sroa.037.1.i, align 8, !tbaa !80
  %i.da = xor i64 %i.cz, %i.cx
  store i64 %i.da, ptr %.sroa.037.1.i, align 8, !tbaa !80
  %i.db = icmp ult ptr %i.cw, %i.cc
  br i1 %i.db, label %.lr.ph.i30.i, label %XorWords.exit.i, !llvm.loop !413

XorWords.exit.i:                                  ; preds = %.lr.ph.i30.i, %middle.block, %._crit_edge.i
  %.025.lcssa66.i = phi i32 [ %i.bu, %._crit_edge.i ], [ %.025.lcssa65.i, %middle.block ], [ %.025.lcssa65.i, %.lr.ph.i30.i ]
  %.sroa.037.2.i = phi ptr [ %i.br, %._crit_edge.i ], [ %i.cn, %middle.block ], [ %i.cy, %.lr.ph.i30.i ]
  %.sroa.0.0.i = phi ptr [ %i.bp, %._crit_edge.i ], [ %i.co, %middle.block ], [ %i.cw, %.lr.ph.i30.i ]
  %i.dc = and i32 %.025.lcssa66.i, 7              ; 2 uses
  %.not49.i = icmp eq i32 %i.dc, 0
  br i1 %.not49.i, label %xorbuf.exit, label %.lr.ph53.i.preheader

.lr.ph53.i.preheader:                             ; preds = %.lr.ph.i.i, %bb.e, %XorWords.exit.i
  %.252.i.ph = phi ptr [ %i.ba, %bb.e ], [ %i.bf, %.lr.ph.i.i ], [ %.sroa.0.0.i, %XorWords.exit.i ] ; 2 uses
  %.22451.i.ph = phi ptr [ %i.c, %bb.e ], [ %i.bh, %.lr.ph.i.i ], [ %.sroa.037.2.i, %XorWords.exit.i ] ; 2 uses
  %.22750.i.ph = phi i32 [ 12, %bb.e ], [ 4, %.lr.ph.i.i ], [ %i.dc, %XorWords.exit.i ] ; 4 uses
  %xtraiter = and i32 %.22750.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol

.lr.ph53.i.prol:                                  ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i.prol
  %.252.i.prol = phi ptr [ %i.dd, %.lr.ph53.i.prol ], [ %.252.i.ph, %.lr.ph53.i.preheader ] ; 2 uses
  %.22451.i.prol = phi ptr [ %i.df, %.lr.ph53.i.prol ], [ %.22451.i.ph, %.lr.ph53.i.preheader ] ; 3 uses
  %.22750.i.prol = phi i32 [ %i.di, %.lr.ph53.i.prol ], [ %.22750.i.ph, %.lr.ph53.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph53.i.prol ], [ 0, %.lr.ph53.i.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.252.i.prol, i64 1 ; 2 uses
  %i.de = load i8, ptr %.252.i.prol, align 1, !tbaa !52
  %i.df = getelementptr inbounds nuw i8, ptr %.22451.i.prol, i64 1 ; 2 uses
  %i.dg = load i8, ptr %.22451.i.prol, align 1, !tbaa !52
  %i.dh = xor i8 %i.dg, %i.de
  store i8 %i.dh, ptr %.22451.i.prol, align 1, !tbaa !52
  %i.di = add nsw i32 %.22750.i.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol, !llvm.loop !414

.lr.ph53.i.prol.loopexit:                         ; preds = %.lr.ph53.i.prol, %.lr.ph53.i.preheader
  %.252.i.unr = phi ptr [ %.252.i.ph, %.lr.ph53.i.preheader ], [ %i.dd, %.lr.ph53.i.prol ]
  %.22451.i.unr = phi ptr [ %.22451.i.ph, %.lr.ph53.i.preheader ], [ %i.df, %.lr.ph53.i.prol ]
  %.22750.i.unr = phi i32 [ %.22750.i.ph, %.lr.ph53.i.preheader ], [ %i.di, %.lr.ph53.i.prol ]
  %i.dj = icmp samesign ult i32 %.22750.i.ph, 4
  br i1 %i.dj, label %xorbuf.exit, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i
  %.252.i = phi ptr [ %i.dz, %.lr.ph53.i ], [ %.252.i.unr, %.lr.ph53.i.prol.loopexit ] ; 5 uses
  %.22451.i = phi ptr [ %i.eb, %.lr.ph53.i ], [ %.22451.i.unr, %.lr.ph53.i.prol.loopexit ] ; 6 uses
  %.22750.i = phi i32 [ %i.ee, %.lr.ph53.i ], [ %.22750.i.unr, %.lr.ph53.i.prol.loopexit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.252.i, i64 1
  %i.dl = load i8, ptr %.252.i, align 1, !tbaa !52
  %i.dm = getelementptr inbounds nuw i8, ptr %.22451.i, i64 1 ; 2 uses
  %i.dn = load i8, ptr %.22451.i, align 1, !tbaa !52
  %i.do = xor i8 %i.dn, %i.dl
  store i8 %i.do, ptr %.22451.i, align 1, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %.252.i, i64 2
  %i.dq = load i8, ptr %i.dk, align 1, !tbaa !52
  %i.dr = getelementptr inbounds nuw i8, ptr %.22451.i, i64 2 ; 2 uses
  %i.ds = load i8, ptr %i.dm, align 1, !tbaa !52
  %i.dt = xor i8 %i.ds, %i.dq
  store i8 %i.dt, ptr %i.dm, align 1, !tbaa !52
  %i.du = getelementptr inbounds nuw i8, ptr %.252.i, i64 3
  %i.dv = load i8, ptr %i.dp, align 1, !tbaa !52
  %i.dw = getelementptr inbounds nuw i8, ptr %.22451.i, i64 3 ; 2 uses
  %i.dx = load i8, ptr %i.dr, align 1, !tbaa !52
  %i.dy = xor i8 %i.dx, %i.dv
  store i8 %i.dy, ptr %i.dr, align 1, !tbaa !52
  %i.dz = getelementptr inbounds nuw i8, ptr %.252.i, i64 4
  %i.ea = load i8, ptr %i.du, align 1, !tbaa !52
  %i.eb = getelementptr inbounds nuw i8, ptr %.22451.i, i64 4
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !52
  %i.ed = xor i8 %i.ec, %i.ea
  store i8 %i.ed, ptr %i.dw, align 1, !tbaa !52
  %i.ee = add nsw i32 %.22750.i, -4               ; 2 uses
  %.not.i.3 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph53.i, !llvm.loop !415

xorbuf.exit:                                      ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i, %writeAeadAuthData.exit, %XorWords.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !84
  %i.eh = call i32 @wc_Chacha_SetIV(ptr noundef %i.eg, ptr noundef nonnull %i.c, i32 noundef 0) #27 ; 3 uses
  %.not51 = icmp eq i32 %i.eh, 0
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %xorbuf.exit
  fence seq_cst
  %i.ei = ptrtoint ptr %i.c to i64
  %i.ej = and i64 %i.ei, 7
  %.not19.i = icmp eq i64 %i.ej, 0
  br i1 %.not19.i, label %.preheader.i62.thread228, label %.lr.ph.i60.preheader

.lr.ph.i60.preheader:                             ; preds = %bb.f
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  store i8 0, ptr %i.c, align 1, !tbaa !52
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = and i64 %i.el, 7
  %.not.i61 = icmp eq i64 %i.em, 0
  br i1 %.not.i61, label %.preheader.i62.thread228, label %.lr.ph.i60.1

.lr.ph.i60.1:                                     ; preds = %.lr.ph.i60.preheader
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  store i8 0, ptr %i.ek, align 1, !tbaa !52
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = and i64 %i.eo, 7
  %.not.i61.1 = icmp eq i64 %i.ep, 0
  br i1 %.not.i61.1, label %.preheader.i62.thread228, label %.lr.ph.i60.2

.lr.ph.i60.2:                                     ; preds = %.lr.ph.i60.1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  store i8 0, ptr %i.en, align 1, !tbaa !52
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, 7
  %.not.i61.2 = icmp eq i64 %i.es, 0
  br i1 %.not.i61.2, label %.preheader.i62.thread228, label %.lr.ph.i60.3

.lr.ph.i60.3:                                     ; preds = %.lr.ph.i60.2
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store i8 0, ptr %i.eq, align 1, !tbaa !52
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = and i64 %i.eu, 7
  %.not.i61.3 = icmp eq i64 %i.ev, 0
  br i1 %.not.i61.3, label %.preheader.i62, label %.lr.ph.i60.4

.lr.ph.i60.4:                                     ; preds = %.lr.ph.i60.3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 3 uses
  store i8 0, ptr %i.et, align 1, !tbaa !52
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = and i64 %i.ex, 7
  %.not.i61.4 = icmp eq i64 %i.ey, 0
  br i1 %.not.i61.4, label %.lr.ph31.preheader.i, label %.lr.ph.i60.5

.lr.ph.i60.5:                                     ; preds = %.lr.ph.i60.4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 3 uses
  store i8 0, ptr %i.ew, align 1, !tbaa !52
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = and i64 %i.fa, 7
  %.not.i61.5 = icmp eq i64 %i.fb, 0
  br i1 %.not.i61.5, label %.lr.ph31.preheader.i, label %.lr.ph.i60.6

.lr.ph.i60.6:                                     ; preds = %.lr.ph.i60.5
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 3 uses
  store i8 0, ptr %i.ez, align 1, !tbaa !52
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = and i64 %i.fd, 7
  %.not.i61.6 = icmp eq i64 %i.fe, 0
  br i1 %.not.i61.6, label %.lr.ph31.preheader.i, label %.lr.ph.i60.7

.lr.ph.i60.7:                                     ; preds = %.lr.ph.i60.6
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i8 0, ptr %i.fc, align 1, !tbaa !52
  %i.fg = ptrtoint ptr %i.ff to i64
end_hunk_0
begin_hunk_1_@AeadIncrementExpIV:bb.a
  br i1 %.not.3, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 975 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !52
  %i.p = add i8 %i.o, 1                           ; 2 uses
  store i8 %i.p, ptr %i.n, align 1, !tbaa !52
  %.not.4 = icmp eq i8 %i.p, 0
  br i1 %.not.4, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %i.s = add i8 %i.r, 1                           ; 2 uses
  store i8 %i.s, ptr %i.q, align 1, !tbaa !52
  %.not.5 = icmp eq i8 %i.s, 0
  br i1 %.not.5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 973 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !52
  %i.v = add i8 %i.u, 1                           ; 2 uses
  store i8 %i.v, ptr %i.t, align 1, !tbaa !52
  %.not.6 = icmp eq i8 %i.v, 0
  br i1 %.not.6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %i.a, align 1, !tbaa !52
  %i.x = add i8 %i.w, 1
  store i8 %i.x, ptr %i.a, align 1, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ChachaAEADDecrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [13 x i8], align 8                ; 18 uses
  %i.b = alloca [12 x i8], align 1                ; 72 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  %i.d = alloca [32 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !254  ; 2 uses
  %i.g = icmp ult i16 %3, %i.f
  br i1 %i.g, label %ForceZero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %narrow = sub nuw i16 %3, %i.f                  ; 4 uses
  %i.h = zext i16 %narrow to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 131072
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %writeAeadAuthData.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !184  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !185  ; 3 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !185
  %i.q = icmp eq i32 %i.o, -1
  br i1 %i.q, label %bb.d, label %writeAeadAuthData.exit

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %i.m, 1
  store i32 %i.r, ptr %i.l, align 4, !tbaa !184
  br label %writeAeadAuthData.exit

writeAeadAuthData.exit:                           ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.6.0.i.i = phi i32 [ 0, %bb.b ], [ -1, %bb.d ], [ %i.o, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.b ], [ %i.m, %bb.d ], [ %i.m, %bb.c ] ; 4 uses
  %i.s = lshr i32 %.sroa.0.0.i.i, 24
  %i.t = trunc nuw i32 %i.s to i8
  store i8 %i.t, ptr %i.a, align 8, !tbaa !52
  %i.u = lshr i32 %.sroa.0.0.i.i, 16
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !52
  %i.x = lshr i32 %.sroa.0.0.i.i, 8
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.y, ptr %i.z, align 2, !tbaa !52
  %i.aa = trunc i32 %.sroa.0.0.i.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ad = lshr i32 %.sroa.6.0.i.i, 24
  %i.ae = trunc nuw i32 %i.ad to i8
  store i8 %i.ae, ptr %i.ac, align 4, !tbaa !52
  %i.af = lshr i32 %.sroa.6.0.i.i, 16
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !52
  %i.ai = lshr i32 %.sroa.6.0.i.i, 8
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.aj, ptr %i.ak, align 2, !tbaa !52
  %i.al = trunc i32 %.sroa.6.0.i.i to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.al, ptr %i.am, align 1, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 717
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !256
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 718
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ao, ptr %i.aq, align 8, !tbaa !52
  %.in29.i = load i8, ptr %i.ap, align 2, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %.in29.i, ptr %i.ar, align 1, !tbaa !52
  %.in30.in.i = getelementptr inbounds nuw i8, ptr %0, i64 719
  %.in30.i = load i8, ptr %.in30.in.i, align 1, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %.in30.i, ptr %i.as, align 2, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.au = lshr i16 %narrow, 8
  %i.av = trunc nuw i16 %i.au to i8
  store i8 %i.av, ptr %i.at, align 1, !tbaa !52
  %i.aw = trunc i16 %narrow to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.aw, ptr %i.ax, align 4, !tbaa !52
  %i.ay = and i64 %i.j, 4398046511104
  %.not = icmp eq i64 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ba = load i64, ptr %i.a, align 8
  store i64 %i.ba, ptr %i.az, align 1
  br i1 %.not, label %bb.e, label %xorbuf.exit

bb.e:                                             ; preds = %writeAeadAuthData.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 5 uses
  %i.bc = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = or i64 %i.bc, %i.bd
  %i.bf = and i64 %i.be, 7
  %or.cond.i = icmp eq i64 %i.bf, 0
  br i1 %or.cond.i, label %.lr.ph.i.i, label %bb.f

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !80
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !80
  %i.bk = xor i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !80
  br label %.lr.ph53.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.bl = xor i64 %i.bc, %i.bd
  %i.bm = and i64 %i.bl, 7
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.preheader.i, label %.lr.ph53.i.preheader

.preheader.i:                                     ; preds = %bb.f
  %i.bo = and i64 %i.bc, 7
  %.not55.i = icmp eq i64 %i.bo, 0
  br i1 %.not55.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1000
  br label %.lr.ph.i30.preheader.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.046.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.bb, %.preheader.i ] ; 2 uses
  %.02245.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.b, %.preheader.i ] ; 3 uses
  %.02544.i = phi i32 [ %i.bv, %.lr.ph.i ], [ 12, %.preheader.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.046.i, i64 1 ; 4 uses
  %i.br = load i8, ptr %.046.i, align 1, !tbaa !52
  %i.bs = getelementptr inbounds nuw i8, ptr %.02245.i, i64 1 ; 4 uses
  %i.bt = load i8, ptr %.02245.i, align 1, !tbaa !52
  %i.bu = xor i8 %i.bt, %i.br
  store i8 %i.bu, ptr %.02245.i, align 1, !tbaa !52
  %i.bv = add nsw i32 %.02544.i, -1               ; 6 uses
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = and i64 %i.bw, 7
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = icmp ne i32 %i.bv, 0
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cb = and i32 %i.bv, -8
  %.idx.i.i = zext i32 %i.cb to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i
  %.not.i.i63 = icmp ult i32 %i.bv, 8
  br i1 %.not.i.i63, label %XorWords.exit.i, label %.lr.ph.i30.preheader.i

.lr.ph.i30.preheader.i:                           ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.cd = phi ptr [ %i.bp, %._crit_edge.thread.i ], [ %i.cc, %._crit_edge.i ] ; 2 uses
  %.0.lcssa68.i = phi ptr [ %i.bb, %._crit_edge.thread.i ], [ %i.bq, %._crit_edge.i ] ; 7 uses
  %.022.lcssa67.i = phi ptr [ %i.b, %._crit_edge.thread.i ], [ %i.bs, %._crit_edge.i ] ; 6 uses
  %.025.lcssa65.i = phi i32 [ 12, %._crit_edge.thread.i ], [ %i.bv, %._crit_edge.i ] ; 2 uses
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %.0.lcssa68.i282 = ptrtoaddr ptr %.0.lcssa68.i to i64 ; 2 uses
  %i.cf = add nuw i64 %.0.lcssa68.i282, 8
  %i.cg = call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cf)
  %i.ch = xor i64 %.0.lcssa68.i282, -1
  %i.ci = add i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 136
  br i1 %min.iters.check, label %.lr.ph.i30.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i30.preheader.i
  %i.cl = and i64 %i.ci, -8
  %i.cm = add i64 %i.cl, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.cm
  %scevgep283 = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.cm
  %bound0 = icmp ult ptr %.022.lcssa67.i, %scevgep283
  %bound1 = icmp ult ptr %.0.lcssa68.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i30.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ck, 4611686018427387900     ; 3 uses
  %i.cn = shl i64 %n.vec, 3                       ; 2 uses
  %i.co = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.cn ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.cq ; 3 uses
  %next.gep284 = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep284, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep284, align 8, !tbaa !80, !alias.scope !427
  %wide.load285 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !80, !alias.scope !427
  %i.cs = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load286 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !80, !alias.scope !428, !noalias !427
  %wide.load287 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !80, !alias.scope !428, !noalias !427
  %i.ct = xor <2 x i64> %wide.load286, %wide.load
  %i.cu = xor <2 x i64> %wide.load287, %wide.load285
  store <2 x i64> %i.ct, ptr %next.gep, align 8, !tbaa !80, !alias.scope !428, !noalias !427
  store <2 x i64> %i.cu, ptr %i.cs, align 8, !tbaa !80, !alias.scope !428, !noalias !427
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %XorWords.exit.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i30.preheader.i, %middle.block
  %.sroa.037.1.i.ph = phi ptr [ %.022.lcssa67.i, %vector.memcheck ], [ %.022.lcssa67.i, %.lr.ph.i30.preheader.i ], [ %i.co, %middle.block ]
  %.ph = phi ptr [ %.0.lcssa68.i, %vector.memcheck ], [ %.0.lcssa68.i, %.lr.ph.i30.preheader.i ], [ %i.cp, %middle.block ]
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i.preheader, %.lr.ph.i30.i
  %.sroa.037.1.i = phi ptr [ %i.cz, %.lr.ph.i30.i ], [ %.sroa.037.1.i.ph, %.lr.ph.i30.i.preheader ] ; 3 uses
  %i.cw = phi ptr [ %i.cx, %.lr.ph.i30.i ], [ %.ph, %.lr.ph.i30.i.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !80
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i, i64 8 ; 2 uses
  %i.da = load i64, ptr %.sroa.037.1.i, align 8, !tbaa !80
  %i.db = xor i64 %i.da, %i.cy
  store i64 %i.db, ptr %.sroa.037.1.i, align 8, !tbaa !80
  %i.dc = icmp ult ptr %i.cx, %i.cd
  br i1 %i.dc, label %.lr.ph.i30.i, label %XorWords.exit.i, !llvm.loop !422

XorWords.exit.i:                                  ; preds = %.lr.ph.i30.i, %middle.block, %._crit_edge.i
  %.025.lcssa66.i = phi i32 [ %i.bv, %._crit_edge.i ], [ %.025.lcssa65.i, %middle.block ], [ %.025.lcssa65.i, %.lr.ph.i30.i ]
  %.sroa.037.2.i = phi ptr [ %i.bs, %._crit_edge.i ], [ %i.co, %middle.block ], [ %i.cz, %.lr.ph.i30.i ]
  %.sroa.0.0.i = phi ptr [ %i.bq, %._crit_edge.i ], [ %i.cp, %middle.block ], [ %i.cx, %.lr.ph.i30.i ]
  %i.dd = and i32 %.025.lcssa66.i, 7              ; 2 uses
  %.not49.i = icmp eq i32 %i.dd, 0
  br i1 %.not49.i, label %xorbuf.exit, label %.lr.ph53.i.preheader

.lr.ph53.i.preheader:                             ; preds = %.lr.ph.i.i, %bb.f, %XorWords.exit.i
  %.252.i.ph = phi ptr [ %i.bb, %bb.f ], [ %i.bg, %.lr.ph.i.i ], [ %.sroa.0.0.i, %XorWords.exit.i ] ; 2 uses
  %.22451.i.ph = phi ptr [ %i.b, %bb.f ], [ %i.bi, %.lr.ph.i.i ], [ %.sroa.037.2.i, %XorWords.exit.i ] ; 2 uses
  %.22750.i.ph = phi i32 [ 12, %bb.f ], [ 4, %.lr.ph.i.i ], [ %i.dd, %XorWords.exit.i ] ; 4 uses
  %xtraiter = and i32 %.22750.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol

.lr.ph53.i.prol:                                  ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i.prol
  %.252.i.prol = phi ptr [ %i.de, %.lr.ph53.i.prol ], [ %.252.i.ph, %.lr.ph53.i.preheader ] ; 2 uses
  %.22451.i.prol = phi ptr [ %i.dg, %.lr.ph53.i.prol ], [ %.22451.i.ph, %.lr.ph53.i.preheader ] ; 3 uses
  %.22750.i.prol = phi i32 [ %i.dj, %.lr.ph53.i.prol ], [ %.22750.i.ph, %.lr.ph53.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph53.i.prol ], [ 0, %.lr.ph53.i.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %.252.i.prol, i64 1 ; 2 uses
  %i.df = load i8, ptr %.252.i.prol, align 1, !tbaa !52
  %i.dg = getelementptr inbounds nuw i8, ptr %.22451.i.prol, i64 1 ; 2 uses
  %i.dh = load i8, ptr %.22451.i.prol, align 1, !tbaa !52
  %i.di = xor i8 %i.dh, %i.df
  store i8 %i.di, ptr %.22451.i.prol, align 1, !tbaa !52
  %i.dj = add nsw i32 %.22750.i.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol, !llvm.loop !423

.lr.ph53.i.prol.loopexit:                         ; preds = %.lr.ph53.i.prol, %.lr.ph53.i.preheader
  %.252.i.unr = phi ptr [ %.252.i.ph, %.lr.ph53.i.preheader ], [ %i.de, %.lr.ph53.i.prol ]
  %.22451.i.unr = phi ptr [ %.22451.i.ph, %.lr.ph53.i.preheader ], [ %i.dg, %.lr.ph53.i.prol ]
  %.22750.i.unr = phi i32 [ %.22750.i.ph, %.lr.ph53.i.preheader ], [ %i.dj, %.lr.ph53.i.prol ]
  %i.dk = icmp samesign ult i32 %.22750.i.ph, 4
  br i1 %i.dk, label %xorbuf.exit, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i
  %.252.i = phi ptr [ %i.ea, %.lr.ph53.i ], [ %.252.i.unr, %.lr.ph53.i.prol.loopexit ] ; 5 uses
  %.22451.i = phi ptr [ %i.ec, %.lr.ph53.i ], [ %.22451.i.unr, %.lr.ph53.i.prol.loopexit ] ; 6 uses
  %.22750.i = phi i32 [ %i.ef, %.lr.ph53.i ], [ %.22750.i.unr, %.lr.ph53.i.prol.loopexit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.252.i, i64 1
  %i.dm = load i8, ptr %.252.i, align 1, !tbaa !52
  %i.dn = getelementptr inbounds nuw i8, ptr %.22451.i, i64 1 ; 2 uses
  %i.do = load i8, ptr %.22451.i, align 1, !tbaa !52
  %i.dp = xor i8 %i.do, %i.dm
  store i8 %i.dp, ptr %.22451.i, align 1, !tbaa !52
  %i.dq = getelementptr inbounds nuw i8, ptr %.252.i, i64 2
  %i.dr = load i8, ptr %i.dl, align 1, !tbaa !52
  %i.ds = getelementptr inbounds nuw i8, ptr %.22451.i, i64 2 ; 2 uses
  %i.dt = load i8, ptr %i.dn, align 1, !tbaa !52
  %i.du = xor i8 %i.dt, %i.dr
  store i8 %i.du, ptr %i.dn, align 1, !tbaa !52
  %i.dv = getelementptr inbounds nuw i8, ptr %.252.i, i64 3
  %i.dw = load i8, ptr %i.dq, align 1, !tbaa !52
  %i.dx = getelementptr inbounds nuw i8, ptr %.22451.i, i64 3 ; 2 uses
  %i.dy = load i8, ptr %i.ds, align 1, !tbaa !52
  %i.dz = xor i8 %i.dy, %i.dw
  store i8 %i.dz, ptr %i.ds, align 1, !tbaa !52
  %i.ea = getelementptr inbounds nuw i8, ptr %.252.i, i64 4
  %i.eb = load i8, ptr %i.dv, align 1, !tbaa !52
  %i.ec = getelementptr inbounds nuw i8, ptr %.22451.i, i64 4
  %i.ed = load i8, ptr %i.dx, align 1, !tbaa !52
  %i.ee = xor i8 %i.ed, %i.eb
  store i8 %i.ee, ptr %i.dx, align 1, !tbaa !52
  %i.ef = add nsw i32 %.22750.i, -4               ; 2 uses
  %.not.i.3 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph53.i, !llvm.loop !424

xorbuf.exit:                                      ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i, %writeAeadAuthData.exit, %XorWords.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !85
  %i.ei = call i32 @wc_Chacha_SetIV(ptr noundef %i.eh, ptr noundef nonnull %i.b, i32 noundef 0) #27 ; 3 uses
  %.not53 = icmp eq i32 %i.ei, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %xorbuf.exit
  fence seq_cst
  %i.ej = ptrtoint ptr %i.b to i64
  %i.ek = and i64 %i.ej, 7
  %.not19.i = icmp eq i64 %i.ek, 0
  br i1 %.not19.i, label %.preheader.i66.thread222, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %bb.g
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store i8 0, ptr %i.b, align 1, !tbaa !52
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = and i64 %i.em, 7
  %.not.i65 = icmp eq i64 %i.en, 0
  br i1 %.not.i65, label %.preheader.i66.thread222, label %.lr.ph.i64.1

.lr.ph.i64.1:                                     ; preds = %.lr.ph.i64.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  store i8 0, ptr %i.el, align 1, !tbaa !52
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = and i64 %i.ep, 7
  %.not.i65.1 = icmp eq i64 %i.eq, 0
  br i1 %.not.i65.1, label %.preheader.i66.thread222, label %.lr.ph.i64.2

.lr.ph.i64.2:                                     ; preds = %.lr.ph.i64.1
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 3 uses
  store i8 0, ptr %i.eo, align 1, !tbaa !52
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = and i64 %i.es, 7
  %.not.i65.2 = icmp eq i64 %i.et, 0
  br i1 %.not.i65.2, label %.preheader.i66.thread222, label %.lr.ph.i64.3

.lr.ph.i64.3:                                     ; preds = %.lr.ph.i64.2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i8 0, ptr %i.er, align 1, !tbaa !52
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = and i64 %i.ev, 7
  %.not.i65.3 = icmp eq i64 %i.ew, 0
  br i1 %.not.i65.3, label %.preheader.i66, label %.lr.ph.i64.4

.lr.ph.i64.4:                                     ; preds = %.lr.ph.i64.3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 3 uses
  store i8 0, ptr %i.eu, align 1, !tbaa !52
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = and i64 %i.ey, 7
  %.not.i65.4 = icmp eq i64 %i.ez, 0
  br i1 %.not.i65.4, label %.lr.ph31.preheader.i, label %.lr.ph.i64.5

.lr.ph.i64.5:                                     ; preds = %.lr.ph.i64.4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 3 uses
  store i8 0, ptr %i.ex, align 1, !tbaa !52
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, 7
  %.not.i65.5 = icmp eq i64 %i.fc, 0
  br i1 %.not.i65.5, label %.lr.ph31.preheader.i, label %.lr.ph.i64.6

.lr.ph.i64.6:                                     ; preds = %.lr.ph.i64.5
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 3 uses
  store i8 0, ptr %i.fa, align 1, !tbaa !52
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = and i64 %i.fe, 7
  %.not.i65.6 = icmp eq i64 %i.ff, 0
  br i1 %.not.i65.6, label %.lr.ph31.preheader.i, label %.lr.ph.i64.7

.lr.ph.i64.7:                                     ; preds = %.lr.ph.i64.6
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i8 0, ptr %i.fd, align 1, !tbaa !52
  %i.fh = ptrtoint ptr %i.fg to i64
end_hunk_1
