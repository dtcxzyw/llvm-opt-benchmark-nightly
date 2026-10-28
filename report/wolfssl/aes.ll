Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/aes?download=true
inline.NumInlined: 97
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 73
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@wc_AesCbcDecrypt:bb.a
  %i.bhl = getelementptr inbounds nuw i8, ptr %.254.i, i64 4
  %i.bhm = load i8, ptr %i.bhg, align 1, !tbaa !21
  %i.bhn = getelementptr inbounds nuw i8, ptr %.22453.i, i64 4
  %i.bho = load i8, ptr %i.bhi, align 1, !tbaa !21
  %i.bhp = xor i8 %i.bho, %i.bhm
  store i8 %i.bhp, ptr %i.bhi, align 1, !tbaa !21
  %i.bhq = add nsw i32 %.22752.i, -4              ; 2 uses
  %.not.i.3 = icmp eq i32 %i.bhq, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph56.i, !llvm.loop !58

xorbuf.exit:                                      ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %vector.ph, %vec.epilog.middle.block, %.lr.ph.i.i.preheader, %XorWords.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr51, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.bhr = getelementptr inbounds nuw i8, ptr %.03058, i64 16
  %i.bhs = getelementptr inbounds nuw i8, ptr %.02961, i64 16
  %.not37 = icmp eq i32 %i.bq, 0
  br i1 %.not37, label %AesDecrypt_preFetchOpt.exit, label %bb.e, !llvm.loop !59

AesDecrypt_preFetchOpt.exit:                      ; preds = %xorbuf.exit, %bb.e, %bb.c, %bb.b, %bb.a
  %.128 = phi i32 [ -173, %bb.c ], [ -173, %bb.a ], [ 0, %bb.b ], [ -226, %bb.e ], [ 0, %xorbuf.exit ]
  ret i32 %.128
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @GenerateM0(ptr noundef initializes((16, 32)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %0, i64 16, i1 false)
  %.ptr460 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 20 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, ptr noundef nonnull align 16 dereferenceable(16) %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 95 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !21    ; 2 uses
  %i.h = and i8 %i.g, 1
  %i.i = icmp eq i8 %i.h, 0
  %i.j = select i1 %i.i, i8 0, i8 -31
  store volatile i8 %i.j, ptr %i.c, align 1, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i8, ptr %.ptr460, align 16, !tbaa !21
  %i.n = load <8 x i8>, ptr %.ptr460, align 16, !tbaa !21
  %i.o = lshr i8 %i.m, 1
  %i.p = load i8, ptr %i.l, align 8, !tbaa !21
  %i.q = load <8 x i8>, ptr %i.k, align 1, !tbaa !21
  %i.r = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.n, <8 x i8> %i.q, <8 x i8> splat (i8 7))
  store <8 x i8> %i.r, ptr %i.k, align 1, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !21    ; 2 uses
  %i.u = tail call i8 @llvm.fshl.i8(i8 %i.p, i8 %i.t, i8 7)
  store i8 %i.u, ptr %i.s, align 1, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.w = load i8, ptr %i.v, align 2, !tbaa !21    ; 2 uses
  %i.x = tail call i8 @llvm.fshl.i8(i8 %i.t, i8 %i.w, i8 7)
  store i8 %i.x, ptr %i.v, align 2, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 91 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21    ; 2 uses
  %i.aa = tail call i8 @llvm.fshl.i8(i8 %i.w, i8 %i.z, i8 7)
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !21  ; 2 uses
  %i.ad = tail call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.ac, i8 7)
  store i8 %i.ad, ptr %i.ab, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 93 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21  ; 2 uses
  %i.ag = tail call i8 @llvm.fshl.i8(i8 %i.ac, i8 %i.af, i8 7)
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 94 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !21  ; 2 uses
  %i.aj = tail call i8 @llvm.fshl.i8(i8 %i.af, i8 %i.ai, i8 7)
  store i8 %i.aj, ptr %i.ah, align 2, !tbaa !21
  %i.ak = tail call i8 @llvm.fshl.i8(i8 %i.ai, i8 %i.g, i8 7)
  store i8 %i.ak, ptr %i.f, align 1, !tbaa !21
  %.0..0..0..0..0..0..i = load volatile i8, ptr %i.c, align 1, !tbaa !21
  %i.al = xor i8 %.0..0..0..0..0..0..i, %i.o
  store i8 %i.al, ptr %.ptr460, align 16, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.ptr438.ptr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 29 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr438.ptr, ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21  ; 2 uses
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  %i.aq = select i1 %i.ap, i8 0, i8 -31
  store volatile i8 %i.aq, ptr %i.b, align 1, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i8, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.au = load <8 x i8>, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.av = lshr i8 %i.at, 1
  %i.aw = load i8, ptr %i.as, align 8, !tbaa !21
  %i.ax = load <8 x i8>, ptr %i.ar, align 1, !tbaa !21
  %i.ay = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.au, <8 x i8> %i.ax, <8 x i8> splat (i8 7))
  store <8 x i8> %i.ay, ptr %i.ar, align 1, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21  ; 2 uses
  %i.bb = tail call i8 @llvm.fshl.i8(i8 %i.aw, i8 %i.ba, i8 7)
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !21  ; 2 uses
  %i.be = tail call i8 @llvm.fshl.i8(i8 %i.ba, i8 %i.bd, i8 7)
  store i8 %i.be, ptr %i.bc, align 2, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 59 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !21  ; 2 uses
  %i.bh = tail call i8 @llvm.fshl.i8(i8 %i.bd, i8 %i.bg, i8 7)
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !21  ; 2 uses
  %i.bk = tail call i8 @llvm.fshl.i8(i8 %i.bg, i8 %i.bj, i8 7)
  store i8 %i.bk, ptr %i.bi, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !21  ; 2 uses
  %i.bn = tail call i8 @llvm.fshl.i8(i8 %i.bj, i8 %i.bm, i8 7)
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !21  ; 2 uses
  %i.bq = tail call i8 @llvm.fshl.i8(i8 %i.bm, i8 %i.bp, i8 7)
  store i8 %i.bq, ptr %i.bo, align 2, !tbaa !21
  %i.br = tail call i8 @llvm.fshl.i8(i8 %i.bp, i8 %i.an, i8 7)
  store i8 %i.br, ptr %i.am, align 1, !tbaa !21
  %.0..0..0..0..0..0..i62 = load volatile i8, ptr %i.b, align 1, !tbaa !21
  %i.bs = xor i8 %.0..0..0..0..0..0..i62, %i.av
  store i8 %i.bs, ptr %.ptr438.ptr, align 16, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.ptr429.ptr.ptr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 38 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr429.ptr.ptr, ptr noundef nonnull align 16 dereferenceable(16) %.ptr438.ptr, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21  ; 2 uses
  %i.bv = and i8 %i.bu, 1
  %i.bw = icmp eq i8 %i.bv, 0
  %i.bx = select i1 %i.bw, i8 0, i8 -31
  store volatile i8 %i.bx, ptr %i.a, align 1, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load i8, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.cb = load <8 x i8>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.cc = lshr i8 %i.ca, 1
  %i.cd = load i8, ptr %i.bz, align 8, !tbaa !21
  %i.ce = load <8 x i8>, ptr %i.by, align 1, !tbaa !21
  %i.cf = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.cb, <8 x i8> %i.ce, <8 x i8> splat (i8 7))
  store <8 x i8> %i.cf, ptr %i.by, align 1, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !21  ; 2 uses
  %i.ci = tail call i8 @llvm.fshl.i8(i8 %i.cd, i8 %i.ch, i8 7)
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !21  ; 2 uses
  %i.cl = tail call i8 @llvm.fshl.i8(i8 %i.ch, i8 %i.ck, i8 7)
  store i8 %i.cl, ptr %i.cj, align 2, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 43 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21  ; 2 uses
  %i.co = tail call i8 @llvm.fshl.i8(i8 %i.ck, i8 %i.cn, i8 7)
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !21  ; 2 uses
  %i.cr = tail call i8 @llvm.fshl.i8(i8 %i.cn, i8 %i.cq, i8 7)
  store i8 %i.cr, ptr %i.cp, align 4, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 45 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !21  ; 2 uses
  %i.cu = tail call i8 @llvm.fshl.i8(i8 %i.cq, i8 %i.ct, i8 7)
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !21  ; 2 uses
  %i.cx = tail call i8 @llvm.fshl.i8(i8 %i.ct, i8 %i.cw, i8 7)
  store i8 %i.cx, ptr %i.cv, align 2, !tbaa !21
  %i.cy = tail call i8 @llvm.fshl.i8(i8 %i.cw, i8 %i.bu, i8 7)
  store i8 %i.cy, ptr %i.bt, align 1, !tbaa !21
  %.0..0..0..0..0..0..i63 = load volatile i8, ptr %i.a, align 1, !tbaa !21
  %i.cz = xor i8 %.0..0..0..0..0..0..i63, %i.cc
  store i8 %i.cz, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.ptr443.ptr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 37 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr443.ptr, ptr noundef nonnull align 16 dereferenceable(16) %.ptr438.ptr, i64 16, i1 false)
  %i.da = ptrtoint ptr %.ptr443.ptr to i64        ; 6 uses
  %i.db = ptrtoint ptr %.ptr429.ptr.ptr to i64    ; 6 uses
  %i.dc = or i64 %i.db, %i.da
  %i.dd = and i64 %i.dc, 7
  %or.cond.i = icmp eq i64 %i.dd, 0
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %bb.b

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.de = load <2 x i64>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !20
  %i.df = load <2 x i64>, ptr %.ptr443.ptr, align 16, !tbaa !20
  %i.dg = xor <2 x i64> %i.df, %i.de
  store <2 x i64> %i.dg, ptr %.ptr443.ptr, align 16, !tbaa !20
  br label %xorbuf.exit

bb.b:                                             ; preds = %bb.a
  %i.dh = xor i64 %i.db, %i.da
  %i.di = and i64 %i.dh, 7
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %._crit_edge.i.thread, label %vector.memcheck851

._crit_edge.i.thread:                             ; preds = %bb.b
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.0.lcssa.i637838.a = ptrtoaddr ptr %i.dk to i64
  %i.dl = ptrtoaddr ptr %.ptr429.ptr.ptr to i64   ; 2 uses
  %i.dm = add nuw i64 %i.dl, 8
  %i.dn = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i637838.a, i64 %i.dm)
  %i.do = xor i64 %i.dl, -1
  %i.dp = add i64 %i.dn, %i.do                    ; 3 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dp, 136
  br i1 %min.iters.check, label %.lr.ph.i32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge.i.thread
  %i.ds = and i64 %i.dp, -8
  %i.dt = add i64 %i.ds, 8                        ; 2 uses
  %i.du = getelementptr i8, ptr %.ptr443.ptr, i64 %i.dt
  %i.dv = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.dt
  %bound0 = icmp ult ptr %.ptr443.ptr, %i.dv
  %bound1 = icmp ult ptr %.ptr429.ptr.ptr, %i.du
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, 4611686018427387900     ; 3 uses
  %i.dw = shl i64 %n.vec, 3                       ; 2 uses
  %i.dx = getelementptr i8, ptr %.ptr443.ptr, i64 %i.dw
  %i.dy = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.ptr443.ptr, i64 %i.dz ; 3 uses
  %next.gep839 = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep839, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep839, align 8, !tbaa !20, !alias.scope !153
  %wide.load840 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !20, !alias.scope !153
  %i.eb = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load841 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !20, !alias.scope !154, !noalias !153
  %wide.load842 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !20, !alias.scope !154, !noalias !153
  %i.ec = xor <2 x i64> %wide.load841, %wide.load
  %i.ed = xor <2 x i64> %wide.load842, %wide.load840
  store <2 x i64> %i.ec, ptr %next.gep, align 8, !tbaa !20, !alias.scope !154, !noalias !153
  store <2 x i64> %i.ed, ptr %i.eb, align 8, !tbaa !20, !alias.scope !154, !noalias !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %xorbuf.exit, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %vector.memcheck, %._crit_edge.i.thread, %middle.block
  %.sroa.039.2.i.ph = phi ptr [ %.ptr443.ptr, %vector.memcheck ], [ %.ptr443.ptr, %._crit_edge.i.thread ], [ %i.dx, %middle.block ]
  %.ph1617 = phi ptr [ %.ptr429.ptr.ptr, %vector.memcheck ], [ %.ptr429.ptr.ptr, %._crit_edge.i.thread ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.ei, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.ef = phi ptr [ %i.eg, %.lr.ph.i32.i ], [ %.ph1617, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8
  %i.ej = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.ek = xor i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.el = icmp ult ptr %i.eg, %i.dk
  br i1 %i.el, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !68

vector.memcheck851:                               ; preds = %bb.b
  %i.em = getelementptr i8, ptr %0, i64 80
  %i.en = getelementptr i8, ptr %0, i64 48
  %bound0852 = icmp ult ptr %.ptr443.ptr, %i.en
  %bound1853 = icmp ult ptr %.ptr429.ptr.ptr, %i.em
  %found.conflict854 = and i1 %bound0852, %bound1853
  br i1 %found.conflict854, label %.lr.ph56.i, label %vector.body858

vector.body858:                                   ; preds = %vector.memcheck851
  %wide.load862 = load <16 x i8>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21, !alias.scope !155
  %wide.load863 = load <16 x i8>, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !156, !noalias !155
  %i.eo = xor <16 x i8> %wide.load863, %wide.load862
  store <16 x i8> %i.eo, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !156, !noalias !155
  br label %xorbuf.exit

.lr.ph56.i:                                       ; preds = %vector.memcheck851
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.eq = load i8, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.es = load i8, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.et = xor i8 %i.es, %i.eq
  store i8 %i.et, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ev = load i8, ptr %i.ep, align 1, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.ex = load i8, ptr %i.er, align 1, !tbaa !21
  %i.ey = xor i8 %i.ex, %i.ev
  store i8 %i.ey, ptr %i.er, align 1, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.fa = load i8, ptr %i.eu, align 2, !tbaa !21
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 67 ; 2 uses
  %i.fc = load i8, ptr %i.ew, align 2, !tbaa !21
  %i.fd = xor i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.ew, align 2, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ff = load i8, ptr %i.ez, align 1, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.fh = load i8, ptr %i.fb, align 1, !tbaa !21
  %i.fi = xor i8 %i.fh, %i.ff
  store i8 %i.fi, ptr %i.fb, align 1, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.fk = load i8, ptr %i.fe, align 4, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 69 ; 2 uses
  %i.fm = load i8, ptr %i.fg, align 4, !tbaa !21
  %i.fn = xor i8 %i.fm, %i.fk
  store i8 %i.fn, ptr %i.fg, align 4, !tbaa !21
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.fp = load i8, ptr %i.fj, align 1, !tbaa !21
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  %i.fr = load i8, ptr %i.fl, align 1, !tbaa !21
  %i.fs = xor i8 %i.fr, %i.fp
  store i8 %i.fs, ptr %i.fl, align 1, !tbaa !21
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.fu = load i8, ptr %i.fo, align 2, !tbaa !21
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 71 ; 2 uses
  %i.fw = load i8, ptr %i.fq, align 2, !tbaa !21
  %i.fx = xor i8 %i.fw, %i.fu
  store i8 %i.fx, ptr %i.fq, align 2, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fz = load i8, ptr %i.ft, align 1, !tbaa !21
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gb = load i8, ptr %i.fv, align 1, !tbaa !21
  %i.gc = xor i8 %i.gb, %i.fz
  store i8 %i.gc, ptr %i.fv, align 1, !tbaa !21
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ge = load i8, ptr %i.fy, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.gg = load i8, ptr %i.ga, align 8, !tbaa !21
  %i.gh = xor i8 %i.gg, %i.ge
  store i8 %i.gh, ptr %i.ga, align 8, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.gj = load i8, ptr %i.gd, align 1, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.gl = load i8, ptr %i.gf, align 1, !tbaa !21
  %i.gm = xor i8 %i.gl, %i.gj
  store i8 %i.gm, ptr %i.gf, align 1, !tbaa !21
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.go = load i8, ptr %i.gi, align 2, !tbaa !21
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 75 ; 2 uses
  %i.gq = load i8, ptr %i.gk, align 2, !tbaa !21
  %i.gr = xor i8 %i.gq, %i.go
  store i8 %i.gr, ptr %i.gk, align 2, !tbaa !21
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gt = load i8, ptr %i.gn, align 1, !tbaa !21
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.gv = load i8, ptr %i.gp, align 1, !tbaa !21
  %i.gw = xor i8 %i.gv, %i.gt
  store i8 %i.gw, ptr %i.gp, align 1, !tbaa !21
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.gy = load i8, ptr %i.gs, align 4, !tbaa !21
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.ha = load i8, ptr %i.gu, align 4, !tbaa !21
  %i.hb = xor i8 %i.ha, %i.gy
  store i8 %i.hb, ptr %i.gu, align 4, !tbaa !21
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.hd = load i8, ptr %i.gx, align 1, !tbaa !21
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.hf = load i8, ptr %i.gz, align 1, !tbaa !21
  %i.hg = xor i8 %i.hf, %i.hd
  store i8 %i.hg, ptr %i.gz, align 1, !tbaa !21
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.hi = load i8, ptr %i.hc, align 2, !tbaa !21
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 79 ; 2 uses
  %i.hk = load i8, ptr %i.he, align 2, !tbaa !21
  %i.hl = xor i8 %i.hk, %i.hi
  store i8 %i.hl, ptr %i.he, align 2, !tbaa !21
  %i.hm = load i8, ptr %i.hh, align 1, !tbaa !21
  %i.hn = load i8, ptr %i.hj, align 1, !tbaa !21
  %i.ho = xor i8 %i.hn, %i.hm
  store i8 %i.ho, ptr %i.hj, align 1, !tbaa !21
  br label %xorbuf.exit

xorbuf.exit:                                      ; preds = %.lr.ph.i32.i, %vector.body858, %.lr.ph56.i, %middle.block, %.lr.ph.i.i.preheader
  %.ptr465 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 26 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr465, ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, i64 16, i1 false)
  %i.hp = ptrtoint ptr %.ptr465 to i64            ; 4 uses
  %i.hq = or i64 %i.db, %i.hp
  %i.hr = and i64 %i.hq, 7
  %or.cond.i64 = icmp eq i64 %i.hr, 0
  br i1 %or.cond.i64, label %.lr.ph.i.i93.preheader, label %bb.c

.lr.ph.i.i93.preheader:                           ; preds = %xorbuf.exit
  %i.hs = load <2 x i64>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !20
  %i.ht = load <2 x i64>, ptr %.ptr465, align 16, !tbaa !20
  %i.hu = xor <2 x i64> %i.ht, %i.hs
  store <2 x i64> %i.hu, ptr %.ptr465, align 16, !tbaa !20
  br label %xorbuf.exit95

bb.c:                                             ; preds = %xorbuf.exit
  %i.hv = xor i64 %i.db, %i.hp
  %i.hw = and i64 %i.hv, 7
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %._crit_edge.i80.thread, label %vector.memcheck913

._crit_edge.i80.thread:                           ; preds = %bb.c
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.0.lcssa.i83646884.a = ptrtoaddr ptr %i.hy to i64
  %i.hz = ptrtoaddr ptr %.ptr429.ptr.ptr to i64   ; 2 uses
  %i.ia = add nuw i64 %i.hz, 8
  %i.ib = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i83646884.a, i64 %i.ia)
  %i.ic = xor i64 %i.hz, -1
  %i.id = add i64 %i.ib, %i.ic                    ; 3 uses
  %i.ie = lshr i64 %i.id, 3
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check886 = icmp ult i64 %i.id, 136
  br i1 %min.iters.check886, label %.lr.ph.i32.i86.preheader, label %vector.memcheck887

vector.memcheck887:                               ; preds = %._crit_edge.i80.thread
  %i.ig = and i64 %i.id, -8
  %i.ih = add i64 %i.ig, 8                        ; 2 uses
  %i.ii = getelementptr i8, ptr %.ptr465, i64 %i.ih
  %i.ij = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.ih
  %bound0888 = icmp ult ptr %.ptr465, %i.ij
  %bound1889 = icmp ult ptr %.ptr429.ptr.ptr, %i.ii
  %found.conflict890 = and i1 %bound0888, %bound1889
  br i1 %found.conflict890, label %.lr.ph.i32.i86.preheader, label %vector.ph891

vector.ph891:                                     ; preds = %vector.memcheck887
  %n.vec892 = and i64 %i.if, 4611686018427387900  ; 3 uses
  %i.ik = shl i64 %n.vec892, 3                    ; 2 uses
  %i.il = getelementptr i8, ptr %.ptr465, i64 %i.ik
  %i.im = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.ik
  br label %vector.body893

vector.body893:                                   ; preds = %vector.body893, %vector.ph891
  %index894 = phi i64 [ 0, %vector.ph891 ], [ %index.next901, %vector.body893 ] ; 2 uses
  %i.in = shl i64 %index894, 3                    ; 2 uses
  %next.gep895 = getelementptr i8, ptr %.ptr465, i64 %i.in ; 3 uses
  %next.gep896 = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep896, i64 16
  %wide.load897 = load <2 x i64>, ptr %next.gep896, align 8, !tbaa !20, !alias.scope !157
  %wide.load898 = load <2 x i64>, ptr %i.io, align 8, !tbaa !20, !alias.scope !157
  %i.ip = getelementptr i8, ptr %next.gep895, i64 16 ; 2 uses
  %wide.load899 = load <2 x i64>, ptr %next.gep895, align 8, !tbaa !20, !alias.scope !158, !noalias !157
  %wide.load900 = load <2 x i64>, ptr %i.ip, align 8, !tbaa !20, !alias.scope !158, !noalias !157
  %i.iq = xor <2 x i64> %wide.load899, %wide.load897
  %i.ir = xor <2 x i64> %wide.load900, %wide.load898
  store <2 x i64> %i.iq, ptr %next.gep895, align 8, !tbaa !20, !alias.scope !158, !noalias !157
  store <2 x i64> %i.ir, ptr %i.ip, align 8, !tbaa !20, !alias.scope !158, !noalias !157
  %index.next901 = add nuw i64 %index894, 4       ; 2 uses
  %i.is = icmp eq i64 %index.next901, %n.vec892
  br i1 %i.is, label %middle.block902, label %vector.body893, !llvm.loop !75

middle.block902:                                  ; preds = %vector.body893
  %cmp.n903 = icmp eq i64 %i.if, %n.vec892
  br i1 %cmp.n903, label %xorbuf.exit95, label %.lr.ph.i32.i86.preheader

.lr.ph.i32.i86.preheader:                         ; preds = %vector.memcheck887, %._crit_edge.i80.thread, %middle.block902
  %.sroa.039.2.i87.ph = phi ptr [ %.ptr465, %vector.memcheck887 ], [ %.ptr465, %._crit_edge.i80.thread ], [ %i.il, %middle.block902 ]
  %.ph1614 = phi ptr [ %.ptr429.ptr.ptr, %vector.memcheck887 ], [ %.ptr429.ptr.ptr, %._crit_edge.i80.thread ], [ %i.im, %middle.block902 ]
  br label %.lr.ph.i32.i86

.lr.ph.i32.i86:                                   ; preds = %.lr.ph.i32.i86.preheader, %.lr.ph.i32.i86
  %.sroa.039.2.i87 = phi ptr [ %i.iw, %.lr.ph.i32.i86 ], [ %.sroa.039.2.i87.ph, %.lr.ph.i32.i86.preheader ] ; 3 uses
  %i.it = phi ptr [ %i.iu, %.lr.ph.i32.i86 ], [ %.ph1614, %.lr.ph.i32.i86.preheader ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !20
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i87, i64 8
  %i.ix = load i64, ptr %.sroa.039.2.i87, align 8, !tbaa !20
  %i.iy = xor i64 %i.ix, %i.iv
  store i64 %i.iy, ptr %.sroa.039.2.i87, align 8, !tbaa !20
  %i.iz = icmp ult ptr %i.iu, %i.hy
  br i1 %i.iz, label %.lr.ph.i32.i86, label %xorbuf.exit95, !llvm.loop !76

vector.memcheck913:                               ; preds = %bb.c
  %i.ja = getelementptr i8, ptr %0, i64 112
  %i.jb = getelementptr i8, ptr %0, i64 48
  %bound0914 = icmp ult ptr %.ptr465, %i.jb
  %bound1915 = icmp ult ptr %.ptr429.ptr.ptr, %i.ja
  %found.conflict916 = and i1 %bound0914, %bound1915
  br i1 %found.conflict916, label %.lr.ph56.i69, label %vector.body921

vector.body921:                                   ; preds = %vector.memcheck913
  %wide.load925 = load <16 x i8>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21, !alias.scope !159
  %wide.load926 = load <16 x i8>, ptr %.ptr465, align 16, !tbaa !21, !alias.scope !160, !noalias !159
  %i.jc = xor <16 x i8> %wide.load926, %wide.load925
  store <16 x i8> %i.jc, ptr %.ptr465, align 16, !tbaa !21, !alias.scope !160, !noalias !159
  br label %xorbuf.exit95

.lr.ph56.i69:                                     ; preds = %vector.memcheck913
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.je = load i8, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.jg = load i8, ptr %.ptr465, align 16, !tbaa !21
  %i.jh = xor i8 %i.jg, %i.je
  store i8 %i.jh, ptr %.ptr465, align 16, !tbaa !21
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.jj = load i8, ptr %i.jd, align 1, !tbaa !21
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 98 ; 2 uses
  %i.jl = load i8, ptr %i.jf, align 1, !tbaa !21
  %i.jm = xor i8 %i.jl, %i.jj
  store i8 %i.jm, ptr %i.jf, align 1, !tbaa !21
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.jo = load i8, ptr %i.ji, align 2, !tbaa !21
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 99 ; 2 uses
  %i.jq = load i8, ptr %i.jk, align 2, !tbaa !21
  %i.jr = xor i8 %i.jq, %i.jo
  store i8 %i.jr, ptr %i.jk, align 2, !tbaa !21
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.jt = load i8, ptr %i.jn, align 1, !tbaa !21
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.jv = load i8, ptr %i.jp, align 1, !tbaa !21
  %i.jw = xor i8 %i.jv, %i.jt
  store i8 %i.jw, ptr %i.jp, align 1, !tbaa !21
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.jy = load i8, ptr %i.js, align 4, !tbaa !21
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 2 uses
  %i.ka = load i8, ptr %i.ju, align 4, !tbaa !21
  %i.kb = xor i8 %i.ka, %i.jy
  store i8 %i.kb, ptr %i.ju, align 4, !tbaa !21
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.kd = load i8, ptr %i.jx, align 1, !tbaa !21
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 2 uses
  %i.kf = load i8, ptr %i.jz, align 1, !tbaa !21
  %i.kg = xor i8 %i.kf, %i.kd
  store i8 %i.kg, ptr %i.jz, align 1, !tbaa !21
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.ki = load i8, ptr %i.kc, align 2, !tbaa !21
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.kk = load i8, ptr %i.ke, align 2, !tbaa !21
  %i.kl = xor i8 %i.kk, %i.ki
  store i8 %i.kl, ptr %i.ke, align 2, !tbaa !21
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kn = load i8, ptr %i.kh, align 1, !tbaa !21
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.kp = load i8, ptr %i.kj, align 1, !tbaa !21
  %i.kq = xor i8 %i.kp, %i.kn
  store i8 %i.kq, ptr %i.kj, align 1, !tbaa !21
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ks = load i8, ptr %i.km, align 8, !tbaa !21
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.ku = load i8, ptr %i.ko, align 8, !tbaa !21
  %i.kv = xor i8 %i.ku, %i.ks
  store i8 %i.kv, ptr %i.ko, align 8, !tbaa !21
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.kx = load i8, ptr %i.kr, align 1, !tbaa !21
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.kz = load i8, ptr %i.kt, align 1, !tbaa !21
  %i.la = xor i8 %i.kz, %i.kx
  store i8 %i.la, ptr %i.kt, align 1, !tbaa !21
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.lc = load i8, ptr %i.kw, align 2, !tbaa !21
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 2 uses
  %i.le = load i8, ptr %i.ky, align 2, !tbaa !21
  %i.lf = xor i8 %i.le, %i.lc
  store i8 %i.lf, ptr %i.ky, align 2, !tbaa !21
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.lh = load i8, ptr %i.lb, align 1, !tbaa !21
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.lj = load i8, ptr %i.ld, align 1, !tbaa !21
  %i.lk = xor i8 %i.lj, %i.lh
  store i8 %i.lk, ptr %i.ld, align 1, !tbaa !21
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.lm = load i8, ptr %i.lg, align 4, !tbaa !21
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 109 ; 2 uses
  %i.lo = load i8, ptr %i.li, align 4, !tbaa !21
  %i.lp = xor i8 %i.lo, %i.lm
  store i8 %i.lp, ptr %i.li, align 4, !tbaa !21
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.lr = load i8, ptr %i.ll, align 1, !tbaa !21
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 110 ; 2 uses
  %i.lt = load i8, ptr %i.ln, align 1, !tbaa !21
  %i.lu = xor i8 %i.lt, %i.lr
  store i8 %i.lu, ptr %i.ln, align 1, !tbaa !21
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.lw = load i8, ptr %i.lq, align 2, !tbaa !21
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.ly = load i8, ptr %i.ls, align 2, !tbaa !21
  %i.lz = xor i8 %i.ly, %i.lw
  store i8 %i.lz, ptr %i.ls, align 2, !tbaa !21
  %i.ma = load i8, ptr %i.lv, align 1, !tbaa !21
  %i.mb = load i8, ptr %i.lx, align 1, !tbaa !21
  %i.mc = xor i8 %i.mb, %i.ma
  store i8 %i.mc, ptr %i.lx, align 1, !tbaa !21
  br label %xorbuf.exit95

xorbuf.exit95:                                    ; preds = %.lr.ph.i32.i86, %vector.body921, %.lr.ph56.i69, %middle.block902, %.lr.ph.i.i93.preheader
  %.ptr470 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 26 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr470, ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, i64 16, i1 false)
  %i.md = ptrtoint ptr %.ptr470 to i64            ; 4 uses
  %i.me = ptrtoint ptr %.ptr438.ptr to i64        ; 4 uses
  %i.mf = or i64 %i.me, %i.md
  %i.mg = and i64 %i.mf, 7
  %or.cond.i96 = icmp eq i64 %i.mg, 0
  br i1 %or.cond.i96, label %.lr.ph.i.i125.preheader, label %bb.d

.lr.ph.i.i125.preheader:                          ; preds = %xorbuf.exit95
  %i.mh = load <2 x i64>, ptr %.ptr438.ptr, align 16, !tbaa !20
  %i.mi = load <2 x i64>, ptr %.ptr470, align 16, !tbaa !20
  %i.mj = xor <2 x i64> %i.mi, %i.mh
  store <2 x i64> %i.mj, ptr %.ptr470, align 16, !tbaa !20
  br label %xorbuf.exit127

bb.d:                                             ; preds = %xorbuf.exit95
  %i.mk = xor i64 %i.me, %i.md
  %i.ml = and i64 %i.mk, 7
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %._crit_edge.i112.thread, label %vector.memcheck984

._crit_edge.i112.thread:                          ; preds = %bb.d
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.0.lcssa.i115655955.a = ptrtoaddr ptr %i.mn to i64
  %i.mo = ptrtoaddr ptr %.ptr438.ptr to i64       ; 2 uses
  %i.mp = add nuw i64 %i.mo, 8
  %i.mq = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i115655955.a, i64 %i.mp)
  %i.mr = xor i64 %i.mo, -1
  %i.ms = add i64 %i.mq, %i.mr                    ; 3 uses
  %i.mt = lshr i64 %i.ms, 3
  %i.mu = add nuw nsw i64 %i.mt, 1                ; 2 uses
  %min.iters.check957 = icmp ult i64 %i.ms, 136
  br i1 %min.iters.check957, label %.lr.ph.i32.i118.preheader, label %vector.memcheck958

vector.memcheck958:                               ; preds = %._crit_edge.i112.thread
  %i.mv = and i64 %i.ms, -8
  %i.mw = add i64 %i.mv, 8                        ; 2 uses
  %i.mx = getelementptr i8, ptr %.ptr470, i64 %i.mw
  %i.my = getelementptr i8, ptr %.ptr438.ptr, i64 %i.mw
  %bound0959 = icmp ult ptr %.ptr470, %i.my
  %bound1960 = icmp ult ptr %.ptr438.ptr, %i.mx
  %found.conflict961 = and i1 %bound0959, %bound1960
  br i1 %found.conflict961, label %.lr.ph.i32.i118.preheader, label %vector.ph962

vector.ph962:                                     ; preds = %vector.memcheck958
  %n.vec963 = and i64 %i.mu, 4611686018427387900  ; 3 uses
  %i.mz = shl i64 %n.vec963, 3                    ; 2 uses
  %i.na = getelementptr i8, ptr %.ptr470, i64 %i.mz
  %i.nb = getelementptr i8, ptr %.ptr438.ptr, i64 %i.mz
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph962
  %index965 = phi i64 [ 0, %vector.ph962 ], [ %index.next972, %vector.body964 ] ; 2 uses
  %i.nc = shl i64 %index965, 3                    ; 2 uses
  %next.gep966 = getelementptr i8, ptr %.ptr470, i64 %i.nc ; 3 uses
  %next.gep967 = getelementptr i8, ptr %.ptr438.ptr, i64 %i.nc ; 2 uses
  %i.nd = getelementptr i8, ptr %next.gep967, i64 16
  %wide.load968 = load <2 x i64>, ptr %next.gep967, align 8, !tbaa !20, !alias.scope !161
  %wide.load969 = load <2 x i64>, ptr %i.nd, align 8, !tbaa !20, !alias.scope !161
  %i.ne = getelementptr i8, ptr %next.gep966, i64 16 ; 2 uses
  %wide.load970 = load <2 x i64>, ptr %next.gep966, align 8, !tbaa !20, !alias.scope !162, !noalias !161
  %wide.load971 = load <2 x i64>, ptr %i.ne, align 8, !tbaa !20, !alias.scope !162, !noalias !161
  %i.nf = xor <2 x i64> %wide.load970, %wide.load968
  %i.ng = xor <2 x i64> %wide.load971, %wide.load969
  store <2 x i64> %i.nf, ptr %next.gep966, align 8, !tbaa !20, !alias.scope !162, !noalias !161
  store <2 x i64> %i.ng, ptr %i.ne, align 8, !tbaa !20, !alias.scope !162, !noalias !161
  %index.next972 = add nuw i64 %index965, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next972, %n.vec963
  br i1 %i.nh, label %middle.block973, label %vector.body964, !llvm.loop !83

middle.block973:                                  ; preds = %vector.body964
  %cmp.n974 = icmp eq i64 %i.mu, %n.vec963
  br i1 %cmp.n974, label %xorbuf.exit127, label %.lr.ph.i32.i118.preheader

.lr.ph.i32.i118.preheader:                        ; preds = %vector.memcheck958, %._crit_edge.i112.thread, %middle.block973
  %.sroa.039.2.i119.ph = phi ptr [ %.ptr470, %vector.memcheck958 ], [ %.ptr470, %._crit_edge.i112.thread ], [ %i.na, %middle.block973 ]
  %.ph1611 = phi ptr [ %.ptr438.ptr, %vector.memcheck958 ], [ %.ptr438.ptr, %._crit_edge.i112.thread ], [ %i.nb, %middle.block973 ]
  br label %.lr.ph.i32.i118

.lr.ph.i32.i118:                                  ; preds = %.lr.ph.i32.i118.preheader, %.lr.ph.i32.i118
  %.sroa.039.2.i119 = phi ptr [ %i.nl, %.lr.ph.i32.i118 ], [ %.sroa.039.2.i119.ph, %.lr.ph.i32.i118.preheader ] ; 3 uses
  %i.ni = phi ptr [ %i.nj, %.lr.ph.i32.i118 ], [ %.ph1611, %.lr.ph.i32.i118.preheader ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %i.nk = load i64, ptr %i.ni, align 8, !tbaa !20
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i119, i64 8
  %i.nm = load i64, ptr %.sroa.039.2.i119, align 8, !tbaa !20
  %i.nn = xor i64 %i.nm, %i.nk
  store i64 %i.nn, ptr %.sroa.039.2.i119, align 8, !tbaa !20
  %i.no = icmp ult ptr %i.nj, %i.mn
  br i1 %i.no, label %.lr.ph.i32.i118, label %xorbuf.exit127, !llvm.loop !84

vector.memcheck984:                               ; preds = %bb.d
  %i.np = getelementptr i8, ptr %0, i64 128
  %i.nq = getelementptr i8, ptr %0, i64 64
  %bound0985 = icmp ult ptr %.ptr470, %i.nq
  %bound1986 = icmp ult ptr %.ptr438.ptr, %i.np
  %found.conflict987 = and i1 %bound0985, %bound1986
  br i1 %found.conflict987, label %.lr.ph56.i101, label %vector.body992

vector.body992:                                   ; preds = %vector.memcheck984
  %wide.load996 = load <16 x i8>, ptr %.ptr438.ptr, align 16, !tbaa !21, !alias.scope !163
  %wide.load997 = load <16 x i8>, ptr %.ptr470, align 16, !tbaa !21, !alias.scope !164, !noalias !163
  %i.nr = xor <16 x i8> %wide.load997, %wide.load996
  store <16 x i8> %i.nr, ptr %.ptr470, align 16, !tbaa !21, !alias.scope !164, !noalias !163
  br label %xorbuf.exit127

.lr.ph56.i101:                                    ; preds = %vector.memcheck984
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.nt = load i8, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 2 uses
  %i.nv = load i8, ptr %.ptr470, align 16, !tbaa !21
  %i.nw = xor i8 %i.nv, %i.nt
  store i8 %i.nw, ptr %.ptr470, align 16, !tbaa !21
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.ny = load i8, ptr %i.ns, align 1, !tbaa !21
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 2 uses
  %i.oa = load i8, ptr %i.nu, align 1, !tbaa !21
  %i.ob = xor i8 %i.oa, %i.ny
  store i8 %i.ob, ptr %i.nu, align 1, !tbaa !21
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.od = load i8, ptr %i.nx, align 2, !tbaa !21
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 115 ; 2 uses
  %i.of = load i8, ptr %i.nz, align 2, !tbaa !21
  %i.og = xor i8 %i.of, %i.od
  store i8 %i.og, ptr %i.nz, align 2, !tbaa !21
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.oi = load i8, ptr %i.oc, align 1, !tbaa !21
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ok = load i8, ptr %i.oe, align 1, !tbaa !21
  %i.ol = xor i8 %i.ok, %i.oi
  store i8 %i.ol, ptr %i.oe, align 1, !tbaa !21
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.on = load i8, ptr %i.oh, align 4, !tbaa !21
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 117 ; 2 uses
  %i.op = load i8, ptr %i.oj, align 4, !tbaa !21
  %i.oq = xor i8 %i.op, %i.on
  store i8 %i.oq, ptr %i.oj, align 4, !tbaa !21
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.os = load i8, ptr %i.om, align 1, !tbaa !21
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 118 ; 2 uses
  %i.ou = load i8, ptr %i.oo, align 1, !tbaa !21
  %i.ov = xor i8 %i.ou, %i.os
  store i8 %i.ov, ptr %i.oo, align 1, !tbaa !21
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.ox = load i8, ptr %i.or, align 2, !tbaa !21
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 119 ; 2 uses
  %i.oz = load i8, ptr %i.ot, align 2, !tbaa !21
  %i.pa = xor i8 %i.oz, %i.ox
  store i8 %i.pa, ptr %i.ot, align 2, !tbaa !21
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pc = load i8, ptr %i.ow, align 1, !tbaa !21
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.pe = load i8, ptr %i.oy, align 1, !tbaa !21
  %i.pf = xor i8 %i.pe, %i.pc
  store i8 %i.pf, ptr %i.oy, align 1, !tbaa !21
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.ph = load i8, ptr %i.pb, align 8, !tbaa !21
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.pj = load i8, ptr %i.pd, align 8, !tbaa !21
  %i.pk = xor i8 %i.pj, %i.ph
  store i8 %i.pk, ptr %i.pd, align 8, !tbaa !21
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.pm = load i8, ptr %i.pg, align 1, !tbaa !21
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.po = load i8, ptr %i.pi, align 1, !tbaa !21
  %i.pp = xor i8 %i.po, %i.pm
  store i8 %i.pp, ptr %i.pi, align 1, !tbaa !21
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.pr = load i8, ptr %i.pl, align 2, !tbaa !21
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 123 ; 2 uses
  %i.pt = load i8, ptr %i.pn, align 2, !tbaa !21
  %i.pu = xor i8 %i.pt, %i.pr
  store i8 %i.pu, ptr %i.pn, align 2, !tbaa !21
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pw = load i8, ptr %i.pq, align 1, !tbaa !21
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.py = load i8, ptr %i.ps, align 1, !tbaa !21
  %i.pz = xor i8 %i.py, %i.pw
  store i8 %i.pz, ptr %i.ps, align 1, !tbaa !21
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.qb = load i8, ptr %i.pv, align 4, !tbaa !21
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.qd = load i8, ptr %i.px, align 4, !tbaa !21
  %i.qe = xor i8 %i.qd, %i.qb
  store i8 %i.qe, ptr %i.px, align 4, !tbaa !21
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.qg = load i8, ptr %i.qa, align 1, !tbaa !21
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  %i.qi = load i8, ptr %i.qc, align 1, !tbaa !21
  %i.qj = xor i8 %i.qi, %i.qg
  store i8 %i.qj, ptr %i.qc, align 1, !tbaa !21
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.ql = load i8, ptr %i.qf, align 2, !tbaa !21
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 127 ; 2 uses
  %i.qn = load i8, ptr %i.qh, align 2, !tbaa !21
  %i.qo = xor i8 %i.qn, %i.ql
  store i8 %i.qo, ptr %i.qh, align 2, !tbaa !21
  %i.qp = load i8, ptr %i.qk, align 1, !tbaa !21
  %i.qq = load i8, ptr %i.qm, align 1, !tbaa !21
  %i.qr = xor i8 %i.qq, %i.qp
  store i8 %i.qr, ptr %i.qm, align 1, !tbaa !21
  br label %xorbuf.exit127

xorbuf.exit127:                                   ; preds = %.lr.ph.i32.i118, %vector.body992, %.lr.ph56.i101, %middle.block973, %.lr.ph.i.i125.preheader
  %.ptr475 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 26 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr475, ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, i64 16, i1 false)
  %i.qs = ptrtoint ptr %.ptr475 to i64            ; 4 uses
  %i.qt = or i64 %i.da, %i.qs
  %i.qu = and i64 %i.qt, 7
  %or.cond.i128 = icmp eq i64 %i.qu, 0
  br i1 %or.cond.i128, label %.lr.ph.i.i157.preheader, label %bb.e

.lr.ph.i.i157.preheader:                          ; preds = %xorbuf.exit127
  %i.qv = load <2 x i64>, ptr %.ptr443.ptr, align 16, !tbaa !20
  %i.qw = load <2 x i64>, ptr %.ptr475, align 16, !tbaa !20
  %i.qx = xor <2 x i64> %i.qw, %i.qv
  store <2 x i64> %i.qx, ptr %.ptr475, align 16, !tbaa !20
  br label %xorbuf.exit159

bb.e:                                             ; preds = %xorbuf.exit127
  %i.qy = xor i64 %i.da, %i.qs
  %i.qz = and i64 %i.qy, 7
  %i.ra = icmp eq i64 %i.qz, 0
  br i1 %i.ra, label %._crit_edge.i144.thread, label %vector.memcheck1055

._crit_edge.i144.thread:                          ; preds = %bb.e
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.0.lcssa.i1476641026.a = ptrtoaddr ptr %i.rb to i64
  %i.rc = ptrtoaddr ptr %.ptr443.ptr to i64       ; 2 uses
  %i.rd = add nuw i64 %i.rc, 8
  %i.re = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i1476641026.a, i64 %i.rd)
  %i.rf = xor i64 %i.rc, -1
  %i.rg = add i64 %i.re, %i.rf                    ; 3 uses
  %i.rh = lshr i64 %i.rg, 3
  %i.ri = add nuw nsw i64 %i.rh, 1                ; 2 uses
  %min.iters.check1028 = icmp ult i64 %i.rg, 136
  br i1 %min.iters.check1028, label %.lr.ph.i32.i150.preheader, label %vector.memcheck1029

vector.memcheck1029:                              ; preds = %._crit_edge.i144.thread
  %i.rj = and i64 %i.rg, -8
  %i.rk = add i64 %i.rj, 8                        ; 2 uses
  %i.rl = getelementptr i8, ptr %.ptr475, i64 %i.rk
  %i.rm = getelementptr i8, ptr %.ptr443.ptr, i64 %i.rk
  %bound01030 = icmp ult ptr %.ptr475, %i.rm
  %bound11031 = icmp ult ptr %.ptr443.ptr, %i.rl
  %found.conflict1032 = and i1 %bound01030, %bound11031
  br i1 %found.conflict1032, label %.lr.ph.i32.i150.preheader, label %vector.ph1033

vector.ph1033:                                    ; preds = %vector.memcheck1029
  %n.vec1034 = and i64 %i.ri, 4611686018427387900 ; 3 uses
  %i.rn = shl i64 %n.vec1034, 3                   ; 2 uses
  %i.ro = getelementptr i8, ptr %.ptr475, i64 %i.rn
  %i.rp = getelementptr i8, ptr %.ptr443.ptr, i64 %i.rn
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %vector.ph1033
  %index1036 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1043, %vector.body1035 ] ; 2 uses
  %i.rq = shl i64 %index1036, 3                   ; 2 uses
  %next.gep1037 = getelementptr i8, ptr %.ptr475, i64 %i.rq ; 3 uses
  %next.gep1038 = getelementptr i8, ptr %.ptr443.ptr, i64 %i.rq ; 2 uses
  %i.rr = getelementptr i8, ptr %next.gep1038, i64 16
  %wide.load1039 = load <2 x i64>, ptr %next.gep1038, align 8, !tbaa !20, !alias.scope !165
  %wide.load1040 = load <2 x i64>, ptr %i.rr, align 8, !tbaa !20, !alias.scope !165
  %i.rs = getelementptr i8, ptr %next.gep1037, i64 16 ; 2 uses
  %wide.load1041 = load <2 x i64>, ptr %next.gep1037, align 8, !tbaa !20, !alias.scope !166, !noalias !165
  %wide.load1042 = load <2 x i64>, ptr %i.rs, align 8, !tbaa !20, !alias.scope !166, !noalias !165
  %i.rt = xor <2 x i64> %wide.load1041, %wide.load1039
  %i.ru = xor <2 x i64> %wide.load1042, %wide.load1040
  store <2 x i64> %i.rt, ptr %next.gep1037, align 8, !tbaa !20, !alias.scope !166, !noalias !165
  store <2 x i64> %i.ru, ptr %i.rs, align 8, !tbaa !20, !alias.scope !166, !noalias !165
  %index.next1043 = add nuw i64 %index1036, 4     ; 2 uses
  %i.rv = icmp eq i64 %index.next1043, %n.vec1034
  br i1 %i.rv, label %middle.block1044, label %vector.body1035, !llvm.loop !91

middle.block1044:                                 ; preds = %vector.body1035
  %cmp.n1045 = icmp eq i64 %i.ri, %n.vec1034
  br i1 %cmp.n1045, label %xorbuf.exit159, label %.lr.ph.i32.i150.preheader

.lr.ph.i32.i150.preheader:                        ; preds = %vector.memcheck1029, %._crit_edge.i144.thread, %middle.block1044
  %.sroa.039.2.i151.ph = phi ptr [ %.ptr475, %vector.memcheck1029 ], [ %.ptr475, %._crit_edge.i144.thread ], [ %i.ro, %middle.block1044 ]
  %.ph1608 = phi ptr [ %.ptr443.ptr, %vector.memcheck1029 ], [ %.ptr443.ptr, %._crit_edge.i144.thread ], [ %i.rp, %middle.block1044 ]
  br label %.lr.ph.i32.i150

.lr.ph.i32.i150:                                  ; preds = %.lr.ph.i32.i150.preheader, %.lr.ph.i32.i150
  %.sroa.039.2.i151 = phi ptr [ %i.rz, %.lr.ph.i32.i150 ], [ %.sroa.039.2.i151.ph, %.lr.ph.i32.i150.preheader ] ; 3 uses
  %i.rw = phi ptr [ %i.rx, %.lr.ph.i32.i150 ], [ %.ph1608, %.lr.ph.i32.i150.preheader ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8 ; 2 uses
  %i.ry = load i64, ptr %i.rw, align 8, !tbaa !20
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i151, i64 8
  %i.sa = load i64, ptr %.sroa.039.2.i151, align 8, !tbaa !20
  %i.sb = xor i64 %i.sa, %i.ry
  store i64 %i.sb, ptr %.sroa.039.2.i151, align 8, !tbaa !20
  %i.sc = icmp ult ptr %i.rx, %i.rb
  br i1 %i.sc, label %.lr.ph.i32.i150, label %xorbuf.exit159, !llvm.loop !92

vector.memcheck1055:                              ; preds = %bb.e
  %i.sd = getelementptr i8, ptr %0, i64 144
  %i.se = getelementptr i8, ptr %0, i64 80
  %bound01056 = icmp ult ptr %.ptr475, %i.se
  %bound11057 = icmp ult ptr %.ptr443.ptr, %i.sd
  %found.conflict1058 = and i1 %bound01056, %bound11057
  br i1 %found.conflict1058, label %.lr.ph56.i133, label %vector.body1063

vector.body1063:                                  ; preds = %vector.memcheck1055
  %wide.load1067 = load <16 x i8>, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !167
  %wide.load1068 = load <16 x i8>, ptr %.ptr475, align 16, !tbaa !21, !alias.scope !168, !noalias !167
  %i.sf = xor <16 x i8> %wide.load1068, %wide.load1067
  store <16 x i8> %i.sf, ptr %.ptr475, align 16, !tbaa !21, !alias.scope !168, !noalias !167
  br label %xorbuf.exit159

.lr.ph56.i133:                                    ; preds = %vector.memcheck1055
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.sh = load i8, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.sj = load i8, ptr %.ptr475, align 16, !tbaa !21
  %i.sk = xor i8 %i.sj, %i.sh
  store i8 %i.sk, ptr %.ptr475, align 16, !tbaa !21
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.sm = load i8, ptr %i.sg, align 1, !tbaa !21
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 2 uses
  %i.so = load i8, ptr %i.si, align 1, !tbaa !21
  %i.sp = xor i8 %i.so, %i.sm
  store i8 %i.sp, ptr %i.si, align 1, !tbaa !21
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.sr = load i8, ptr %i.sl, align 2, !tbaa !21
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 131 ; 2 uses
  %i.st = load i8, ptr %i.sn, align 2, !tbaa !21
  %i.su = xor i8 %i.st, %i.sr
  store i8 %i.su, ptr %i.sn, align 2, !tbaa !21
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.sw = load i8, ptr %i.sq, align 1, !tbaa !21
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.sy = load i8, ptr %i.ss, align 1, !tbaa !21
  %i.sz = xor i8 %i.sy, %i.sw
  store i8 %i.sz, ptr %i.ss, align 1, !tbaa !21
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.tb = load i8, ptr %i.sv, align 4, !tbaa !21
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 133 ; 2 uses
  %i.td = load i8, ptr %i.sx, align 4, !tbaa !21
  %i.te = xor i8 %i.td, %i.tb
  store i8 %i.te, ptr %i.sx, align 4, !tbaa !21
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.tg = load i8, ptr %i.ta, align 1, !tbaa !21
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 2 uses
  %i.ti = load i8, ptr %i.tc, align 1, !tbaa !21
  %i.tj = xor i8 %i.ti, %i.tg
  store i8 %i.tj, ptr %i.tc, align 1, !tbaa !21
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 71
  %i.tl = load i8, ptr %i.tf, align 2, !tbaa !21
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 2 uses
  %i.tn = load i8, ptr %i.th, align 2, !tbaa !21
  %i.to = xor i8 %i.tn, %i.tl
  store i8 %i.to, ptr %i.th, align 2, !tbaa !21
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tq = load i8, ptr %i.tk, align 1, !tbaa !21
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ts = load i8, ptr %i.tm, align 1, !tbaa !21
  %i.tt = xor i8 %i.ts, %i.tq
  store i8 %i.tt, ptr %i.tm, align 1, !tbaa !21
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.tv = load i8, ptr %i.tp, align 8, !tbaa !21
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 2 uses
  %i.tx = load i8, ptr %i.tr, align 8, !tbaa !21
  %i.ty = xor i8 %i.tx, %i.tv
  store i8 %i.ty, ptr %i.tr, align 8, !tbaa !21
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ua = load i8, ptr %i.tu, align 1, !tbaa !21
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %i.uc = load i8, ptr %i.tw, align 1, !tbaa !21
  %i.ud = xor i8 %i.uc, %i.ua
  store i8 %i.ud, ptr %i.tw, align 1, !tbaa !21
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.uf = load i8, ptr %i.tz, align 2, !tbaa !21
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 2 uses
  %i.uh = load i8, ptr %i.ub, align 2, !tbaa !21
  %i.ui = xor i8 %i.uh, %i.uf
  store i8 %i.ui, ptr %i.ub, align 2, !tbaa !21
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.uk = load i8, ptr %i.ue, align 1, !tbaa !21
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.um = load i8, ptr %i.ug, align 1, !tbaa !21
  %i.un = xor i8 %i.um, %i.uk
  store i8 %i.un, ptr %i.ug, align 1, !tbaa !21
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.up = load i8, ptr %i.uj, align 4, !tbaa !21
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 141 ; 2 uses
  %i.ur = load i8, ptr %i.ul, align 4, !tbaa !21
  %i.us = xor i8 %i.ur, %i.up
  store i8 %i.us, ptr %i.ul, align 4, !tbaa !21
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.uu = load i8, ptr %i.uo, align 1, !tbaa !21
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 2 uses
  %i.uw = load i8, ptr %i.uq, align 1, !tbaa !21
  %i.ux = xor i8 %i.uw, %i.uu
  store i8 %i.ux, ptr %i.uq, align 1, !tbaa !21
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.uz = load i8, ptr %i.ut, align 2, !tbaa !21
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 143 ; 2 uses
  %i.vb = load i8, ptr %i.uv, align 2, !tbaa !21
  %i.vc = xor i8 %i.vb, %i.uz
  store i8 %i.vc, ptr %i.uv, align 2, !tbaa !21
  %i.vd = load i8, ptr %i.uy, align 1, !tbaa !21
  %i.ve = load i8, ptr %i.va, align 1, !tbaa !21
  %i.vf = xor i8 %i.ve, %i.vd
  store i8 %i.vf, ptr %i.va, align 1, !tbaa !21
  br label %xorbuf.exit159

xorbuf.exit159:                                   ; preds = %.lr.ph.i32.i150, %vector.body1063, %.lr.ph56.i133, %middle.block1044, %.lr.ph.i.i157.preheader
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vg, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.vh = ptrtoint ptr %i.vg to i64               ; 2 uses
  %i.vi = or i64 %i.db, %i.vh
  %i.vj = and i64 %i.vi, 7
  %or.cond.i160 = icmp eq i64 %i.vj, 0
  br i1 %or.cond.i160, label %.lr.ph.i.i189.preheader, label %bb.f

.lr.ph.i.i189.preheader:                          ; preds = %xorbuf.exit159
  %i.vk = load <2 x i64>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !20
  %i.vl = load <2 x i64>, ptr %i.vg, align 16, !tbaa !20
  %i.vm = xor <2 x i64> %i.vl, %i.vk
  store <2 x i64> %i.vm, ptr %i.vg, align 16, !tbaa !20
  br label %xorbuf.exit191

bb.f:                                             ; preds = %xorbuf.exit159
  %i.vn = xor i64 %i.db, %i.vh
  %i.vo = and i64 %i.vn, 7
  %i.vp = icmp eq i64 %i.vo, 0
  br i1 %i.vp, label %._crit_edge.i176.thread, label %vector.memcheck1126

._crit_edge.i176.thread:                          ; preds = %bb.f
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.0.lcssa.i1796731097.a = ptrtoaddr ptr %i.vq to i64
  %i.vr = ptrtoaddr ptr %.ptr429.ptr.ptr to i64   ; 2 uses
  %i.vs = add nuw i64 %i.vr, 8
  %i.vt = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i1796731097.a, i64 %i.vs)
  %i.vu = xor i64 %i.vr, -1
  %i.vv = add i64 %i.vt, %i.vu                    ; 3 uses
  %i.vw = lshr i64 %i.vv, 3
  %i.vx = add nuw nsw i64 %i.vw, 1                ; 2 uses
  %min.iters.check1099 = icmp ult i64 %i.vv, 136
  br i1 %min.iters.check1099, label %.lr.ph.i32.i182.preheader, label %vector.memcheck1100

vector.memcheck1100:                              ; preds = %._crit_edge.i176.thread
  %i.vy = and i64 %i.vv, -8
  %i.vz = add i64 %i.vy, 8                        ; 2 uses
  %i.wa = getelementptr i8, ptr %i.vg, i64 %i.vz
  %i.wb = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.vz
  %bound01101 = icmp ult ptr %i.vg, %i.wb
  %bound11102 = icmp ult ptr %.ptr429.ptr.ptr, %i.wa
  %found.conflict1103 = and i1 %bound01101, %bound11102
  br i1 %found.conflict1103, label %.lr.ph.i32.i182.preheader, label %vector.ph1104

vector.ph1104:                                    ; preds = %vector.memcheck1100
  %n.vec1105 = and i64 %i.vx, 4611686018427387900 ; 3 uses
  %i.wc = shl i64 %n.vec1105, 3                   ; 2 uses
  %i.wd = getelementptr i8, ptr %i.vg, i64 %i.wc
  %i.we = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.wc
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %vector.ph1104
  %index1107 = phi i64 [ 0, %vector.ph1104 ], [ %index.next1114, %vector.body1106 ] ; 2 uses
  %i.wf = shl i64 %index1107, 3                   ; 2 uses
  %next.gep1108 = getelementptr i8, ptr %i.vg, i64 %i.wf ; 3 uses
  %next.gep1109 = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.wf ; 2 uses
  %i.wg = getelementptr i8, ptr %next.gep1109, i64 16
  %wide.load1110 = load <2 x i64>, ptr %next.gep1109, align 8, !tbaa !20, !alias.scope !169
  %wide.load1111 = load <2 x i64>, ptr %i.wg, align 8, !tbaa !20, !alias.scope !169
  %i.wh = getelementptr i8, ptr %next.gep1108, i64 16 ; 2 uses
  %wide.load1112 = load <2 x i64>, ptr %next.gep1108, align 8, !tbaa !20, !alias.scope !170, !noalias !169
  %wide.load1113 = load <2 x i64>, ptr %i.wh, align 8, !tbaa !20, !alias.scope !170, !noalias !169
  %i.wi = xor <2 x i64> %wide.load1112, %wide.load1110
  %i.wj = xor <2 x i64> %wide.load1113, %wide.load1111
  store <2 x i64> %i.wi, ptr %next.gep1108, align 8, !tbaa !20, !alias.scope !170, !noalias !169
  store <2 x i64> %i.wj, ptr %i.wh, align 8, !tbaa !20, !alias.scope !170, !noalias !169
  %index.next1114 = add nuw i64 %index1107, 4     ; 2 uses
  %i.wk = icmp eq i64 %index.next1114, %n.vec1105
  br i1 %i.wk, label %middle.block1115, label %vector.body1106, !llvm.loop !99

middle.block1115:                                 ; preds = %vector.body1106
  %cmp.n1116 = icmp eq i64 %i.vx, %n.vec1105
  br i1 %cmp.n1116, label %xorbuf.exit191, label %.lr.ph.i32.i182.preheader

.lr.ph.i32.i182.preheader:                        ; preds = %vector.memcheck1100, %._crit_edge.i176.thread, %middle.block1115
  %.sroa.039.2.i183.ph = phi ptr [ %i.vg, %vector.memcheck1100 ], [ %i.vg, %._crit_edge.i176.thread ], [ %i.wd, %middle.block1115 ]
  %.ph1605 = phi ptr [ %.ptr429.ptr.ptr, %vector.memcheck1100 ], [ %.ptr429.ptr.ptr, %._crit_edge.i176.thread ], [ %i.we, %middle.block1115 ]
  br label %.lr.ph.i32.i182

.lr.ph.i32.i182:                                  ; preds = %.lr.ph.i32.i182.preheader, %.lr.ph.i32.i182
  %.sroa.039.2.i183 = phi ptr [ %i.wo, %.lr.ph.i32.i182 ], [ %.sroa.039.2.i183.ph, %.lr.ph.i32.i182.preheader ] ; 3 uses
  %i.wl = phi ptr [ %i.wm, %.lr.ph.i32.i182 ], [ %.ph1605, %.lr.ph.i32.i182.preheader ] ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 2 uses
  %i.wn = load i64, ptr %i.wl, align 8, !tbaa !20
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i183, i64 8
  %i.wp = load i64, ptr %.sroa.039.2.i183, align 8, !tbaa !20
  %i.wq = xor i64 %i.wp, %i.wn
  store i64 %i.wq, ptr %.sroa.039.2.i183, align 8, !tbaa !20
  %i.wr = icmp ult ptr %i.wm, %i.vq
  br i1 %i.wr, label %.lr.ph.i32.i182, label %xorbuf.exit191, !llvm.loop !100

vector.memcheck1126:                              ; preds = %bb.f
  %i.ws = getelementptr i8, ptr %0, i64 176
  %i.wt = getelementptr i8, ptr %0, i64 48
  %bound01127 = icmp ult ptr %i.vg, %i.wt
  %bound11128 = icmp ult ptr %.ptr429.ptr.ptr, %i.ws
  %found.conflict1129 = and i1 %bound01127, %bound11128
  br i1 %found.conflict1129, label %.lr.ph56.i165, label %vector.body1134

vector.body1134:                                  ; preds = %vector.memcheck1126
  %wide.load1138 = load <16 x i8>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21, !alias.scope !171
  %wide.load1139 = load <16 x i8>, ptr %i.vg, align 16, !tbaa !21, !alias.scope !172, !noalias !171
  %i.wu = xor <16 x i8> %wide.load1139, %wide.load1138
  store <16 x i8> %i.wu, ptr %i.vg, align 16, !tbaa !21, !alias.scope !172, !noalias !171
  br label %xorbuf.exit191

.lr.ph56.i165:                                    ; preds = %vector.memcheck1126
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ww = load i8, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 2 uses
  %i.wy = load i8, ptr %i.vg, align 16, !tbaa !21
  %i.wz = xor i8 %i.wy, %i.ww
  store i8 %i.wz, ptr %i.vg, align 16, !tbaa !21
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.xb = load i8, ptr %i.wv, align 1, !tbaa !21
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 2 uses
  %i.xd = load i8, ptr %i.wx, align 1, !tbaa !21
  %i.xe = xor i8 %i.xd, %i.xb
  store i8 %i.xe, ptr %i.wx, align 1, !tbaa !21
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.xg = load i8, ptr %i.xa, align 2, !tbaa !21
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 163 ; 2 uses
  %i.xi = load i8, ptr %i.xc, align 2, !tbaa !21
  %i.xj = xor i8 %i.xi, %i.xg
  store i8 %i.xj, ptr %i.xc, align 2, !tbaa !21
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.xl = load i8, ptr %i.xf, align 1, !tbaa !21
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.xn = load i8, ptr %i.xh, align 1, !tbaa !21
  %i.xo = xor i8 %i.xn, %i.xl
  store i8 %i.xo, ptr %i.xh, align 1, !tbaa !21
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.xq = load i8, ptr %i.xk, align 4, !tbaa !21
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 165 ; 2 uses
  %i.xs = load i8, ptr %i.xm, align 4, !tbaa !21
  %i.xt = xor i8 %i.xs, %i.xq
  store i8 %i.xt, ptr %i.xm, align 4, !tbaa !21
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.xv = load i8, ptr %i.xp, align 1, !tbaa !21
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 2 uses
  %i.xx = load i8, ptr %i.xr, align 1, !tbaa !21
  %i.xy = xor i8 %i.xx, %i.xv
  store i8 %i.xy, ptr %i.xr, align 1, !tbaa !21
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.ya = load i8, ptr %i.xu, align 2, !tbaa !21
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 167 ; 2 uses
  %i.yc = load i8, ptr %i.xw, align 2, !tbaa !21
  %i.yd = xor i8 %i.yc, %i.ya
  store i8 %i.yd, ptr %i.xw, align 2, !tbaa !21
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.yf = load i8, ptr %i.xz, align 1, !tbaa !21
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.yh = load i8, ptr %i.yb, align 1, !tbaa !21
  %i.yi = xor i8 %i.yh, %i.yf
  store i8 %i.yi, ptr %i.yb, align 1, !tbaa !21
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.yk = load i8, ptr %i.ye, align 8, !tbaa !21
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 169 ; 2 uses
  %i.ym = load i8, ptr %i.yg, align 8, !tbaa !21
  %i.yn = xor i8 %i.ym, %i.yk
  store i8 %i.yn, ptr %i.yg, align 8, !tbaa !21
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.yp = load i8, ptr %i.yj, align 1, !tbaa !21
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 170 ; 2 uses
  %i.yr = load i8, ptr %i.yl, align 1, !tbaa !21
  %i.ys = xor i8 %i.yr, %i.yp
  store i8 %i.ys, ptr %i.yl, align 1, !tbaa !21
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.yu = load i8, ptr %i.yo, align 2, !tbaa !21
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 171 ; 2 uses
  %i.yw = load i8, ptr %i.yq, align 2, !tbaa !21
  %i.yx = xor i8 %i.yw, %i.yu
  store i8 %i.yx, ptr %i.yq, align 2, !tbaa !21
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.yz = load i8, ptr %i.yt, align 1, !tbaa !21
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.zb = load i8, ptr %i.yv, align 1, !tbaa !21
  %i.zc = xor i8 %i.zb, %i.yz
  store i8 %i.zc, ptr %i.yv, align 1, !tbaa !21
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.ze = load i8, ptr %i.yy, align 4, !tbaa !21
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.zg = load i8, ptr %i.za, align 4, !tbaa !21
  %i.zh = xor i8 %i.zg, %i.ze
  store i8 %i.zh, ptr %i.za, align 4, !tbaa !21
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.zj = load i8, ptr %i.zd, align 1, !tbaa !21
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 174 ; 2 uses
  %i.zl = load i8, ptr %i.zf, align 1, !tbaa !21
  %i.zm = xor i8 %i.zl, %i.zj
  store i8 %i.zm, ptr %i.zf, align 1, !tbaa !21
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.zo = load i8, ptr %i.zi, align 2, !tbaa !21
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 175 ; 2 uses
  %i.zq = load i8, ptr %i.zk, align 2, !tbaa !21
  %i.zr = xor i8 %i.zq, %i.zo
  store i8 %i.zr, ptr %i.zk, align 2, !tbaa !21
  %i.zs = load i8, ptr %i.zn, align 1, !tbaa !21
  %i.zt = load i8, ptr %i.zp, align 1, !tbaa !21
  %i.zu = xor i8 %i.zt, %i.zs
  store i8 %i.zu, ptr %i.zp, align 1, !tbaa !21
  br label %xorbuf.exit191

xorbuf.exit191:                                   ; preds = %.lr.ph.i32.i182, %vector.body1134, %.lr.ph56.i165, %middle.block1115, %.lr.ph.i.i189.preheader
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.zv, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.zw = ptrtoint ptr %i.zv to i64               ; 2 uses
  %i.zx = or i64 %i.me, %i.zw
  %i.zy = and i64 %i.zx, 7
  %or.cond.i192 = icmp eq i64 %i.zy, 0
  br i1 %or.cond.i192, label %.lr.ph.i.i221.preheader, label %bb.g

.lr.ph.i.i221.preheader:                          ; preds = %xorbuf.exit191
  %i.zz = load <2 x i64>, ptr %.ptr438.ptr, align 16, !tbaa !20
  %i.aaa = load <2 x i64>, ptr %i.zv, align 16, !tbaa !20
  %i.aab = xor <2 x i64> %i.aaa, %i.zz
  store <2 x i64> %i.aab, ptr %i.zv, align 16, !tbaa !20
  br label %xorbuf.exit223

bb.g:                                             ; preds = %xorbuf.exit191
  %i.aac = xor i64 %i.me, %i.zw
  %i.aad = and i64 %i.aac, 7
  %i.aae = icmp eq i64 %i.aad, 0
  br i1 %i.aae, label %._crit_edge.i208.thread, label %vector.memcheck1197

._crit_edge.i208.thread:                          ; preds = %bb.g
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.0.lcssa.i2116821168.a = ptrtoaddr ptr %i.aaf to i64
  %i.aag = ptrtoaddr ptr %.ptr438.ptr to i64      ; 2 uses
  %i.aah = add nuw i64 %i.aag, 8
  %i.aai = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i2116821168.a, i64 %i.aah)
  %i.aaj = xor i64 %i.aag, -1
  %i.aak = add i64 %i.aai, %i.aaj                 ; 3 uses
  %i.aal = lshr i64 %i.aak, 3
  %i.aam = add nuw nsw i64 %i.aal, 1              ; 2 uses
  %min.iters.check1170 = icmp ult i64 %i.aak, 136
  br i1 %min.iters.check1170, label %.lr.ph.i32.i214.preheader, label %vector.memcheck1171

vector.memcheck1171:                              ; preds = %._crit_edge.i208.thread
  %i.aan = and i64 %i.aak, -8
  %i.aao = add i64 %i.aan, 8                      ; 2 uses
  %i.aap = getelementptr i8, ptr %i.zv, i64 %i.aao
  %i.aaq = getelementptr i8, ptr %.ptr438.ptr, i64 %i.aao
  %bound01172 = icmp ult ptr %i.zv, %i.aaq
  %bound11173 = icmp ult ptr %.ptr438.ptr, %i.aap
  %found.conflict1174 = and i1 %bound01172, %bound11173
  br i1 %found.conflict1174, label %.lr.ph.i32.i214.preheader, label %vector.ph1175

vector.ph1175:                                    ; preds = %vector.memcheck1171
  %n.vec1176 = and i64 %i.aam, 4611686018427387900 ; 3 uses
  %i.aar = shl i64 %n.vec1176, 3                  ; 2 uses
  %i.aas = getelementptr i8, ptr %i.zv, i64 %i.aar
  %i.aat = getelementptr i8, ptr %.ptr438.ptr, i64 %i.aar
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1185, %vector.body1177 ] ; 2 uses
  %i.aau = shl i64 %index1178, 3                  ; 2 uses
  %next.gep1179 = getelementptr i8, ptr %i.zv, i64 %i.aau ; 3 uses
  %next.gep1180 = getelementptr i8, ptr %.ptr438.ptr, i64 %i.aau ; 2 uses
  %i.aav = getelementptr i8, ptr %next.gep1180, i64 16
  %wide.load1181 = load <2 x i64>, ptr %next.gep1180, align 8, !tbaa !20, !alias.scope !173
  %wide.load1182 = load <2 x i64>, ptr %i.aav, align 8, !tbaa !20, !alias.scope !173
  %i.aaw = getelementptr i8, ptr %next.gep1179, i64 16 ; 2 uses
  %wide.load1183 = load <2 x i64>, ptr %next.gep1179, align 8, !tbaa !20, !alias.scope !174, !noalias !173
  %wide.load1184 = load <2 x i64>, ptr %i.aaw, align 8, !tbaa !20, !alias.scope !174, !noalias !173
  %i.aax = xor <2 x i64> %wide.load1183, %wide.load1181
  %i.aay = xor <2 x i64> %wide.load1184, %wide.load1182
  store <2 x i64> %i.aax, ptr %next.gep1179, align 8, !tbaa !20, !alias.scope !174, !noalias !173
  store <2 x i64> %i.aay, ptr %i.aaw, align 8, !tbaa !20, !alias.scope !174, !noalias !173
  %index.next1185 = add nuw i64 %index1178, 4     ; 2 uses
  %i.aaz = icmp eq i64 %index.next1185, %n.vec1176
  br i1 %i.aaz, label %middle.block1186, label %vector.body1177, !llvm.loop !107

middle.block1186:                                 ; preds = %vector.body1177
  %cmp.n1187 = icmp eq i64 %i.aam, %n.vec1176
  br i1 %cmp.n1187, label %xorbuf.exit223, label %.lr.ph.i32.i214.preheader

.lr.ph.i32.i214.preheader:                        ; preds = %vector.memcheck1171, %._crit_edge.i208.thread, %middle.block1186
  %.sroa.039.2.i215.ph = phi ptr [ %i.zv, %vector.memcheck1171 ], [ %i.zv, %._crit_edge.i208.thread ], [ %i.aas, %middle.block1186 ]
  %.ph1602 = phi ptr [ %.ptr438.ptr, %vector.memcheck1171 ], [ %.ptr438.ptr, %._crit_edge.i208.thread ], [ %i.aat, %middle.block1186 ]
  br label %.lr.ph.i32.i214

.lr.ph.i32.i214:                                  ; preds = %.lr.ph.i32.i214.preheader, %.lr.ph.i32.i214
  %.sroa.039.2.i215 = phi ptr [ %i.abd, %.lr.ph.i32.i214 ], [ %.sroa.039.2.i215.ph, %.lr.ph.i32.i214.preheader ] ; 3 uses
  %i.aba = phi ptr [ %i.abb, %.lr.ph.i32.i214 ], [ %.ph1602, %.lr.ph.i32.i214.preheader ] ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8 ; 2 uses
  %i.abc = load i64, ptr %i.aba, align 8, !tbaa !20
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i215, i64 8
  %i.abe = load i64, ptr %.sroa.039.2.i215, align 8, !tbaa !20
  %i.abf = xor i64 %i.abe, %i.abc
  store i64 %i.abf, ptr %.sroa.039.2.i215, align 8, !tbaa !20
  %i.abg = icmp ult ptr %i.abb, %i.aaf
  br i1 %i.abg, label %.lr.ph.i32.i214, label %xorbuf.exit223, !llvm.loop !108

vector.memcheck1197:                              ; preds = %bb.g
  %i.abh = getelementptr i8, ptr %0, i64 192
  %i.abi = getelementptr i8, ptr %0, i64 64
  %bound01198 = icmp ult ptr %i.zv, %i.abi
  %bound11199 = icmp ult ptr %.ptr438.ptr, %i.abh
  %found.conflict1200 = and i1 %bound01198, %bound11199
  br i1 %found.conflict1200, label %.lr.ph56.i197, label %vector.body1205

vector.body1205:                                  ; preds = %vector.memcheck1197
  %wide.load1209 = load <16 x i8>, ptr %.ptr438.ptr, align 16, !tbaa !21, !alias.scope !175
  %wide.load1210 = load <16 x i8>, ptr %i.zv, align 16, !tbaa !21, !alias.scope !176, !noalias !175
  %i.abj = xor <16 x i8> %wide.load1210, %wide.load1209
  store <16 x i8> %i.abj, ptr %i.zv, align 16, !tbaa !21, !alias.scope !176, !noalias !175
  br label %xorbuf.exit223

.lr.ph56.i197:                                    ; preds = %vector.memcheck1197
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.abl = load i8, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %i.abn = load i8, ptr %i.zv, align 16, !tbaa !21
  %i.abo = xor i8 %i.abn, %i.abl
  store i8 %i.abo, ptr %i.zv, align 16, !tbaa !21
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.abq = load i8, ptr %i.abk, align 1, !tbaa !21
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 178 ; 2 uses
  %i.abs = load i8, ptr %i.abm, align 1, !tbaa !21
  %i.abt = xor i8 %i.abs, %i.abq
  store i8 %i.abt, ptr %i.abm, align 1, !tbaa !21
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.abv = load i8, ptr %i.abp, align 2, !tbaa !21
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 179 ; 2 uses
  %i.abx = load i8, ptr %i.abr, align 2, !tbaa !21
  %i.aby = xor i8 %i.abx, %i.abv
  store i8 %i.aby, ptr %i.abr, align 2, !tbaa !21
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aca = load i8, ptr %i.abu, align 1, !tbaa !21
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.acc = load i8, ptr %i.abw, align 1, !tbaa !21
  %i.acd = xor i8 %i.acc, %i.aca
  store i8 %i.acd, ptr %i.abw, align 1, !tbaa !21
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.acf = load i8, ptr %i.abz, align 4, !tbaa !21
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 181 ; 2 uses
  %i.ach = load i8, ptr %i.acb, align 4, !tbaa !21
  %i.aci = xor i8 %i.ach, %i.acf
  store i8 %i.aci, ptr %i.acb, align 4, !tbaa !21
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.ack = load i8, ptr %i.ace, align 1, !tbaa !21
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.acm = load i8, ptr %i.acg, align 1, !tbaa !21
  %i.acn = xor i8 %i.acm, %i.ack
  store i8 %i.acn, ptr %i.acg, align 1, !tbaa !21
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.acp = load i8, ptr %i.acj, align 2, !tbaa !21
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 183 ; 2 uses
  %i.acr = load i8, ptr %i.acl, align 2, !tbaa !21
  %i.acs = xor i8 %i.acr, %i.acp
  store i8 %i.acs, ptr %i.acl, align 2, !tbaa !21
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.acu = load i8, ptr %i.aco, align 1, !tbaa !21
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.acw = load i8, ptr %i.acq, align 1, !tbaa !21
  %i.acx = xor i8 %i.acw, %i.acu
  store i8 %i.acx, ptr %i.acq, align 1, !tbaa !21
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.acz = load i8, ptr %i.act, align 8, !tbaa !21
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 185 ; 2 uses
  %i.adb = load i8, ptr %i.acv, align 8, !tbaa !21
  %i.adc = xor i8 %i.adb, %i.acz
  store i8 %i.adc, ptr %i.acv, align 8, !tbaa !21
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ade = load i8, ptr %i.acy, align 1, !tbaa !21
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.adg = load i8, ptr %i.ada, align 1, !tbaa !21
  %i.adh = xor i8 %i.adg, %i.ade
  store i8 %i.adh, ptr %i.ada, align 1, !tbaa !21
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.adj = load i8, ptr %i.add, align 2, !tbaa !21
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 187 ; 2 uses
  %i.adl = load i8, ptr %i.adf, align 2, !tbaa !21
  %i.adm = xor i8 %i.adl, %i.adj
  store i8 %i.adm, ptr %i.adf, align 2, !tbaa !21
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ado = load i8, ptr %i.adi, align 1, !tbaa !21
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.adq = load i8, ptr %i.adk, align 1, !tbaa !21
  %i.adr = xor i8 %i.adq, %i.ado
  store i8 %i.adr, ptr %i.adk, align 1, !tbaa !21
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.adt = load i8, ptr %i.adn, align 4, !tbaa !21
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 189 ; 2 uses
  %i.adv = load i8, ptr %i.adp, align 4, !tbaa !21
  %i.adw = xor i8 %i.adv, %i.adt
  store i8 %i.adw, ptr %i.adp, align 4, !tbaa !21
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.ady = load i8, ptr %i.ads, align 1, !tbaa !21
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.aea = load i8, ptr %i.adu, align 1, !tbaa !21
  %i.aeb = xor i8 %i.aea, %i.ady
  store i8 %i.aeb, ptr %i.adu, align 1, !tbaa !21
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.aed = load i8, ptr %i.adx, align 2, !tbaa !21
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 191 ; 2 uses
  %i.aef = load i8, ptr %i.adz, align 2, !tbaa !21
  %i.aeg = xor i8 %i.aef, %i.aed
  store i8 %i.aeg, ptr %i.adz, align 2, !tbaa !21
  %i.aeh = load i8, ptr %i.aec, align 1, !tbaa !21
  %i.aei = load i8, ptr %i.aee, align 1, !tbaa !21
  %i.aej = xor i8 %i.aei, %i.aeh
  store i8 %i.aej, ptr %i.aee, align 1, !tbaa !21
  br label %xorbuf.exit223

xorbuf.exit223:                                   ; preds = %.lr.ph.i32.i214, %vector.body1205, %.lr.ph56.i197, %middle.block1186, %.lr.ph.i.i221.preheader
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aek, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.ael = ptrtoint ptr %i.aek to i64             ; 2 uses
  %i.aem = or i64 %i.da, %i.ael
  %i.aen = and i64 %i.aem, 7
  %or.cond.i224 = icmp eq i64 %i.aen, 0
  br i1 %or.cond.i224, label %.lr.ph.i.i253.preheader, label %bb.h

.lr.ph.i.i253.preheader:                          ; preds = %xorbuf.exit223
  %i.aeo = load <2 x i64>, ptr %.ptr443.ptr, align 16, !tbaa !20
  %i.aep = load <2 x i64>, ptr %i.aek, align 16, !tbaa !20
  %i.aeq = xor <2 x i64> %i.aep, %i.aeo
  store <2 x i64> %i.aeq, ptr %i.aek, align 16, !tbaa !20
  br label %xorbuf.exit255

bb.h:                                             ; preds = %xorbuf.exit223
  %i.aer = xor i64 %i.da, %i.ael
  %i.aes = and i64 %i.aer, 7
  %i.aet = icmp eq i64 %i.aes, 0
  br i1 %i.aet, label %._crit_edge.i240.thread, label %vector.memcheck1268

._crit_edge.i240.thread:                          ; preds = %bb.h
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.0.lcssa.i2436911239.a = ptrtoaddr ptr %i.aeu to i64
  %i.aev = ptrtoaddr ptr %.ptr443.ptr to i64      ; 2 uses
  %i.aew = add nuw i64 %i.aev, 8
  %i.aex = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i2436911239.a, i64 %i.aew)
  %i.aey = xor i64 %i.aev, -1
  %i.aez = add i64 %i.aex, %i.aey                 ; 3 uses
  %i.afa = lshr i64 %i.aez, 3
  %i.afb = add nuw nsw i64 %i.afa, 1              ; 2 uses
  %min.iters.check1241 = icmp ult i64 %i.aez, 136
  br i1 %min.iters.check1241, label %.lr.ph.i32.i246.preheader, label %vector.memcheck1242

vector.memcheck1242:                              ; preds = %._crit_edge.i240.thread
  %i.afc = and i64 %i.aez, -8
  %i.afd = add i64 %i.afc, 8                      ; 2 uses
  %i.afe = getelementptr i8, ptr %i.aek, i64 %i.afd
  %i.aff = getelementptr i8, ptr %.ptr443.ptr, i64 %i.afd
  %bound01243 = icmp ult ptr %i.aek, %i.aff
  %bound11244 = icmp ult ptr %.ptr443.ptr, %i.afe
  %found.conflict1245 = and i1 %bound01243, %bound11244
  br i1 %found.conflict1245, label %.lr.ph.i32.i246.preheader, label %vector.ph1246

vector.ph1246:                                    ; preds = %vector.memcheck1242
  %n.vec1247 = and i64 %i.afb, 4611686018427387900 ; 3 uses
  %i.afg = shl i64 %n.vec1247, 3                  ; 2 uses
  %i.afh = getelementptr i8, ptr %i.aek, i64 %i.afg
  %i.afi = getelementptr i8, ptr %.ptr443.ptr, i64 %i.afg
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1246
  %index1249 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1256, %vector.body1248 ] ; 2 uses
  %i.afj = shl i64 %index1249, 3                  ; 2 uses
  %next.gep1250 = getelementptr i8, ptr %i.aek, i64 %i.afj ; 3 uses
  %next.gep1251 = getelementptr i8, ptr %.ptr443.ptr, i64 %i.afj ; 2 uses
  %i.afk = getelementptr i8, ptr %next.gep1251, i64 16
  %wide.load1252 = load <2 x i64>, ptr %next.gep1251, align 8, !tbaa !20, !alias.scope !177
  %wide.load1253 = load <2 x i64>, ptr %i.afk, align 8, !tbaa !20, !alias.scope !177
  %i.afl = getelementptr i8, ptr %next.gep1250, i64 16 ; 2 uses
  %wide.load1254 = load <2 x i64>, ptr %next.gep1250, align 8, !tbaa !20, !alias.scope !178, !noalias !177
  %wide.load1255 = load <2 x i64>, ptr %i.afl, align 8, !tbaa !20, !alias.scope !178, !noalias !177
  %i.afm = xor <2 x i64> %wide.load1254, %wide.load1252
  %i.afn = xor <2 x i64> %wide.load1255, %wide.load1253
  store <2 x i64> %i.afm, ptr %next.gep1250, align 8, !tbaa !20, !alias.scope !178, !noalias !177
  store <2 x i64> %i.afn, ptr %i.afl, align 8, !tbaa !20, !alias.scope !178, !noalias !177
  %index.next1256 = add nuw i64 %index1249, 4     ; 2 uses
  %i.afo = icmp eq i64 %index.next1256, %n.vec1247
  br i1 %i.afo, label %middle.block1257, label %vector.body1248, !llvm.loop !115

middle.block1257:                                 ; preds = %vector.body1248
  %cmp.n1258 = icmp eq i64 %i.afb, %n.vec1247
  br i1 %cmp.n1258, label %xorbuf.exit255, label %.lr.ph.i32.i246.preheader

.lr.ph.i32.i246.preheader:                        ; preds = %vector.memcheck1242, %._crit_edge.i240.thread, %middle.block1257
  %.sroa.039.2.i247.ph = phi ptr [ %i.aek, %vector.memcheck1242 ], [ %i.aek, %._crit_edge.i240.thread ], [ %i.afh, %middle.block1257 ]
  %.ph1599 = phi ptr [ %.ptr443.ptr, %vector.memcheck1242 ], [ %.ptr443.ptr, %._crit_edge.i240.thread ], [ %i.afi, %middle.block1257 ]
  br label %.lr.ph.i32.i246

.lr.ph.i32.i246:                                  ; preds = %.lr.ph.i32.i246.preheader, %.lr.ph.i32.i246
  %.sroa.039.2.i247 = phi ptr [ %i.afs, %.lr.ph.i32.i246 ], [ %.sroa.039.2.i247.ph, %.lr.ph.i32.i246.preheader ] ; 3 uses
  %i.afp = phi ptr [ %i.afq, %.lr.ph.i32.i246 ], [ %.ph1599, %.lr.ph.i32.i246.preheader ] ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 8 ; 2 uses
  %i.afr = load i64, ptr %i.afp, align 8, !tbaa !20
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i247, i64 8
  %i.aft = load i64, ptr %.sroa.039.2.i247, align 8, !tbaa !20
  %i.afu = xor i64 %i.aft, %i.afr
  store i64 %i.afu, ptr %.sroa.039.2.i247, align 8, !tbaa !20
  %i.afv = icmp ult ptr %i.afq, %i.aeu
  br i1 %i.afv, label %.lr.ph.i32.i246, label %xorbuf.exit255, !llvm.loop !116

vector.memcheck1268:                              ; preds = %bb.h
  %i.afw = getelementptr i8, ptr %0, i64 208
  %i.afx = getelementptr i8, ptr %0, i64 80
  %bound01269 = icmp ult ptr %i.aek, %i.afx
  %bound11270 = icmp ult ptr %.ptr443.ptr, %i.afw
  %found.conflict1271 = and i1 %bound01269, %bound11270
  br i1 %found.conflict1271, label %.lr.ph56.i229, label %vector.body1276

vector.body1276:                                  ; preds = %vector.memcheck1268
  %wide.load1280 = load <16 x i8>, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !179
  %wide.load1281 = load <16 x i8>, ptr %i.aek, align 16, !tbaa !21, !alias.scope !180, !noalias !179
  %i.afy = xor <16 x i8> %wide.load1281, %wide.load1280
  store <16 x i8> %i.afy, ptr %i.aek, align 16, !tbaa !21, !alias.scope !180, !noalias !179
  br label %xorbuf.exit255

.lr.ph56.i229:                                    ; preds = %vector.memcheck1268
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.aga = load i8, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 193 ; 2 uses
  %i.agc = load i8, ptr %i.aek, align 16, !tbaa !21
  %i.agd = xor i8 %i.agc, %i.aga
  store i8 %i.agd, ptr %i.aek, align 16, !tbaa !21
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.agf = load i8, ptr %i.afz, align 1, !tbaa !21
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.agh = load i8, ptr %i.agb, align 1, !tbaa !21
  %i.agi = xor i8 %i.agh, %i.agf
  store i8 %i.agi, ptr %i.agb, align 1, !tbaa !21
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.agk = load i8, ptr %i.age, align 2, !tbaa !21
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 195 ; 2 uses
  %i.agm = load i8, ptr %i.agg, align 2, !tbaa !21
  %i.agn = xor i8 %i.agm, %i.agk
  store i8 %i.agn, ptr %i.agg, align 2, !tbaa !21
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.agp = load i8, ptr %i.agj, align 1, !tbaa !21
  %i.agq = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.agr = load i8, ptr %i.agl, align 1, !tbaa !21
  %i.ags = xor i8 %i.agr, %i.agp
  store i8 %i.ags, ptr %i.agl, align 1, !tbaa !21
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.agu = load i8, ptr %i.ago, align 4, !tbaa !21
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 197 ; 2 uses
  %i.agw = load i8, ptr %i.agq, align 4, !tbaa !21
  %i.agx = xor i8 %i.agw, %i.agu
  store i8 %i.agx, ptr %i.agq, align 4, !tbaa !21
  %i.agy = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.agz = load i8, ptr %i.agt, align 1, !tbaa !21
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 198 ; 2 uses
  %i.ahb = load i8, ptr %i.agv, align 1, !tbaa !21
  %i.ahc = xor i8 %i.ahb, %i.agz
  store i8 %i.ahc, ptr %i.agv, align 1, !tbaa !21
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 71
  %i.ahe = load i8, ptr %i.agy, align 2, !tbaa !21
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 199 ; 2 uses
  %i.ahg = load i8, ptr %i.aha, align 2, !tbaa !21
  %i.ahh = xor i8 %i.ahg, %i.ahe
  store i8 %i.ahh, ptr %i.aha, align 2, !tbaa !21
  %i.ahi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ahj = load i8, ptr %i.ahd, align 1, !tbaa !21
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ahl = load i8, ptr %i.ahf, align 1, !tbaa !21
  %i.ahm = xor i8 %i.ahl, %i.ahj
  store i8 %i.ahm, ptr %i.ahf, align 1, !tbaa !21
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.aho = load i8, ptr %i.ahi, align 8, !tbaa !21
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 201 ; 2 uses
  %i.ahq = load i8, ptr %i.ahk, align 8, !tbaa !21
  %i.ahr = xor i8 %i.ahq, %i.aho
  store i8 %i.ahr, ptr %i.ahk, align 8, !tbaa !21
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.aht = load i8, ptr %i.ahn, align 1, !tbaa !21
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 202 ; 2 uses
  %i.ahv = load i8, ptr %i.ahp, align 1, !tbaa !21
  %i.ahw = xor i8 %i.ahv, %i.aht
  store i8 %i.ahw, ptr %i.ahp, align 1, !tbaa !21
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.ahy = load i8, ptr %i.ahs, align 2, !tbaa !21
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 203 ; 2 uses
  %i.aia = load i8, ptr %i.ahu, align 2, !tbaa !21
  %i.aib = xor i8 %i.aia, %i.ahy
  store i8 %i.aib, ptr %i.ahu, align 2, !tbaa !21
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aid = load i8, ptr %i.ahx, align 1, !tbaa !21
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.aif = load i8, ptr %i.ahz, align 1, !tbaa !21
  %i.aig = xor i8 %i.aif, %i.aid
  store i8 %i.aig, ptr %i.ahz, align 1, !tbaa !21
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.aii = load i8, ptr %i.aic, align 4, !tbaa !21
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 205 ; 2 uses
  %i.aik = load i8, ptr %i.aie, align 4, !tbaa !21
  %i.ail = xor i8 %i.aik, %i.aii
  store i8 %i.ail, ptr %i.aie, align 4, !tbaa !21
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ain = load i8, ptr %i.aih, align 1, !tbaa !21
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 206 ; 2 uses
  %i.aip = load i8, ptr %i.aij, align 1, !tbaa !21
  %i.aiq = xor i8 %i.aip, %i.ain
  store i8 %i.aiq, ptr %i.aij, align 1, !tbaa !21
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.ais = load i8, ptr %i.aim, align 2, !tbaa !21
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 207 ; 2 uses
  %i.aiu = load i8, ptr %i.aio, align 2, !tbaa !21
  %i.aiv = xor i8 %i.aiu, %i.ais
  store i8 %i.aiv, ptr %i.aio, align 2, !tbaa !21
  %i.aiw = load i8, ptr %i.air, align 1, !tbaa !21
  %i.aix = load i8, ptr %i.ait, align 1, !tbaa !21
  %i.aiy = xor i8 %i.aix, %i.aiw
  store i8 %i.aiy, ptr %i.ait, align 1, !tbaa !21
  br label %xorbuf.exit255

xorbuf.exit255:                                   ; preds = %.lr.ph.i32.i246, %vector.body1276, %.lr.ph56.i229, %middle.block1257, %.lr.ph.i.i253.preheader
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aiz, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.aja = ptrtoint ptr %i.aiz to i64             ; 2 uses
  %i.ajb = ptrtoint ptr %.ptr460 to i64           ; 2 uses
  %i.ajc = or i64 %i.ajb, %i.aja
  %i.ajd = and i64 %i.ajc, 7
  %or.cond.i256 = icmp eq i64 %i.ajd, 0
  br i1 %or.cond.i256, label %.lr.ph.i.i285.preheader, label %bb.i

.lr.ph.i.i285.preheader:                          ; preds = %xorbuf.exit255
  %i.aje = load <2 x i64>, ptr %.ptr460, align 16, !tbaa !20
  %i.ajf = load <2 x i64>, ptr %i.aiz, align 16, !tbaa !20
  %i.ajg = xor <2 x i64> %i.ajf, %i.aje
  store <2 x i64> %i.ajg, ptr %i.aiz, align 16, !tbaa !20
  br label %xorbuf.exit287

bb.i:                                             ; preds = %xorbuf.exit255
  %i.ajh = xor i64 %i.ajb, %i.aja
  %i.aji = and i64 %i.ajh, 7
  %i.ajj = icmp eq i64 %i.aji, 0
  br i1 %i.ajj, label %._crit_edge.i272.thread, label %vector.memcheck1339

._crit_edge.i272.thread:                          ; preds = %bb.i
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.0.lcssa.i2757001310.a = ptrtoaddr ptr %i.ajk to i64
  %i.ajl = ptrtoaddr ptr %.ptr460 to i64          ; 2 uses
  %i.ajm = add nuw i64 %i.ajl, 8
  %i.ajn = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i2757001310.a, i64 %i.ajm)
  %i.ajo = xor i64 %i.ajl, -1
  %i.ajp = add i64 %i.ajn, %i.ajo                 ; 3 uses
  %i.ajq = lshr i64 %i.ajp, 3
  %i.ajr = add nuw nsw i64 %i.ajq, 1              ; 2 uses
  %min.iters.check1312 = icmp ult i64 %i.ajp, 136
  br i1 %min.iters.check1312, label %.lr.ph.i32.i278.preheader, label %vector.memcheck1313

vector.memcheck1313:                              ; preds = %._crit_edge.i272.thread
  %i.ajs = and i64 %i.ajp, -8
  %i.ajt = add i64 %i.ajs, 8                      ; 2 uses
  %i.aju = getelementptr i8, ptr %i.aiz, i64 %i.ajt
  %i.ajv = getelementptr i8, ptr %.ptr460, i64 %i.ajt
  %bound01314 = icmp ult ptr %i.aiz, %i.ajv
  %bound11315 = icmp ult ptr %.ptr460, %i.aju
  %found.conflict1316 = and i1 %bound01314, %bound11315
  br i1 %found.conflict1316, label %.lr.ph.i32.i278.preheader, label %vector.ph1317

vector.ph1317:                                    ; preds = %vector.memcheck1313
  %n.vec1318 = and i64 %i.ajr, 4611686018427387900 ; 3 uses
  %i.ajw = shl i64 %n.vec1318, 3                  ; 2 uses
  %i.ajx = getelementptr i8, ptr %i.aiz, i64 %i.ajw
  %i.ajy = getelementptr i8, ptr %.ptr460, i64 %i.ajw
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1317
  %index1320 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1327, %vector.body1319 ] ; 2 uses
  %i.ajz = shl i64 %index1320, 3                  ; 2 uses
  %next.gep1321 = getelementptr i8, ptr %i.aiz, i64 %i.ajz ; 3 uses
  %next.gep1322 = getelementptr i8, ptr %.ptr460, i64 %i.ajz ; 2 uses
  %i.aka = getelementptr i8, ptr %next.gep1322, i64 16
  %wide.load1323 = load <2 x i64>, ptr %next.gep1322, align 8, !tbaa !20, !alias.scope !181
  %wide.load1324 = load <2 x i64>, ptr %i.aka, align 8, !tbaa !20, !alias.scope !181
  %i.akb = getelementptr i8, ptr %next.gep1321, i64 16 ; 2 uses
  %wide.load1325 = load <2 x i64>, ptr %next.gep1321, align 8, !tbaa !20, !alias.scope !182, !noalias !181
  %wide.load1326 = load <2 x i64>, ptr %i.akb, align 8, !tbaa !20, !alias.scope !182, !noalias !181
  %i.akc = xor <2 x i64> %wide.load1325, %wide.load1323
  %i.akd = xor <2 x i64> %wide.load1326, %wide.load1324
  store <2 x i64> %i.akc, ptr %next.gep1321, align 8, !tbaa !20, !alias.scope !182, !noalias !181
  store <2 x i64> %i.akd, ptr %i.akb, align 8, !tbaa !20, !alias.scope !182, !noalias !181
  %index.next1327 = add nuw i64 %index1320, 4     ; 2 uses
  %i.ake = icmp eq i64 %index.next1327, %n.vec1318
  br i1 %i.ake, label %middle.block1328, label %vector.body1319, !llvm.loop !123

middle.block1328:                                 ; preds = %vector.body1319
  %cmp.n1329 = icmp eq i64 %i.ajr, %n.vec1318
  br i1 %cmp.n1329, label %xorbuf.exit287, label %.lr.ph.i32.i278.preheader

.lr.ph.i32.i278.preheader:                        ; preds = %vector.memcheck1313, %._crit_edge.i272.thread, %middle.block1328
  %.sroa.039.2.i279.ph = phi ptr [ %i.aiz, %vector.memcheck1313 ], [ %i.aiz, %._crit_edge.i272.thread ], [ %i.ajx, %middle.block1328 ]
  %.ph1596 = phi ptr [ %.ptr460, %vector.memcheck1313 ], [ %.ptr460, %._crit_edge.i272.thread ], [ %i.ajy, %middle.block1328 ]
  br label %.lr.ph.i32.i278

.lr.ph.i32.i278:                                  ; preds = %.lr.ph.i32.i278.preheader, %.lr.ph.i32.i278
  %.sroa.039.2.i279 = phi ptr [ %i.aki, %.lr.ph.i32.i278 ], [ %.sroa.039.2.i279.ph, %.lr.ph.i32.i278.preheader ] ; 3 uses
  %i.akf = phi ptr [ %i.akg, %.lr.ph.i32.i278 ], [ %.ph1596, %.lr.ph.i32.i278.preheader ] ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 8 ; 2 uses
  %i.akh = load i64, ptr %i.akf, align 8, !tbaa !20
  %i.aki = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i279, i64 8
  %i.akj = load i64, ptr %.sroa.039.2.i279, align 8, !tbaa !20
  %i.akk = xor i64 %i.akj, %i.akh
  store i64 %i.akk, ptr %.sroa.039.2.i279, align 8, !tbaa !20
  %i.akl = icmp ult ptr %i.akg, %i.ajk
  br i1 %i.akl, label %.lr.ph.i32.i278, label %xorbuf.exit287, !llvm.loop !124

vector.memcheck1339:                              ; preds = %bb.i
  %i.akm = getelementptr i8, ptr %0, i64 224
  %i.akn = getelementptr i8, ptr %0, i64 96
  %bound01340 = icmp ult ptr %i.aiz, %i.akn
  %bound11341 = icmp ult ptr %.ptr460, %i.akm
  %found.conflict1342 = and i1 %bound01340, %bound11341
  br i1 %found.conflict1342, label %.lr.ph56.i261, label %vector.body1347

vector.body1347:                                  ; preds = %vector.memcheck1339
  %wide.load1351 = load <16 x i8>, ptr %.ptr460, align 16, !tbaa !21, !alias.scope !183
  %wide.load1352 = load <16 x i8>, ptr %i.aiz, align 16, !tbaa !21, !alias.scope !184, !noalias !183
  %i.ako = xor <16 x i8> %wide.load1352, %wide.load1351
  store <16 x i8> %i.ako, ptr %i.aiz, align 16, !tbaa !21, !alias.scope !184, !noalias !183
  br label %xorbuf.exit287

.lr.ph56.i261:                                    ; preds = %vector.memcheck1339
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.akq = load i8, ptr %.ptr460, align 16, !tbaa !21
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 209 ; 2 uses
  %i.aks = load i8, ptr %i.aiz, align 16, !tbaa !21
  %i.akt = xor i8 %i.aks, %i.akq
  store i8 %i.akt, ptr %i.aiz, align 16, !tbaa !21
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.akv = load i8, ptr %i.akp, align 1, !tbaa !21
  %i.akw = getelementptr inbounds nuw i8, ptr %0, i64 210 ; 2 uses
  %i.akx = load i8, ptr %i.akr, align 1, !tbaa !21
  %i.aky = xor i8 %i.akx, %i.akv
  store i8 %i.aky, ptr %i.akr, align 1, !tbaa !21
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.ala = load i8, ptr %i.aku, align 2, !tbaa !21
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 211 ; 2 uses
  %i.alc = load i8, ptr %i.akw, align 2, !tbaa !21
  %i.ald = xor i8 %i.alc, %i.ala
  store i8 %i.ald, ptr %i.akw, align 2, !tbaa !21
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.alf = load i8, ptr %i.akz, align 1, !tbaa !21
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.alh = load i8, ptr %i.alb, align 1, !tbaa !21
  %i.ali = xor i8 %i.alh, %i.alf
  store i8 %i.ali, ptr %i.alb, align 1, !tbaa !21
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 85
  %i.alk = load i8, ptr %i.ale, align 4, !tbaa !21
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 213 ; 2 uses
  %i.alm = load i8, ptr %i.alg, align 4, !tbaa !21
  %i.aln = xor i8 %i.alm, %i.alk
  store i8 %i.aln, ptr %i.alg, align 4, !tbaa !21
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.alp = load i8, ptr %i.alj, align 1, !tbaa !21
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 214 ; 2 uses
  %i.alr = load i8, ptr %i.all, align 1, !tbaa !21
  %i.als = xor i8 %i.alr, %i.alp
  store i8 %i.als, ptr %i.all, align 1, !tbaa !21
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 87
  %i.alu = load i8, ptr %i.alo, align 2, !tbaa !21
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 215 ; 2 uses
  %i.alw = load i8, ptr %i.alq, align 2, !tbaa !21
  %i.alx = xor i8 %i.alw, %i.alu
  store i8 %i.alx, ptr %i.alq, align 2, !tbaa !21
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.alz = load i8, ptr %i.alt, align 1, !tbaa !21
  %i.ama = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.amb = load i8, ptr %i.alv, align 1, !tbaa !21
  %i.amc = xor i8 %i.amb, %i.alz
  store i8 %i.amc, ptr %i.alv, align 1, !tbaa !21
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.ame = load i8, ptr %i.aly, align 8, !tbaa !21
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 217 ; 2 uses
  %i.amg = load i8, ptr %i.ama, align 8, !tbaa !21
  %i.amh = xor i8 %i.amg, %i.ame
  store i8 %i.amh, ptr %i.ama, align 8, !tbaa !21
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.amj = load i8, ptr %i.amd, align 1, !tbaa !21
  %i.amk = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 2 uses
  %i.aml = load i8, ptr %i.amf, align 1, !tbaa !21
  %i.amm = xor i8 %i.aml, %i.amj
  store i8 %i.amm, ptr %i.amf, align 1, !tbaa !21
  %i.amn = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.amo = load i8, ptr %i.ami, align 2, !tbaa !21
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 219 ; 2 uses
  %i.amq = load i8, ptr %i.amk, align 2, !tbaa !21
  %i.amr = xor i8 %i.amq, %i.amo
  store i8 %i.amr, ptr %i.amk, align 2, !tbaa !21
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.amt = load i8, ptr %i.amn, align 1, !tbaa !21
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.amv = load i8, ptr %i.amp, align 1, !tbaa !21
  %i.amw = xor i8 %i.amv, %i.amt
  store i8 %i.amw, ptr %i.amp, align 1, !tbaa !21
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.amy = load i8, ptr %i.ams, align 4, !tbaa !21
  %i.amz = getelementptr inbounds nuw i8, ptr %0, i64 221 ; 2 uses
  %i.ana = load i8, ptr %i.amu, align 4, !tbaa !21
  %i.anb = xor i8 %i.ana, %i.amy
  store i8 %i.anb, ptr %i.amu, align 4, !tbaa !21
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 94
  %i.and = load i8, ptr %i.amx, align 1, !tbaa !21
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 222 ; 2 uses
  %i.anf = load i8, ptr %i.amz, align 1, !tbaa !21
  %i.ang = xor i8 %i.anf, %i.and
  store i8 %i.ang, ptr %i.amz, align 1, !tbaa !21
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 95
  %i.ani = load i8, ptr %i.anc, align 2, !tbaa !21
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 223 ; 2 uses
  %i.ank = load i8, ptr %i.ane, align 2, !tbaa !21
  %i.anl = xor i8 %i.ank, %i.ani
  store i8 %i.anl, ptr %i.ane, align 2, !tbaa !21
  %i.anm = load i8, ptr %i.anh, align 1, !tbaa !21
  %i.ann = load i8, ptr %i.anj, align 1, !tbaa !21
  %i.ano = xor i8 %i.ann, %i.anm
  store i8 %i.ano, ptr %i.anj, align 1, !tbaa !21
  br label %xorbuf.exit287

xorbuf.exit287:                                   ; preds = %.lr.ph.i32.i278, %vector.body1347, %.lr.ph56.i261, %middle.block1328, %.lr.ph.i.i285.preheader
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.anp, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.anq = ptrtoint ptr %i.anp to i64             ; 2 uses
  %i.anr = or i64 %i.hp, %i.anq
  %i.ans = and i64 %i.anr, 7
  %or.cond.i288 = icmp eq i64 %i.ans, 0
  br i1 %or.cond.i288, label %.lr.ph.i.i317.preheader, label %bb.j

.lr.ph.i.i317.preheader:                          ; preds = %xorbuf.exit287
  %i.ant = load <2 x i64>, ptr %.ptr465, align 16, !tbaa !20
  %i.anu = load <2 x i64>, ptr %i.anp, align 16, !tbaa !20
  %i.anv = xor <2 x i64> %i.anu, %i.ant
  store <2 x i64> %i.anv, ptr %i.anp, align 16, !tbaa !20
  br label %xorbuf.exit319

bb.j:                                             ; preds = %xorbuf.exit287
  %i.anw = xor i64 %i.hp, %i.anq
  %i.anx = and i64 %i.anw, 7
  %i.any = icmp eq i64 %i.anx, 0
  br i1 %i.any, label %._crit_edge.i304.thread, label %vector.memcheck1410

._crit_edge.i304.thread:                          ; preds = %bb.j
  %i.anz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.0.lcssa.i3077091381.a = ptrtoaddr ptr %i.anz to i64
  %i.aoa = ptrtoaddr ptr %.ptr465 to i64          ; 2 uses
  %i.aob = add nuw i64 %i.aoa, 8
  %i.aoc = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i3077091381.a, i64 %i.aob)
  %i.aod = xor i64 %i.aoa, -1
  %i.aoe = add i64 %i.aoc, %i.aod                 ; 3 uses
  %i.aof = lshr i64 %i.aoe, 3
  %i.aog = add nuw nsw i64 %i.aof, 1              ; 2 uses
  %min.iters.check1383 = icmp ult i64 %i.aoe, 136
  br i1 %min.iters.check1383, label %.lr.ph.i32.i310.preheader, label %vector.memcheck1384

vector.memcheck1384:                              ; preds = %._crit_edge.i304.thread
  %i.aoh = and i64 %i.aoe, -8
  %i.aoi = add i64 %i.aoh, 8                      ; 2 uses
  %i.aoj = getelementptr i8, ptr %i.anp, i64 %i.aoi
  %i.aok = getelementptr i8, ptr %.ptr465, i64 %i.aoi
  %bound01385 = icmp ult ptr %i.anp, %i.aok
  %bound11386 = icmp ult ptr %.ptr465, %i.aoj
  %found.conflict1387 = and i1 %bound01385, %bound11386
  br i1 %found.conflict1387, label %.lr.ph.i32.i310.preheader, label %vector.ph1388

vector.ph1388:                                    ; preds = %vector.memcheck1384
  %n.vec1389 = and i64 %i.aog, 4611686018427387900 ; 3 uses
  %i.aol = shl i64 %n.vec1389, 3                  ; 2 uses
  %i.aom = getelementptr i8, ptr %i.anp, i64 %i.aol
  %i.aon = getelementptr i8, ptr %.ptr465, i64 %i.aol
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.body1390, %vector.ph1388
  %index1391 = phi i64 [ 0, %vector.ph1388 ], [ %index.next1398, %vector.body1390 ] ; 2 uses
  %i.aoo = shl i64 %index1391, 3                  ; 2 uses
  %next.gep1392 = getelementptr i8, ptr %i.anp, i64 %i.aoo ; 3 uses
  %next.gep1393 = getelementptr i8, ptr %.ptr465, i64 %i.aoo ; 2 uses
  %i.aop = getelementptr i8, ptr %next.gep1393, i64 16
  %wide.load1394 = load <2 x i64>, ptr %next.gep1393, align 8, !tbaa !20, !alias.scope !185
  %wide.load1395 = load <2 x i64>, ptr %i.aop, align 8, !tbaa !20, !alias.scope !185
  %i.aoq = getelementptr i8, ptr %next.gep1392, i64 16 ; 2 uses
  %wide.load1396 = load <2 x i64>, ptr %next.gep1392, align 8, !tbaa !20, !alias.scope !186, !noalias !185
  %wide.load1397 = load <2 x i64>, ptr %i.aoq, align 8, !tbaa !20, !alias.scope !186, !noalias !185
  %i.aor = xor <2 x i64> %wide.load1396, %wide.load1394
  %i.aos = xor <2 x i64> %wide.load1397, %wide.load1395
  store <2 x i64> %i.aor, ptr %next.gep1392, align 8, !tbaa !20, !alias.scope !186, !noalias !185
  store <2 x i64> %i.aos, ptr %i.aoq, align 8, !tbaa !20, !alias.scope !186, !noalias !185
  %index.next1398 = add nuw i64 %index1391, 4     ; 2 uses
  %i.aot = icmp eq i64 %index.next1398, %n.vec1389
  br i1 %i.aot, label %middle.block1399, label %vector.body1390, !llvm.loop !131

middle.block1399:                                 ; preds = %vector.body1390
  %cmp.n1400 = icmp eq i64 %i.aog, %n.vec1389
  br i1 %cmp.n1400, label %xorbuf.exit319, label %.lr.ph.i32.i310.preheader

.lr.ph.i32.i310.preheader:                        ; preds = %vector.memcheck1384, %._crit_edge.i304.thread, %middle.block1399
  %.sroa.039.2.i311.ph = phi ptr [ %i.anp, %vector.memcheck1384 ], [ %i.anp, %._crit_edge.i304.thread ], [ %i.aom, %middle.block1399 ]
  %.ph1593 = phi ptr [ %.ptr465, %vector.memcheck1384 ], [ %.ptr465, %._crit_edge.i304.thread ], [ %i.aon, %middle.block1399 ]
  br label %.lr.ph.i32.i310

.lr.ph.i32.i310:                                  ; preds = %.lr.ph.i32.i310.preheader, %.lr.ph.i32.i310
  %.sroa.039.2.i311 = phi ptr [ %i.aox, %.lr.ph.i32.i310 ], [ %.sroa.039.2.i311.ph, %.lr.ph.i32.i310.preheader ] ; 3 uses
  %i.aou = phi ptr [ %i.aov, %.lr.ph.i32.i310 ], [ %.ph1593, %.lr.ph.i32.i310.preheader ] ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 8 ; 2 uses
  %i.aow = load i64, ptr %i.aou, align 8, !tbaa !20
  %i.aox = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i311, i64 8
  %i.aoy = load i64, ptr %.sroa.039.2.i311, align 8, !tbaa !20
  %i.aoz = xor i64 %i.aoy, %i.aow
  store i64 %i.aoz, ptr %.sroa.039.2.i311, align 8, !tbaa !20
  %i.apa = icmp ult ptr %i.aov, %i.anz
  br i1 %i.apa, label %.lr.ph.i32.i310, label %xorbuf.exit319, !llvm.loop !132

vector.memcheck1410:                              ; preds = %bb.j
  %i.apb = getelementptr i8, ptr %0, i64 240
  %i.apc = getelementptr i8, ptr %0, i64 112
  %bound01411 = icmp ult ptr %i.anp, %i.apc
  %bound11412 = icmp ult ptr %.ptr465, %i.apb
  %found.conflict1413 = and i1 %bound01411, %bound11412
  br i1 %found.conflict1413, label %.lr.ph56.i293, label %vector.body1418

vector.body1418:                                  ; preds = %vector.memcheck1410
  %wide.load1422 = load <16 x i8>, ptr %.ptr465, align 16, !tbaa !21, !alias.scope !187
  %wide.load1423 = load <16 x i8>, ptr %i.anp, align 16, !tbaa !21, !alias.scope !188, !noalias !187
  %i.apd = xor <16 x i8> %wide.load1423, %wide.load1422
  store <16 x i8> %i.apd, ptr %i.anp, align 16, !tbaa !21, !alias.scope !188, !noalias !187
  br label %xorbuf.exit319

.lr.ph56.i293:                                    ; preds = %vector.memcheck1410
  %i.ape = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.apf = load i8, ptr %.ptr465, align 16, !tbaa !21
  %i.apg = getelementptr inbounds nuw i8, ptr %0, i64 225 ; 2 uses
  %i.aph = load i8, ptr %i.anp, align 16, !tbaa !21
  %i.api = xor i8 %i.aph, %i.apf
  store i8 %i.api, ptr %i.anp, align 16, !tbaa !21
  %i.apj = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.apk = load i8, ptr %i.ape, align 1, !tbaa !21
  %i.apl = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.apm = load i8, ptr %i.apg, align 1, !tbaa !21
  %i.apn = xor i8 %i.apm, %i.apk
  store i8 %i.apn, ptr %i.apg, align 1, !tbaa !21
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.app = load i8, ptr %i.apj, align 2, !tbaa !21
  %i.apq = getelementptr inbounds nuw i8, ptr %0, i64 227 ; 2 uses
  %i.apr = load i8, ptr %i.apl, align 2, !tbaa !21
  %i.aps = xor i8 %i.apr, %i.app
  store i8 %i.aps, ptr %i.apl, align 2, !tbaa !21
  %i.apt = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.apu = load i8, ptr %i.apo, align 1, !tbaa !21
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.apw = load i8, ptr %i.apq, align 1, !tbaa !21
  %i.apx = xor i8 %i.apw, %i.apu
  store i8 %i.apx, ptr %i.apq, align 1, !tbaa !21
  %i.apy = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.apz = load i8, ptr %i.apt, align 4, !tbaa !21
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 2 uses
  %i.aqb = load i8, ptr %i.apv, align 4, !tbaa !21
  %i.aqc = xor i8 %i.aqb, %i.apz
  store i8 %i.aqc, ptr %i.apv, align 4, !tbaa !21
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 102
  %i.aqe = load i8, ptr %i.apy, align 1, !tbaa !21
  %i.aqf = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %i.aqg = load i8, ptr %i.aqa, align 1, !tbaa !21
  %i.aqh = xor i8 %i.aqg, %i.aqe
  store i8 %i.aqh, ptr %i.aqa, align 1, !tbaa !21
  %i.aqi = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.aqj = load i8, ptr %i.aqd, align 2, !tbaa !21
  %i.aqk = getelementptr inbounds nuw i8, ptr %0, i64 231 ; 2 uses
  %i.aql = load i8, ptr %i.aqf, align 2, !tbaa !21
  %i.aqm = xor i8 %i.aql, %i.aqj
  store i8 %i.aqm, ptr %i.aqf, align 2, !tbaa !21
  %i.aqn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aqo = load i8, ptr %i.aqi, align 1, !tbaa !21
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.aqq = load i8, ptr %i.aqk, align 1, !tbaa !21
  %i.aqr = xor i8 %i.aqq, %i.aqo
  store i8 %i.aqr, ptr %i.aqk, align 1, !tbaa !21
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.aqt = load i8, ptr %i.aqn, align 8, !tbaa !21
  %i.aqu = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.aqv = load i8, ptr %i.aqp, align 8, !tbaa !21
  %i.aqw = xor i8 %i.aqv, %i.aqt
  store i8 %i.aqw, ptr %i.aqp, align 8, !tbaa !21
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.aqy = load i8, ptr %i.aqs, align 1, !tbaa !21
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 2 uses
  %i.ara = load i8, ptr %i.aqu, align 1, !tbaa !21
  %i.arb = xor i8 %i.ara, %i.aqy
  store i8 %i.arb, ptr %i.aqu, align 1, !tbaa !21
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.ard = load i8, ptr %i.aqx, align 2, !tbaa !21
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 235 ; 2 uses
  %i.arf = load i8, ptr %i.aqz, align 2, !tbaa !21
  %i.arg = xor i8 %i.arf, %i.ard
  store i8 %i.arg, ptr %i.aqz, align 2, !tbaa !21
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ari = load i8, ptr %i.arc, align 1, !tbaa !21
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.ark = load i8, ptr %i.are, align 1, !tbaa !21
  %i.arl = xor i8 %i.ark, %i.ari
  store i8 %i.arl, ptr %i.are, align 1, !tbaa !21
  %i.arm = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.arn = load i8, ptr %i.arh, align 4, !tbaa !21
  %i.aro = getelementptr inbounds nuw i8, ptr %0, i64 237 ; 2 uses
  %i.arp = load i8, ptr %i.arj, align 4, !tbaa !21
  %i.arq = xor i8 %i.arp, %i.arn
  store i8 %i.arq, ptr %i.arj, align 4, !tbaa !21
  %i.arr = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.ars = load i8, ptr %i.arm, align 1, !tbaa !21
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 238 ; 2 uses
  %i.aru = load i8, ptr %i.aro, align 1, !tbaa !21
  %i.arv = xor i8 %i.aru, %i.ars
  store i8 %i.arv, ptr %i.aro, align 1, !tbaa !21
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 111
  %i.arx = load i8, ptr %i.arr, align 2, !tbaa !21
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 239 ; 2 uses
  %i.arz = load i8, ptr %i.art, align 2, !tbaa !21
  %i.asa = xor i8 %i.arz, %i.arx
  store i8 %i.asa, ptr %i.art, align 2, !tbaa !21
  %i.asb = load i8, ptr %i.arw, align 1, !tbaa !21
  %i.asc = load i8, ptr %i.ary, align 1, !tbaa !21
  %i.asd = xor i8 %i.asc, %i.asb
  store i8 %i.asd, ptr %i.ary, align 1, !tbaa !21
  br label %xorbuf.exit319

xorbuf.exit319:                                   ; preds = %.lr.ph.i32.i310, %vector.body1418, %.lr.ph56.i293, %middle.block1399, %.lr.ph.i.i317.preheader
  %i.ase = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ase, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.asf = ptrtoint ptr %i.ase to i64             ; 2 uses
  %i.asg = or i64 %i.md, %i.asf
  %i.ash = and i64 %i.asg, 7
  %or.cond.i320 = icmp eq i64 %i.ash, 0
  br i1 %or.cond.i320, label %.lr.ph.i.i349.preheader, label %bb.k

.lr.ph.i.i349.preheader:                          ; preds = %xorbuf.exit319
  %i.asi = load <2 x i64>, ptr %.ptr470, align 16, !tbaa !20
  %i.asj = load <2 x i64>, ptr %i.ase, align 16, !tbaa !20
  %i.ask = xor <2 x i64> %i.asj, %i.asi
  store <2 x i64> %i.ask, ptr %i.ase, align 16, !tbaa !20
  br label %xorbuf.exit351

bb.k:                                             ; preds = %xorbuf.exit319
  %i.asl = xor i64 %i.md, %i.asf
  %i.asm = and i64 %i.asl, 7
  %i.asn = icmp eq i64 %i.asm, 0
  br i1 %i.asn, label %._crit_edge.i336.thread, label %vector.memcheck1481

._crit_edge.i336.thread:                          ; preds = %bb.k
  %i.aso = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.0.lcssa.i3397181452.a = ptrtoaddr ptr %i.aso to i64
  %i.asp = ptrtoaddr ptr %.ptr470 to i64          ; 2 uses
  %i.asq = add nuw i64 %i.asp, 8
  %i.asr = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i3397181452.a, i64 %i.asq)
  %i.ass = xor i64 %i.asp, -1
  %i.ast = add i64 %i.asr, %i.ass                 ; 3 uses
  %i.asu = lshr i64 %i.ast, 3
  %i.asv = add nuw nsw i64 %i.asu, 1              ; 2 uses
  %min.iters.check1454 = icmp ult i64 %i.ast, 136
  br i1 %min.iters.check1454, label %.lr.ph.i32.i342.preheader, label %vector.memcheck1455

vector.memcheck1455:                              ; preds = %._crit_edge.i336.thread
  %i.asw = and i64 %i.ast, -8
  %i.asx = add i64 %i.asw, 8                      ; 2 uses
  %i.asy = getelementptr i8, ptr %i.ase, i64 %i.asx
  %i.asz = getelementptr i8, ptr %.ptr470, i64 %i.asx
  %bound01456 = icmp ult ptr %i.ase, %i.asz
  %bound11457 = icmp ult ptr %.ptr470, %i.asy
  %found.conflict1458 = and i1 %bound01456, %bound11457
  br i1 %found.conflict1458, label %.lr.ph.i32.i342.preheader, label %vector.ph1459

vector.ph1459:                                    ; preds = %vector.memcheck1455
  %n.vec1460 = and i64 %i.asv, 4611686018427387900 ; 3 uses
  %i.ata = shl i64 %n.vec1460, 3                  ; 2 uses
  %i.atb = getelementptr i8, ptr %i.ase, i64 %i.ata
  %i.atc = getelementptr i8, ptr %.ptr470, i64 %i.ata
  br label %vector.body1461

vector.body1461:                                  ; preds = %vector.body1461, %vector.ph1459
  %index1462 = phi i64 [ 0, %vector.ph1459 ], [ %index.next1469, %vector.body1461 ] ; 2 uses
  %i.atd = shl i64 %index1462, 3                  ; 2 uses
  %next.gep1463 = getelementptr i8, ptr %i.ase, i64 %i.atd ; 3 uses
  %next.gep1464 = getelementptr i8, ptr %.ptr470, i64 %i.atd ; 2 uses
  %i.ate = getelementptr i8, ptr %next.gep1464, i64 16
  %wide.load1465 = load <2 x i64>, ptr %next.gep1464, align 8, !tbaa !20, !alias.scope !189
  %wide.load1466 = load <2 x i64>, ptr %i.ate, align 8, !tbaa !20, !alias.scope !189
  %i.atf = getelementptr i8, ptr %next.gep1463, i64 16 ; 2 uses
  %wide.load1467 = load <2 x i64>, ptr %next.gep1463, align 8, !tbaa !20, !alias.scope !190, !noalias !189
  %wide.load1468 = load <2 x i64>, ptr %i.atf, align 8, !tbaa !20, !alias.scope !190, !noalias !189
  %i.atg = xor <2 x i64> %wide.load1467, %wide.load1465
  %i.ath = xor <2 x i64> %wide.load1468, %wide.load1466
  store <2 x i64> %i.atg, ptr %next.gep1463, align 8, !tbaa !20, !alias.scope !190, !noalias !189
  store <2 x i64> %i.ath, ptr %i.atf, align 8, !tbaa !20, !alias.scope !190, !noalias !189
  %index.next1469 = add nuw i64 %index1462, 4     ; 2 uses
  %i.ati = icmp eq i64 %index.next1469, %n.vec1460
  br i1 %i.ati, label %middle.block1470, label %vector.body1461, !llvm.loop !139

middle.block1470:                                 ; preds = %vector.body1461
  %cmp.n1471 = icmp eq i64 %i.asv, %n.vec1460
  br i1 %cmp.n1471, label %xorbuf.exit351, label %.lr.ph.i32.i342.preheader

.lr.ph.i32.i342.preheader:                        ; preds = %vector.memcheck1455, %._crit_edge.i336.thread, %middle.block1470
  %.sroa.039.2.i343.ph = phi ptr [ %i.ase, %vector.memcheck1455 ], [ %i.ase, %._crit_edge.i336.thread ], [ %i.atb, %middle.block1470 ]
  %.ph1590 = phi ptr [ %.ptr470, %vector.memcheck1455 ], [ %.ptr470, %._crit_edge.i336.thread ], [ %i.atc, %middle.block1470 ]
  br label %.lr.ph.i32.i342

.lr.ph.i32.i342:                                  ; preds = %.lr.ph.i32.i342.preheader, %.lr.ph.i32.i342
  %.sroa.039.2.i343 = phi ptr [ %i.atm, %.lr.ph.i32.i342 ], [ %.sroa.039.2.i343.ph, %.lr.ph.i32.i342.preheader ] ; 3 uses
  %i.atj = phi ptr [ %i.atk, %.lr.ph.i32.i342 ], [ %.ph1590, %.lr.ph.i32.i342.preheader ] ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 8 ; 2 uses
  %i.atl = load i64, ptr %i.atj, align 8, !tbaa !20
  %i.atm = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i343, i64 8
  %i.atn = load i64, ptr %.sroa.039.2.i343, align 8, !tbaa !20
  %i.ato = xor i64 %i.atn, %i.atl
  store i64 %i.ato, ptr %.sroa.039.2.i343, align 8, !tbaa !20
  %i.atp = icmp ult ptr %i.atk, %i.aso
  br i1 %i.atp, label %.lr.ph.i32.i342, label %xorbuf.exit351, !llvm.loop !140

vector.memcheck1481:                              ; preds = %bb.k
  %i.atq = getelementptr i8, ptr %0, i64 256
  %i.atr = getelementptr i8, ptr %0, i64 128
  %bound01482 = icmp ult ptr %i.ase, %i.atr
  %bound11483 = icmp ult ptr %.ptr470, %i.atq
  %found.conflict1484 = and i1 %bound01482, %bound11483
  br i1 %found.conflict1484, label %.lr.ph56.i325, label %vector.body1489

vector.body1489:                                  ; preds = %vector.memcheck1481
  %wide.load1493 = load <16 x i8>, ptr %.ptr470, align 16, !tbaa !21, !alias.scope !191
  %wide.load1494 = load <16 x i8>, ptr %i.ase, align 16, !tbaa !21, !alias.scope !192, !noalias !191
  %i.ats = xor <16 x i8> %wide.load1494, %wide.load1493
  store <16 x i8> %i.ats, ptr %i.ase, align 16, !tbaa !21, !alias.scope !192, !noalias !191
  br label %xorbuf.exit351

.lr.ph56.i325:                                    ; preds = %vector.memcheck1481
  %i.att = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.atu = load i8, ptr %.ptr470, align 16, !tbaa !21
  %i.atv = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  %i.atw = load i8, ptr %i.ase, align 16, !tbaa !21
  %i.atx = xor i8 %i.atw, %i.atu
  store i8 %i.atx, ptr %i.ase, align 16, !tbaa !21
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.atz = load i8, ptr %i.att, align 1, !tbaa !21
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 242 ; 2 uses
  %i.aub = load i8, ptr %i.atv, align 1, !tbaa !21
  %i.auc = xor i8 %i.aub, %i.atz
  store i8 %i.auc, ptr %i.atv, align 1, !tbaa !21
  %i.aud = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.aue = load i8, ptr %i.aty, align 2, !tbaa !21
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 243 ; 2 uses
  %i.aug = load i8, ptr %i.aua, align 2, !tbaa !21
  %i.auh = xor i8 %i.aug, %i.aue
  store i8 %i.auh, ptr %i.aua, align 2, !tbaa !21
  %i.aui = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.auj = load i8, ptr %i.aud, align 1, !tbaa !21
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.aul = load i8, ptr %i.auf, align 1, !tbaa !21
  %i.aum = xor i8 %i.aul, %i.auj
  store i8 %i.aum, ptr %i.auf, align 1, !tbaa !21
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 117
  %i.auo = load i8, ptr %i.aui, align 4, !tbaa !21
  %i.aup = getelementptr inbounds nuw i8, ptr %0, i64 245 ; 2 uses
  %i.auq = load i8, ptr %i.auk, align 4, !tbaa !21
  %i.aur = xor i8 %i.auq, %i.auo
  store i8 %i.aur, ptr %i.auk, align 4, !tbaa !21
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.aut = load i8, ptr %i.aun, align 1, !tbaa !21
  %i.auu = getelementptr inbounds nuw i8, ptr %0, i64 246 ; 2 uses
  %i.auv = load i8, ptr %i.aup, align 1, !tbaa !21
  %i.auw = xor i8 %i.auv, %i.aut
  store i8 %i.auw, ptr %i.aup, align 1, !tbaa !21
  %i.aux = getelementptr inbounds nuw i8, ptr %0, i64 119
  %i.auy = load i8, ptr %i.aus, align 2, !tbaa !21
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 247 ; 2 uses
  %i.ava = load i8, ptr %i.auu, align 2, !tbaa !21
  %i.avb = xor i8 %i.ava, %i.auy
  store i8 %i.avb, ptr %i.auu, align 2, !tbaa !21
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.avd = load i8, ptr %i.aux, align 1, !tbaa !21
  %i.ave = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.avf = load i8, ptr %i.auz, align 1, !tbaa !21
  %i.avg = xor i8 %i.avf, %i.avd
  store i8 %i.avg, ptr %i.auz, align 1, !tbaa !21
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.avi = load i8, ptr %i.avc, align 8, !tbaa !21
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 2 uses
  %i.avk = load i8, ptr %i.ave, align 8, !tbaa !21
  %i.avl = xor i8 %i.avk, %i.avi
  store i8 %i.avl, ptr %i.ave, align 8, !tbaa !21
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.avn = load i8, ptr %i.avh, align 1, !tbaa !21
  %i.avo = getelementptr inbounds nuw i8, ptr %0, i64 250 ; 2 uses
  %i.avp = load i8, ptr %i.avj, align 1, !tbaa !21
  %i.avq = xor i8 %i.avp, %i.avn
  store i8 %i.avq, ptr %i.avj, align 1, !tbaa !21
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.avs = load i8, ptr %i.avm, align 2, !tbaa !21
  %i.avt = getelementptr inbounds nuw i8, ptr %0, i64 251 ; 2 uses
  %i.avu = load i8, ptr %i.avo, align 2, !tbaa !21
  %i.avv = xor i8 %i.avu, %i.avs
  store i8 %i.avv, ptr %i.avo, align 2, !tbaa !21
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.avx = load i8, ptr %i.avr, align 1, !tbaa !21
  %i.avy = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.avz = load i8, ptr %i.avt, align 1, !tbaa !21
  %i.awa = xor i8 %i.avz, %i.avx
  store i8 %i.awa, ptr %i.avt, align 1, !tbaa !21
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.awc = load i8, ptr %i.avw, align 4, !tbaa !21
  %i.awd = getelementptr inbounds nuw i8, ptr %0, i64 253 ; 2 uses
  %i.awe = load i8, ptr %i.avy, align 4, !tbaa !21
  %i.awf = xor i8 %i.awe, %i.awc
  store i8 %i.awf, ptr %i.avy, align 4, !tbaa !21
  %i.awg = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.awh = load i8, ptr %i.awb, align 1, !tbaa !21
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 254 ; 2 uses
  %i.awj = load i8, ptr %i.awd, align 1, !tbaa !21
  %i.awk = xor i8 %i.awj, %i.awh
  store i8 %i.awk, ptr %i.awd, align 1, !tbaa !21
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.awm = load i8, ptr %i.awg, align 2, !tbaa !21
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 255 ; 2 uses
  %i.awo = load i8, ptr %i.awi, align 2, !tbaa !21
  %i.awp = xor i8 %i.awo, %i.awm
  store i8 %i.awp, ptr %i.awi, align 2, !tbaa !21
  %i.awq = load i8, ptr %i.awl, align 1, !tbaa !21
  %i.awr = load i8, ptr %i.awn, align 1, !tbaa !21
  %i.aws = xor i8 %i.awr, %i.awq
  store i8 %i.aws, ptr %i.awn, align 1, !tbaa !21
  br label %xorbuf.exit351

xorbuf.exit351:                                   ; preds = %.lr.ph.i32.i342, %vector.body1489, %.lr.ph56.i325, %middle.block1470, %.lr.ph.i.i349.preheader
  %i.awt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.awt, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.awu = ptrtoint ptr %i.awt to i64             ; 2 uses
  %i.awv = or i64 %i.qs, %i.awu
  %i.aww = and i64 %i.awv, 7
  %or.cond.i352 = icmp eq i64 %i.aww, 0
  br i1 %or.cond.i352, label %.lr.ph.i.i381.preheader, label %bb.l

.lr.ph.i.i381.preheader:                          ; preds = %xorbuf.exit351
  %i.awx = load <2 x i64>, ptr %.ptr475, align 16, !tbaa !20
  %i.awy = load <2 x i64>, ptr %i.awt, align 16, !tbaa !20
  %i.awz = xor <2 x i64> %i.awy, %i.awx
  store <2 x i64> %i.awz, ptr %i.awt, align 16, !tbaa !20
  br label %xorbuf.exit383.preheader

bb.l:                                             ; preds = %xorbuf.exit351
  %i.axa = xor i64 %i.qs, %i.awu
  %i.axb = and i64 %i.axa, 7
  %i.axc = icmp eq i64 %i.axb, 0
  br i1 %i.axc, label %._crit_edge.i368.thread, label %vector.memcheck1552

._crit_edge.i368.thread:                          ; preds = %bb.l
  %i.axd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.0.lcssa.i3717271523.a = ptrtoaddr ptr %i.axd to i64
  %i.axe = ptrtoaddr ptr %.ptr475 to i64          ; 2 uses
  %i.axf = add nuw i64 %i.axe, 8
  %i.axg = tail call i64 @llvm.umax.i64(i64 %.0.lcssa.i3717271523.a, i64 %i.axf)
  %i.axh = xor i64 %i.axe, -1
  %i.axi = add i64 %i.axg, %i.axh                 ; 3 uses
  %i.axj = lshr i64 %i.axi, 3
  %i.axk = add nuw nsw i64 %i.axj, 1              ; 2 uses
  %min.iters.check1525 = icmp ult i64 %i.axi, 136
  br i1 %min.iters.check1525, label %.lr.ph.i32.i374.preheader, label %vector.memcheck1526

vector.memcheck1526:                              ; preds = %._crit_edge.i368.thread
  %i.axl = and i64 %i.axi, -8
  %i.axm = add i64 %i.axl, 8                      ; 2 uses
  %i.axn = getelementptr i8, ptr %i.awt, i64 %i.axm
  %i.axo = getelementptr i8, ptr %.ptr475, i64 %i.axm
  %bound01527 = icmp ult ptr %i.awt, %i.axo
  %bound11528 = icmp ult ptr %.ptr475, %i.axn
  %found.conflict1529 = and i1 %bound01527, %bound11528
  br i1 %found.conflict1529, label %.lr.ph.i32.i374.preheader, label %vector.ph1530

vector.ph1530:                                    ; preds = %vector.memcheck1526
  %n.vec1531 = and i64 %i.axk, 4611686018427387900 ; 3 uses
  %i.axp = shl i64 %n.vec1531, 3                  ; 2 uses
  %i.axq = getelementptr i8, ptr %i.awt, i64 %i.axp
  %i.axr = getelementptr i8, ptr %.ptr475, i64 %i.axp
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1530
  %index1533 = phi i64 [ 0, %vector.ph1530 ], [ %index.next1540, %vector.body1532 ] ; 2 uses
  %i.axs = shl i64 %index1533, 3                  ; 2 uses
  %next.gep1534 = getelementptr i8, ptr %i.awt, i64 %i.axs ; 3 uses
  %next.gep1535 = getelementptr i8, ptr %.ptr475, i64 %i.axs ; 2 uses
  %i.axt = getelementptr i8, ptr %next.gep1535, i64 16
  %wide.load1536 = load <2 x i64>, ptr %next.gep1535, align 8, !tbaa !20, !alias.scope !193
  %wide.load1537 = load <2 x i64>, ptr %i.axt, align 8, !tbaa !20, !alias.scope !193
  %i.axu = getelementptr i8, ptr %next.gep1534, i64 16 ; 2 uses
  %wide.load1538 = load <2 x i64>, ptr %next.gep1534, align 8, !tbaa !20, !alias.scope !194, !noalias !193
  %wide.load1539 = load <2 x i64>, ptr %i.axu, align 8, !tbaa !20, !alias.scope !194, !noalias !193
  %i.axv = xor <2 x i64> %wide.load1538, %wide.load1536
  %i.axw = xor <2 x i64> %wide.load1539, %wide.load1537
  store <2 x i64> %i.axv, ptr %next.gep1534, align 8, !tbaa !20, !alias.scope !194, !noalias !193
  store <2 x i64> %i.axw, ptr %i.axu, align 8, !tbaa !20, !alias.scope !194, !noalias !193
  %index.next1540 = add nuw i64 %index1533, 4     ; 2 uses
  %i.axx = icmp eq i64 %index.next1540, %n.vec1531
  br i1 %i.axx, label %middle.block1541, label %vector.body1532, !llvm.loop !147

middle.block1541:                                 ; preds = %vector.body1532
  %cmp.n1542 = icmp eq i64 %i.axk, %n.vec1531
  br i1 %cmp.n1542, label %xorbuf.exit383.preheader, label %.lr.ph.i32.i374.preheader

.lr.ph.i32.i374.preheader:                        ; preds = %vector.memcheck1526, %._crit_edge.i368.thread, %middle.block1541
  %.sroa.039.2.i375.ph = phi ptr [ %i.awt, %vector.memcheck1526 ], [ %i.awt, %._crit_edge.i368.thread ], [ %i.axq, %middle.block1541 ]
  %.ph = phi ptr [ %.ptr475, %vector.memcheck1526 ], [ %.ptr475, %._crit_edge.i368.thread ], [ %i.axr, %middle.block1541 ]
  br label %.lr.ph.i32.i374

.lr.ph.i32.i374:                                  ; preds = %.lr.ph.i32.i374.preheader, %.lr.ph.i32.i374
  %.sroa.039.2.i375 = phi ptr [ %i.ayb, %.lr.ph.i32.i374 ], [ %.sroa.039.2.i375.ph, %.lr.ph.i32.i374.preheader ] ; 3 uses
  %i.axy = phi ptr [ %i.axz, %.lr.ph.i32.i374 ], [ %.ph, %.lr.ph.i32.i374.preheader ] ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 8 ; 2 uses
  %i.aya = load i64, ptr %i.axy, align 8, !tbaa !20
  %i.ayb = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i375, i64 8
  %i.ayc = load i64, ptr %.sroa.039.2.i375, align 8, !tbaa !20
  %i.ayd = xor i64 %i.ayc, %i.aya
  store i64 %i.ayd, ptr %.sroa.039.2.i375, align 8, !tbaa !20
  %i.aye = icmp ult ptr %i.axz, %i.axd
  br i1 %i.aye, label %.lr.ph.i32.i374, label %xorbuf.exit383.preheader, !llvm.loop !148

vector.memcheck1552:                              ; preds = %bb.l
  %i.ayf = getelementptr i8, ptr %0, i64 272
  %i.ayg = getelementptr i8, ptr %0, i64 144
  %bound01553 = icmp ult ptr %i.awt, %i.ayg
  %bound11554 = icmp ult ptr %.ptr475, %i.ayf
  %found.conflict1555 = and i1 %bound01553, %bound11554
  br i1 %found.conflict1555, label %.lr.ph56.i357, label %vector.body1560

vector.body1560:                                  ; preds = %vector.memcheck1552
  %wide.load1564 = load <16 x i8>, ptr %.ptr475, align 16, !tbaa !21, !alias.scope !195
  %wide.load1565 = load <16 x i8>, ptr %i.awt, align 16, !tbaa !21, !alias.scope !196, !noalias !195
  %i.ayh = xor <16 x i8> %wide.load1565, %wide.load1564
  store <16 x i8> %i.ayh, ptr %i.awt, align 16, !tbaa !21, !alias.scope !196, !noalias !195
  br label %xorbuf.exit383.preheader

.lr.ph56.i357:                                    ; preds = %vector.memcheck1552
  %i.ayi = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.ayj = load i8, ptr %.ptr475, align 16, !tbaa !21
  %i.ayk = getelementptr inbounds nuw i8, ptr %0, i64 257 ; 2 uses
  %i.ayl = load i8, ptr %i.awt, align 16, !tbaa !21
  %i.aym = xor i8 %i.ayl, %i.ayj
  store i8 %i.aym, ptr %i.awt, align 16, !tbaa !21
  %i.ayn = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ayo = load i8, ptr %i.ayi, align 1, !tbaa !21
  %i.ayp = getelementptr inbounds nuw i8, ptr %0, i64 258 ; 2 uses
  %i.ayq = load i8, ptr %i.ayk, align 1, !tbaa !21
  %i.ayr = xor i8 %i.ayq, %i.ayo
  store i8 %i.ayr, ptr %i.ayk, align 1, !tbaa !21
  %i.ays = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.ayt = load i8, ptr %i.ayn, align 2, !tbaa !21
  %i.ayu = getelementptr inbounds nuw i8, ptr %0, i64 259 ; 2 uses
  %i.ayv = load i8, ptr %i.ayp, align 2, !tbaa !21
  %i.ayw = xor i8 %i.ayv, %i.ayt
  store i8 %i.ayw, ptr %i.ayp, align 2, !tbaa !21
  %i.ayx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ayy = load i8, ptr %i.ays, align 1, !tbaa !21
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.aza = load i8, ptr %i.ayu, align 1, !tbaa !21
  %i.azb = xor i8 %i.aza, %i.ayy
  store i8 %i.azb, ptr %i.ayu, align 1, !tbaa !21
  %i.azc = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.azd = load i8, ptr %i.ayx, align 4, !tbaa !21
  %i.aze = getelementptr inbounds nuw i8, ptr %0, i64 261 ; 2 uses
  %i.azf = load i8, ptr %i.ayz, align 4, !tbaa !21
  %i.azg = xor i8 %i.azf, %i.azd
  store i8 %i.azg, ptr %i.ayz, align 4, !tbaa !21
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.azi = load i8, ptr %i.azc, align 1, !tbaa !21
  %i.azj = getelementptr inbounds nuw i8, ptr %0, i64 262 ; 2 uses
  %i.azk = load i8, ptr %i.aze, align 1, !tbaa !21
  %i.azl = xor i8 %i.azk, %i.azi
  store i8 %i.azl, ptr %i.aze, align 1, !tbaa !21
  %i.azm = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.azn = load i8, ptr %i.azh, align 2, !tbaa !21
  %i.azo = getelementptr inbounds nuw i8, ptr %0, i64 263 ; 2 uses
  %i.azp = load i8, ptr %i.azj, align 2, !tbaa !21
  %i.azq = xor i8 %i.azp, %i.azn
  store i8 %i.azq, ptr %i.azj, align 2, !tbaa !21
  %i.azr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.azs = load i8, ptr %i.azm, align 1, !tbaa !21
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.azu = load i8, ptr %i.azo, align 1, !tbaa !21
  %i.azv = xor i8 %i.azu, %i.azs
  store i8 %i.azv, ptr %i.azo, align 1, !tbaa !21
  %i.azw = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.azx = load i8, ptr %i.azr, align 8, !tbaa !21
  %i.azy = getelementptr inbounds nuw i8, ptr %0, i64 265 ; 2 uses
  %i.azz = load i8, ptr %i.azt, align 8, !tbaa !21
  %i.baa = xor i8 %i.azz, %i.azx
  store i8 %i.baa, ptr %i.azt, align 8, !tbaa !21
  %i.bab = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.bac = load i8, ptr %i.azw, align 1, !tbaa !21
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 266 ; 2 uses
  %i.bae = load i8, ptr %i.azy, align 1, !tbaa !21
  %i.baf = xor i8 %i.bae, %i.bac
  store i8 %i.baf, ptr %i.azy, align 1, !tbaa !21
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.bah = load i8, ptr %i.bab, align 2, !tbaa !21
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 267 ; 2 uses
  %i.baj = load i8, ptr %i.bad, align 2, !tbaa !21
  %i.bak = xor i8 %i.baj, %i.bah
  store i8 %i.bak, ptr %i.bad, align 2, !tbaa !21
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bam = load i8, ptr %i.bag, align 1, !tbaa !21
  %i.ban = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.bao = load i8, ptr %i.bai, align 1, !tbaa !21
  %i.bap = xor i8 %i.bao, %i.bam
  store i8 %i.bap, ptr %i.bai, align 1, !tbaa !21
  %i.baq = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.bar = load i8, ptr %i.bal, align 4, !tbaa !21
  %i.bas = getelementptr inbounds nuw i8, ptr %0, i64 269 ; 2 uses
  %i.bat = load i8, ptr %i.ban, align 4, !tbaa !21
  %i.bau = xor i8 %i.bat, %i.bar
  store i8 %i.bau, ptr %i.ban, align 4, !tbaa !21
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.baw = load i8, ptr %i.baq, align 1, !tbaa !21
  %i.bax = getelementptr inbounds nuw i8, ptr %0, i64 270 ; 2 uses
  %i.bay = load i8, ptr %i.bas, align 1, !tbaa !21
  %i.baz = xor i8 %i.bay, %i.baw
  store i8 %i.baz, ptr %i.bas, align 1, !tbaa !21
  %i.bba = getelementptr inbounds nuw i8, ptr %0, i64 143
  %i.bbb = load i8, ptr %i.bav, align 2, !tbaa !21
  %i.bbc = getelementptr inbounds nuw i8, ptr %0, i64 271 ; 2 uses
  %i.bbd = load i8, ptr %i.bax, align 2, !tbaa !21
  %i.bbe = xor i8 %i.bbd, %i.bbb
  store i8 %i.bbe, ptr %i.bax, align 2, !tbaa !21
  %i.bbf = load i8, ptr %i.bba, align 1, !tbaa !21
  %i.bbg = load i8, ptr %i.bbc, align 1, !tbaa !21
  %i.bbh = xor i8 %i.bbg, %i.bbf
  store i8 %i.bbh, ptr %i.bbc, align 1, !tbaa !21
  br label %xorbuf.exit383.preheader

xorbuf.exit383.preheader:                         ; preds = %.lr.ph.i32.i374, %vector.body1560, %.lr.ph56.i357, %middle.block1541, %.lr.ph.i.i381.preheader
  br label %xorbuf.exit383

xorbuf.exit383:                                   ; preds = %xorbuf.exit383.preheader, %xorbuf.exit383
  %indvars.iv = phi i64 [ %indvars.iv.next, %xorbuf.exit383 ], [ 0, %xorbuf.exit383.preheader ] ; 2 uses
  %i.bbi = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 20 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 256
  %i.bbk = getelementptr i8, ptr %i.bbi, i64 15
  %i.bbl = getelementptr i8, ptr %i.bbi, i64 14
  %i.bbm = load i8, ptr %i.bbl, align 1, !tbaa !21 ; 2 uses
  %i.bbn = load i8, ptr %i.bbk, align 1, !tbaa !21
  %i.bbo = tail call i8 @llvm.fshl.i8(i8 %i.bbm, i8 %i.bbn, i8 4)
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbi, i64 271
  store i8 %i.bbo, ptr %i.bbp, align 1, !tbaa !21
  %i.bbq = getelementptr i8, ptr %i.bbi, i64 13
  %i.bbr = load i8, ptr %i.bbq, align 1, !tbaa !21 ; 2 uses
  %i.bbs = tail call i8 @llvm.fshl.i8(i8 %i.bbr, i8 %i.bbm, i8 4)
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbi, i64 270
  store i8 %i.bbs, ptr %i.bbt, align 1, !tbaa !21
  %i.bbu = getelementptr i8, ptr %i.bbi, i64 12
  %i.bbv = load i8, ptr %i.bbu, align 1, !tbaa !21 ; 2 uses
  %i.bbw = tail call i8 @llvm.fshl.i8(i8 %i.bbv, i8 %i.bbr, i8 4)
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbi, i64 269
  store i8 %i.bbw, ptr %i.bbx, align 1, !tbaa !21
  %i.bby = getelementptr i8, ptr %i.bbi, i64 11
end_hunk_0
