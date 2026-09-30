Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/Config?download=true
inline.NumInlined: 5017
inline.NumDeleted: 1341
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6AcceptINS_8internal6HasherIS2_S5_EEEEbRT_:bb.a

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.0912.i.i.i.epil.init = phi i64 [ -5808596455572525216, %.lr.ph.i.i.i.preheader ], [ %.09.i.i.i.3, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.011.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.cu, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter108, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.0912.i.i.i.epil = phi i64 [ %.09.i.i.i.epil, %.lr.ph.i.i.i.epil ], [ %.0912.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.011.i.i.i.epil = phi i64 [ %i.bu, %.lr.ph.i.i.i.epil ], [ %.011.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter109 = phi i64 [ %epil.iter109.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.011.i.i.i.epil
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !60
  %i.bs = zext i8 %i.br to i64
  %i.bt = xor i64 %.0912.i.i.i.epil, %i.bs
  %i.bu = add nuw nsw i64 %.011.i.i.i.epil, 1
  %.09.i.i.i.epil = mul i64 %i.bt, 1099511628211  ; 2 uses
  %epil.iter109.next = add i64 %epil.iter109, 1   ; 2 uses
  %epil.iter109.cmp.not = icmp eq i64 %epil.iter109.next, %xtraiter108
  br i1 %epil.iter109.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1371

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j
  %.09.lcssa.i.i.i = phi i64 [ -5808596455572525216, %bb.j ], [ %.09.i.i.i.3, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.09.i.i.i.epil, %.lr.ph.i.i.i.epil ]
  %i.bv = load ptr, ptr %i.ap, align 8, !tbaa !394
  %i.bw = load ptr, ptr %i.aq, align 8, !tbaa !360 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp slt i64 %i.bz, 8
  br i1 %i.ca, label %bb.k, label %bb.l, !prof !76

bb.k:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_ZN9rapidjson8internal5StackINS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i.i29 = load ptr, ptr %i.aq, align 8, !tbaa !360
  br label %bb.l

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.0912.i.i.i = phi i64 [ -5808596455572525216, %.lr.ph.i.i.i.preheader.new ], [ %.09.i.i.i.3, %.lr.ph.i.i.i ]
  %.011.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.cu, %.lr.ph.i.i.i ] ; 5 uses
  %niter114 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter114.next.3, %.lr.ph.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.011.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !60
  %i.cd = zext i8 %i.cc to i64
  %i.ce = xor i64 %.0912.i.i.i, %i.cd
  %.09.i.i.i = mul i64 %i.ce, 1099511628211
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.011.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !60
  %i.ci = zext i8 %i.ch to i64
  %i.cj = xor i64 %.09.i.i.i, %i.ci
  %.09.i.i.i.1 = mul i64 %i.cj, 1099511628211
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.011.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !60
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.09.i.i.i.1, %i.cn
  %.09.i.i.i.2 = mul i64 %i.co, 1099511628211
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.011.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !60
  %i.cs = zext i8 %i.cr to i64
  %i.ct = xor i64 %.09.i.i.i.2, %i.cs
  %i.cu = add nuw nsw i64 %.011.i.i.i, 4          ; 2 uses
  %.09.i.i.i.3 = mul i64 %i.ct, 1099511628211     ; 3 uses
  %niter114.next.3 = add i64 %niter114, 4         ; 2 uses
  %niter114.ncmp.3 = icmp eq i64 %niter114.next.3, %unroll_iter113
  br i1 %niter114.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !1372

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  %i.cv = phi ptr [ %i.bw, %._crit_edge.i.i.i ], [ %.pre.i.i.i29, %bb.k ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cw, ptr %i.aq, align 8, !tbaa !360
  store i64 %.09.lcssa.i.i.i, ptr %i.cv, align 8, !tbaa !57
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.041.060, i64 16
  %i.cy = tail call noundef zeroext i1 @_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6AcceptINS_8internal6HasherIS2_S5_EEEEbRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.cy, label %bb.i, label %.loopexit, !prof !198

._crit_edge63:                                    ; preds = %bb.i
  %i.cz = shl i32 %i.aw, 1
  %i.da = zext i32 %i.cz to i64
  %.neg.i.i = mul nsw i64 %i.da, -8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !360
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %.neg.i.i ; 13 uses
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !360
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge63
  %wide.trip.count.i = zext i32 %i.aw to i64
  %i.de = add i32 %i.aw, -20
  %or.cond = icmp ult i32 %i.de, 2147483629
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.preheader

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ax, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ <i64 3298534884633, i64 0>, %vector.ph ], [ %i.ds, %vector.body ]
  %vec.phi85 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dt, %vector.body ]
  %i.df = shl i64 %index, 1
  %i.dg = shl i64 %index, 1
  %i.dh = and i64 %i.df, 4294967288
  %i.di = and i64 %i.dg, 4294967288
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dh
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %wide.vec = load <4 x i64>, ptr %i.dj, align 8, !tbaa !57 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec86 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec87 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !57 ; 2 uses
  %strided.vec88 = shufflevector <4 x i64> %wide.vec87, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec89 = shufflevector <4 x i64> %wide.vec87, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.dm = mul <2 x i64> %strided.vec, splat (i64 1099511628211)
  %i.dn = mul <2 x i64> %strided.vec88, splat (i64 1099511628211)
  %i.do = xor <2 x i64> %strided.vec86, %i.dm
  %i.dp = xor <2 x i64> %strided.vec89, %i.dn
  %i.dq = mul <2 x i64> %i.do, splat (i64 1099511628211)
  %i.dr = mul <2 x i64> %i.dp, splat (i64 1099511628211)
  %i.ds = xor <2 x i64> %i.dq, %vec.phi           ; 2 uses
  %i.dt = xor <2 x i64> %i.dr, %vec.phi85         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !1373

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ax
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.01011.i.ph = phi i64 [ 3298534884633, %.lr.ph.preheader.i ], [ %i.dv, %middle.block ] ; 2 uses
  %xtraiter115 = and i64 %i.ax, 1
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.dw = trunc nuw i64 %indvars.iv.i.ph to i32
  %i.dx = shl i32 %i.dw, 1                        ; 2 uses
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !57
  %i.eb = mul i64 %i.ea, 1099511628211
  %i.ec = or disjoint i32 %i.dx, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !57
  %i.eg = xor i64 %i.ef, %i.eb
  %i.eh = mul i64 %i.eg, 1099511628211
  %i.ei = xor i64 %i.eh, %.01011.i.ph             ; 2 uses
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.ei, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.01011.i.unr = phi i64 [ %.01011.i.ph, %.lr.ph.i.preheader ], [ %i.ei, %.lr.ph.i.prol ]
  %i.ej = add nsw i64 %i.ax, -1
  %i.ek = icmp eq i64 %indvars.iv.i.ph, %i.ej
  br i1 %i.ek, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge63.thread, %._crit_edge63
  %i.el = phi ptr [ %i.dd, %._crit_edge63 ], [ %i.ak, %._crit_edge63.thread ], [ %i.dd, %middle.block ], [ %i.dd, %.lr.ph.i ], [ %i.dd, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.em = phi ptr [ %i.db, %._crit_edge63 ], [ %i.aj, %._crit_edge63.thread ], [ %i.db, %middle.block ], [ %i.db, %.lr.ph.i ], [ %i.db, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.010.lcssa.i = phi i64 [ 3298534884633, %._crit_edge63 ], [ 3298534884633, %._crit_edge63.thread ], [ %i.dv, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.fs, %.lr.ph.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !394
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.el to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = icmp slt i64 %i.er, 8
  br i1 %i.es, label %bb.m, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9EndObjectEj.exit, !prof !76

bb.m:                                             ; preds = %._crit_edge.i
  tail call void @_ZN9rapidjson8internal5StackINS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.em, align 8, !tbaa !360
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9EndObjectEj.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01011.i = phi i64 [ %i.fs, %.lr.ph.i ], [ %.01011.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.et = trunc nuw i64 %indvars.iv.i to i32
  %i.eu = shl i32 %i.et, 1                        ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !57
  %i.ey = mul i64 %i.ex, 1099511628211
  %i.ez = or disjoint i32 %i.eu, 1
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !57
  %i.fd = xor i64 %i.fc, %i.ey
  %i.fe = mul i64 %i.fd, 1099511628211
  %i.ff = xor i64 %i.fe, %.01011.i
  %i.fg = trunc i64 %indvars.iv.i to i32
  %i.fh = shl i32 %i.fg, 1                        ; 2 uses
  %i.fi = add i32 %i.fh, 2
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !57
  %i.fm = mul i64 %i.fl, 1099511628211
  %2 = add i32 %i.fh, 3
  %i.fn = zext i32 %2 to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !57
  %i.fq = xor i64 %i.fp, %i.fm
  %i.fr = mul i64 %i.fq, 1099511628211
  %i.fs = xor i64 %i.fr, %i.ff                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1374

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9EndObjectEj.exit: ; preds = %._crit_edge.i, %bb.m
  %i.ft = phi ptr [ %i.el, %._crit_edge.i ], [ %.pre.i, %bb.m ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.em, align 8, !tbaa !360
  store i64 %.010.lcssa.i, ptr %i.ft, align 8, !tbaa !57
  br label %.loopexit

bb.n:                                             ; preds = %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fw = load i32, ptr %0, align 8, !tbaa !60    ; 2 uses
  %.not57 = icmp eq i32 %i.fw, 0
  br i1 %.not57, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.n
  %i.fx = zext nneg i32 %i.fw to i64
  %.neg.i.i3074 = mul nuw nsw i64 %i.fx, -8
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !360
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.neg.i.i3074 ; 2 uses
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !360
  br label %._crit_edge.i36

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !60
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = and i64 %i.gc, 281474976710655
  %i.ge = inttoptr i64 %i.gd to ptr
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %i.gf = getelementptr inbounds nuw i8, ptr %.058, i64 16 ; 2 uses
  %i.gg = load ptr, ptr %i.fv, align 8, !tbaa !60
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = and i64 %i.gh, 281474976710655
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = load i32, ptr %0, align 8, !tbaa !60    ; 3 uses
  %i.gl = zext i32 %i.gk to i64                   ; 4 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gl
  %.not = icmp eq ptr %i.gf, %i.gm
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1375

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.058 = phi ptr [ %i.gf, %bb.o ], [ %i.ge, %.lr.ph.preheader ] ; 2 uses
  %i.gn = tail call noundef zeroext i1 @_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6AcceptINS_8internal6HasherIS2_S5_EEEEbRT_(ptr noundef nonnull align 8 dereferenceable(16) %.058, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.gn, label %bb.o, label %.loopexit, !prof !198

._crit_edge:                                      ; preds = %bb.o
  %i.go = icmp eq i32 %i.gk, 0
  %.neg.i.i30 = mul nsw i64 %i.gl, -8
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !360
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %.neg.i.i30 ; 9 uses
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !360
  br i1 %i.go, label %._crit_edge.i36, label %.lr.ph.i32.preheader

.lr.ph.i32.preheader:                             ; preds = %._crit_edge
  %xtraiter101 = and i64 %i.gl, 3                 ; 3 uses
  %i.gs = icmp ult i32 %i.gk, 4
  br i1 %i.gs, label %.lr.ph.i32.epil.preheader, label %.lr.ph.i32.preheader.new

.lr.ph.i32.preheader.new:                         ; preds = %.lr.ph.i32.preheader
  %unroll_iter106 = and i64 %i.gl, 4294967292
  br label %.lr.ph.i32

._crit_edge.i36.loopexit.unr-lcssa:               ; preds = %.lr.ph.i32
  %lcmp.mod103.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %._crit_edge.i36, label %.lr.ph.i32.epil.preheader

.lr.ph.i32.epil.preheader:                        ; preds = %._crit_edge.i36.loopexit.unr-lcssa, %.lr.ph.i32.preheader
  %indvars.iv.i33.epil.init = phi i64 [ 0, %.lr.ph.i32.preheader ], [ %indvars.iv.next.i34.3, %._crit_edge.i36.loopexit.unr-lcssa ]
  %.089.i.epil.init = phi i64 [ 4398046512844, %.lr.ph.i32.preheader ], [ %i.hx, %._crit_edge.i36.loopexit.unr-lcssa ]
  %lcmp.mod105 = icmp ne i64 %xtraiter101, 0
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i32.epil

.lr.ph.i32.epil:                                  ; preds = %.lr.ph.i32.epil, %.lr.ph.i32.epil.preheader
  %indvars.iv.i33.epil = phi i64 [ %indvars.iv.next.i34.epil, %.lr.ph.i32.epil ], [ %indvars.iv.i33.epil.init, %.lr.ph.i32.epil.preheader ] ; 2 uses
  %.089.i.epil = phi i64 [ %i.gw, %.lr.ph.i32.epil ], [ %.089.i.epil.init, %.lr.ph.i32.epil.preheader ]
  %epil.iter102 = phi i64 [ %epil.iter102.next, %.lr.ph.i32.epil ], [ 0, %.lr.ph.i32.epil.preheader ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i33.epil
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !57
  %i.gv = xor i64 %i.gu, %.089.i.epil
  %i.gw = mul i64 %i.gv, 1099511628211            ; 2 uses
  %indvars.iv.next.i34.epil = add nuw nsw i64 %indvars.iv.i33.epil, 1
  %epil.iter102.next = add i64 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i64 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %._crit_edge.i36, label %.lr.ph.i32.epil, !llvm.loop !1376

._crit_edge.i36:                                  ; preds = %._crit_edge.i36.loopexit.unr-lcssa, %.lr.ph.i32.epil, %._crit_edge.thread, %._crit_edge
  %i.gx = phi ptr [ %i.gr, %._crit_edge ], [ %i.ga, %._crit_edge.thread ], [ %i.gr, %.lr.ph.i32.epil ], [ %i.gr, %._crit_edge.i36.loopexit.unr-lcssa ] ; 2 uses
  %i.gy = phi ptr [ %i.gp, %._crit_edge ], [ %i.fy, %._crit_edge.thread ], [ %i.gp, %.lr.ph.i32.epil ], [ %i.gp, %._crit_edge.i36.loopexit.unr-lcssa ] ; 2 uses
  %.08.lcssa.i = phi i64 [ 4398046512844, %._crit_edge ], [ 4398046512844, %._crit_edge.thread ], [ %i.hx, %._crit_edge.i36.loopexit.unr-lcssa ], [ %i.gw, %.lr.ph.i32.epil ]
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !394
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gx to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = icmp slt i64 %i.hd, 8
  br i1 %i.he, label %bb.p, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8EndArrayEj.exit, !prof !76

bb.p:                                             ; preds = %._crit_edge.i36
  tail call void @_ZN9rapidjson8internal5StackINS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i37 = load ptr, ptr %i.gy, align 8, !tbaa !360
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8EndArrayEj.exit

.lr.ph.i32:                                       ; preds = %.lr.ph.i32, %.lr.ph.i32.preheader.new
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.i32.preheader.new ], [ %indvars.iv.next.i34.3, %.lr.ph.i32 ] ; 5 uses
  %.089.i = phi i64 [ 4398046512844, %.lr.ph.i32.preheader.new ], [ %i.hx, %.lr.ph.i32 ]
  %niter107 = phi i64 [ 0, %.lr.ph.i32.preheader.new ], [ %niter107.next.3, %.lr.ph.i32 ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i33
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !57
  %i.hh = xor i64 %i.hg, %.089.i
  %i.hi = mul i64 %i.hh, 1099511628211
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i33
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !57
  %i.hm = xor i64 %i.hl, %i.hi
  %i.hn = mul i64 %i.hm, 1099511628211
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i33
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !57
  %i.hr = xor i64 %i.hq, %i.hn
  %i.hs = mul i64 %i.hr, 1099511628211
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i33
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !57
  %i.hw = xor i64 %i.hv, %i.hs
  %i.hx = mul i64 %i.hw, 1099511628211            ; 3 uses
  %indvars.iv.next.i34.3 = add nuw nsw i64 %indvars.iv.i33, 4 ; 2 uses
  %niter107.next.3 = add i64 %niter107, 4         ; 2 uses
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %._crit_edge.i36.loopexit.unr-lcssa, label %.lr.ph.i32, !llvm.loop !1377

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE8EndArrayEj.exit: ; preds = %._crit_edge.i36, %bb.p
  %i.hy = phi ptr [ %i.gx, %._crit_edge.i36 ], [ %.pre.i37, %bb.p ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.hz, ptr %i.gy, align 8, !tbaa !360
  store i64 %.08.lcssa.i, ptr %i.hy, align 8, !tbaa !57
  br label %.loopexit

bb.q:                                             ; preds = %bb.a
  %i.ia = and i16 %i.b, 4096
  %.not.i.i38 = icmp eq i16 %i.ia, 0              ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = ptrtoint ptr %i.ic to i64               ; 2 uses
  %i.ie = and i64 %i.id, 281474976710655
  %i.if = inttoptr i64 %i.ie to ptr
  %i.ig = select i1 %.not.i.i38, ptr %i.if, ptr %0 ; 5 uses
  %i.ih = lshr i64 %i.id, 40
  %i.ii = trunc i64 %i.ih to i8
  %i.ij = sext i8 %i.ii to i32
  %i.ik = sub nsw i32 13, %i.ij
  %i.il = load i32, ptr %0, align 8
  %i.im = select i1 %.not.i.i38, i32 %i.il, i32 %i.ik ; 3 uses
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %.not.i.i40 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i40, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %xtraiter = and i64 %i.in, 3                    ; 3 uses
  %i.io = icmp ult i32 %i.im, 4
  br i1 %i.io, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.in, 4294967292
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.0912.i.i.epil.init = phi i64 [ -5808596455572525216, %.lr.ph.i.i.preheader ], [ %.09.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.jv, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.0912.i.i.epil = phi i64 [ %.09.i.i.epil, %.lr.ph.i.i.epil ], [ %.0912.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.011.i.i.epil = phi i64 [ %i.it, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.011.i.i.epil
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !60
  %i.ir = zext i8 %i.iq to i64
  %i.is = xor i64 %.0912.i.i.epil, %i.ir
  %i.it = add nuw nsw i64 %.011.i.i.epil, 1
  %.09.i.i.epil = mul i64 %i.is, 1099511628211    ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E3KeyEPKcjb:bb.a
  %i.cg = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E3KeyEPKcjb(ptr noundef nonnull align 8 dereferenceable(220) %i.cf, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.ca, align 8, !tbaa !429
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp samesign ult i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %.loopexit44, !llvm.loop !1656

.loopexit44:                                      ; preds = %.lr.ph, %.preheader43, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %.03549, i64 88 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !430
  %.not42 = icmp eq ptr %i.cl, null
  br i1 %.not42, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit44
  %i.cm = getelementptr inbounds nuw i8, ptr %.03549, i64 96 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !431
  %.not52 = icmp eq i32 %i.cn, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader, %.lr.ph47
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.lr.ph47 ], [ 0, %.preheader ] ; 2 uses
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !430
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv54
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !423, !nonnull !164, !noundef !164
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -8
  %i.cs = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E3KeyEPKcjb(ptr noundef nonnull align 8 dereferenceable(220) %i.cr, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) ; 0 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.ct = load i32, ptr %i.cm, align 8, !tbaa !431
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next55, %i.cu
  br i1 %i.cv, label %.lr.ph47, label %.loopexit, !llvm.loop !1657

.loopexit:                                        ; preds = %.lr.ph47, %.preheader, %.loopexit44
  %i.cw = getelementptr inbounds nuw i8, ptr %.03549, i64 144 ; 2 uses
  %i.cx = load ptr, ptr %i.z, align 8, !tbaa !148
  %.not = icmp eq ptr %i.cw, %i.cx
  br i1 %.not, label %.sink.split, label %bb.j, !llvm.loop !1658

.sink.split:                                      ; preds = %.loopexit, %bb.i, %bb.h
  %.sink = phi i8 [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %.loopexit ]
  %.036.ph = phi i1 [ false, %bb.h ], [ true, %bb.i ], [ true, %.loopexit ]
  store i8 %.sink, ptr %i.a, align 8, !tbaa !145
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  %.036 = phi i1 [ false, %bb.a ], [ %.036.ph, %.sink.split ]
  ret i1 %.036
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !145, !range !163, !noundef !164
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !148  ; 2 uses
  %.not36 = icmp eq ptr %i.e, %i.g
  br i1 %.not36, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.b
  %i.h = shl i32 %1, 1
  %i.i = zext i32 %i.h to i64
  %.neg.i.i = mul nsw i64 %i.i, -8
  %.not.i = icmp eq i32 %1, 0
  %wide.trip.count.i = zext i32 %1 to i64         ; 5 uses
  %i.j = add i32 %1, -18
  %or.cond = icmp ult i32 %i.j, 2147483631
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.k = add nsw i64 %wide.trip.count.i, -1
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %i.l = phi ptr [ %i.g, %bb.b ], [ %i.dh, %.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !159
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -144
  %i.p = tail call noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE9EndObjectERNS0_23SchemaValidationContextISA_EEj(ptr noundef nonnull align 8 dereferenceable(419) %i.n, ptr noundef nonnull align 8 dereferenceable(139) %i.o, i32 noundef %1)
  br i1 %i.p, label %bb.h, label %bb.g

bb.c:                                             ; preds = %.lr.ph38, %.loopexit
  %.02337 = phi ptr [ %i.e, %.lr.ph38 ], [ %i.dg, %.loopexit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02337, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !426  ; 4 uses
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !148
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.neg.i.i ; 11 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !148
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  br i1 %or.cond, label %vector.body, label %.lr.ph.i.preheader57

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ai, %vector.body ], [ <i64 3298534884633, i64 0>, %.lr.ph.i.preheader ]
  %vec.phi51 = phi <2 x i64> [ %i.aj, %vector.body ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %i.v = shl i64 %index, 1
  %i.w = shl i64 %index, 1
  %i.x = and i64 %i.v, 4294967288
  %i.y = and i64 %i.w, 4294967288
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.x
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %wide.vec = load <4 x i64>, ptr %i.z, align 8, !tbaa !57 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec52 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec53 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !57 ; 2 uses
  %strided.vec54 = shufflevector <4 x i64> %wide.vec53, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec55 = shufflevector <4 x i64> %wide.vec53, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ac = mul <2 x i64> %strided.vec, splat (i64 1099511628211)
  %i.ad = mul <2 x i64> %strided.vec54, splat (i64 1099511628211)
  %i.ae = xor <2 x i64> %strided.vec52, %i.ac
  %i.af = xor <2 x i64> %strided.vec55, %i.ad
  %i.ag = mul <2 x i64> %i.ae, splat (i64 1099511628211)
  %i.ah = mul <2 x i64> %i.af, splat (i64 1099511628211)
  %i.ai = xor <2 x i64> %i.ag, %vec.phi           ; 2 uses
  %i.aj = xor <2 x i64> %i.ah, %vec.phi51         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1659

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader57

.lr.ph.i.preheader57:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01011.i.ph = phi i64 [ 3298534884633, %.lr.ph.i.preheader ], [ %i.al, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader57
  %i.am = trunc nuw i64 %indvars.iv.i.ph to i32
  %i.an = shl i32 %i.am, 1                        ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !57
  %i.ar = mul i64 %i.aq, 1099511628211
  %i.as = or disjoint i32 %i.an, 1
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !57
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1099511628211
  %i.ay = xor i64 %i.ax, %.01011.i.ph             ; 2 uses
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader57
  %.lcssa59.unr = phi i64 [ poison, %.lr.ph.i.preheader57 ], [ %i.ay, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader57 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.01011.i.unr = phi i64 [ %.01011.i.ph, %.lr.ph.i.preheader57 ], [ %i.ay, %.lr.ph.i.prol ]
  %i.az = icmp eq i64 %indvars.iv.i.ph, %i.k
  br i1 %i.az, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  %.010.lcssa.i = phi i64 [ 3298534884633, %bb.d ], [ %i.al, %middle.block ], [ %.lcssa59.unr, %.lr.ph.i.prol.loopexit ], [ %i.cf, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !197
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.u to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp slt i64 %i.be, 8
  br i1 %i.bf, label %bb.e, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit, !prof !76

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !148
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01011.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %.01011.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bg = trunc nuw i64 %indvars.iv.i to i32
  %i.bh = shl i32 %i.bg, 1                        ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !57
  %i.bl = mul i64 %i.bk, 1099511628211
  %i.bm = or disjoint i32 %i.bh, 1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !57
  %i.bq = xor i64 %i.bp, %i.bl
  %i.br = mul i64 %i.bq, 1099511628211
  %i.bs = xor i64 %i.br, %.01011.i
  %i.bt = trunc i64 %indvars.iv.i to i32
  %i.bu = shl i32 %i.bt, 1                        ; 2 uses
  %i.bv = add i32 %i.bu, 2
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !57
  %i.bz = mul i64 %i.by, 1099511628211
  %2 = add i32 %i.bu, 3
  %i.ca = zext i32 %2 to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !57
  %i.cd = xor i64 %i.cc, %i.bz
  %i.ce = mul i64 %i.cd, 1099511628211
  %i.cf = xor i64 %i.ce, %i.bs                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1660

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit: ; preds = %._crit_edge.i, %bb.e
  %i.cg = phi ptr [ %i.u, %._crit_edge.i ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.s, align 8, !tbaa !148
  store i64 %.010.lcssa.i, ptr %i.cg, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit, %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %.02337, i64 72 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !428
  %.not29 = icmp eq ptr %i.cj, null
  br i1 %.not29, label %.loopexit32, label %.preheader31

.preheader31:                                     ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.02337, i64 80 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !429
  %.not39 = icmp eq i32 %i.cl, 0
  br i1 %.not39, label %.loopexit32, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader31, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader31 ] ; 2 uses
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !428
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !423, !nonnull !164, !noundef !164
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %i.cq = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(220) %i.cp, i32 noundef %1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !429
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %.lr.ph, label %.loopexit32, !llvm.loop !1661

.loopexit32:                                      ; preds = %.lr.ph, %.preheader31, %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %.02337, i64 88 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !430
  %.not30 = icmp eq ptr %i.cv, null
  br i1 %.not30, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit32
  %i.cw = getelementptr inbounds nuw i8, ptr %.02337, i64 96 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !431
  %.not40 = icmp eq i32 %i.cx, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph35

.lr.ph35:                                         ; preds = %.preheader, %.lr.ph35
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph35 ], [ 0, %.preheader ] ; 2 uses
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !430
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv42
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !423, !nonnull !164, !noundef !164
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.dc = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(220) %i.db, i32 noundef %1) ; 0 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.dd = load i32, ptr %i.cw, align 8, !tbaa !431
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next43, %i.de
  br i1 %i.df, label %.lr.ph35, label %.loopexit, !llvm.loop !1662

.loopexit:                                        ; preds = %.lr.ph35, %.preheader, %.loopexit32
  %i.dg = getelementptr inbounds nuw i8, ptr %.02337, i64 144 ; 2 uses
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !148 ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.dh
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !1663

bb.g:                                             ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !146
  %i.dk = trunc i32 %i.dj to i1
  br i1 %i.dk, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.dl = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8EndValueEv(ptr noundef nonnull align 8 dereferenceable(220) %0)
  br i1 %i.dl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !146
  %i.do = trunc i32 %i.dn to i1
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dp = phi i1 [ false, %bb.i ], [ true, %bb.j ] ; 2 uses
  %i.dq = zext i1 %i.dp to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.k
  %.sink = phi i8 [ %i.dq, %bb.k ], [ 0, %bb.g ]
  %.024.ph = phi i1 [ %i.dp, %bb.k ], [ false, %bb.g ]
  store i8 %.sink, ptr %i.a, align 8, !tbaa !145
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a
  %.024 = phi i1 [ false, %bb.a ], [ %.024.ph, %.sink.split ]
  ret i1 %.024
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10StartArrayEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !145, !range !163, !noundef !164
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10BeginValueEv(ptr noundef nonnull align 8 dereferenceable(220) %0)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.f = load i32, ptr %i.e, align 4, !tbaa !146
  %i.g = trunc i32 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !148  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -144
  %i.m = tail call noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE10StartArrayERNS0_23SchemaValidationContextISA_EE(ptr noundef nonnull align 8 dereferenceable(419) %i.k, ptr noundef nonnull align 8 dereferenceable(139) %i.l)
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.o = load i32, ptr %i.n, align 4, !tbaa !146
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !197
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !148  ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bb.g, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIcEEvm.exit, !prof !76

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 noundef 1)
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !148
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIcEEvm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIcEEvm.exit: ; preds = %bb.f, %bb.g
  %i.z = phi ptr [ %i.t, %bb.f ], [ %.pre, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !148
  store i8 0, ptr %i.z, align 1, !tbaa !60
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !148
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !148
  br label %.sink.split

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !149 ; 2 uses
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !148
  %.not31 = icmp eq ptr %i.ae, %i.af
  br i1 %.not31, label %.sink.split, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.h, %.loopexit
  %.01832 = phi ptr [ %i.be, %.loopexit ], [ %i.ae, %bb.h ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01832, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !428
  %.not24 = icmp eq ptr %i.ah, null
  br i1 %.not24, label %.loopexit27, label %.preheader26

.preheader26:                                     ; preds = %.lr.ph33
  %i.ai = getelementptr inbounds nuw i8, ptr %.01832, i64 80 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !429
  %.not34 = icmp eq i32 %i.aj, 0
  br i1 %.not34, label %.loopexit27, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader26, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader26 ] ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !428
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !423, !nonnull !164, !noundef !164
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10StartArrayEv(ptr noundef nonnull align 8 dereferenceable(220) %i.an) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !429
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.loopexit27, !llvm.loop !1664
end_hunk_1
