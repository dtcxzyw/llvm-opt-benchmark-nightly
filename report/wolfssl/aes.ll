Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/aes?download=true
inline.NumInlined: 97
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 70
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
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph56.i, !llvm.loop !60

xorbuf.exit:                                      ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %vector.ph, %vec.epilog.middle.block, %.lr.ph.i.i.preheader, %XorWords.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr51, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.bhr = getelementptr inbounds nuw i8, ptr %.03058, i64 16
  %i.bhs = getelementptr inbounds nuw i8, ptr %.02961, i64 16
  %.not37 = icmp eq i32 %i.bq, 0
  br i1 %.not37, label %AesDecrypt_preFetchOpt.exit, label %bb.e, !llvm.loop !61

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
  br i1 %i.dj, label %._crit_edge.i.thread, label %vector.memcheck850

._crit_edge.i.thread:                             ; preds = %bb.b
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dl = ptrtoaddr ptr %i.dk to i64
  %i.dm = ptrtoaddr ptr %.ptr429.ptr.ptr to i64   ; 2 uses
  %i.dn = add nuw i64 %i.dm, 8
  %i.do = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.dn)
  %i.dp = xor i64 %i.dm, -1
  %i.dq = add i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dq, 136
  br i1 %min.iters.check, label %.lr.ph.i32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge.i.thread
  %i.dt = and i64 %i.dq, -8
  %i.du = add i64 %i.dt, 8                        ; 2 uses
  %i.dv = getelementptr i8, ptr %.ptr443.ptr, i64 %i.du
  %i.dw = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.du
  %bound0 = icmp ult ptr %.ptr443.ptr, %i.dw
  %bound1 = icmp ult ptr %.ptr429.ptr.ptr, %i.dv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ds, 4611686018427387900     ; 3 uses
  %i.dx = shl i64 %n.vec, 3                       ; 2 uses
  %i.dy = getelementptr i8, ptr %.ptr443.ptr, i64 %i.dx
  %i.dz = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.ptr443.ptr, i64 %i.ea ; 3 uses
  %next.gep838 = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep838, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep838, align 8, !tbaa !20, !alias.scope !155
  %wide.load839 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !20, !alias.scope !155
  %i.ec = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load840 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !20, !alias.scope !156, !noalias !155
  %wide.load841 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !20, !alias.scope !156, !noalias !155
  %i.ed = xor <2 x i64> %wide.load840, %wide.load
  %i.ee = xor <2 x i64> %wide.load841, %wide.load839
  store <2 x i64> %i.ed, ptr %next.gep, align 8, !tbaa !20, !alias.scope !156, !noalias !155
  store <2 x i64> %i.ee, ptr %i.ec, align 8, !tbaa !20, !alias.scope !156, !noalias !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %xorbuf.exit, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %vector.memcheck, %._crit_edge.i.thread, %middle.block
  %.sroa.039.2.i.ph = phi ptr [ %.ptr443.ptr, %vector.memcheck ], [ %.ptr443.ptr, %._crit_edge.i.thread ], [ %i.dy, %middle.block ]
  %.ph1639 = phi ptr [ %.ptr429.ptr.ptr, %vector.memcheck ], [ %.ptr429.ptr.ptr, %._crit_edge.i.thread ], [ %i.dz, %middle.block ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.ej, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.eg = phi ptr [ %i.eh, %.lr.ph.i32.i ], [ %.ph1639, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8
  %i.ek = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.el = xor i64 %i.ek, %i.ei
  store i64 %i.el, ptr %.sroa.039.2.i, align 8, !tbaa !20
  %i.em = icmp ult ptr %i.eh, %i.dk
  br i1 %i.em, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !70

vector.memcheck850:                               ; preds = %bb.b
  %i.en = getelementptr i8, ptr %0, i64 80
  %i.eo = getelementptr i8, ptr %0, i64 48
  %bound0851 = icmp ult ptr %.ptr443.ptr, %i.eo
  %bound1852 = icmp ult ptr %.ptr429.ptr.ptr, %i.en
  %found.conflict853 = and i1 %bound0851, %bound1852
  br i1 %found.conflict853, label %.lr.ph56.i, label %vector.body857

vector.body857:                                   ; preds = %vector.memcheck850
  %wide.load861 = load <16 x i8>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21, !alias.scope !157
  %wide.load862 = load <16 x i8>, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !158, !noalias !157
  %i.ep = xor <16 x i8> %wide.load862, %wide.load861
  store <16 x i8> %i.ep, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !158, !noalias !157
  br label %xorbuf.exit

.lr.ph56.i:                                       ; preds = %vector.memcheck850
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.er = load i8, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.et = load i8, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.eu = xor i8 %i.et, %i.er
  store i8 %i.eu, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.ey = load i8, ptr %i.es, align 1, !tbaa !21
  %i.ez = xor i8 %i.ey, %i.ew
  store i8 %i.ez, ptr %i.es, align 1, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.fb = load i8, ptr %i.ev, align 2, !tbaa !21
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 67 ; 2 uses
  %i.fd = load i8, ptr %i.ex, align 2, !tbaa !21
  %i.fe = xor i8 %i.fd, %i.fb
  store i8 %i.fe, ptr %i.ex, align 2, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fg = load i8, ptr %i.fa, align 1, !tbaa !21
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.fi = load i8, ptr %i.fc, align 1, !tbaa !21
  %i.fj = xor i8 %i.fi, %i.fg
  store i8 %i.fj, ptr %i.fc, align 1, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.fl = load i8, ptr %i.ff, align 4, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 69 ; 2 uses
  %i.fn = load i8, ptr %i.fh, align 4, !tbaa !21
  %i.fo = xor i8 %i.fn, %i.fl
  store i8 %i.fo, ptr %i.fh, align 4, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.fq = load i8, ptr %i.fk, align 1, !tbaa !21
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  %i.fs = load i8, ptr %i.fm, align 1, !tbaa !21
  %i.ft = xor i8 %i.fs, %i.fq
  store i8 %i.ft, ptr %i.fm, align 1, !tbaa !21
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.fv = load i8, ptr %i.fp, align 2, !tbaa !21
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 71 ; 2 uses
  %i.fx = load i8, ptr %i.fr, align 2, !tbaa !21
  %i.fy = xor i8 %i.fx, %i.fv
  store i8 %i.fy, ptr %i.fr, align 2, !tbaa !21
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ga = load i8, ptr %i.fu, align 1, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gc = load i8, ptr %i.fw, align 1, !tbaa !21
  %i.gd = xor i8 %i.gc, %i.ga
  store i8 %i.gd, ptr %i.fw, align 1, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.gf = load i8, ptr %i.fz, align 8, !tbaa !21
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.gh = load i8, ptr %i.gb, align 8, !tbaa !21
  %i.gi = xor i8 %i.gh, %i.gf
  store i8 %i.gi, ptr %i.gb, align 8, !tbaa !21
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.gk = load i8, ptr %i.ge, align 1, !tbaa !21
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.gm = load i8, ptr %i.gg, align 1, !tbaa !21
  %i.gn = xor i8 %i.gm, %i.gk
  store i8 %i.gn, ptr %i.gg, align 1, !tbaa !21
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.gp = load i8, ptr %i.gj, align 2, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 75 ; 2 uses
  %i.gr = load i8, ptr %i.gl, align 2, !tbaa !21
  %i.gs = xor i8 %i.gr, %i.gp
  store i8 %i.gs, ptr %i.gl, align 2, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gu = load i8, ptr %i.go, align 1, !tbaa !21
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.gw = load i8, ptr %i.gq, align 1, !tbaa !21
  %i.gx = xor i8 %i.gw, %i.gu
  store i8 %i.gx, ptr %i.gq, align 1, !tbaa !21
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.gz = load i8, ptr %i.gt, align 4, !tbaa !21
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.hb = load i8, ptr %i.gv, align 4, !tbaa !21
  %i.hc = xor i8 %i.hb, %i.gz
  store i8 %i.hc, ptr %i.gv, align 4, !tbaa !21
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.he = load i8, ptr %i.gy, align 1, !tbaa !21
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.hg = load i8, ptr %i.ha, align 1, !tbaa !21
  %i.hh = xor i8 %i.hg, %i.he
  store i8 %i.hh, ptr %i.ha, align 1, !tbaa !21
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.hj = load i8, ptr %i.hd, align 2, !tbaa !21
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 79 ; 2 uses
  %i.hl = load i8, ptr %i.hf, align 2, !tbaa !21
  %i.hm = xor i8 %i.hl, %i.hj
  store i8 %i.hm, ptr %i.hf, align 2, !tbaa !21
  %i.hn = load i8, ptr %i.hi, align 1, !tbaa !21
  %i.ho = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.hp = xor i8 %i.ho, %i.hn
  store i8 %i.hp, ptr %i.hk, align 1, !tbaa !21
  br label %xorbuf.exit

xorbuf.exit:                                      ; preds = %.lr.ph.i32.i, %vector.body857, %.lr.ph56.i, %middle.block, %.lr.ph.i.i.preheader
  %.ptr465 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 26 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr465, ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, i64 16, i1 false)
  %i.hq = ptrtoint ptr %.ptr465 to i64            ; 4 uses
  %i.hr = or i64 %i.db, %i.hq
  %i.hs = and i64 %i.hr, 7
  %or.cond.i64 = icmp eq i64 %i.hs, 0
  br i1 %or.cond.i64, label %.lr.ph.i.i93.preheader, label %bb.c

.lr.ph.i.i93.preheader:                           ; preds = %xorbuf.exit
  %i.ht = load <2 x i64>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !20
  %i.hu = load <2 x i64>, ptr %.ptr465, align 16, !tbaa !20
  %i.hv = xor <2 x i64> %i.hu, %i.ht
  store <2 x i64> %i.hv, ptr %.ptr465, align 16, !tbaa !20
  br label %xorbuf.exit95

bb.c:                                             ; preds = %xorbuf.exit
  %i.hw = xor i64 %i.db, %i.hq
  %i.hx = and i64 %i.hw, 7
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %._crit_edge.i80.thread, label %vector.memcheck914

._crit_edge.i80.thread:                           ; preds = %bb.c
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ia = ptrtoaddr ptr %i.hz to i64
  %i.ib = ptrtoaddr ptr %.ptr429.ptr.ptr to i64   ; 2 uses
  %i.ic = add nuw i64 %i.ib, 8
  %i.id = tail call i64 @llvm.umax.i64(i64 %i.ia, i64 %i.ic)
  %i.ie = xor i64 %i.ib, -1
  %i.if = add i64 %i.id, %i.ie                    ; 3 uses
  %i.ig = lshr i64 %i.if, 3
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check887 = icmp ult i64 %i.if, 136
  br i1 %min.iters.check887, label %.lr.ph.i32.i86.preheader, label %vector.memcheck888

vector.memcheck888:                               ; preds = %._crit_edge.i80.thread
  %i.ii = and i64 %i.if, -8
  %i.ij = add i64 %i.ii, 8                        ; 2 uses
  %i.ik = getelementptr i8, ptr %.ptr465, i64 %i.ij
  %i.il = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.ij
  %bound0889 = icmp ult ptr %.ptr465, %i.il
  %bound1890 = icmp ult ptr %.ptr429.ptr.ptr, %i.ik
  %found.conflict891 = and i1 %bound0889, %bound1890
  br i1 %found.conflict891, label %.lr.ph.i32.i86.preheader, label %vector.ph892

vector.ph892:                                     ; preds = %vector.memcheck888
  %n.vec893 = and i64 %i.ih, 4611686018427387900  ; 3 uses
  %i.im = shl i64 %n.vec893, 3                    ; 2 uses
  %i.in = getelementptr i8, ptr %.ptr465, i64 %i.im
  %i.io = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.im
  br label %vector.body894

vector.body894:                                   ; preds = %vector.body894, %vector.ph892
  %index895 = phi i64 [ 0, %vector.ph892 ], [ %index.next902, %vector.body894 ] ; 2 uses
  %i.ip = shl i64 %index895, 3                    ; 2 uses
  %next.gep896 = getelementptr i8, ptr %.ptr465, i64 %i.ip ; 3 uses
  %next.gep897 = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.ip ; 2 uses
  %i.iq = getelementptr i8, ptr %next.gep897, i64 16
  %wide.load898 = load <2 x i64>, ptr %next.gep897, align 8, !tbaa !20, !alias.scope !159
  %wide.load899 = load <2 x i64>, ptr %i.iq, align 8, !tbaa !20, !alias.scope !159
  %i.ir = getelementptr i8, ptr %next.gep896, i64 16 ; 2 uses
  %wide.load900 = load <2 x i64>, ptr %next.gep896, align 8, !tbaa !20, !alias.scope !160, !noalias !159
  %wide.load901 = load <2 x i64>, ptr %i.ir, align 8, !tbaa !20, !alias.scope !160, !noalias !159
  %i.is = xor <2 x i64> %wide.load900, %wide.load898
  %i.it = xor <2 x i64> %wide.load901, %wide.load899
  store <2 x i64> %i.is, ptr %next.gep896, align 8, !tbaa !20, !alias.scope !160, !noalias !159
  store <2 x i64> %i.it, ptr %i.ir, align 8, !tbaa !20, !alias.scope !160, !noalias !159
  %index.next902 = add nuw i64 %index895, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next902, %n.vec893
  br i1 %i.iu, label %middle.block903, label %vector.body894, !llvm.loop !77

middle.block903:                                  ; preds = %vector.body894
  %cmp.n904 = icmp eq i64 %i.ih, %n.vec893
  br i1 %cmp.n904, label %xorbuf.exit95, label %.lr.ph.i32.i86.preheader

.lr.ph.i32.i86.preheader:                         ; preds = %vector.memcheck888, %._crit_edge.i80.thread, %middle.block903
  %.sroa.039.2.i87.ph = phi ptr [ %.ptr465, %vector.memcheck888 ], [ %.ptr465, %._crit_edge.i80.thread ], [ %i.in, %middle.block903 ]
  %.ph1636 = phi ptr [ %.ptr429.ptr.ptr, %vector.memcheck888 ], [ %.ptr429.ptr.ptr, %._crit_edge.i80.thread ], [ %i.io, %middle.block903 ]
  br label %.lr.ph.i32.i86

.lr.ph.i32.i86:                                   ; preds = %.lr.ph.i32.i86.preheader, %.lr.ph.i32.i86
  %.sroa.039.2.i87 = phi ptr [ %i.iy, %.lr.ph.i32.i86 ], [ %.sroa.039.2.i87.ph, %.lr.ph.i32.i86.preheader ] ; 3 uses
  %i.iv = phi ptr [ %i.iw, %.lr.ph.i32.i86 ], [ %.ph1636, %.lr.ph.i32.i86.preheader ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !20
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i87, i64 8
  %i.iz = load i64, ptr %.sroa.039.2.i87, align 8, !tbaa !20
  %i.ja = xor i64 %i.iz, %i.ix
  store i64 %i.ja, ptr %.sroa.039.2.i87, align 8, !tbaa !20
  %i.jb = icmp ult ptr %i.iw, %i.hz
  br i1 %i.jb, label %.lr.ph.i32.i86, label %xorbuf.exit95, !llvm.loop !78

vector.memcheck914:                               ; preds = %bb.c
  %i.jc = getelementptr i8, ptr %0, i64 112
  %i.jd = getelementptr i8, ptr %0, i64 48
  %bound0915 = icmp ult ptr %.ptr465, %i.jd
  %bound1916 = icmp ult ptr %.ptr429.ptr.ptr, %i.jc
  %found.conflict917 = and i1 %bound0915, %bound1916
  br i1 %found.conflict917, label %.lr.ph56.i69, label %vector.body922

vector.body922:                                   ; preds = %vector.memcheck914
  %wide.load926 = load <16 x i8>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21, !alias.scope !161
  %wide.load927 = load <16 x i8>, ptr %.ptr465, align 16, !tbaa !21, !alias.scope !162, !noalias !161
  %i.je = xor <16 x i8> %wide.load927, %wide.load926
  store <16 x i8> %i.je, ptr %.ptr465, align 16, !tbaa !21, !alias.scope !162, !noalias !161
  br label %xorbuf.exit95

.lr.ph56.i69:                                     ; preds = %vector.memcheck914
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.jg = load i8, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 97 ; 2 uses
  %i.ji = load i8, ptr %.ptr465, align 16, !tbaa !21
  %i.jj = xor i8 %i.ji, %i.jg
  store i8 %i.jj, ptr %.ptr465, align 16, !tbaa !21
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.jl = load i8, ptr %i.jf, align 1, !tbaa !21
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 98 ; 2 uses
  %i.jn = load i8, ptr %i.jh, align 1, !tbaa !21
  %i.jo = xor i8 %i.jn, %i.jl
  store i8 %i.jo, ptr %i.jh, align 1, !tbaa !21
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.jq = load i8, ptr %i.jk, align 2, !tbaa !21
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 99 ; 2 uses
  %i.js = load i8, ptr %i.jm, align 2, !tbaa !21
  %i.jt = xor i8 %i.js, %i.jq
  store i8 %i.jt, ptr %i.jm, align 2, !tbaa !21
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.jv = load i8, ptr %i.jp, align 1, !tbaa !21
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.jx = load i8, ptr %i.jr, align 1, !tbaa !21
  %i.jy = xor i8 %i.jx, %i.jv
  store i8 %i.jy, ptr %i.jr, align 1, !tbaa !21
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ka = load i8, ptr %i.ju, align 4, !tbaa !21
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 2 uses
  %i.kc = load i8, ptr %i.jw, align 4, !tbaa !21
  %i.kd = xor i8 %i.kc, %i.ka
  store i8 %i.kd, ptr %i.jw, align 4, !tbaa !21
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.kf = load i8, ptr %i.jz, align 1, !tbaa !21
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 2 uses
  %i.kh = load i8, ptr %i.kb, align 1, !tbaa !21
  %i.ki = xor i8 %i.kh, %i.kf
  store i8 %i.ki, ptr %i.kb, align 1, !tbaa !21
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.kk = load i8, ptr %i.ke, align 2, !tbaa !21
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.km = load i8, ptr %i.kg, align 2, !tbaa !21
  %i.kn = xor i8 %i.km, %i.kk
  store i8 %i.kn, ptr %i.kg, align 2, !tbaa !21
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kp = load i8, ptr %i.kj, align 1, !tbaa !21
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.kr = load i8, ptr %i.kl, align 1, !tbaa !21
  %i.ks = xor i8 %i.kr, %i.kp
  store i8 %i.ks, ptr %i.kl, align 1, !tbaa !21
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ku = load i8, ptr %i.ko, align 8, !tbaa !21
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.kw = load i8, ptr %i.kq, align 8, !tbaa !21
  %i.kx = xor i8 %i.kw, %i.ku
  store i8 %i.kx, ptr %i.kq, align 8, !tbaa !21
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.kz = load i8, ptr %i.kt, align 1, !tbaa !21
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.lb = load i8, ptr %i.kv, align 1, !tbaa !21
  %i.lc = xor i8 %i.lb, %i.kz
  store i8 %i.lc, ptr %i.kv, align 1, !tbaa !21
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.le = load i8, ptr %i.ky, align 2, !tbaa !21
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 2 uses
  %i.lg = load i8, ptr %i.la, align 2, !tbaa !21
  %i.lh = xor i8 %i.lg, %i.le
  store i8 %i.lh, ptr %i.la, align 2, !tbaa !21
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.lj = load i8, ptr %i.ld, align 1, !tbaa !21
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ll = load i8, ptr %i.lf, align 1, !tbaa !21
  %i.lm = xor i8 %i.ll, %i.lj
  store i8 %i.lm, ptr %i.lf, align 1, !tbaa !21
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.lo = load i8, ptr %i.li, align 4, !tbaa !21
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 109 ; 2 uses
  %i.lq = load i8, ptr %i.lk, align 4, !tbaa !21
  %i.lr = xor i8 %i.lq, %i.lo
  store i8 %i.lr, ptr %i.lk, align 4, !tbaa !21
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.lt = load i8, ptr %i.ln, align 1, !tbaa !21
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 110 ; 2 uses
  %i.lv = load i8, ptr %i.lp, align 1, !tbaa !21
  %i.lw = xor i8 %i.lv, %i.lt
  store i8 %i.lw, ptr %i.lp, align 1, !tbaa !21
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.ly = load i8, ptr %i.ls, align 2, !tbaa !21
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.ma = load i8, ptr %i.lu, align 2, !tbaa !21
  %i.mb = xor i8 %i.ma, %i.ly
  store i8 %i.mb, ptr %i.lu, align 2, !tbaa !21
  %i.mc = load i8, ptr %i.lx, align 1, !tbaa !21
  %i.md = load i8, ptr %i.lz, align 1, !tbaa !21
  %i.me = xor i8 %i.md, %i.mc
  store i8 %i.me, ptr %i.lz, align 1, !tbaa !21
  br label %xorbuf.exit95

xorbuf.exit95:                                    ; preds = %.lr.ph.i32.i86, %vector.body922, %.lr.ph56.i69, %middle.block903, %.lr.ph.i.i93.preheader
  %.ptr470 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 26 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr470, ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, i64 16, i1 false)
  %i.mf = ptrtoint ptr %.ptr470 to i64            ; 4 uses
  %i.mg = ptrtoint ptr %.ptr438.ptr to i64        ; 4 uses
  %i.mh = or i64 %i.mg, %i.mf
  %i.mi = and i64 %i.mh, 7
  %or.cond.i96 = icmp eq i64 %i.mi, 0
  br i1 %or.cond.i96, label %.lr.ph.i.i125.preheader, label %bb.d

.lr.ph.i.i125.preheader:                          ; preds = %xorbuf.exit95
  %i.mj = load <2 x i64>, ptr %.ptr438.ptr, align 16, !tbaa !20
  %i.mk = load <2 x i64>, ptr %.ptr470, align 16, !tbaa !20
  %i.ml = xor <2 x i64> %i.mk, %i.mj
  store <2 x i64> %i.ml, ptr %.ptr470, align 16, !tbaa !20
  br label %xorbuf.exit127

bb.d:                                             ; preds = %xorbuf.exit95
  %i.mm = xor i64 %i.mg, %i.mf
  %i.mn = and i64 %i.mm, 7
  %i.mo = icmp eq i64 %i.mn, 0
  br i1 %i.mo, label %._crit_edge.i112.thread, label %vector.memcheck987

._crit_edge.i112.thread:                          ; preds = %bb.d
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.mq = ptrtoaddr ptr %i.mp to i64
  %i.mr = ptrtoaddr ptr %.ptr438.ptr to i64       ; 2 uses
  %i.ms = add nuw i64 %i.mr, 8
  %i.mt = tail call i64 @llvm.umax.i64(i64 %i.mq, i64 %i.ms)
  %i.mu = xor i64 %i.mr, -1
  %i.mv = add i64 %i.mt, %i.mu                    ; 3 uses
  %i.mw = lshr i64 %i.mv, 3
  %i.mx = add nuw nsw i64 %i.mw, 1                ; 2 uses
  %min.iters.check960 = icmp ult i64 %i.mv, 136
  br i1 %min.iters.check960, label %.lr.ph.i32.i118.preheader, label %vector.memcheck961

vector.memcheck961:                               ; preds = %._crit_edge.i112.thread
  %i.my = and i64 %i.mv, -8
  %i.mz = add i64 %i.my, 8                        ; 2 uses
  %i.na = getelementptr i8, ptr %.ptr470, i64 %i.mz
  %i.nb = getelementptr i8, ptr %.ptr438.ptr, i64 %i.mz
  %bound0962 = icmp ult ptr %.ptr470, %i.nb
  %bound1963 = icmp ult ptr %.ptr438.ptr, %i.na
  %found.conflict964 = and i1 %bound0962, %bound1963
  br i1 %found.conflict964, label %.lr.ph.i32.i118.preheader, label %vector.ph965

vector.ph965:                                     ; preds = %vector.memcheck961
  %n.vec966 = and i64 %i.mx, 4611686018427387900  ; 3 uses
  %i.nc = shl i64 %n.vec966, 3                    ; 2 uses
  %i.nd = getelementptr i8, ptr %.ptr470, i64 %i.nc
  %i.ne = getelementptr i8, ptr %.ptr438.ptr, i64 %i.nc
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %vector.ph965
  %index968 = phi i64 [ 0, %vector.ph965 ], [ %index.next975, %vector.body967 ] ; 2 uses
  %i.nf = shl i64 %index968, 3                    ; 2 uses
  %next.gep969 = getelementptr i8, ptr %.ptr470, i64 %i.nf ; 3 uses
  %next.gep970 = getelementptr i8, ptr %.ptr438.ptr, i64 %i.nf ; 2 uses
  %i.ng = getelementptr i8, ptr %next.gep970, i64 16
  %wide.load971 = load <2 x i64>, ptr %next.gep970, align 8, !tbaa !20, !alias.scope !163
  %wide.load972 = load <2 x i64>, ptr %i.ng, align 8, !tbaa !20, !alias.scope !163
  %i.nh = getelementptr i8, ptr %next.gep969, i64 16 ; 2 uses
  %wide.load973 = load <2 x i64>, ptr %next.gep969, align 8, !tbaa !20, !alias.scope !164, !noalias !163
  %wide.load974 = load <2 x i64>, ptr %i.nh, align 8, !tbaa !20, !alias.scope !164, !noalias !163
  %i.ni = xor <2 x i64> %wide.load973, %wide.load971
  %i.nj = xor <2 x i64> %wide.load974, %wide.load972
  store <2 x i64> %i.ni, ptr %next.gep969, align 8, !tbaa !20, !alias.scope !164, !noalias !163
  store <2 x i64> %i.nj, ptr %i.nh, align 8, !tbaa !20, !alias.scope !164, !noalias !163
  %index.next975 = add nuw i64 %index968, 4       ; 2 uses
  %i.nk = icmp eq i64 %index.next975, %n.vec966
  br i1 %i.nk, label %middle.block976, label %vector.body967, !llvm.loop !85

middle.block976:                                  ; preds = %vector.body967
  %cmp.n977 = icmp eq i64 %i.mx, %n.vec966
  br i1 %cmp.n977, label %xorbuf.exit127, label %.lr.ph.i32.i118.preheader

.lr.ph.i32.i118.preheader:                        ; preds = %vector.memcheck961, %._crit_edge.i112.thread, %middle.block976
  %.sroa.039.2.i119.ph = phi ptr [ %.ptr470, %vector.memcheck961 ], [ %.ptr470, %._crit_edge.i112.thread ], [ %i.nd, %middle.block976 ]
  %.ph1633 = phi ptr [ %.ptr438.ptr, %vector.memcheck961 ], [ %.ptr438.ptr, %._crit_edge.i112.thread ], [ %i.ne, %middle.block976 ]
  br label %.lr.ph.i32.i118

.lr.ph.i32.i118:                                  ; preds = %.lr.ph.i32.i118.preheader, %.lr.ph.i32.i118
  %.sroa.039.2.i119 = phi ptr [ %i.no, %.lr.ph.i32.i118 ], [ %.sroa.039.2.i119.ph, %.lr.ph.i32.i118.preheader ] ; 3 uses
  %i.nl = phi ptr [ %i.nm, %.lr.ph.i32.i118 ], [ %.ph1633, %.lr.ph.i32.i118.preheader ] ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8 ; 2 uses
  %i.nn = load i64, ptr %i.nl, align 8, !tbaa !20
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i119, i64 8
  %i.np = load i64, ptr %.sroa.039.2.i119, align 8, !tbaa !20
  %i.nq = xor i64 %i.np, %i.nn
  store i64 %i.nq, ptr %.sroa.039.2.i119, align 8, !tbaa !20
  %i.nr = icmp ult ptr %i.nm, %i.mp
  br i1 %i.nr, label %.lr.ph.i32.i118, label %xorbuf.exit127, !llvm.loop !86

vector.memcheck987:                               ; preds = %bb.d
  %i.ns = getelementptr i8, ptr %0, i64 128
  %i.nt = getelementptr i8, ptr %0, i64 64
  %bound0988 = icmp ult ptr %.ptr470, %i.nt
  %bound1989 = icmp ult ptr %.ptr438.ptr, %i.ns
  %found.conflict990 = and i1 %bound0988, %bound1989
  br i1 %found.conflict990, label %.lr.ph56.i101, label %vector.body995

vector.body995:                                   ; preds = %vector.memcheck987
  %wide.load999 = load <16 x i8>, ptr %.ptr438.ptr, align 16, !tbaa !21, !alias.scope !165
  %wide.load1000 = load <16 x i8>, ptr %.ptr470, align 16, !tbaa !21, !alias.scope !166, !noalias !165
  %i.nu = xor <16 x i8> %wide.load1000, %wide.load999
  store <16 x i8> %i.nu, ptr %.ptr470, align 16, !tbaa !21, !alias.scope !166, !noalias !165
  br label %xorbuf.exit127

.lr.ph56.i101:                                    ; preds = %vector.memcheck987
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.nw = load i8, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 2 uses
  %i.ny = load i8, ptr %.ptr470, align 16, !tbaa !21
  %i.nz = xor i8 %i.ny, %i.nw
  store i8 %i.nz, ptr %.ptr470, align 16, !tbaa !21
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.ob = load i8, ptr %i.nv, align 1, !tbaa !21
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 2 uses
  %i.od = load i8, ptr %i.nx, align 1, !tbaa !21
  %i.oe = xor i8 %i.od, %i.ob
  store i8 %i.oe, ptr %i.nx, align 1, !tbaa !21
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.og = load i8, ptr %i.oa, align 2, !tbaa !21
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 115 ; 2 uses
  %i.oi = load i8, ptr %i.oc, align 2, !tbaa !21
  %i.oj = xor i8 %i.oi, %i.og
  store i8 %i.oj, ptr %i.oc, align 2, !tbaa !21
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ol = load i8, ptr %i.of, align 1, !tbaa !21
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.on = load i8, ptr %i.oh, align 1, !tbaa !21
  %i.oo = xor i8 %i.on, %i.ol
  store i8 %i.oo, ptr %i.oh, align 1, !tbaa !21
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.oq = load i8, ptr %i.ok, align 4, !tbaa !21
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 117 ; 2 uses
  %i.os = load i8, ptr %i.om, align 4, !tbaa !21
  %i.ot = xor i8 %i.os, %i.oq
  store i8 %i.ot, ptr %i.om, align 4, !tbaa !21
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.ov = load i8, ptr %i.op, align 1, !tbaa !21
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 118 ; 2 uses
  %i.ox = load i8, ptr %i.or, align 1, !tbaa !21
  %i.oy = xor i8 %i.ox, %i.ov
  store i8 %i.oy, ptr %i.or, align 1, !tbaa !21
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.pa = load i8, ptr %i.ou, align 2, !tbaa !21
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 119 ; 2 uses
  %i.pc = load i8, ptr %i.ow, align 2, !tbaa !21
  %i.pd = xor i8 %i.pc, %i.pa
  store i8 %i.pd, ptr %i.ow, align 2, !tbaa !21
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pf = load i8, ptr %i.oz, align 1, !tbaa !21
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ph = load i8, ptr %i.pb, align 1, !tbaa !21
  %i.pi = xor i8 %i.ph, %i.pf
  store i8 %i.pi, ptr %i.pb, align 1, !tbaa !21
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.pk = load i8, ptr %i.pe, align 8, !tbaa !21
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.pm = load i8, ptr %i.pg, align 8, !tbaa !21
  %i.pn = xor i8 %i.pm, %i.pk
  store i8 %i.pn, ptr %i.pg, align 8, !tbaa !21
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.pp = load i8, ptr %i.pj, align 1, !tbaa !21
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.pr = load i8, ptr %i.pl, align 1, !tbaa !21
  %i.ps = xor i8 %i.pr, %i.pp
  store i8 %i.ps, ptr %i.pl, align 1, !tbaa !21
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.pu = load i8, ptr %i.po, align 2, !tbaa !21
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 123 ; 2 uses
  %i.pw = load i8, ptr %i.pq, align 2, !tbaa !21
  %i.px = xor i8 %i.pw, %i.pu
  store i8 %i.px, ptr %i.pq, align 2, !tbaa !21
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pz = load i8, ptr %i.pt, align 1, !tbaa !21
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.qb = load i8, ptr %i.pv, align 1, !tbaa !21
  %i.qc = xor i8 %i.qb, %i.pz
  store i8 %i.qc, ptr %i.pv, align 1, !tbaa !21
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.qe = load i8, ptr %i.py, align 4, !tbaa !21
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.qg = load i8, ptr %i.qa, align 4, !tbaa !21
  %i.qh = xor i8 %i.qg, %i.qe
  store i8 %i.qh, ptr %i.qa, align 4, !tbaa !21
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.qj = load i8, ptr %i.qd, align 1, !tbaa !21
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  %i.ql = load i8, ptr %i.qf, align 1, !tbaa !21
  %i.qm = xor i8 %i.ql, %i.qj
  store i8 %i.qm, ptr %i.qf, align 1, !tbaa !21
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.qo = load i8, ptr %i.qi, align 2, !tbaa !21
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 127 ; 2 uses
  %i.qq = load i8, ptr %i.qk, align 2, !tbaa !21
  %i.qr = xor i8 %i.qq, %i.qo
  store i8 %i.qr, ptr %i.qk, align 2, !tbaa !21
  %i.qs = load i8, ptr %i.qn, align 1, !tbaa !21
  %i.qt = load i8, ptr %i.qp, align 1, !tbaa !21
  %i.qu = xor i8 %i.qt, %i.qs
  store i8 %i.qu, ptr %i.qp, align 1, !tbaa !21
  br label %xorbuf.exit127

xorbuf.exit127:                                   ; preds = %.lr.ph.i32.i118, %vector.body995, %.lr.ph56.i101, %middle.block976, %.lr.ph.i.i125.preheader
  %.ptr475 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 26 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.ptr475, ptr noundef nonnull align 16 dereferenceable(16) %.ptr460, i64 16, i1 false)
  %i.qv = ptrtoint ptr %.ptr475 to i64            ; 4 uses
  %i.qw = or i64 %i.da, %i.qv
  %i.qx = and i64 %i.qw, 7
  %or.cond.i128 = icmp eq i64 %i.qx, 0
  br i1 %or.cond.i128, label %.lr.ph.i.i157.preheader, label %bb.e

.lr.ph.i.i157.preheader:                          ; preds = %xorbuf.exit127
  %i.qy = load <2 x i64>, ptr %.ptr443.ptr, align 16, !tbaa !20
  %i.qz = load <2 x i64>, ptr %.ptr475, align 16, !tbaa !20
  %i.ra = xor <2 x i64> %i.qz, %i.qy
  store <2 x i64> %i.ra, ptr %.ptr475, align 16, !tbaa !20
  br label %xorbuf.exit159

bb.e:                                             ; preds = %xorbuf.exit127
  %i.rb = xor i64 %i.da, %i.qv
  %i.rc = and i64 %i.rb, 7
  %i.rd = icmp eq i64 %i.rc, 0
  br i1 %i.rd, label %._crit_edge.i144.thread, label %vector.memcheck1060

._crit_edge.i144.thread:                          ; preds = %bb.e
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.rf = ptrtoaddr ptr %i.re to i64
  %i.rg = ptrtoaddr ptr %.ptr443.ptr to i64       ; 2 uses
  %i.rh = add nuw i64 %i.rg, 8
  %i.ri = tail call i64 @llvm.umax.i64(i64 %i.rf, i64 %i.rh)
  %i.rj = xor i64 %i.rg, -1
  %i.rk = add i64 %i.ri, %i.rj                    ; 3 uses
  %i.rl = lshr i64 %i.rk, 3
  %i.rm = add nuw nsw i64 %i.rl, 1                ; 2 uses
  %min.iters.check1033 = icmp ult i64 %i.rk, 136
  br i1 %min.iters.check1033, label %.lr.ph.i32.i150.preheader, label %vector.memcheck1034

vector.memcheck1034:                              ; preds = %._crit_edge.i144.thread
  %i.rn = and i64 %i.rk, -8
  %i.ro = add i64 %i.rn, 8                        ; 2 uses
  %i.rp = getelementptr i8, ptr %.ptr475, i64 %i.ro
  %i.rq = getelementptr i8, ptr %.ptr443.ptr, i64 %i.ro
  %bound01035 = icmp ult ptr %.ptr475, %i.rq
  %bound11036 = icmp ult ptr %.ptr443.ptr, %i.rp
  %found.conflict1037 = and i1 %bound01035, %bound11036
  br i1 %found.conflict1037, label %.lr.ph.i32.i150.preheader, label %vector.ph1038

vector.ph1038:                                    ; preds = %vector.memcheck1034
  %n.vec1039 = and i64 %i.rm, 4611686018427387900 ; 3 uses
  %i.rr = shl i64 %n.vec1039, 3                   ; 2 uses
  %i.rs = getelementptr i8, ptr %.ptr475, i64 %i.rr
  %i.rt = getelementptr i8, ptr %.ptr443.ptr, i64 %i.rr
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %vector.ph1038
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1048, %vector.body1040 ] ; 2 uses
  %i.ru = shl i64 %index1041, 3                   ; 2 uses
  %next.gep1042 = getelementptr i8, ptr %.ptr475, i64 %i.ru ; 3 uses
  %next.gep1043 = getelementptr i8, ptr %.ptr443.ptr, i64 %i.ru ; 2 uses
  %i.rv = getelementptr i8, ptr %next.gep1043, i64 16
  %wide.load1044 = load <2 x i64>, ptr %next.gep1043, align 8, !tbaa !20, !alias.scope !167
  %wide.load1045 = load <2 x i64>, ptr %i.rv, align 8, !tbaa !20, !alias.scope !167
  %i.rw = getelementptr i8, ptr %next.gep1042, i64 16 ; 2 uses
  %wide.load1046 = load <2 x i64>, ptr %next.gep1042, align 8, !tbaa !20, !alias.scope !168, !noalias !167
  %wide.load1047 = load <2 x i64>, ptr %i.rw, align 8, !tbaa !20, !alias.scope !168, !noalias !167
  %i.rx = xor <2 x i64> %wide.load1046, %wide.load1044
  %i.ry = xor <2 x i64> %wide.load1047, %wide.load1045
  store <2 x i64> %i.rx, ptr %next.gep1042, align 8, !tbaa !20, !alias.scope !168, !noalias !167
  store <2 x i64> %i.ry, ptr %i.rw, align 8, !tbaa !20, !alias.scope !168, !noalias !167
  %index.next1048 = add nuw i64 %index1041, 4     ; 2 uses
  %i.rz = icmp eq i64 %index.next1048, %n.vec1039
  br i1 %i.rz, label %middle.block1049, label %vector.body1040, !llvm.loop !93

middle.block1049:                                 ; preds = %vector.body1040
  %cmp.n1050 = icmp eq i64 %i.rm, %n.vec1039
  br i1 %cmp.n1050, label %xorbuf.exit159, label %.lr.ph.i32.i150.preheader

.lr.ph.i32.i150.preheader:                        ; preds = %vector.memcheck1034, %._crit_edge.i144.thread, %middle.block1049
  %.sroa.039.2.i151.ph = phi ptr [ %.ptr475, %vector.memcheck1034 ], [ %.ptr475, %._crit_edge.i144.thread ], [ %i.rs, %middle.block1049 ]
  %.ph1630 = phi ptr [ %.ptr443.ptr, %vector.memcheck1034 ], [ %.ptr443.ptr, %._crit_edge.i144.thread ], [ %i.rt, %middle.block1049 ]
  br label %.lr.ph.i32.i150

.lr.ph.i32.i150:                                  ; preds = %.lr.ph.i32.i150.preheader, %.lr.ph.i32.i150
  %.sroa.039.2.i151 = phi ptr [ %i.sd, %.lr.ph.i32.i150 ], [ %.sroa.039.2.i151.ph, %.lr.ph.i32.i150.preheader ] ; 3 uses
  %i.sa = phi ptr [ %i.sb, %.lr.ph.i32.i150 ], [ %.ph1630, %.lr.ph.i32.i150.preheader ] ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8 ; 2 uses
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !20
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i151, i64 8
  %i.se = load i64, ptr %.sroa.039.2.i151, align 8, !tbaa !20
  %i.sf = xor i64 %i.se, %i.sc
  store i64 %i.sf, ptr %.sroa.039.2.i151, align 8, !tbaa !20
  %i.sg = icmp ult ptr %i.sb, %i.re
  br i1 %i.sg, label %.lr.ph.i32.i150, label %xorbuf.exit159, !llvm.loop !94

vector.memcheck1060:                              ; preds = %bb.e
  %i.sh = getelementptr i8, ptr %0, i64 144
  %i.si = getelementptr i8, ptr %0, i64 80
  %bound01061 = icmp ult ptr %.ptr475, %i.si
  %bound11062 = icmp ult ptr %.ptr443.ptr, %i.sh
  %found.conflict1063 = and i1 %bound01061, %bound11062
  br i1 %found.conflict1063, label %.lr.ph56.i133, label %vector.body1068

vector.body1068:                                  ; preds = %vector.memcheck1060
  %wide.load1072 = load <16 x i8>, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !169
  %wide.load1073 = load <16 x i8>, ptr %.ptr475, align 16, !tbaa !21, !alias.scope !170, !noalias !169
  %i.sj = xor <16 x i8> %wide.load1073, %wide.load1072
  store <16 x i8> %i.sj, ptr %.ptr475, align 16, !tbaa !21, !alias.scope !170, !noalias !169
  br label %xorbuf.exit159

.lr.ph56.i133:                                    ; preds = %vector.memcheck1060
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.sl = load i8, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.sn = load i8, ptr %.ptr475, align 16, !tbaa !21
  %i.so = xor i8 %i.sn, %i.sl
  store i8 %i.so, ptr %.ptr475, align 16, !tbaa !21
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.sq = load i8, ptr %i.sk, align 1, !tbaa !21
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 2 uses
  %i.ss = load i8, ptr %i.sm, align 1, !tbaa !21
  %i.st = xor i8 %i.ss, %i.sq
  store i8 %i.st, ptr %i.sm, align 1, !tbaa !21
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.sv = load i8, ptr %i.sp, align 2, !tbaa !21
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 131 ; 2 uses
  %i.sx = load i8, ptr %i.sr, align 2, !tbaa !21
  %i.sy = xor i8 %i.sx, %i.sv
  store i8 %i.sy, ptr %i.sr, align 2, !tbaa !21
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ta = load i8, ptr %i.su, align 1, !tbaa !21
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.tc = load i8, ptr %i.sw, align 1, !tbaa !21
  %i.td = xor i8 %i.tc, %i.ta
  store i8 %i.td, ptr %i.sw, align 1, !tbaa !21
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.tf = load i8, ptr %i.sz, align 4, !tbaa !21
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 133 ; 2 uses
  %i.th = load i8, ptr %i.tb, align 4, !tbaa !21
  %i.ti = xor i8 %i.th, %i.tf
  store i8 %i.ti, ptr %i.tb, align 4, !tbaa !21
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.tk = load i8, ptr %i.te, align 1, !tbaa !21
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 2 uses
  %i.tm = load i8, ptr %i.tg, align 1, !tbaa !21
  %i.tn = xor i8 %i.tm, %i.tk
  store i8 %i.tn, ptr %i.tg, align 1, !tbaa !21
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 71
  %i.tp = load i8, ptr %i.tj, align 2, !tbaa !21
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 2 uses
  %i.tr = load i8, ptr %i.tl, align 2, !tbaa !21
  %i.ts = xor i8 %i.tr, %i.tp
  store i8 %i.ts, ptr %i.tl, align 2, !tbaa !21
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tu = load i8, ptr %i.to, align 1, !tbaa !21
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.tw = load i8, ptr %i.tq, align 1, !tbaa !21
  %i.tx = xor i8 %i.tw, %i.tu
  store i8 %i.tx, ptr %i.tq, align 1, !tbaa !21
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.tz = load i8, ptr %i.tt, align 8, !tbaa !21
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 2 uses
  %i.ub = load i8, ptr %i.tv, align 8, !tbaa !21
  %i.uc = xor i8 %i.ub, %i.tz
  store i8 %i.uc, ptr %i.tv, align 8, !tbaa !21
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ue = load i8, ptr %i.ty, align 1, !tbaa !21
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %i.ug = load i8, ptr %i.ua, align 1, !tbaa !21
  %i.uh = xor i8 %i.ug, %i.ue
  store i8 %i.uh, ptr %i.ua, align 1, !tbaa !21
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.uj = load i8, ptr %i.ud, align 2, !tbaa !21
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 2 uses
  %i.ul = load i8, ptr %i.uf, align 2, !tbaa !21
  %i.um = xor i8 %i.ul, %i.uj
  store i8 %i.um, ptr %i.uf, align 2, !tbaa !21
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.uo = load i8, ptr %i.ui, align 1, !tbaa !21
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.uq = load i8, ptr %i.uk, align 1, !tbaa !21
  %i.ur = xor i8 %i.uq, %i.uo
  store i8 %i.ur, ptr %i.uk, align 1, !tbaa !21
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.ut = load i8, ptr %i.un, align 4, !tbaa !21
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 141 ; 2 uses
  %i.uv = load i8, ptr %i.up, align 4, !tbaa !21
  %i.uw = xor i8 %i.uv, %i.ut
  store i8 %i.uw, ptr %i.up, align 4, !tbaa !21
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.uy = load i8, ptr %i.us, align 1, !tbaa !21
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 2 uses
  %i.va = load i8, ptr %i.uu, align 1, !tbaa !21
  %i.vb = xor i8 %i.va, %i.uy
  store i8 %i.vb, ptr %i.uu, align 1, !tbaa !21
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.vd = load i8, ptr %i.ux, align 2, !tbaa !21
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 143 ; 2 uses
  %i.vf = load i8, ptr %i.uz, align 2, !tbaa !21
  %i.vg = xor i8 %i.vf, %i.vd
  store i8 %i.vg, ptr %i.uz, align 2, !tbaa !21
  %i.vh = load i8, ptr %i.vc, align 1, !tbaa !21
  %i.vi = load i8, ptr %i.ve, align 1, !tbaa !21
  %i.vj = xor i8 %i.vi, %i.vh
  store i8 %i.vj, ptr %i.ve, align 1, !tbaa !21
  br label %xorbuf.exit159

xorbuf.exit159:                                   ; preds = %.lr.ph.i32.i150, %vector.body1068, %.lr.ph56.i133, %middle.block1049, %.lr.ph.i.i157.preheader
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vk, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.vl = ptrtoint ptr %i.vk to i64               ; 2 uses
  %i.vm = or i64 %i.db, %i.vl
  %i.vn = and i64 %i.vm, 7
  %or.cond.i160 = icmp eq i64 %i.vn, 0
  br i1 %or.cond.i160, label %.lr.ph.i.i189.preheader, label %bb.f

.lr.ph.i.i189.preheader:                          ; preds = %xorbuf.exit159
  %i.vo = load <2 x i64>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !20
  %i.vp = load <2 x i64>, ptr %i.vk, align 16, !tbaa !20
  %i.vq = xor <2 x i64> %i.vp, %i.vo
  store <2 x i64> %i.vq, ptr %i.vk, align 16, !tbaa !20
  br label %xorbuf.exit191

bb.f:                                             ; preds = %xorbuf.exit159
  %i.vr = xor i64 %i.db, %i.vl
  %i.vs = and i64 %i.vr, 7
  %i.vt = icmp eq i64 %i.vs, 0
  br i1 %i.vt, label %._crit_edge.i176.thread, label %vector.memcheck1133

._crit_edge.i176.thread:                          ; preds = %bb.f
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.vv = ptrtoaddr ptr %i.vu to i64
  %i.vw = ptrtoaddr ptr %.ptr429.ptr.ptr to i64   ; 2 uses
  %i.vx = add nuw i64 %i.vw, 8
  %i.vy = tail call i64 @llvm.umax.i64(i64 %i.vv, i64 %i.vx)
  %i.vz = xor i64 %i.vw, -1
  %i.wa = add i64 %i.vy, %i.vz                    ; 3 uses
  %i.wb = lshr i64 %i.wa, 3
  %i.wc = add nuw nsw i64 %i.wb, 1                ; 2 uses
  %min.iters.check1106 = icmp ult i64 %i.wa, 136
  br i1 %min.iters.check1106, label %.lr.ph.i32.i182.preheader, label %vector.memcheck1107

vector.memcheck1107:                              ; preds = %._crit_edge.i176.thread
  %i.wd = and i64 %i.wa, -8
  %i.we = add i64 %i.wd, 8                        ; 2 uses
  %i.wf = getelementptr i8, ptr %i.vk, i64 %i.we
  %i.wg = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.we
  %bound01108 = icmp ult ptr %i.vk, %i.wg
  %bound11109 = icmp ult ptr %.ptr429.ptr.ptr, %i.wf
  %found.conflict1110 = and i1 %bound01108, %bound11109
  br i1 %found.conflict1110, label %.lr.ph.i32.i182.preheader, label %vector.ph1111

vector.ph1111:                                    ; preds = %vector.memcheck1107
  %n.vec1112 = and i64 %i.wc, 4611686018427387900 ; 3 uses
  %i.wh = shl i64 %n.vec1112, 3                   ; 2 uses
  %i.wi = getelementptr i8, ptr %i.vk, i64 %i.wh
  %i.wj = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.wh
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %vector.ph1111
  %index1114 = phi i64 [ 0, %vector.ph1111 ], [ %index.next1121, %vector.body1113 ] ; 2 uses
  %i.wk = shl i64 %index1114, 3                   ; 2 uses
  %next.gep1115 = getelementptr i8, ptr %i.vk, i64 %i.wk ; 3 uses
  %next.gep1116 = getelementptr i8, ptr %.ptr429.ptr.ptr, i64 %i.wk ; 2 uses
  %i.wl = getelementptr i8, ptr %next.gep1116, i64 16
  %wide.load1117 = load <2 x i64>, ptr %next.gep1116, align 8, !tbaa !20, !alias.scope !171
  %wide.load1118 = load <2 x i64>, ptr %i.wl, align 8, !tbaa !20, !alias.scope !171
  %i.wm = getelementptr i8, ptr %next.gep1115, i64 16 ; 2 uses
  %wide.load1119 = load <2 x i64>, ptr %next.gep1115, align 8, !tbaa !20, !alias.scope !172, !noalias !171
  %wide.load1120 = load <2 x i64>, ptr %i.wm, align 8, !tbaa !20, !alias.scope !172, !noalias !171
  %i.wn = xor <2 x i64> %wide.load1119, %wide.load1117
  %i.wo = xor <2 x i64> %wide.load1120, %wide.load1118
  store <2 x i64> %i.wn, ptr %next.gep1115, align 8, !tbaa !20, !alias.scope !172, !noalias !171
  store <2 x i64> %i.wo, ptr %i.wm, align 8, !tbaa !20, !alias.scope !172, !noalias !171
  %index.next1121 = add nuw i64 %index1114, 4     ; 2 uses
  %i.wp = icmp eq i64 %index.next1121, %n.vec1112
  br i1 %i.wp, label %middle.block1122, label %vector.body1113, !llvm.loop !101

middle.block1122:                                 ; preds = %vector.body1113
  %cmp.n1123 = icmp eq i64 %i.wc, %n.vec1112
  br i1 %cmp.n1123, label %xorbuf.exit191, label %.lr.ph.i32.i182.preheader

.lr.ph.i32.i182.preheader:                        ; preds = %vector.memcheck1107, %._crit_edge.i176.thread, %middle.block1122
  %.sroa.039.2.i183.ph = phi ptr [ %i.vk, %vector.memcheck1107 ], [ %i.vk, %._crit_edge.i176.thread ], [ %i.wi, %middle.block1122 ]
  %.ph1627 = phi ptr [ %.ptr429.ptr.ptr, %vector.memcheck1107 ], [ %.ptr429.ptr.ptr, %._crit_edge.i176.thread ], [ %i.wj, %middle.block1122 ]
  br label %.lr.ph.i32.i182

.lr.ph.i32.i182:                                  ; preds = %.lr.ph.i32.i182.preheader, %.lr.ph.i32.i182
  %.sroa.039.2.i183 = phi ptr [ %i.wt, %.lr.ph.i32.i182 ], [ %.sroa.039.2.i183.ph, %.lr.ph.i32.i182.preheader ] ; 3 uses
  %i.wq = phi ptr [ %i.wr, %.lr.ph.i32.i182 ], [ %.ph1627, %.lr.ph.i32.i182.preheader ] ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8 ; 2 uses
  %i.ws = load i64, ptr %i.wq, align 8, !tbaa !20
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i183, i64 8
  %i.wu = load i64, ptr %.sroa.039.2.i183, align 8, !tbaa !20
  %i.wv = xor i64 %i.wu, %i.ws
  store i64 %i.wv, ptr %.sroa.039.2.i183, align 8, !tbaa !20
  %i.ww = icmp ult ptr %i.wr, %i.vu
  br i1 %i.ww, label %.lr.ph.i32.i182, label %xorbuf.exit191, !llvm.loop !102

vector.memcheck1133:                              ; preds = %bb.f
  %i.wx = getelementptr i8, ptr %0, i64 176
  %i.wy = getelementptr i8, ptr %0, i64 48
  %bound01134 = icmp ult ptr %i.vk, %i.wy
  %bound11135 = icmp ult ptr %.ptr429.ptr.ptr, %i.wx
  %found.conflict1136 = and i1 %bound01134, %bound11135
  br i1 %found.conflict1136, label %.lr.ph56.i165, label %vector.body1141

vector.body1141:                                  ; preds = %vector.memcheck1133
  %wide.load1145 = load <16 x i8>, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21, !alias.scope !173
  %wide.load1146 = load <16 x i8>, ptr %i.vk, align 16, !tbaa !21, !alias.scope !174, !noalias !173
  %i.wz = xor <16 x i8> %wide.load1146, %wide.load1145
  store <16 x i8> %i.wz, ptr %i.vk, align 16, !tbaa !21, !alias.scope !174, !noalias !173
  br label %xorbuf.exit191

.lr.ph56.i165:                                    ; preds = %vector.memcheck1133
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.xb = load i8, ptr %.ptr429.ptr.ptr, align 16, !tbaa !21
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 2 uses
  %i.xd = load i8, ptr %i.vk, align 16, !tbaa !21
  %i.xe = xor i8 %i.xd, %i.xb
  store i8 %i.xe, ptr %i.vk, align 16, !tbaa !21
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.xg = load i8, ptr %i.xa, align 1, !tbaa !21
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 2 uses
  %i.xi = load i8, ptr %i.xc, align 1, !tbaa !21
  %i.xj = xor i8 %i.xi, %i.xg
  store i8 %i.xj, ptr %i.xc, align 1, !tbaa !21
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.xl = load i8, ptr %i.xf, align 2, !tbaa !21
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 163 ; 2 uses
  %i.xn = load i8, ptr %i.xh, align 2, !tbaa !21
  %i.xo = xor i8 %i.xn, %i.xl
  store i8 %i.xo, ptr %i.xh, align 2, !tbaa !21
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.xq = load i8, ptr %i.xk, align 1, !tbaa !21
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.xs = load i8, ptr %i.xm, align 1, !tbaa !21
  %i.xt = xor i8 %i.xs, %i.xq
  store i8 %i.xt, ptr %i.xm, align 1, !tbaa !21
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.xv = load i8, ptr %i.xp, align 4, !tbaa !21
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 165 ; 2 uses
  %i.xx = load i8, ptr %i.xr, align 4, !tbaa !21
  %i.xy = xor i8 %i.xx, %i.xv
  store i8 %i.xy, ptr %i.xr, align 4, !tbaa !21
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.ya = load i8, ptr %i.xu, align 1, !tbaa !21
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 2 uses
  %i.yc = load i8, ptr %i.xw, align 1, !tbaa !21
  %i.yd = xor i8 %i.yc, %i.ya
  store i8 %i.yd, ptr %i.xw, align 1, !tbaa !21
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.yf = load i8, ptr %i.xz, align 2, !tbaa !21
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 167 ; 2 uses
  %i.yh = load i8, ptr %i.yb, align 2, !tbaa !21
  %i.yi = xor i8 %i.yh, %i.yf
  store i8 %i.yi, ptr %i.yb, align 2, !tbaa !21
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.yk = load i8, ptr %i.ye, align 1, !tbaa !21
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ym = load i8, ptr %i.yg, align 1, !tbaa !21
  %i.yn = xor i8 %i.ym, %i.yk
  store i8 %i.yn, ptr %i.yg, align 1, !tbaa !21
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.yp = load i8, ptr %i.yj, align 8, !tbaa !21
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 169 ; 2 uses
  %i.yr = load i8, ptr %i.yl, align 8, !tbaa !21
  %i.ys = xor i8 %i.yr, %i.yp
  store i8 %i.ys, ptr %i.yl, align 8, !tbaa !21
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.yu = load i8, ptr %i.yo, align 1, !tbaa !21
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 170 ; 2 uses
  %i.yw = load i8, ptr %i.yq, align 1, !tbaa !21
  %i.yx = xor i8 %i.yw, %i.yu
  store i8 %i.yx, ptr %i.yq, align 1, !tbaa !21
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.yz = load i8, ptr %i.yt, align 2, !tbaa !21
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 171 ; 2 uses
  %i.zb = load i8, ptr %i.yv, align 2, !tbaa !21
  %i.zc = xor i8 %i.zb, %i.yz
  store i8 %i.zc, ptr %i.yv, align 2, !tbaa !21
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ze = load i8, ptr %i.yy, align 1, !tbaa !21
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.zg = load i8, ptr %i.za, align 1, !tbaa !21
  %i.zh = xor i8 %i.zg, %i.ze
  store i8 %i.zh, ptr %i.za, align 1, !tbaa !21
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.zj = load i8, ptr %i.zd, align 4, !tbaa !21
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.zl = load i8, ptr %i.zf, align 4, !tbaa !21
  %i.zm = xor i8 %i.zl, %i.zj
  store i8 %i.zm, ptr %i.zf, align 4, !tbaa !21
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.zo = load i8, ptr %i.zi, align 1, !tbaa !21
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 174 ; 2 uses
  %i.zq = load i8, ptr %i.zk, align 1, !tbaa !21
  %i.zr = xor i8 %i.zq, %i.zo
  store i8 %i.zr, ptr %i.zk, align 1, !tbaa !21
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.zt = load i8, ptr %i.zn, align 2, !tbaa !21
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 175 ; 2 uses
  %i.zv = load i8, ptr %i.zp, align 2, !tbaa !21
  %i.zw = xor i8 %i.zv, %i.zt
  store i8 %i.zw, ptr %i.zp, align 2, !tbaa !21
  %i.zx = load i8, ptr %i.zs, align 1, !tbaa !21
  %i.zy = load i8, ptr %i.zu, align 1, !tbaa !21
  %i.zz = xor i8 %i.zy, %i.zx
  store i8 %i.zz, ptr %i.zu, align 1, !tbaa !21
  br label %xorbuf.exit191

xorbuf.exit191:                                   ; preds = %.lr.ph.i32.i182, %vector.body1141, %.lr.ph56.i165, %middle.block1122, %.lr.ph.i.i189.preheader
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aaa, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.aab = ptrtoint ptr %i.aaa to i64             ; 2 uses
  %i.aac = or i64 %i.mg, %i.aab
  %i.aad = and i64 %i.aac, 7
  %or.cond.i192 = icmp eq i64 %i.aad, 0
  br i1 %or.cond.i192, label %.lr.ph.i.i221.preheader, label %bb.g

.lr.ph.i.i221.preheader:                          ; preds = %xorbuf.exit191
  %i.aae = load <2 x i64>, ptr %.ptr438.ptr, align 16, !tbaa !20
  %i.aaf = load <2 x i64>, ptr %i.aaa, align 16, !tbaa !20
  %i.aag = xor <2 x i64> %i.aaf, %i.aae
  store <2 x i64> %i.aag, ptr %i.aaa, align 16, !tbaa !20
  br label %xorbuf.exit223

bb.g:                                             ; preds = %xorbuf.exit191
  %i.aah = xor i64 %i.mg, %i.aab
  %i.aai = and i64 %i.aah, 7
  %i.aaj = icmp eq i64 %i.aai, 0
  br i1 %i.aaj, label %._crit_edge.i208.thread, label %vector.memcheck1206

._crit_edge.i208.thread:                          ; preds = %bb.g
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aal = ptrtoaddr ptr %i.aak to i64
  %i.aam = ptrtoaddr ptr %.ptr438.ptr to i64      ; 2 uses
  %i.aan = add nuw i64 %i.aam, 8
  %i.aao = tail call i64 @llvm.umax.i64(i64 %i.aal, i64 %i.aan)
  %i.aap = xor i64 %i.aam, -1
  %i.aaq = add i64 %i.aao, %i.aap                 ; 3 uses
  %i.aar = lshr i64 %i.aaq, 3
  %i.aas = add nuw nsw i64 %i.aar, 1              ; 2 uses
  %min.iters.check1179 = icmp ult i64 %i.aaq, 136
  br i1 %min.iters.check1179, label %.lr.ph.i32.i214.preheader, label %vector.memcheck1180

vector.memcheck1180:                              ; preds = %._crit_edge.i208.thread
  %i.aat = and i64 %i.aaq, -8
  %i.aau = add i64 %i.aat, 8                      ; 2 uses
  %i.aav = getelementptr i8, ptr %i.aaa, i64 %i.aau
  %i.aaw = getelementptr i8, ptr %.ptr438.ptr, i64 %i.aau
  %bound01181 = icmp ult ptr %i.aaa, %i.aaw
  %bound11182 = icmp ult ptr %.ptr438.ptr, %i.aav
  %found.conflict1183 = and i1 %bound01181, %bound11182
  br i1 %found.conflict1183, label %.lr.ph.i32.i214.preheader, label %vector.ph1184

vector.ph1184:                                    ; preds = %vector.memcheck1180
  %n.vec1185 = and i64 %i.aas, 4611686018427387900 ; 3 uses
  %i.aax = shl i64 %n.vec1185, 3                  ; 2 uses
  %i.aay = getelementptr i8, ptr %i.aaa, i64 %i.aax
  %i.aaz = getelementptr i8, ptr %.ptr438.ptr, i64 %i.aax
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1184
  %index1187 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1194, %vector.body1186 ] ; 2 uses
  %i.aba = shl i64 %index1187, 3                  ; 2 uses
  %next.gep1188 = getelementptr i8, ptr %i.aaa, i64 %i.aba ; 3 uses
  %next.gep1189 = getelementptr i8, ptr %.ptr438.ptr, i64 %i.aba ; 2 uses
  %i.abb = getelementptr i8, ptr %next.gep1189, i64 16
  %wide.load1190 = load <2 x i64>, ptr %next.gep1189, align 8, !tbaa !20, !alias.scope !175
  %wide.load1191 = load <2 x i64>, ptr %i.abb, align 8, !tbaa !20, !alias.scope !175
  %i.abc = getelementptr i8, ptr %next.gep1188, i64 16 ; 2 uses
  %wide.load1192 = load <2 x i64>, ptr %next.gep1188, align 8, !tbaa !20, !alias.scope !176, !noalias !175
  %wide.load1193 = load <2 x i64>, ptr %i.abc, align 8, !tbaa !20, !alias.scope !176, !noalias !175
  %i.abd = xor <2 x i64> %wide.load1192, %wide.load1190
  %i.abe = xor <2 x i64> %wide.load1193, %wide.load1191
  store <2 x i64> %i.abd, ptr %next.gep1188, align 8, !tbaa !20, !alias.scope !176, !noalias !175
  store <2 x i64> %i.abe, ptr %i.abc, align 8, !tbaa !20, !alias.scope !176, !noalias !175
  %index.next1194 = add nuw i64 %index1187, 4     ; 2 uses
  %i.abf = icmp eq i64 %index.next1194, %n.vec1185
  br i1 %i.abf, label %middle.block1195, label %vector.body1186, !llvm.loop !109

middle.block1195:                                 ; preds = %vector.body1186
  %cmp.n1196 = icmp eq i64 %i.aas, %n.vec1185
  br i1 %cmp.n1196, label %xorbuf.exit223, label %.lr.ph.i32.i214.preheader

.lr.ph.i32.i214.preheader:                        ; preds = %vector.memcheck1180, %._crit_edge.i208.thread, %middle.block1195
  %.sroa.039.2.i215.ph = phi ptr [ %i.aaa, %vector.memcheck1180 ], [ %i.aaa, %._crit_edge.i208.thread ], [ %i.aay, %middle.block1195 ]
  %.ph1624 = phi ptr [ %.ptr438.ptr, %vector.memcheck1180 ], [ %.ptr438.ptr, %._crit_edge.i208.thread ], [ %i.aaz, %middle.block1195 ]
  br label %.lr.ph.i32.i214

.lr.ph.i32.i214:                                  ; preds = %.lr.ph.i32.i214.preheader, %.lr.ph.i32.i214
  %.sroa.039.2.i215 = phi ptr [ %i.abj, %.lr.ph.i32.i214 ], [ %.sroa.039.2.i215.ph, %.lr.ph.i32.i214.preheader ] ; 3 uses
  %i.abg = phi ptr [ %i.abh, %.lr.ph.i32.i214 ], [ %.ph1624, %.lr.ph.i32.i214.preheader ] ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 2 uses
  %i.abi = load i64, ptr %i.abg, align 8, !tbaa !20
  %i.abj = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i215, i64 8
  %i.abk = load i64, ptr %.sroa.039.2.i215, align 8, !tbaa !20
  %i.abl = xor i64 %i.abk, %i.abi
  store i64 %i.abl, ptr %.sroa.039.2.i215, align 8, !tbaa !20
  %i.abm = icmp ult ptr %i.abh, %i.aak
  br i1 %i.abm, label %.lr.ph.i32.i214, label %xorbuf.exit223, !llvm.loop !110

vector.memcheck1206:                              ; preds = %bb.g
  %i.abn = getelementptr i8, ptr %0, i64 192
  %i.abo = getelementptr i8, ptr %0, i64 64
  %bound01207 = icmp ult ptr %i.aaa, %i.abo
  %bound11208 = icmp ult ptr %.ptr438.ptr, %i.abn
  %found.conflict1209 = and i1 %bound01207, %bound11208
  br i1 %found.conflict1209, label %.lr.ph56.i197, label %vector.body1214

vector.body1214:                                  ; preds = %vector.memcheck1206
  %wide.load1218 = load <16 x i8>, ptr %.ptr438.ptr, align 16, !tbaa !21, !alias.scope !177
  %wide.load1219 = load <16 x i8>, ptr %i.aaa, align 16, !tbaa !21, !alias.scope !178, !noalias !177
  %i.abp = xor <16 x i8> %wide.load1219, %wide.load1218
  store <16 x i8> %i.abp, ptr %i.aaa, align 16, !tbaa !21, !alias.scope !178, !noalias !177
  br label %xorbuf.exit223

.lr.ph56.i197:                                    ; preds = %vector.memcheck1206
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.abr = load i8, ptr %.ptr438.ptr, align 16, !tbaa !21
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %i.abt = load i8, ptr %i.aaa, align 16, !tbaa !21
  %i.abu = xor i8 %i.abt, %i.abr
  store i8 %i.abu, ptr %i.aaa, align 16, !tbaa !21
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.abw = load i8, ptr %i.abq, align 1, !tbaa !21
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 178 ; 2 uses
  %i.aby = load i8, ptr %i.abs, align 1, !tbaa !21
  %i.abz = xor i8 %i.aby, %i.abw
  store i8 %i.abz, ptr %i.abs, align 1, !tbaa !21
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.acb = load i8, ptr %i.abv, align 2, !tbaa !21
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 179 ; 2 uses
  %i.acd = load i8, ptr %i.abx, align 2, !tbaa !21
  %i.ace = xor i8 %i.acd, %i.acb
  store i8 %i.ace, ptr %i.abx, align 2, !tbaa !21
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.acg = load i8, ptr %i.aca, align 1, !tbaa !21
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.aci = load i8, ptr %i.acc, align 1, !tbaa !21
  %i.acj = xor i8 %i.aci, %i.acg
  store i8 %i.acj, ptr %i.acc, align 1, !tbaa !21
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.acl = load i8, ptr %i.acf, align 4, !tbaa !21
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 181 ; 2 uses
  %i.acn = load i8, ptr %i.ach, align 4, !tbaa !21
  %i.aco = xor i8 %i.acn, %i.acl
  store i8 %i.aco, ptr %i.ach, align 4, !tbaa !21
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.acq = load i8, ptr %i.ack, align 1, !tbaa !21
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 2 uses
  %i.acs = load i8, ptr %i.acm, align 1, !tbaa !21
  %i.act = xor i8 %i.acs, %i.acq
  store i8 %i.act, ptr %i.acm, align 1, !tbaa !21
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.acv = load i8, ptr %i.acp, align 2, !tbaa !21
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 183 ; 2 uses
  %i.acx = load i8, ptr %i.acr, align 2, !tbaa !21
  %i.acy = xor i8 %i.acx, %i.acv
  store i8 %i.acy, ptr %i.acr, align 2, !tbaa !21
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ada = load i8, ptr %i.acu, align 1, !tbaa !21
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.adc = load i8, ptr %i.acw, align 1, !tbaa !21
  %i.add = xor i8 %i.adc, %i.ada
  store i8 %i.add, ptr %i.acw, align 1, !tbaa !21
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.adf = load i8, ptr %i.acz, align 8, !tbaa !21
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 185 ; 2 uses
  %i.adh = load i8, ptr %i.adb, align 8, !tbaa !21
  %i.adi = xor i8 %i.adh, %i.adf
  store i8 %i.adi, ptr %i.adb, align 8, !tbaa !21
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.adk = load i8, ptr %i.ade, align 1, !tbaa !21
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.adm = load i8, ptr %i.adg, align 1, !tbaa !21
  %i.adn = xor i8 %i.adm, %i.adk
  store i8 %i.adn, ptr %i.adg, align 1, !tbaa !21
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.adp = load i8, ptr %i.adj, align 2, !tbaa !21
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 187 ; 2 uses
  %i.adr = load i8, ptr %i.adl, align 2, !tbaa !21
  %i.ads = xor i8 %i.adr, %i.adp
  store i8 %i.ads, ptr %i.adl, align 2, !tbaa !21
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.adu = load i8, ptr %i.ado, align 1, !tbaa !21
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.adw = load i8, ptr %i.adq, align 1, !tbaa !21
  %i.adx = xor i8 %i.adw, %i.adu
  store i8 %i.adx, ptr %i.adq, align 1, !tbaa !21
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.adz = load i8, ptr %i.adt, align 4, !tbaa !21
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 189 ; 2 uses
  %i.aeb = load i8, ptr %i.adv, align 4, !tbaa !21
  %i.aec = xor i8 %i.aeb, %i.adz
  store i8 %i.aec, ptr %i.adv, align 4, !tbaa !21
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.aee = load i8, ptr %i.ady, align 1, !tbaa !21
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.aeg = load i8, ptr %i.aea, align 1, !tbaa !21
  %i.aeh = xor i8 %i.aeg, %i.aee
  store i8 %i.aeh, ptr %i.aea, align 1, !tbaa !21
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.aej = load i8, ptr %i.aed, align 2, !tbaa !21
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 191 ; 2 uses
  %i.ael = load i8, ptr %i.aef, align 2, !tbaa !21
  %i.aem = xor i8 %i.ael, %i.aej
  store i8 %i.aem, ptr %i.aef, align 2, !tbaa !21
  %i.aen = load i8, ptr %i.aei, align 1, !tbaa !21
  %i.aeo = load i8, ptr %i.aek, align 1, !tbaa !21
  %i.aep = xor i8 %i.aeo, %i.aen
  store i8 %i.aep, ptr %i.aek, align 1, !tbaa !21
  br label %xorbuf.exit223

xorbuf.exit223:                                   ; preds = %.lr.ph.i32.i214, %vector.body1214, %.lr.ph56.i197, %middle.block1195, %.lr.ph.i.i221.preheader
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aeq, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.aer = ptrtoint ptr %i.aeq to i64             ; 2 uses
  %i.aes = or i64 %i.da, %i.aer
  %i.aet = and i64 %i.aes, 7
  %or.cond.i224 = icmp eq i64 %i.aet, 0
  br i1 %or.cond.i224, label %.lr.ph.i.i253.preheader, label %bb.h

.lr.ph.i.i253.preheader:                          ; preds = %xorbuf.exit223
  %i.aeu = load <2 x i64>, ptr %.ptr443.ptr, align 16, !tbaa !20
  %i.aev = load <2 x i64>, ptr %i.aeq, align 16, !tbaa !20
  %i.aew = xor <2 x i64> %i.aev, %i.aeu
  store <2 x i64> %i.aew, ptr %i.aeq, align 16, !tbaa !20
  br label %xorbuf.exit255

bb.h:                                             ; preds = %xorbuf.exit223
  %i.aex = xor i64 %i.da, %i.aer
  %i.aey = and i64 %i.aex, 7
  %i.aez = icmp eq i64 %i.aey, 0
  br i1 %i.aez, label %._crit_edge.i240.thread, label %vector.memcheck1279

._crit_edge.i240.thread:                          ; preds = %bb.h
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.afb = ptrtoaddr ptr %i.afa to i64
  %i.afc = ptrtoaddr ptr %.ptr443.ptr to i64      ; 2 uses
  %i.afd = add nuw i64 %i.afc, 8
  %i.afe = tail call i64 @llvm.umax.i64(i64 %i.afb, i64 %i.afd)
  %i.aff = xor i64 %i.afc, -1
  %i.afg = add i64 %i.afe, %i.aff                 ; 3 uses
  %i.afh = lshr i64 %i.afg, 3
  %i.afi = add nuw nsw i64 %i.afh, 1              ; 2 uses
  %min.iters.check1252 = icmp ult i64 %i.afg, 136
  br i1 %min.iters.check1252, label %.lr.ph.i32.i246.preheader, label %vector.memcheck1253

vector.memcheck1253:                              ; preds = %._crit_edge.i240.thread
  %i.afj = and i64 %i.afg, -8
  %i.afk = add i64 %i.afj, 8                      ; 2 uses
  %i.afl = getelementptr i8, ptr %i.aeq, i64 %i.afk
  %i.afm = getelementptr i8, ptr %.ptr443.ptr, i64 %i.afk
  %bound01254 = icmp ult ptr %i.aeq, %i.afm
  %bound11255 = icmp ult ptr %.ptr443.ptr, %i.afl
  %found.conflict1256 = and i1 %bound01254, %bound11255
  br i1 %found.conflict1256, label %.lr.ph.i32.i246.preheader, label %vector.ph1257

vector.ph1257:                                    ; preds = %vector.memcheck1253
  %n.vec1258 = and i64 %i.afi, 4611686018427387900 ; 3 uses
  %i.afn = shl i64 %n.vec1258, 3                  ; 2 uses
  %i.afo = getelementptr i8, ptr %i.aeq, i64 %i.afn
  %i.afp = getelementptr i8, ptr %.ptr443.ptr, i64 %i.afn
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1267, %vector.body1259 ] ; 2 uses
  %i.afq = shl i64 %index1260, 3                  ; 2 uses
  %next.gep1261 = getelementptr i8, ptr %i.aeq, i64 %i.afq ; 3 uses
  %next.gep1262 = getelementptr i8, ptr %.ptr443.ptr, i64 %i.afq ; 2 uses
  %i.afr = getelementptr i8, ptr %next.gep1262, i64 16
  %wide.load1263 = load <2 x i64>, ptr %next.gep1262, align 8, !tbaa !20, !alias.scope !179
  %wide.load1264 = load <2 x i64>, ptr %i.afr, align 8, !tbaa !20, !alias.scope !179
  %i.afs = getelementptr i8, ptr %next.gep1261, i64 16 ; 2 uses
  %wide.load1265 = load <2 x i64>, ptr %next.gep1261, align 8, !tbaa !20, !alias.scope !180, !noalias !179
  %wide.load1266 = load <2 x i64>, ptr %i.afs, align 8, !tbaa !20, !alias.scope !180, !noalias !179
  %i.aft = xor <2 x i64> %wide.load1265, %wide.load1263
  %i.afu = xor <2 x i64> %wide.load1266, %wide.load1264
  store <2 x i64> %i.aft, ptr %next.gep1261, align 8, !tbaa !20, !alias.scope !180, !noalias !179
  store <2 x i64> %i.afu, ptr %i.afs, align 8, !tbaa !20, !alias.scope !180, !noalias !179
  %index.next1267 = add nuw i64 %index1260, 4     ; 2 uses
  %i.afv = icmp eq i64 %index.next1267, %n.vec1258
  br i1 %i.afv, label %middle.block1268, label %vector.body1259, !llvm.loop !117

middle.block1268:                                 ; preds = %vector.body1259
  %cmp.n1269 = icmp eq i64 %i.afi, %n.vec1258
  br i1 %cmp.n1269, label %xorbuf.exit255, label %.lr.ph.i32.i246.preheader

.lr.ph.i32.i246.preheader:                        ; preds = %vector.memcheck1253, %._crit_edge.i240.thread, %middle.block1268
  %.sroa.039.2.i247.ph = phi ptr [ %i.aeq, %vector.memcheck1253 ], [ %i.aeq, %._crit_edge.i240.thread ], [ %i.afo, %middle.block1268 ]
  %.ph1621 = phi ptr [ %.ptr443.ptr, %vector.memcheck1253 ], [ %.ptr443.ptr, %._crit_edge.i240.thread ], [ %i.afp, %middle.block1268 ]
  br label %.lr.ph.i32.i246

.lr.ph.i32.i246:                                  ; preds = %.lr.ph.i32.i246.preheader, %.lr.ph.i32.i246
  %.sroa.039.2.i247 = phi ptr [ %i.afz, %.lr.ph.i32.i246 ], [ %.sroa.039.2.i247.ph, %.lr.ph.i32.i246.preheader ] ; 3 uses
  %i.afw = phi ptr [ %i.afx, %.lr.ph.i32.i246 ], [ %.ph1621, %.lr.ph.i32.i246.preheader ] ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 8 ; 2 uses
  %i.afy = load i64, ptr %i.afw, align 8, !tbaa !20
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i247, i64 8
  %i.aga = load i64, ptr %.sroa.039.2.i247, align 8, !tbaa !20
  %i.agb = xor i64 %i.aga, %i.afy
  store i64 %i.agb, ptr %.sroa.039.2.i247, align 8, !tbaa !20
  %i.agc = icmp ult ptr %i.afx, %i.afa
  br i1 %i.agc, label %.lr.ph.i32.i246, label %xorbuf.exit255, !llvm.loop !118

vector.memcheck1279:                              ; preds = %bb.h
  %i.agd = getelementptr i8, ptr %0, i64 208
  %i.age = getelementptr i8, ptr %0, i64 80
  %bound01280 = icmp ult ptr %i.aeq, %i.age
  %bound11281 = icmp ult ptr %.ptr443.ptr, %i.agd
  %found.conflict1282 = and i1 %bound01280, %bound11281
  br i1 %found.conflict1282, label %.lr.ph56.i229, label %vector.body1287

vector.body1287:                                  ; preds = %vector.memcheck1279
  %wide.load1291 = load <16 x i8>, ptr %.ptr443.ptr, align 16, !tbaa !21, !alias.scope !181
  %wide.load1292 = load <16 x i8>, ptr %i.aeq, align 16, !tbaa !21, !alias.scope !182, !noalias !181
  %i.agf = xor <16 x i8> %wide.load1292, %wide.load1291
  store <16 x i8> %i.agf, ptr %i.aeq, align 16, !tbaa !21, !alias.scope !182, !noalias !181
  br label %xorbuf.exit255

.lr.ph56.i229:                                    ; preds = %vector.memcheck1279
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.agh = load i8, ptr %.ptr443.ptr, align 16, !tbaa !21
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 193 ; 2 uses
  %i.agj = load i8, ptr %i.aeq, align 16, !tbaa !21
  %i.agk = xor i8 %i.agj, %i.agh
  store i8 %i.agk, ptr %i.aeq, align 16, !tbaa !21
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.agm = load i8, ptr %i.agg, align 1, !tbaa !21
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.ago = load i8, ptr %i.agi, align 1, !tbaa !21
  %i.agp = xor i8 %i.ago, %i.agm
  store i8 %i.agp, ptr %i.agi, align 1, !tbaa !21
  %i.agq = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.agr = load i8, ptr %i.agl, align 2, !tbaa !21
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 195 ; 2 uses
  %i.agt = load i8, ptr %i.agn, align 2, !tbaa !21
  %i.agu = xor i8 %i.agt, %i.agr
  store i8 %i.agu, ptr %i.agn, align 2, !tbaa !21
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.agw = load i8, ptr %i.agq, align 1, !tbaa !21
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.agy = load i8, ptr %i.ags, align 1, !tbaa !21
  %i.agz = xor i8 %i.agy, %i.agw
  store i8 %i.agz, ptr %i.ags, align 1, !tbaa !21
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.ahb = load i8, ptr %i.agv, align 4, !tbaa !21
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 197 ; 2 uses
  %i.ahd = load i8, ptr %i.agx, align 4, !tbaa !21
  %i.ahe = xor i8 %i.ahd, %i.ahb
  store i8 %i.ahe, ptr %i.agx, align 4, !tbaa !21
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.ahg = load i8, ptr %i.aha, align 1, !tbaa !21
  %i.ahh = getelementptr inbounds nuw i8, ptr %0, i64 198 ; 2 uses
  %i.ahi = load i8, ptr %i.ahc, align 1, !tbaa !21
  %i.ahj = xor i8 %i.ahi, %i.ahg
  store i8 %i.ahj, ptr %i.ahc, align 1, !tbaa !21
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 71
  %i.ahl = load i8, ptr %i.ahf, align 2, !tbaa !21
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 199 ; 2 uses
  %i.ahn = load i8, ptr %i.ahh, align 2, !tbaa !21
  %i.aho = xor i8 %i.ahn, %i.ahl
  store i8 %i.aho, ptr %i.ahh, align 2, !tbaa !21
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ahq = load i8, ptr %i.ahk, align 1, !tbaa !21
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ahs = load i8, ptr %i.ahm, align 1, !tbaa !21
  %i.aht = xor i8 %i.ahs, %i.ahq
  store i8 %i.aht, ptr %i.ahm, align 1, !tbaa !21
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.ahv = load i8, ptr %i.ahp, align 8, !tbaa !21
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 201 ; 2 uses
  %i.ahx = load i8, ptr %i.ahr, align 8, !tbaa !21
  %i.ahy = xor i8 %i.ahx, %i.ahv
  store i8 %i.ahy, ptr %i.ahr, align 8, !tbaa !21
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.aia = load i8, ptr %i.ahu, align 1, !tbaa !21
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 202 ; 2 uses
  %i.aic = load i8, ptr %i.ahw, align 1, !tbaa !21
  %i.aid = xor i8 %i.aic, %i.aia
  store i8 %i.aid, ptr %i.ahw, align 1, !tbaa !21
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.aif = load i8, ptr %i.ahz, align 2, !tbaa !21
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 203 ; 2 uses
  %i.aih = load i8, ptr %i.aib, align 2, !tbaa !21
  %i.aii = xor i8 %i.aih, %i.aif
  store i8 %i.aii, ptr %i.aib, align 2, !tbaa !21
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aik = load i8, ptr %i.aie, align 1, !tbaa !21
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.aim = load i8, ptr %i.aig, align 1, !tbaa !21
  %i.ain = xor i8 %i.aim, %i.aik
  store i8 %i.ain, ptr %i.aig, align 1, !tbaa !21
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.aip = load i8, ptr %i.aij, align 4, !tbaa !21
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 205 ; 2 uses
  %i.air = load i8, ptr %i.ail, align 4, !tbaa !21
  %i.ais = xor i8 %i.air, %i.aip
  store i8 %i.ais, ptr %i.ail, align 4, !tbaa !21
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.aiu = load i8, ptr %i.aio, align 1, !tbaa !21
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 206 ; 2 uses
  %i.aiw = load i8, ptr %i.aiq, align 1, !tbaa !21
  %i.aix = xor i8 %i.aiw, %i.aiu
  store i8 %i.aix, ptr %i.aiq, align 1, !tbaa !21
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.aiz = load i8, ptr %i.ait, align 2, !tbaa !21
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 207 ; 2 uses
  %i.ajb = load i8, ptr %i.aiv, align 2, !tbaa !21
  %i.ajc = xor i8 %i.ajb, %i.aiz
  store i8 %i.ajc, ptr %i.aiv, align 2, !tbaa !21
  %i.ajd = load i8, ptr %i.aiy, align 1, !tbaa !21
  %i.aje = load i8, ptr %i.aja, align 1, !tbaa !21
  %i.ajf = xor i8 %i.aje, %i.ajd
  store i8 %i.ajf, ptr %i.aja, align 1, !tbaa !21
  br label %xorbuf.exit255

xorbuf.exit255:                                   ; preds = %.lr.ph.i32.i246, %vector.body1287, %.lr.ph56.i229, %middle.block1268, %.lr.ph.i.i253.preheader
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajg, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.ajh = ptrtoint ptr %i.ajg to i64             ; 2 uses
  %i.aji = ptrtoint ptr %.ptr460 to i64           ; 2 uses
  %i.ajj = or i64 %i.aji, %i.ajh
  %i.ajk = and i64 %i.ajj, 7
  %or.cond.i256 = icmp eq i64 %i.ajk, 0
  br i1 %or.cond.i256, label %.lr.ph.i.i285.preheader, label %bb.i

.lr.ph.i.i285.preheader:                          ; preds = %xorbuf.exit255
  %i.ajl = load <2 x i64>, ptr %.ptr460, align 16, !tbaa !20
  %i.ajm = load <2 x i64>, ptr %i.ajg, align 16, !tbaa !20
  %i.ajn = xor <2 x i64> %i.ajm, %i.ajl
  store <2 x i64> %i.ajn, ptr %i.ajg, align 16, !tbaa !20
  br label %xorbuf.exit287

bb.i:                                             ; preds = %xorbuf.exit255
  %i.ajo = xor i64 %i.aji, %i.ajh
  %i.ajp = and i64 %i.ajo, 7
  %i.ajq = icmp eq i64 %i.ajp, 0
  br i1 %i.ajq, label %._crit_edge.i272.thread, label %vector.memcheck1352

._crit_edge.i272.thread:                          ; preds = %bb.i
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ajs = ptrtoaddr ptr %i.ajr to i64
  %i.ajt = ptrtoaddr ptr %.ptr460 to i64          ; 2 uses
  %i.aju = add nuw i64 %i.ajt, 8
  %i.ajv = tail call i64 @llvm.umax.i64(i64 %i.ajs, i64 %i.aju)
  %i.ajw = xor i64 %i.ajt, -1
  %i.ajx = add i64 %i.ajv, %i.ajw                 ; 3 uses
  %i.ajy = lshr i64 %i.ajx, 3
  %i.ajz = add nuw nsw i64 %i.ajy, 1              ; 2 uses
  %min.iters.check1325 = icmp ult i64 %i.ajx, 136
  br i1 %min.iters.check1325, label %.lr.ph.i32.i278.preheader, label %vector.memcheck1326

vector.memcheck1326:                              ; preds = %._crit_edge.i272.thread
  %i.aka = and i64 %i.ajx, -8
  %i.akb = add i64 %i.aka, 8                      ; 2 uses
  %i.akc = getelementptr i8, ptr %i.ajg, i64 %i.akb
  %i.akd = getelementptr i8, ptr %.ptr460, i64 %i.akb
  %bound01327 = icmp ult ptr %i.ajg, %i.akd
  %bound11328 = icmp ult ptr %.ptr460, %i.akc
  %found.conflict1329 = and i1 %bound01327, %bound11328
  br i1 %found.conflict1329, label %.lr.ph.i32.i278.preheader, label %vector.ph1330

vector.ph1330:                                    ; preds = %vector.memcheck1326
  %n.vec1331 = and i64 %i.ajz, 4611686018427387900 ; 3 uses
  %i.ake = shl i64 %n.vec1331, 3                  ; 2 uses
  %i.akf = getelementptr i8, ptr %i.ajg, i64 %i.ake
  %i.akg = getelementptr i8, ptr %.ptr460, i64 %i.ake
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %vector.ph1330
  %index1333 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1340, %vector.body1332 ] ; 2 uses
  %i.akh = shl i64 %index1333, 3                  ; 2 uses
  %next.gep1334 = getelementptr i8, ptr %i.ajg, i64 %i.akh ; 3 uses
  %next.gep1335 = getelementptr i8, ptr %.ptr460, i64 %i.akh ; 2 uses
  %i.aki = getelementptr i8, ptr %next.gep1335, i64 16
  %wide.load1336 = load <2 x i64>, ptr %next.gep1335, align 8, !tbaa !20, !alias.scope !183
  %wide.load1337 = load <2 x i64>, ptr %i.aki, align 8, !tbaa !20, !alias.scope !183
  %i.akj = getelementptr i8, ptr %next.gep1334, i64 16 ; 2 uses
  %wide.load1338 = load <2 x i64>, ptr %next.gep1334, align 8, !tbaa !20, !alias.scope !184, !noalias !183
  %wide.load1339 = load <2 x i64>, ptr %i.akj, align 8, !tbaa !20, !alias.scope !184, !noalias !183
  %i.akk = xor <2 x i64> %wide.load1338, %wide.load1336
  %i.akl = xor <2 x i64> %wide.load1339, %wide.load1337
  store <2 x i64> %i.akk, ptr %next.gep1334, align 8, !tbaa !20, !alias.scope !184, !noalias !183
  store <2 x i64> %i.akl, ptr %i.akj, align 8, !tbaa !20, !alias.scope !184, !noalias !183
  %index.next1340 = add nuw i64 %index1333, 4     ; 2 uses
  %i.akm = icmp eq i64 %index.next1340, %n.vec1331
  br i1 %i.akm, label %middle.block1341, label %vector.body1332, !llvm.loop !125

middle.block1341:                                 ; preds = %vector.body1332
  %cmp.n1342 = icmp eq i64 %i.ajz, %n.vec1331
  br i1 %cmp.n1342, label %xorbuf.exit287, label %.lr.ph.i32.i278.preheader

.lr.ph.i32.i278.preheader:                        ; preds = %vector.memcheck1326, %._crit_edge.i272.thread, %middle.block1341
  %.sroa.039.2.i279.ph = phi ptr [ %i.ajg, %vector.memcheck1326 ], [ %i.ajg, %._crit_edge.i272.thread ], [ %i.akf, %middle.block1341 ]
  %.ph1618 = phi ptr [ %.ptr460, %vector.memcheck1326 ], [ %.ptr460, %._crit_edge.i272.thread ], [ %i.akg, %middle.block1341 ]
  br label %.lr.ph.i32.i278

.lr.ph.i32.i278:                                  ; preds = %.lr.ph.i32.i278.preheader, %.lr.ph.i32.i278
  %.sroa.039.2.i279 = phi ptr [ %i.akq, %.lr.ph.i32.i278 ], [ %.sroa.039.2.i279.ph, %.lr.ph.i32.i278.preheader ] ; 3 uses
  %i.akn = phi ptr [ %i.ako, %.lr.ph.i32.i278 ], [ %.ph1618, %.lr.ph.i32.i278.preheader ] ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 8 ; 2 uses
  %i.akp = load i64, ptr %i.akn, align 8, !tbaa !20
  %i.akq = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i279, i64 8
  %i.akr = load i64, ptr %.sroa.039.2.i279, align 8, !tbaa !20
  %i.aks = xor i64 %i.akr, %i.akp
  store i64 %i.aks, ptr %.sroa.039.2.i279, align 8, !tbaa !20
  %i.akt = icmp ult ptr %i.ako, %i.ajr
  br i1 %i.akt, label %.lr.ph.i32.i278, label %xorbuf.exit287, !llvm.loop !126

vector.memcheck1352:                              ; preds = %bb.i
  %i.aku = getelementptr i8, ptr %0, i64 224
  %i.akv = getelementptr i8, ptr %0, i64 96
  %bound01353 = icmp ult ptr %i.ajg, %i.akv
  %bound11354 = icmp ult ptr %.ptr460, %i.aku
  %found.conflict1355 = and i1 %bound01353, %bound11354
  br i1 %found.conflict1355, label %.lr.ph56.i261, label %vector.body1360

vector.body1360:                                  ; preds = %vector.memcheck1352
  %wide.load1364 = load <16 x i8>, ptr %.ptr460, align 16, !tbaa !21, !alias.scope !185
  %wide.load1365 = load <16 x i8>, ptr %i.ajg, align 16, !tbaa !21, !alias.scope !186, !noalias !185
  %i.akw = xor <16 x i8> %wide.load1365, %wide.load1364
  store <16 x i8> %i.akw, ptr %i.ajg, align 16, !tbaa !21, !alias.scope !186, !noalias !185
  br label %xorbuf.exit287

.lr.ph56.i261:                                    ; preds = %vector.memcheck1352
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.aky = load i8, ptr %.ptr460, align 16, !tbaa !21
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 209 ; 2 uses
  %i.ala = load i8, ptr %i.ajg, align 16, !tbaa !21
  %i.alb = xor i8 %i.ala, %i.aky
  store i8 %i.alb, ptr %i.ajg, align 16, !tbaa !21
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ald = load i8, ptr %i.akx, align 1, !tbaa !21
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 210 ; 2 uses
  %i.alf = load i8, ptr %i.akz, align 1, !tbaa !21
  %i.alg = xor i8 %i.alf, %i.ald
  store i8 %i.alg, ptr %i.akz, align 1, !tbaa !21
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.ali = load i8, ptr %i.alc, align 2, !tbaa !21
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 211 ; 2 uses
  %i.alk = load i8, ptr %i.ale, align 2, !tbaa !21
  %i.all = xor i8 %i.alk, %i.ali
  store i8 %i.all, ptr %i.ale, align 2, !tbaa !21
  %i.alm = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aln = load i8, ptr %i.alh, align 1, !tbaa !21
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.alp = load i8, ptr %i.alj, align 1, !tbaa !21
  %i.alq = xor i8 %i.alp, %i.aln
  store i8 %i.alq, ptr %i.alj, align 1, !tbaa !21
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 85
  %i.als = load i8, ptr %i.alm, align 4, !tbaa !21
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 213 ; 2 uses
  %i.alu = load i8, ptr %i.alo, align 4, !tbaa !21
  %i.alv = xor i8 %i.alu, %i.als
  store i8 %i.alv, ptr %i.alo, align 4, !tbaa !21
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.alx = load i8, ptr %i.alr, align 1, !tbaa !21
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 214 ; 2 uses
  %i.alz = load i8, ptr %i.alt, align 1, !tbaa !21
  %i.ama = xor i8 %i.alz, %i.alx
  store i8 %i.ama, ptr %i.alt, align 1, !tbaa !21
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 87
  %i.amc = load i8, ptr %i.alw, align 2, !tbaa !21
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 215 ; 2 uses
  %i.ame = load i8, ptr %i.aly, align 2, !tbaa !21
  %i.amf = xor i8 %i.ame, %i.amc
  store i8 %i.amf, ptr %i.aly, align 2, !tbaa !21
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.amh = load i8, ptr %i.amb, align 1, !tbaa !21
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.amj = load i8, ptr %i.amd, align 1, !tbaa !21
  %i.amk = xor i8 %i.amj, %i.amh
  store i8 %i.amk, ptr %i.amd, align 1, !tbaa !21
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.amm = load i8, ptr %i.amg, align 8, !tbaa !21
  %i.amn = getelementptr inbounds nuw i8, ptr %0, i64 217 ; 2 uses
  %i.amo = load i8, ptr %i.ami, align 8, !tbaa !21
  %i.amp = xor i8 %i.amo, %i.amm
  store i8 %i.amp, ptr %i.ami, align 8, !tbaa !21
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.amr = load i8, ptr %i.aml, align 1, !tbaa !21
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 2 uses
  %i.amt = load i8, ptr %i.amn, align 1, !tbaa !21
  %i.amu = xor i8 %i.amt, %i.amr
  store i8 %i.amu, ptr %i.amn, align 1, !tbaa !21
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.amw = load i8, ptr %i.amq, align 2, !tbaa !21
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 219 ; 2 uses
  %i.amy = load i8, ptr %i.ams, align 2, !tbaa !21
  %i.amz = xor i8 %i.amy, %i.amw
  store i8 %i.amz, ptr %i.ams, align 2, !tbaa !21
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.anb = load i8, ptr %i.amv, align 1, !tbaa !21
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.and = load i8, ptr %i.amx, align 1, !tbaa !21
  %i.ane = xor i8 %i.and, %i.anb
  store i8 %i.ane, ptr %i.amx, align 1, !tbaa !21
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.ang = load i8, ptr %i.ana, align 4, !tbaa !21
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 221 ; 2 uses
  %i.ani = load i8, ptr %i.anc, align 4, !tbaa !21
  %i.anj = xor i8 %i.ani, %i.ang
  store i8 %i.anj, ptr %i.anc, align 4, !tbaa !21
  %i.ank = getelementptr inbounds nuw i8, ptr %0, i64 94
  %i.anl = load i8, ptr %i.anf, align 1, !tbaa !21
  %i.anm = getelementptr inbounds nuw i8, ptr %0, i64 222 ; 2 uses
  %i.ann = load i8, ptr %i.anh, align 1, !tbaa !21
  %i.ano = xor i8 %i.ann, %i.anl
  store i8 %i.ano, ptr %i.anh, align 1, !tbaa !21
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 95
  %i.anq = load i8, ptr %i.ank, align 2, !tbaa !21
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 223 ; 2 uses
  %i.ans = load i8, ptr %i.anm, align 2, !tbaa !21
  %i.ant = xor i8 %i.ans, %i.anq
  store i8 %i.ant, ptr %i.anm, align 2, !tbaa !21
  %i.anu = load i8, ptr %i.anp, align 1, !tbaa !21
  %i.anv = load i8, ptr %i.anr, align 1, !tbaa !21
  %i.anw = xor i8 %i.anv, %i.anu
  store i8 %i.anw, ptr %i.anr, align 1, !tbaa !21
  br label %xorbuf.exit287

xorbuf.exit287:                                   ; preds = %.lr.ph.i32.i278, %vector.body1360, %.lr.ph56.i261, %middle.block1341, %.lr.ph.i.i285.preheader
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.anx, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.any = ptrtoint ptr %i.anx to i64             ; 2 uses
  %i.anz = or i64 %i.hq, %i.any
  %i.aoa = and i64 %i.anz, 7
  %or.cond.i288 = icmp eq i64 %i.aoa, 0
  br i1 %or.cond.i288, label %.lr.ph.i.i317.preheader, label %bb.j

.lr.ph.i.i317.preheader:                          ; preds = %xorbuf.exit287
  %i.aob = load <2 x i64>, ptr %.ptr465, align 16, !tbaa !20
  %i.aoc = load <2 x i64>, ptr %i.anx, align 16, !tbaa !20
  %i.aod = xor <2 x i64> %i.aoc, %i.aob
  store <2 x i64> %i.aod, ptr %i.anx, align 16, !tbaa !20
  br label %xorbuf.exit319

bb.j:                                             ; preds = %xorbuf.exit287
  %i.aoe = xor i64 %i.hq, %i.any
  %i.aof = and i64 %i.aoe, 7
  %i.aog = icmp eq i64 %i.aof, 0
  br i1 %i.aog, label %._crit_edge.i304.thread, label %vector.memcheck1425

._crit_edge.i304.thread:                          ; preds = %bb.j
  %i.aoh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aoi = ptrtoaddr ptr %i.aoh to i64
  %i.aoj = ptrtoaddr ptr %.ptr465 to i64          ; 2 uses
  %i.aok = add nuw i64 %i.aoj, 8
  %i.aol = tail call i64 @llvm.umax.i64(i64 %i.aoi, i64 %i.aok)
  %i.aom = xor i64 %i.aoj, -1
  %i.aon = add i64 %i.aol, %i.aom                 ; 3 uses
  %i.aoo = lshr i64 %i.aon, 3
  %i.aop = add nuw nsw i64 %i.aoo, 1              ; 2 uses
  %min.iters.check1398 = icmp ult i64 %i.aon, 136
  br i1 %min.iters.check1398, label %.lr.ph.i32.i310.preheader, label %vector.memcheck1399

vector.memcheck1399:                              ; preds = %._crit_edge.i304.thread
  %i.aoq = and i64 %i.aon, -8
  %i.aor = add i64 %i.aoq, 8                      ; 2 uses
  %i.aos = getelementptr i8, ptr %i.anx, i64 %i.aor
  %i.aot = getelementptr i8, ptr %.ptr465, i64 %i.aor
  %bound01400 = icmp ult ptr %i.anx, %i.aot
  %bound11401 = icmp ult ptr %.ptr465, %i.aos
  %found.conflict1402 = and i1 %bound01400, %bound11401
  br i1 %found.conflict1402, label %.lr.ph.i32.i310.preheader, label %vector.ph1403

vector.ph1403:                                    ; preds = %vector.memcheck1399
  %n.vec1404 = and i64 %i.aop, 4611686018427387900 ; 3 uses
  %i.aou = shl i64 %n.vec1404, 3                  ; 2 uses
  %i.aov = getelementptr i8, ptr %i.anx, i64 %i.aou
  %i.aow = getelementptr i8, ptr %.ptr465, i64 %i.aou
  br label %vector.body1405

vector.body1405:                                  ; preds = %vector.body1405, %vector.ph1403
  %index1406 = phi i64 [ 0, %vector.ph1403 ], [ %index.next1413, %vector.body1405 ] ; 2 uses
  %i.aox = shl i64 %index1406, 3                  ; 2 uses
  %next.gep1407 = getelementptr i8, ptr %i.anx, i64 %i.aox ; 3 uses
  %next.gep1408 = getelementptr i8, ptr %.ptr465, i64 %i.aox ; 2 uses
  %i.aoy = getelementptr i8, ptr %next.gep1408, i64 16
  %wide.load1409 = load <2 x i64>, ptr %next.gep1408, align 8, !tbaa !20, !alias.scope !187
  %wide.load1410 = load <2 x i64>, ptr %i.aoy, align 8, !tbaa !20, !alias.scope !187
  %i.aoz = getelementptr i8, ptr %next.gep1407, i64 16 ; 2 uses
  %wide.load1411 = load <2 x i64>, ptr %next.gep1407, align 8, !tbaa !20, !alias.scope !188, !noalias !187
  %wide.load1412 = load <2 x i64>, ptr %i.aoz, align 8, !tbaa !20, !alias.scope !188, !noalias !187
  %i.apa = xor <2 x i64> %wide.load1411, %wide.load1409
  %i.apb = xor <2 x i64> %wide.load1412, %wide.load1410
  store <2 x i64> %i.apa, ptr %next.gep1407, align 8, !tbaa !20, !alias.scope !188, !noalias !187
  store <2 x i64> %i.apb, ptr %i.aoz, align 8, !tbaa !20, !alias.scope !188, !noalias !187
  %index.next1413 = add nuw i64 %index1406, 4     ; 2 uses
  %i.apc = icmp eq i64 %index.next1413, %n.vec1404
  br i1 %i.apc, label %middle.block1414, label %vector.body1405, !llvm.loop !133

middle.block1414:                                 ; preds = %vector.body1405
  %cmp.n1415 = icmp eq i64 %i.aop, %n.vec1404
  br i1 %cmp.n1415, label %xorbuf.exit319, label %.lr.ph.i32.i310.preheader

.lr.ph.i32.i310.preheader:                        ; preds = %vector.memcheck1399, %._crit_edge.i304.thread, %middle.block1414
  %.sroa.039.2.i311.ph = phi ptr [ %i.anx, %vector.memcheck1399 ], [ %i.anx, %._crit_edge.i304.thread ], [ %i.aov, %middle.block1414 ]
  %.ph1615 = phi ptr [ %.ptr465, %vector.memcheck1399 ], [ %.ptr465, %._crit_edge.i304.thread ], [ %i.aow, %middle.block1414 ]
  br label %.lr.ph.i32.i310

.lr.ph.i32.i310:                                  ; preds = %.lr.ph.i32.i310.preheader, %.lr.ph.i32.i310
  %.sroa.039.2.i311 = phi ptr [ %i.apg, %.lr.ph.i32.i310 ], [ %.sroa.039.2.i311.ph, %.lr.ph.i32.i310.preheader ] ; 3 uses
  %i.apd = phi ptr [ %i.ape, %.lr.ph.i32.i310 ], [ %.ph1615, %.lr.ph.i32.i310.preheader ] ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 8 ; 2 uses
  %i.apf = load i64, ptr %i.apd, align 8, !tbaa !20
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i311, i64 8
  %i.aph = load i64, ptr %.sroa.039.2.i311, align 8, !tbaa !20
  %i.api = xor i64 %i.aph, %i.apf
  store i64 %i.api, ptr %.sroa.039.2.i311, align 8, !tbaa !20
  %i.apj = icmp ult ptr %i.ape, %i.aoh
  br i1 %i.apj, label %.lr.ph.i32.i310, label %xorbuf.exit319, !llvm.loop !134

vector.memcheck1425:                              ; preds = %bb.j
  %i.apk = getelementptr i8, ptr %0, i64 240
  %i.apl = getelementptr i8, ptr %0, i64 112
  %bound01426 = icmp ult ptr %i.anx, %i.apl
  %bound11427 = icmp ult ptr %.ptr465, %i.apk
  %found.conflict1428 = and i1 %bound01426, %bound11427
  br i1 %found.conflict1428, label %.lr.ph56.i293, label %vector.body1433

vector.body1433:                                  ; preds = %vector.memcheck1425
  %wide.load1437 = load <16 x i8>, ptr %.ptr465, align 16, !tbaa !21, !alias.scope !189
  %wide.load1438 = load <16 x i8>, ptr %i.anx, align 16, !tbaa !21, !alias.scope !190, !noalias !189
  %i.apm = xor <16 x i8> %wide.load1438, %wide.load1437
  store <16 x i8> %i.apm, ptr %i.anx, align 16, !tbaa !21, !alias.scope !190, !noalias !189
  br label %xorbuf.exit319

.lr.ph56.i293:                                    ; preds = %vector.memcheck1425
  %i.apn = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.apo = load i8, ptr %.ptr465, align 16, !tbaa !21
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 225 ; 2 uses
  %i.apq = load i8, ptr %i.anx, align 16, !tbaa !21
  %i.apr = xor i8 %i.apq, %i.apo
  store i8 %i.apr, ptr %i.anx, align 16, !tbaa !21
  %i.aps = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.apt = load i8, ptr %i.apn, align 1, !tbaa !21
  %i.apu = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.apv = load i8, ptr %i.app, align 1, !tbaa !21
  %i.apw = xor i8 %i.apv, %i.apt
  store i8 %i.apw, ptr %i.app, align 1, !tbaa !21
  %i.apx = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.apy = load i8, ptr %i.aps, align 2, !tbaa !21
  %i.apz = getelementptr inbounds nuw i8, ptr %0, i64 227 ; 2 uses
  %i.aqa = load i8, ptr %i.apu, align 2, !tbaa !21
  %i.aqb = xor i8 %i.aqa, %i.apy
  store i8 %i.aqb, ptr %i.apu, align 2, !tbaa !21
  %i.aqc = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aqd = load i8, ptr %i.apx, align 1, !tbaa !21
  %i.aqe = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.aqf = load i8, ptr %i.apz, align 1, !tbaa !21
  %i.aqg = xor i8 %i.aqf, %i.aqd
  store i8 %i.aqg, ptr %i.apz, align 1, !tbaa !21
  %i.aqh = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.aqi = load i8, ptr %i.aqc, align 4, !tbaa !21
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 2 uses
  %i.aqk = load i8, ptr %i.aqe, align 4, !tbaa !21
  %i.aql = xor i8 %i.aqk, %i.aqi
  store i8 %i.aql, ptr %i.aqe, align 4, !tbaa !21
  %i.aqm = getelementptr inbounds nuw i8, ptr %0, i64 102
  %i.aqn = load i8, ptr %i.aqh, align 1, !tbaa !21
  %i.aqo = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %i.aqp = load i8, ptr %i.aqj, align 1, !tbaa !21
  %i.aqq = xor i8 %i.aqp, %i.aqn
  store i8 %i.aqq, ptr %i.aqj, align 1, !tbaa !21
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.aqs = load i8, ptr %i.aqm, align 2, !tbaa !21
  %i.aqt = getelementptr inbounds nuw i8, ptr %0, i64 231 ; 2 uses
  %i.aqu = load i8, ptr %i.aqo, align 2, !tbaa !21
  %i.aqv = xor i8 %i.aqu, %i.aqs
  store i8 %i.aqv, ptr %i.aqo, align 2, !tbaa !21
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aqx = load i8, ptr %i.aqr, align 1, !tbaa !21
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.aqz = load i8, ptr %i.aqt, align 1, !tbaa !21
  %i.ara = xor i8 %i.aqz, %i.aqx
  store i8 %i.ara, ptr %i.aqt, align 1, !tbaa !21
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.arc = load i8, ptr %i.aqw, align 8, !tbaa !21
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.are = load i8, ptr %i.aqy, align 8, !tbaa !21
  %i.arf = xor i8 %i.are, %i.arc
  store i8 %i.arf, ptr %i.aqy, align 8, !tbaa !21
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.arh = load i8, ptr %i.arb, align 1, !tbaa !21
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 2 uses
  %i.arj = load i8, ptr %i.ard, align 1, !tbaa !21
  %i.ark = xor i8 %i.arj, %i.arh
  store i8 %i.ark, ptr %i.ard, align 1, !tbaa !21
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.arm = load i8, ptr %i.arg, align 2, !tbaa !21
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 235 ; 2 uses
  %i.aro = load i8, ptr %i.ari, align 2, !tbaa !21
  %i.arp = xor i8 %i.aro, %i.arm
  store i8 %i.arp, ptr %i.ari, align 2, !tbaa !21
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.arr = load i8, ptr %i.arl, align 1, !tbaa !21
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.art = load i8, ptr %i.arn, align 1, !tbaa !21
  %i.aru = xor i8 %i.art, %i.arr
  store i8 %i.aru, ptr %i.arn, align 1, !tbaa !21
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.arw = load i8, ptr %i.arq, align 4, !tbaa !21
  %i.arx = getelementptr inbounds nuw i8, ptr %0, i64 237 ; 2 uses
  %i.ary = load i8, ptr %i.ars, align 4, !tbaa !21
  %i.arz = xor i8 %i.ary, %i.arw
  store i8 %i.arz, ptr %i.ars, align 4, !tbaa !21
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.asb = load i8, ptr %i.arv, align 1, !tbaa !21
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 238 ; 2 uses
  %i.asd = load i8, ptr %i.arx, align 1, !tbaa !21
  %i.ase = xor i8 %i.asd, %i.asb
  store i8 %i.ase, ptr %i.arx, align 1, !tbaa !21
  %i.asf = getelementptr inbounds nuw i8, ptr %0, i64 111
  %i.asg = load i8, ptr %i.asa, align 2, !tbaa !21
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 239 ; 2 uses
  %i.asi = load i8, ptr %i.asc, align 2, !tbaa !21
  %i.asj = xor i8 %i.asi, %i.asg
  store i8 %i.asj, ptr %i.asc, align 2, !tbaa !21
  %i.ask = load i8, ptr %i.asf, align 1, !tbaa !21
  %i.asl = load i8, ptr %i.ash, align 1, !tbaa !21
  %i.asm = xor i8 %i.asl, %i.ask
  store i8 %i.asm, ptr %i.ash, align 1, !tbaa !21
  br label %xorbuf.exit319

xorbuf.exit319:                                   ; preds = %.lr.ph.i32.i310, %vector.body1433, %.lr.ph56.i293, %middle.block1414, %.lr.ph.i.i317.preheader
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.asn, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.aso = ptrtoint ptr %i.asn to i64             ; 2 uses
  %i.asp = or i64 %i.mf, %i.aso
  %i.asq = and i64 %i.asp, 7
  %or.cond.i320 = icmp eq i64 %i.asq, 0
  br i1 %or.cond.i320, label %.lr.ph.i.i349.preheader, label %bb.k

.lr.ph.i.i349.preheader:                          ; preds = %xorbuf.exit319
  %i.asr = load <2 x i64>, ptr %.ptr470, align 16, !tbaa !20
  %i.ass = load <2 x i64>, ptr %i.asn, align 16, !tbaa !20
  %i.ast = xor <2 x i64> %i.ass, %i.asr
  store <2 x i64> %i.ast, ptr %i.asn, align 16, !tbaa !20
  br label %xorbuf.exit351

bb.k:                                             ; preds = %xorbuf.exit319
  %i.asu = xor i64 %i.mf, %i.aso
  %i.asv = and i64 %i.asu, 7
  %i.asw = icmp eq i64 %i.asv, 0
  br i1 %i.asw, label %._crit_edge.i336.thread, label %vector.memcheck1498

._crit_edge.i336.thread:                          ; preds = %bb.k
  %i.asx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.asy = ptrtoaddr ptr %i.asx to i64
  %i.asz = ptrtoaddr ptr %.ptr470 to i64          ; 2 uses
  %i.ata = add nuw i64 %i.asz, 8
  %i.atb = tail call i64 @llvm.umax.i64(i64 %i.asy, i64 %i.ata)
  %i.atc = xor i64 %i.asz, -1
  %i.atd = add i64 %i.atb, %i.atc                 ; 3 uses
  %i.ate = lshr i64 %i.atd, 3
  %i.atf = add nuw nsw i64 %i.ate, 1              ; 2 uses
  %min.iters.check1471 = icmp ult i64 %i.atd, 136
  br i1 %min.iters.check1471, label %.lr.ph.i32.i342.preheader, label %vector.memcheck1472

vector.memcheck1472:                              ; preds = %._crit_edge.i336.thread
  %i.atg = and i64 %i.atd, -8
  %i.ath = add i64 %i.atg, 8                      ; 2 uses
  %i.ati = getelementptr i8, ptr %i.asn, i64 %i.ath
  %i.atj = getelementptr i8, ptr %.ptr470, i64 %i.ath
  %bound01473 = icmp ult ptr %i.asn, %i.atj
  %bound11474 = icmp ult ptr %.ptr470, %i.ati
  %found.conflict1475 = and i1 %bound01473, %bound11474
  br i1 %found.conflict1475, label %.lr.ph.i32.i342.preheader, label %vector.ph1476

vector.ph1476:                                    ; preds = %vector.memcheck1472
  %n.vec1477 = and i64 %i.atf, 4611686018427387900 ; 3 uses
  %i.atk = shl i64 %n.vec1477, 3                  ; 2 uses
  %i.atl = getelementptr i8, ptr %i.asn, i64 %i.atk
  %i.atm = getelementptr i8, ptr %.ptr470, i64 %i.atk
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1476
  %index1479 = phi i64 [ 0, %vector.ph1476 ], [ %index.next1486, %vector.body1478 ] ; 2 uses
  %i.atn = shl i64 %index1479, 3                  ; 2 uses
  %next.gep1480 = getelementptr i8, ptr %i.asn, i64 %i.atn ; 3 uses
  %next.gep1481 = getelementptr i8, ptr %.ptr470, i64 %i.atn ; 2 uses
  %i.ato = getelementptr i8, ptr %next.gep1481, i64 16
  %wide.load1482 = load <2 x i64>, ptr %next.gep1481, align 8, !tbaa !20, !alias.scope !191
  %wide.load1483 = load <2 x i64>, ptr %i.ato, align 8, !tbaa !20, !alias.scope !191
  %i.atp = getelementptr i8, ptr %next.gep1480, i64 16 ; 2 uses
  %wide.load1484 = load <2 x i64>, ptr %next.gep1480, align 8, !tbaa !20, !alias.scope !192, !noalias !191
  %wide.load1485 = load <2 x i64>, ptr %i.atp, align 8, !tbaa !20, !alias.scope !192, !noalias !191
  %i.atq = xor <2 x i64> %wide.load1484, %wide.load1482
  %i.atr = xor <2 x i64> %wide.load1485, %wide.load1483
  store <2 x i64> %i.atq, ptr %next.gep1480, align 8, !tbaa !20, !alias.scope !192, !noalias !191
  store <2 x i64> %i.atr, ptr %i.atp, align 8, !tbaa !20, !alias.scope !192, !noalias !191
  %index.next1486 = add nuw i64 %index1479, 4     ; 2 uses
  %i.ats = icmp eq i64 %index.next1486, %n.vec1477
  br i1 %i.ats, label %middle.block1487, label %vector.body1478, !llvm.loop !141

middle.block1487:                                 ; preds = %vector.body1478
  %cmp.n1488 = icmp eq i64 %i.atf, %n.vec1477
  br i1 %cmp.n1488, label %xorbuf.exit351, label %.lr.ph.i32.i342.preheader

.lr.ph.i32.i342.preheader:                        ; preds = %vector.memcheck1472, %._crit_edge.i336.thread, %middle.block1487
  %.sroa.039.2.i343.ph = phi ptr [ %i.asn, %vector.memcheck1472 ], [ %i.asn, %._crit_edge.i336.thread ], [ %i.atl, %middle.block1487 ]
  %.ph1612 = phi ptr [ %.ptr470, %vector.memcheck1472 ], [ %.ptr470, %._crit_edge.i336.thread ], [ %i.atm, %middle.block1487 ]
  br label %.lr.ph.i32.i342

.lr.ph.i32.i342:                                  ; preds = %.lr.ph.i32.i342.preheader, %.lr.ph.i32.i342
  %.sroa.039.2.i343 = phi ptr [ %i.atw, %.lr.ph.i32.i342 ], [ %.sroa.039.2.i343.ph, %.lr.ph.i32.i342.preheader ] ; 3 uses
  %i.att = phi ptr [ %i.atu, %.lr.ph.i32.i342 ], [ %.ph1612, %.lr.ph.i32.i342.preheader ] ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 8 ; 2 uses
  %i.atv = load i64, ptr %i.att, align 8, !tbaa !20
  %i.atw = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i343, i64 8
  %i.atx = load i64, ptr %.sroa.039.2.i343, align 8, !tbaa !20
  %i.aty = xor i64 %i.atx, %i.atv
  store i64 %i.aty, ptr %.sroa.039.2.i343, align 8, !tbaa !20
  %i.atz = icmp ult ptr %i.atu, %i.asx
  br i1 %i.atz, label %.lr.ph.i32.i342, label %xorbuf.exit351, !llvm.loop !142

vector.memcheck1498:                              ; preds = %bb.k
  %i.aua = getelementptr i8, ptr %0, i64 256
  %i.aub = getelementptr i8, ptr %0, i64 128
  %bound01499 = icmp ult ptr %i.asn, %i.aub
  %bound11500 = icmp ult ptr %.ptr470, %i.aua
  %found.conflict1501 = and i1 %bound01499, %bound11500
  br i1 %found.conflict1501, label %.lr.ph56.i325, label %vector.body1506

vector.body1506:                                  ; preds = %vector.memcheck1498
  %wide.load1510 = load <16 x i8>, ptr %.ptr470, align 16, !tbaa !21, !alias.scope !193
  %wide.load1511 = load <16 x i8>, ptr %i.asn, align 16, !tbaa !21, !alias.scope !194, !noalias !193
  %i.auc = xor <16 x i8> %wide.load1511, %wide.load1510
  store <16 x i8> %i.auc, ptr %i.asn, align 16, !tbaa !21, !alias.scope !194, !noalias !193
  br label %xorbuf.exit351

.lr.ph56.i325:                                    ; preds = %vector.memcheck1498
  %i.aud = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.aue = load i8, ptr %.ptr470, align 16, !tbaa !21
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  %i.aug = load i8, ptr %i.asn, align 16, !tbaa !21
  %i.auh = xor i8 %i.aug, %i.aue
  store i8 %i.auh, ptr %i.asn, align 16, !tbaa !21
  %i.aui = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.auj = load i8, ptr %i.aud, align 1, !tbaa !21
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 242 ; 2 uses
  %i.aul = load i8, ptr %i.auf, align 1, !tbaa !21
  %i.aum = xor i8 %i.aul, %i.auj
  store i8 %i.aum, ptr %i.auf, align 1, !tbaa !21
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.auo = load i8, ptr %i.aui, align 2, !tbaa !21
  %i.aup = getelementptr inbounds nuw i8, ptr %0, i64 243 ; 2 uses
  %i.auq = load i8, ptr %i.auk, align 2, !tbaa !21
  %i.aur = xor i8 %i.auq, %i.auo
  store i8 %i.aur, ptr %i.auk, align 2, !tbaa !21
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aut = load i8, ptr %i.aun, align 1, !tbaa !21
  %i.auu = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.auv = load i8, ptr %i.aup, align 1, !tbaa !21
  %i.auw = xor i8 %i.auv, %i.aut
  store i8 %i.auw, ptr %i.aup, align 1, !tbaa !21
  %i.aux = getelementptr inbounds nuw i8, ptr %0, i64 117
  %i.auy = load i8, ptr %i.aus, align 4, !tbaa !21
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 245 ; 2 uses
  %i.ava = load i8, ptr %i.auu, align 4, !tbaa !21
  %i.avb = xor i8 %i.ava, %i.auy
  store i8 %i.avb, ptr %i.auu, align 4, !tbaa !21
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.avd = load i8, ptr %i.aux, align 1, !tbaa !21
  %i.ave = getelementptr inbounds nuw i8, ptr %0, i64 246 ; 2 uses
  %i.avf = load i8, ptr %i.auz, align 1, !tbaa !21
  %i.avg = xor i8 %i.avf, %i.avd
  store i8 %i.avg, ptr %i.auz, align 1, !tbaa !21
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 119
  %i.avi = load i8, ptr %i.avc, align 2, !tbaa !21
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 247 ; 2 uses
  %i.avk = load i8, ptr %i.ave, align 2, !tbaa !21
  %i.avl = xor i8 %i.avk, %i.avi
  store i8 %i.avl, ptr %i.ave, align 2, !tbaa !21
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.avn = load i8, ptr %i.avh, align 1, !tbaa !21
  %i.avo = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.avp = load i8, ptr %i.avj, align 1, !tbaa !21
  %i.avq = xor i8 %i.avp, %i.avn
  store i8 %i.avq, ptr %i.avj, align 1, !tbaa !21
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.avs = load i8, ptr %i.avm, align 8, !tbaa !21
  %i.avt = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 2 uses
  %i.avu = load i8, ptr %i.avo, align 8, !tbaa !21
  %i.avv = xor i8 %i.avu, %i.avs
  store i8 %i.avv, ptr %i.avo, align 8, !tbaa !21
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.avx = load i8, ptr %i.avr, align 1, !tbaa !21
  %i.avy = getelementptr inbounds nuw i8, ptr %0, i64 250 ; 2 uses
  %i.avz = load i8, ptr %i.avt, align 1, !tbaa !21
  %i.awa = xor i8 %i.avz, %i.avx
  store i8 %i.awa, ptr %i.avt, align 1, !tbaa !21
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.awc = load i8, ptr %i.avw, align 2, !tbaa !21
  %i.awd = getelementptr inbounds nuw i8, ptr %0, i64 251 ; 2 uses
  %i.awe = load i8, ptr %i.avy, align 2, !tbaa !21
  %i.awf = xor i8 %i.awe, %i.awc
  store i8 %i.awf, ptr %i.avy, align 2, !tbaa !21
  %i.awg = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.awh = load i8, ptr %i.awb, align 1, !tbaa !21
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.awj = load i8, ptr %i.awd, align 1, !tbaa !21
  %i.awk = xor i8 %i.awj, %i.awh
  store i8 %i.awk, ptr %i.awd, align 1, !tbaa !21
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.awm = load i8, ptr %i.awg, align 4, !tbaa !21
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 253 ; 2 uses
  %i.awo = load i8, ptr %i.awi, align 4, !tbaa !21
  %i.awp = xor i8 %i.awo, %i.awm
  store i8 %i.awp, ptr %i.awi, align 4, !tbaa !21
  %i.awq = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.awr = load i8, ptr %i.awl, align 1, !tbaa !21
  %i.aws = getelementptr inbounds nuw i8, ptr %0, i64 254 ; 2 uses
  %i.awt = load i8, ptr %i.awn, align 1, !tbaa !21
  %i.awu = xor i8 %i.awt, %i.awr
  store i8 %i.awu, ptr %i.awn, align 1, !tbaa !21
  %i.awv = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.aww = load i8, ptr %i.awq, align 2, !tbaa !21
  %i.awx = getelementptr inbounds nuw i8, ptr %0, i64 255 ; 2 uses
  %i.awy = load i8, ptr %i.aws, align 2, !tbaa !21
  %i.awz = xor i8 %i.awy, %i.aww
  store i8 %i.awz, ptr %i.aws, align 2, !tbaa !21
  %i.axa = load i8, ptr %i.awv, align 1, !tbaa !21
  %i.axb = load i8, ptr %i.awx, align 1, !tbaa !21
  %i.axc = xor i8 %i.axb, %i.axa
  store i8 %i.axc, ptr %i.awx, align 1, !tbaa !21
  br label %xorbuf.exit351

xorbuf.exit351:                                   ; preds = %.lr.ph.i32.i342, %vector.body1506, %.lr.ph56.i325, %middle.block1487, %.lr.ph.i.i349.preheader
  %i.axd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.axd, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.axe = ptrtoint ptr %i.axd to i64             ; 2 uses
  %i.axf = or i64 %i.qv, %i.axe
  %i.axg = and i64 %i.axf, 7
  %or.cond.i352 = icmp eq i64 %i.axg, 0
  br i1 %or.cond.i352, label %.lr.ph.i.i381.preheader, label %bb.l

.lr.ph.i.i381.preheader:                          ; preds = %xorbuf.exit351
  %i.axh = load <2 x i64>, ptr %.ptr475, align 16, !tbaa !20
  %i.axi = load <2 x i64>, ptr %i.axd, align 16, !tbaa !20
  %i.axj = xor <2 x i64> %i.axi, %i.axh
  store <2 x i64> %i.axj, ptr %i.axd, align 16, !tbaa !20
  br label %xorbuf.exit383.preheader

bb.l:                                             ; preds = %xorbuf.exit351
  %i.axk = xor i64 %i.qv, %i.axe
  %i.axl = and i64 %i.axk, 7
  %i.axm = icmp eq i64 %i.axl, 0
  br i1 %i.axm, label %._crit_edge.i368.thread, label %vector.memcheck1571

._crit_edge.i368.thread:                          ; preds = %bb.l
  %i.axn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.axo = ptrtoaddr ptr %i.axn to i64
  %i.axp = ptrtoaddr ptr %.ptr475 to i64          ; 2 uses
  %i.axq = add nuw i64 %i.axp, 8
  %i.axr = tail call i64 @llvm.umax.i64(i64 %i.axo, i64 %i.axq)
  %i.axs = xor i64 %i.axp, -1
  %i.axt = add i64 %i.axr, %i.axs                 ; 3 uses
  %i.axu = lshr i64 %i.axt, 3
  %i.axv = add nuw nsw i64 %i.axu, 1              ; 2 uses
  %min.iters.check1544 = icmp ult i64 %i.axt, 136
  br i1 %min.iters.check1544, label %.lr.ph.i32.i374.preheader, label %vector.memcheck1545

vector.memcheck1545:                              ; preds = %._crit_edge.i368.thread
  %i.axw = and i64 %i.axt, -8
  %i.axx = add i64 %i.axw, 8                      ; 2 uses
  %i.axy = getelementptr i8, ptr %i.axd, i64 %i.axx
  %i.axz = getelementptr i8, ptr %.ptr475, i64 %i.axx
  %bound01546 = icmp ult ptr %i.axd, %i.axz
  %bound11547 = icmp ult ptr %.ptr475, %i.axy
  %found.conflict1548 = and i1 %bound01546, %bound11547
  br i1 %found.conflict1548, label %.lr.ph.i32.i374.preheader, label %vector.ph1549

vector.ph1549:                                    ; preds = %vector.memcheck1545
  %n.vec1550 = and i64 %i.axv, 4611686018427387900 ; 3 uses
  %i.aya = shl i64 %n.vec1550, 3                  ; 2 uses
  %i.ayb = getelementptr i8, ptr %i.axd, i64 %i.aya
  %i.ayc = getelementptr i8, ptr %.ptr475, i64 %i.aya
  br label %vector.body1551

vector.body1551:                                  ; preds = %vector.body1551, %vector.ph1549
  %index1552 = phi i64 [ 0, %vector.ph1549 ], [ %index.next1559, %vector.body1551 ] ; 2 uses
  %i.ayd = shl i64 %index1552, 3                  ; 2 uses
  %next.gep1553 = getelementptr i8, ptr %i.axd, i64 %i.ayd ; 3 uses
  %next.gep1554 = getelementptr i8, ptr %.ptr475, i64 %i.ayd ; 2 uses
  %i.aye = getelementptr i8, ptr %next.gep1554, i64 16
  %wide.load1555 = load <2 x i64>, ptr %next.gep1554, align 8, !tbaa !20, !alias.scope !195
  %wide.load1556 = load <2 x i64>, ptr %i.aye, align 8, !tbaa !20, !alias.scope !195
  %i.ayf = getelementptr i8, ptr %next.gep1553, i64 16 ; 2 uses
  %wide.load1557 = load <2 x i64>, ptr %next.gep1553, align 8, !tbaa !20, !alias.scope !196, !noalias !195
  %wide.load1558 = load <2 x i64>, ptr %i.ayf, align 8, !tbaa !20, !alias.scope !196, !noalias !195
  %i.ayg = xor <2 x i64> %wide.load1557, %wide.load1555
  %i.ayh = xor <2 x i64> %wide.load1558, %wide.load1556
  store <2 x i64> %i.ayg, ptr %next.gep1553, align 8, !tbaa !20, !alias.scope !196, !noalias !195
  store <2 x i64> %i.ayh, ptr %i.ayf, align 8, !tbaa !20, !alias.scope !196, !noalias !195
  %index.next1559 = add nuw i64 %index1552, 4     ; 2 uses
  %i.ayi = icmp eq i64 %index.next1559, %n.vec1550
  br i1 %i.ayi, label %middle.block1560, label %vector.body1551, !llvm.loop !149

middle.block1560:                                 ; preds = %vector.body1551
  %cmp.n1561 = icmp eq i64 %i.axv, %n.vec1550
  br i1 %cmp.n1561, label %xorbuf.exit383.preheader, label %.lr.ph.i32.i374.preheader

.lr.ph.i32.i374.preheader:                        ; preds = %vector.memcheck1545, %._crit_edge.i368.thread, %middle.block1560
  %.sroa.039.2.i375.ph = phi ptr [ %i.axd, %vector.memcheck1545 ], [ %i.axd, %._crit_edge.i368.thread ], [ %i.ayb, %middle.block1560 ]
  %.ph = phi ptr [ %.ptr475, %vector.memcheck1545 ], [ %.ptr475, %._crit_edge.i368.thread ], [ %i.ayc, %middle.block1560 ]
  br label %.lr.ph.i32.i374

.lr.ph.i32.i374:                                  ; preds = %.lr.ph.i32.i374.preheader, %.lr.ph.i32.i374
  %.sroa.039.2.i375 = phi ptr [ %i.aym, %.lr.ph.i32.i374 ], [ %.sroa.039.2.i375.ph, %.lr.ph.i32.i374.preheader ] ; 3 uses
  %i.ayj = phi ptr [ %i.ayk, %.lr.ph.i32.i374 ], [ %.ph, %.lr.ph.i32.i374.preheader ] ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 8 ; 2 uses
  %i.ayl = load i64, ptr %i.ayj, align 8, !tbaa !20
  %i.aym = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i375, i64 8
  %i.ayn = load i64, ptr %.sroa.039.2.i375, align 8, !tbaa !20
  %i.ayo = xor i64 %i.ayn, %i.ayl
  store i64 %i.ayo, ptr %.sroa.039.2.i375, align 8, !tbaa !20
  %i.ayp = icmp ult ptr %i.ayk, %i.axn
  br i1 %i.ayp, label %.lr.ph.i32.i374, label %xorbuf.exit383.preheader, !llvm.loop !150

vector.memcheck1571:                              ; preds = %bb.l
  %i.ayq = getelementptr i8, ptr %0, i64 272
  %i.ayr = getelementptr i8, ptr %0, i64 144
  %bound01572 = icmp ult ptr %i.axd, %i.ayr
  %bound11573 = icmp ult ptr %.ptr475, %i.ayq
  %found.conflict1574 = and i1 %bound01572, %bound11573
  br i1 %found.conflict1574, label %.lr.ph56.i357, label %vector.body1579

vector.body1579:                                  ; preds = %vector.memcheck1571
  %wide.load1583 = load <16 x i8>, ptr %.ptr475, align 16, !tbaa !21, !alias.scope !197
  %wide.load1584 = load <16 x i8>, ptr %i.axd, align 16, !tbaa !21, !alias.scope !198, !noalias !197
  %i.ays = xor <16 x i8> %wide.load1584, %wide.load1583
  store <16 x i8> %i.ays, ptr %i.axd, align 16, !tbaa !21, !alias.scope !198, !noalias !197
  br label %xorbuf.exit383.preheader

.lr.ph56.i357:                                    ; preds = %vector.memcheck1571
  %i.ayt = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.ayu = load i8, ptr %.ptr475, align 16, !tbaa !21
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 257 ; 2 uses
  %i.ayw = load i8, ptr %i.axd, align 16, !tbaa !21
  %i.ayx = xor i8 %i.ayw, %i.ayu
  store i8 %i.ayx, ptr %i.axd, align 16, !tbaa !21
  %i.ayy = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ayz = load i8, ptr %i.ayt, align 1, !tbaa !21
  %i.aza = getelementptr inbounds nuw i8, ptr %0, i64 258 ; 2 uses
  %i.azb = load i8, ptr %i.ayv, align 1, !tbaa !21
  %i.azc = xor i8 %i.azb, %i.ayz
  store i8 %i.azc, ptr %i.ayv, align 1, !tbaa !21
  %i.azd = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.aze = load i8, ptr %i.ayy, align 2, !tbaa !21
  %i.azf = getelementptr inbounds nuw i8, ptr %0, i64 259 ; 2 uses
  %i.azg = load i8, ptr %i.aza, align 2, !tbaa !21
  %i.azh = xor i8 %i.azg, %i.aze
  store i8 %i.azh, ptr %i.aza, align 2, !tbaa !21
  %i.azi = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.azj = load i8, ptr %i.azd, align 1, !tbaa !21
  %i.azk = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.azl = load i8, ptr %i.azf, align 1, !tbaa !21
  %i.azm = xor i8 %i.azl, %i.azj
  store i8 %i.azm, ptr %i.azf, align 1, !tbaa !21
  %i.azn = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.azo = load i8, ptr %i.azi, align 4, !tbaa !21
  %i.azp = getelementptr inbounds nuw i8, ptr %0, i64 261 ; 2 uses
  %i.azq = load i8, ptr %i.azk, align 4, !tbaa !21
  %i.azr = xor i8 %i.azq, %i.azo
  store i8 %i.azr, ptr %i.azk, align 4, !tbaa !21
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.azt = load i8, ptr %i.azn, align 1, !tbaa !21
  %i.azu = getelementptr inbounds nuw i8, ptr %0, i64 262 ; 2 uses
  %i.azv = load i8, ptr %i.azp, align 1, !tbaa !21
  %i.azw = xor i8 %i.azv, %i.azt
  store i8 %i.azw, ptr %i.azp, align 1, !tbaa !21
  %i.azx = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.azy = load i8, ptr %i.azs, align 2, !tbaa !21
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 263 ; 2 uses
  %i.baa = load i8, ptr %i.azu, align 2, !tbaa !21
  %i.bab = xor i8 %i.baa, %i.azy
  store i8 %i.bab, ptr %i.azu, align 2, !tbaa !21
  %i.bac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bad = load i8, ptr %i.azx, align 1, !tbaa !21
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.baf = load i8, ptr %i.azz, align 1, !tbaa !21
  %i.bag = xor i8 %i.baf, %i.bad
  store i8 %i.bag, ptr %i.azz, align 1, !tbaa !21
  %i.bah = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.bai = load i8, ptr %i.bac, align 8, !tbaa !21
  %i.baj = getelementptr inbounds nuw i8, ptr %0, i64 265 ; 2 uses
  %i.bak = load i8, ptr %i.bae, align 8, !tbaa !21
  %i.bal = xor i8 %i.bak, %i.bai
  store i8 %i.bal, ptr %i.bae, align 8, !tbaa !21
  %i.bam = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.ban = load i8, ptr %i.bah, align 1, !tbaa !21
  %i.bao = getelementptr inbounds nuw i8, ptr %0, i64 266 ; 2 uses
  %i.bap = load i8, ptr %i.baj, align 1, !tbaa !21
  %i.baq = xor i8 %i.bap, %i.ban
  store i8 %i.baq, ptr %i.baj, align 1, !tbaa !21
  %i.bar = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.bas = load i8, ptr %i.bam, align 2, !tbaa !21
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 267 ; 2 uses
  %i.bau = load i8, ptr %i.bao, align 2, !tbaa !21
  %i.bav = xor i8 %i.bau, %i.bas
  store i8 %i.bav, ptr %i.bao, align 2, !tbaa !21
  %i.baw = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bax = load i8, ptr %i.bar, align 1, !tbaa !21
  %i.bay = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.baz = load i8, ptr %i.bat, align 1, !tbaa !21
  %i.bba = xor i8 %i.baz, %i.bax
  store i8 %i.bba, ptr %i.bat, align 1, !tbaa !21
  %i.bbb = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.bbc = load i8, ptr %i.baw, align 4, !tbaa !21
  %i.bbd = getelementptr inbounds nuw i8, ptr %0, i64 269 ; 2 uses
  %i.bbe = load i8, ptr %i.bay, align 4, !tbaa !21
  %i.bbf = xor i8 %i.bbe, %i.bbc
  store i8 %i.bbf, ptr %i.bay, align 4, !tbaa !21
  %i.bbg = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.bbh = load i8, ptr %i.bbb, align 1, !tbaa !21
  %i.bbi = getelementptr inbounds nuw i8, ptr %0, i64 270 ; 2 uses
  %i.bbj = load i8, ptr %i.bbd, align 1, !tbaa !21
  %i.bbk = xor i8 %i.bbj, %i.bbh
  store i8 %i.bbk, ptr %i.bbd, align 1, !tbaa !21
  %i.bbl = getelementptr inbounds nuw i8, ptr %0, i64 143
  %i.bbm = load i8, ptr %i.bbg, align 2, !tbaa !21
  %i.bbn = getelementptr inbounds nuw i8, ptr %0, i64 271 ; 2 uses
  %i.bbo = load i8, ptr %i.bbi, align 2, !tbaa !21
  %i.bbp = xor i8 %i.bbo, %i.bbm
  store i8 %i.bbp, ptr %i.bbi, align 2, !tbaa !21
  %i.bbq = load i8, ptr %i.bbl, align 1, !tbaa !21
  %i.bbr = load i8, ptr %i.bbn, align 1, !tbaa !21
  %i.bbs = xor i8 %i.bbr, %i.bbq
  store i8 %i.bbs, ptr %i.bbn, align 1, !tbaa !21
  br label %xorbuf.exit383.preheader

xorbuf.exit383.preheader:                         ; preds = %.lr.ph.i32.i374, %vector.body1579, %.lr.ph56.i357, %middle.block1560, %.lr.ph.i.i381.preheader
  br label %xorbuf.exit383

xorbuf.exit383:                                   ; preds = %xorbuf.exit383.preheader, %xorbuf.exit383
  %indvars.iv = phi i64 [ %indvars.iv.next, %xorbuf.exit383 ], [ 0, %xorbuf.exit383.preheader ] ; 2 uses
  %i.bbt = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 20 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 256
  %i.bbv = getelementptr i8, ptr %i.bbt, i64 15
  %i.bbw = getelementptr i8, ptr %i.bbt, i64 14
  %i.bbx = load i8, ptr %i.bbw, align 1, !tbaa !21 ; 2 uses
  %i.bby = load i8, ptr %i.bbv, align 1, !tbaa !21
  %i.bbz = tail call i8 @llvm.fshl.i8(i8 %i.bbx, i8 %i.bby, i8 4)
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbt, i64 271
  store i8 %i.bbz, ptr %i.bca, align 1, !tbaa !21
  %i.bcb = getelementptr i8, ptr %i.bbt, i64 13
  %i.bcc = load i8, ptr %i.bcb, align 1, !tbaa !21 ; 2 uses
  %i.bcd = tail call i8 @llvm.fshl.i8(i8 %i.bcc, i8 %i.bbx, i8 4)
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bbt, i64 270
  store i8 %i.bcd, ptr %i.bce, align 1, !tbaa !21
  %i.bcf = getelementptr i8, ptr %i.bbt, i64 12
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !21 ; 2 uses
  %i.bch = tail call i8 @llvm.fshl.i8(i8 %i.bcg, i8 %i.bcc, i8 4)
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bbt, i64 269
  store i8 %i.bch, ptr %i.bci, align 1, !tbaa !21
  %i.bcj = getelementptr i8, ptr %i.bbt, i64 11
end_hunk_0
