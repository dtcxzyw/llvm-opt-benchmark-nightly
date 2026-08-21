Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/aig?download=true
inline.NumInlined: 1345
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN11aig_manager3imp16max_sharing_proc7processEP3aig:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !25   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i

_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre2.i.i.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.m = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store i64 0, ptr %i.p, align 8, !tbaa !26
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc5visitEP3aig.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1)
  br i1 %i.r, label %_ZN11aig_manager3imp16max_sharing_proc5visitEP3aig.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !247  ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.h, label %_ZNK6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE5emptyEv.exit.lr.ph

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %.pre.i.i = load ptr, ptr %i.s, align 8, !tbaa !247 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !25
  br label %_ZNK6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE5emptyEv.exit.lr.ph

_ZNK6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE5emptyEv.exit.lr.ph: ; preds = %bb.h, %bb.g
  %i.aa = phi i32 [ %.pre2.i.i, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.ab = phi ptr [ %.pre.i.i, %bb.h ], [ %i.t, %bb.g ] ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  store ptr %1, ptr %i.ad, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !250
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.af = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN11aig_manager3imp16max_sharing_proc5visitEP3aig.exit.thread, label %_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit

_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit: ; preds = %_ZNK6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE5emptyEv.exit.lr.ph, %_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit.backedge
  %i.aj = phi ptr [ %.be, %_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit.backedge ], [ %i.ab, %_ZNK6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE5emptyEv.exit.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.am = add i32 %i.al, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !252 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !254
  switch i16 %i.ar, label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit26.thread [
    i16 0, label %bb.i
    i16 1, label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.thread
  ]

bb.i:                                             ; preds = %_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit
  store i16 1, ptr %i.aq, align 8, !tbaa !254
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.as, align 8, !tbaa !26
  %i.at = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.au = and i64 %i.at, -2
  %i.av = inttoptr i64 %i.au to ptr               ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !25 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.l, label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %.pre.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i.i

_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i.i: ; preds = %bb.l, %bb.k
  %i.bg = phi i32 [ %.pre2.i.i.i.i, %bb.l ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bh = phi ptr [ %.pre.i.i.i.i, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  store i64 0, ptr %i.bk, align 8, !tbaa !26
  %i.bl = add i32 %i.bg, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.thread

bb.m:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = icmp ult i32 %i.bn, 2
  br i1 %i.bo, label %.loopexit90, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.av, align 8, !tbaa !151 ; 3 uses
  %i.bq = add i32 %i.bp, -2147483647              ; 2 uses
  %i.br = load ptr, ptr %i.ag, align 8, !tbaa !147 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i55, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i32

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i32:       ; preds = %bb.n
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !25 ; 3 uses
  %.not.i33 = icmp ult i32 %i.bq, %i.bu
  br i1 %.not.i33, label %bb.q, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i34

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i55:     ; preds = %bb.n
  %i.bv = add i32 %i.bp, -2147483646              ; 2 uses
  %.not.not.i.i56 = icmp eq i32 %i.bv, 0
  br i1 %.not.not.i.i56, label %.loopexit90, label %thread-pre-split.i.i37.preheader

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i34: ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i32
  %i.bw = add i32 %i.bp, -2147483646              ; 3 uses
  %.not16.i.i35 = icmp ugt i32 %i.bw, %i.bu
  br i1 %.not16.i.i35, label %thread-pre-split.i.i37.preheader, label %bb.o

thread-pre-split.i.i37.preheader:                 ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i55, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i34
  %.ph187 = phi i32 [ %i.bw, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i34 ], [ %i.bv, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i55 ] ; 4 uses
  %.ph188 = phi ptr [ %i.br, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i34 ], [ null, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i55 ]
  %.0.i17.i.i40.ph = phi i32 [ %i.bu, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i34 ], [ 0, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i55 ] ; 2 uses
  br label %thread-pre-split.i.i37

bb.o:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i34
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !25
  br label %.loopexit90

thread-pre-split.i.i37:                           ; preds = %thread-pre-split.i.i37.preheader, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i48
  %i.bx = phi ptr [ %.pr.pre.i.i49, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i48 ], [ %.ph188, %thread-pre-split.i.i37.preheader ] ; 5 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i48, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i41

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i41: ; preds = %thread-pre-split.i.i37
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.cb = icmp ugt i32 %.ph187, %i.ca
  br i1 %i.cb, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i48, label %bb.p

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i48: ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i41, %thread-pre-split.i.i37
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %.pr.pre.i.i49 = load ptr, ptr %i.ag, align 8, !tbaa !147
  br label %thread-pre-split.i.i37, !llvm.loop !255

bb.p:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i41
  %i.cc = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %.ph187, ptr %i.cc, align 4, !tbaa !25
  %i.cd = zext i32 %.ph187 to i64                 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cd
  %.not1319.i.i42 = icmp eq i32 %.0.i17.i.i40.ph, %.ph187
  br i1 %.not1319.i.i42, label %.loopexit90, label %.lr.ph.preheader.i.i43

.lr.ph.preheader.i.i43:                           ; preds = %bb.p
  %i.cf = zext i32 %.0.i17.i.i40.ph to i64        ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cf ; 3 uses
  %.pre.i.i44 = load i64, ptr @_ZN7aig_lit4nullE, align 8, !tbaa !26 ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cd, 3
  %2 = shl nuw nsw i64 %i.cf, 3
  %3 = add nsw i64 %i.ch, -8
  %i.ci = sub nsw i64 %3, %2                      ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.ci, 24
  br i1 %min.iters.check172, label %.lr.ph.i.i45.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.preheader.i.i43
  %n.vec174 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cl = shl i64 %n.vec174, 3
  %i.cm = getelementptr i8, ptr %i.cg, i64 %i.cl
  %broadcast.splatinsert175 = insertelement <2 x i64> poison, i64 %.pre.i.i44, i64 0
  %broadcast.splat176 = shufflevector <2 x i64> %broadcast.splatinsert175, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph173
  %index178 = phi i64 [ 0, %vector.ph173 ], [ %index.next180, %vector.body177 ] ; 2 uses
  %i.cn = shl i64 %index178, 3
  %next.gep179 = getelementptr i8, ptr %i.cg, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep179, i64 16
  store <2 x i64> %broadcast.splat176, ptr %next.gep179, align 8, !tbaa !26
  store <2 x i64> %broadcast.splat176, ptr %i.co, align 8, !tbaa !26
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next180, %n.vec174
  br i1 %i.cp, label %middle.block181, label %vector.body177, !llvm.loop !256

middle.block181:                                  ; preds = %vector.body177
  %cmp.n182 = icmp eq i64 %i.ck, %n.vec174
  br i1 %cmp.n182, label %.loopexit90, label %.lr.ph.i.i45.preheader

.lr.ph.i.i45.preheader:                           ; preds = %.lr.ph.preheader.i.i43, %middle.block181
  %.020.i.i46.ph = phi ptr [ %i.cg, %.lr.ph.preheader.i.i43 ], [ %i.cm, %middle.block181 ]
  br label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %.lr.ph.i.i45.preheader, %.lr.ph.i.i45
  %.020.i.i46 = phi ptr [ %i.cq, %.lr.ph.i.i45 ], [ %.020.i.i46.ph, %.lr.ph.i.i45.preheader ] ; 2 uses
  store i64 %.pre.i.i44, ptr %.020.i.i46, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %.020.i.i46, i64 8 ; 2 uses
  %.not13.i.i47 = icmp eq ptr %i.cq, %i.ce
  br i1 %.not13.i.i47, label %.loopexit90, label %.lr.ph.i.i45, !llvm.loop !257

bb.q:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i32
  %i.cr = zext i32 %i.bq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !26 ; 3 uses
  %.not10.i50 = icmp eq i64 %i.ct, 0
  br i1 %.not10.i50, label %.loopexit90, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 4 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !25 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !25
  %i.da = icmp eq i32 %i.cx, %i.cz
  br i1 %i.da, label %bb.t, label %_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit57

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %.pre.i.i.i52 = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert.i.i.i53 = getelementptr inbounds i8, ptr %.pre.i.i.i52, i64 -4
  %.pre2.i.i.i54 = load i32, ptr %.phi.trans.insert.i.i.i53, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit57

_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit57: ; preds = %bb.s, %bb.t
  %i.db = phi i32 [ %.pre2.i.i.i54, %bb.t ], [ %i.cx, %bb.s ] ; 2 uses
  %i.dc = phi ptr [ %.pre.i.i.i52, %bb.t ], [ %i.cu, %bb.s ] ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.de = zext i32 %i.db to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.de
  store i64 %i.ct, ptr %i.df, align 8, !tbaa !26
  %i.dg = add i32 %i.db, 1
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !25
  %i.dh = and i64 %i.ct, -2
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !16
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !16
  br label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.thread

.loopexit90:                                      ; preds = %.lr.ph.i.i45, %middle.block181, %bb.m, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i55, %bb.o, %bb.p, %bb.q
  %i.dm = load ptr, ptr %i.s, align 8, !tbaa !247 ; 4 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.sink.split, label %bb.u

bb.u:                                             ; preds = %.loopexit90
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !25 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !25
  %i.ds = icmp eq i32 %i.dp, %i.dr
  br i1 %i.ds, label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.sink.split, label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit

_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.thread: ; preds = %_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit57, %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i.i, %_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit
  %i.dt = load i16, ptr %i.aq, align 8, !tbaa !254
  %i.du = add i16 %i.dt, 1
  store i16 %i.du, ptr %i.aq, align 8, !tbaa !254
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.0.0.copyload.i15 = load ptr, ptr %i.dv, align 8, !tbaa !26
  %i.dw = ptrtoint ptr %.sroa.0.0.copyload.i15 to i64
  %i.dx = and i64 %i.dw, -2
  %i.dy = inttoptr i64 %i.dx to ptr               ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !12
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.thread
  %i.ec = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 4 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !25 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 -8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !25
  %i.ei = icmp eq i32 %i.ef, %i.eh
  br i1 %i.ei, label %bb.x, label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i.i22

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %.pre.i.i.i.i23 = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert.i.i.i.i24 = getelementptr inbounds i8, ptr %.pre.i.i.i.i23, i64 -4
  %.pre2.i.i.i.i25 = load i32, ptr %.phi.trans.insert.i.i.i.i24, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i.i22

_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i.i22: ; preds = %bb.x, %bb.w
  %i.ej = phi i32 [ %.pre2.i.i.i.i25, %bb.x ], [ %i.ef, %bb.w ] ; 2 uses
  %i.ek = phi ptr [ %.pre.i.i.i.i23, %bb.x ], [ %i.ec, %bb.w ] ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.em = zext i32 %i.ej to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.em
  store i64 0, ptr %i.en, align 8, !tbaa !26
  %i.eo = add i32 %i.ej, 1
  store i32 %i.eo, ptr %i.el, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit26.thread

bb.y:                                             ; preds = %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.thread
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !16
  %i.er = icmp ult i32 %i.eq, 2
  br i1 %i.er, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = load i32, ptr %i.dy, align 8, !tbaa !151 ; 3 uses
  %i.et = add i32 %i.es, -2147483647              ; 2 uses
  %i.eu = load ptr, ptr %i.ag, align 8, !tbaa !147 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i81, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i58

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i58:       ; preds = %bb.z
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -4 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !25 ; 3 uses
  %.not.i59 = icmp ult i32 %i.et, %i.ex
  br i1 %.not.i59, label %bb.ac, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i60

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i81:     ; preds = %bb.z
  %i.ey = add i32 %i.es, -2147483646              ; 2 uses
  %.not.not.i.i82 = icmp eq i32 %i.ey, 0
  br i1 %.not.not.i.i82, label %.loopexit, label %thread-pre-split.i.i63.preheader

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i60: ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i58
  %i.ez = add i32 %i.es, -2147483646              ; 3 uses
  %.not16.i.i61 = icmp ugt i32 %i.ez, %i.ex
  br i1 %.not16.i.i61, label %thread-pre-split.i.i63.preheader, label %bb.aa

thread-pre-split.i.i63.preheader:                 ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i81, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i60
  %.ph185 = phi i32 [ %i.ez, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i60 ], [ %i.ey, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i81 ] ; 4 uses
  %.ph186 = phi ptr [ %i.eu, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i60 ], [ null, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i81 ]
  %.0.i17.i.i66.ph = phi i32 [ %i.ex, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i60 ], [ 0, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i81 ] ; 2 uses
  br label %thread-pre-split.i.i63

bb.aa:                                            ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i60
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !25
  br label %.loopexit

thread-pre-split.i.i63:                           ; preds = %thread-pre-split.i.i63.preheader, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i74
  %i.fa = phi ptr [ %.pr.pre.i.i75, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i74 ], [ %.ph186, %thread-pre-split.i.i63.preheader ] ; 5 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i74, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i67

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i67: ; preds = %thread-pre-split.i.i63
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 -8
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !25
  %i.fe = icmp ugt i32 %.ph185, %i.fd
  br i1 %i.fe, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i74, label %bb.ab

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i74: ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i67, %thread-pre-split.i.i63
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %.pr.pre.i.i75 = load ptr, ptr %i.ag, align 8, !tbaa !147
  br label %thread-pre-split.i.i63, !llvm.loop !255

bb.ab:                                            ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i67
  %i.ff = getelementptr inbounds i8, ptr %i.fa, i64 -4
  store i32 %.ph185, ptr %i.ff, align 4, !tbaa !25
  %i.fg = zext i32 %.ph185 to i64                 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fg
  %.not1319.i.i68 = icmp eq i32 %.0.i17.i.i66.ph, %.ph185
  br i1 %.not1319.i.i68, label %.loopexit, label %.lr.ph.preheader.i.i69

.lr.ph.preheader.i.i69:                           ; preds = %bb.ab
  %i.fi = zext i32 %.0.i17.i.i66.ph to i64        ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fi ; 3 uses
  %.pre.i.i70 = load i64, ptr @_ZN7aig_lit4nullE, align 8, !tbaa !26 ; 2 uses
  %i.fk = shl nuw nsw i64 %i.fg, 3
  %4 = shl nuw nsw i64 %i.fi, 3
  %5 = add nsw i64 %i.fk, -8
  %i.fl = sub nsw i64 %5, %4                      ; 2 uses
  %i.fm = lshr exact i64 %i.fl, 3
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check159 = icmp ult i64 %i.fl, 24
  br i1 %min.iters.check159, label %.lr.ph.i.i71.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph.preheader.i.i69
  %n.vec161 = and i64 %i.fn, 4611686018427387900  ; 3 uses
  %i.fo = shl i64 %n.vec161, 3
  %i.fp = getelementptr i8, ptr %i.fj, i64 %i.fo
  %broadcast.splatinsert162 = insertelement <2 x i64> poison, i64 %.pre.i.i70, i64 0
  %broadcast.splat163 = shufflevector <2 x i64> %broadcast.splatinsert162, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph160
  %index165 = phi i64 [ 0, %vector.ph160 ], [ %index.next167, %vector.body164 ] ; 2 uses
  %i.fq = shl i64 %index165, 3
  %next.gep166 = getelementptr i8, ptr %i.fj, i64 %i.fq ; 2 uses
  %i.fr = getelementptr i8, ptr %next.gep166, i64 16
  store <2 x i64> %broadcast.splat163, ptr %next.gep166, align 8, !tbaa !26
  store <2 x i64> %broadcast.splat163, ptr %i.fr, align 8, !tbaa !26
  %index.next167 = add nuw i64 %index165, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next167, %n.vec161
  br i1 %i.fs, label %middle.block168, label %vector.body164, !llvm.loop !258

middle.block168:                                  ; preds = %vector.body164
  %cmp.n169 = icmp eq i64 %i.fn, %n.vec161
  br i1 %cmp.n169, label %.loopexit, label %.lr.ph.i.i71.preheader

.lr.ph.i.i71.preheader:                           ; preds = %.lr.ph.preheader.i.i69, %middle.block168
  %.020.i.i72.ph = phi ptr [ %i.fj, %.lr.ph.preheader.i.i69 ], [ %i.fp, %middle.block168 ]
  br label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %.lr.ph.i.i71.preheader, %.lr.ph.i.i71
  %.020.i.i72 = phi ptr [ %i.ft, %.lr.ph.i.i71 ], [ %.020.i.i72.ph, %.lr.ph.i.i71.preheader ] ; 2 uses
  store i64 %.pre.i.i70, ptr %.020.i.i72, align 8, !tbaa !26
  %i.ft = getelementptr inbounds nuw i8, ptr %.020.i.i72, i64 8 ; 2 uses
  %.not13.i.i73 = icmp eq ptr %i.ft, %i.fh
  br i1 %.not13.i.i73, label %.loopexit, label %.lr.ph.i.i71, !llvm.loop !259

bb.ac:                                            ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i58
  %i.fu = zext i32 %i.et to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !26 ; 3 uses
  %.not10.i76 = icmp eq i64 %i.fw, 0
  br i1 %.not10.i76, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fx = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 4 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 -4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !25 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.fx, i64 -8
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !25
  %i.gd = icmp eq i32 %i.ga, %i.gc
  br i1 %i.gd, label %bb.af, label %_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit83

bb.af:                                            ; preds = %bb.ae, %bb.ad
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %.pre.i.i.i78 = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert.i.i.i79 = getelementptr inbounds i8, ptr %.pre.i.i.i78, i64 -4
  %.pre2.i.i.i80 = load i32, ptr %.phi.trans.insert.i.i.i79, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit83

_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit83: ; preds = %bb.ae, %bb.af
  %i.ge = phi i32 [ %.pre2.i.i.i80, %bb.af ], [ %i.ga, %bb.ae ] ; 2 uses
  %i.gf = phi ptr [ %.pre.i.i.i78, %bb.af ], [ %i.fx, %bb.ae ] ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %i.gh = zext i32 %i.ge to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gh
  store i64 %i.fw, ptr %i.gi, align 8, !tbaa !26
  %i.gj = add i32 %i.ge, 1
  store i32 %i.gj, ptr %i.gg, align 4, !tbaa !25
  %i.gk = and i64 %i.fw, -2
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !16
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !16
  br label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit26.thread

.loopexit:                                        ; preds = %.lr.ph.i.i71, %middle.block168, %bb.y, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i81, %bb.aa, %bb.ab, %bb.ac
  %i.gp = load ptr, ptr %i.s, align 8, !tbaa !247 ; 4 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.sink.split, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 -4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !25 ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gp, i64 -8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !25
  %i.gv = icmp eq i32 %i.gs, %i.gu
  br i1 %i.gv, label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.sink.split, label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit

_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit26.thread: ; preds = %_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit, %_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit83, %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i.i22
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !16
  %i.gy = icmp ult i32 %i.gx, 2
  br i1 %i.gy, label %.loopexit91, label %bb.ah

bb.ah:                                            ; preds = %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit26.thread
  %i.gz = load i32, ptr %i.ap, align 8, !tbaa !151 ; 3 uses
  %i.ha = add i32 %i.gz, -2147483647              ; 2 uses
  %i.hb = load ptr, ptr %i.ag, align 8, !tbaa !147 ; 4 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i:         ; preds = %bb.ah
  %i.hd = getelementptr inbounds i8, ptr %i.hb, i64 -4 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !25 ; 3 uses
  %.not.i = icmp ult i32 %i.ha, %i.he
  br i1 %.not.i, label %bb.ak, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i:       ; preds = %bb.ah
  %i.hf = add i32 %i.gz, -2147483646              ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not.not.i.i, label %.loopexit91, label %thread-pre-split.i.i.preheader

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i: ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i
  %i.hg = add i32 %i.gz, -2147483646              ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.hg, %i.he
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.ai

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi i32 [ %i.hg, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i ], [ %i.hf, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.ph184 = phi ptr [ %i.hb, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i ]
  %.0.i17.i.i.ph = phi i32 [ %i.he, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.ai:                                            ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.hg, ptr %i.hd, align 4, !tbaa !25
  br label %.loopexit91

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i
  %i.hh = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph184, %thread-pre-split.i.i.preheader ] ; 5 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i:   ; preds = %thread-pre-split.i.i
  %i.hj = getelementptr inbounds i8, ptr %i.hh, i64 -8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !25
  %i.hl = icmp ugt i32 %.ph, %i.hk
  br i1 %i.hl, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i, label %bb.aj

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %.pr.pre.i.i = load ptr, ptr %i.ag, align 8, !tbaa !147
  br label %thread-pre-split.i.i, !llvm.loop !255

bb.aj:                                            ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i.i
  %i.hm = getelementptr inbounds i8, ptr %i.hh, i64 -4
  store i32 %.ph, ptr %i.hm, align 4, !tbaa !25
  %i.hn = zext i32 %.ph to i64                    ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hn
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %.ph
  br i1 %.not1319.i.i, label %.loopexit91, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aj
  %i.hp = zext i32 %.0.i17.i.i.ph to i64          ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hp ; 3 uses
  %.pre.i.i27 = load i64, ptr @_ZN7aig_lit4nullE, align 8, !tbaa !26 ; 2 uses
  %i.hr = shl nuw nsw i64 %i.hn, 3
  %6 = shl nuw nsw i64 %i.hp, 3
  %7 = add nsw i64 %i.hr, -8
  %i.hs = sub nsw i64 %7, %6                      ; 2 uses
  %i.ht = lshr exact i64 %i.hs, 3
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hs, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.hu, 4611686018427387900     ; 3 uses
  %i.hv = shl i64 %n.vec, 3
  %i.hw = getelementptr i8, ptr %i.hq, i64 %i.hv
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i.i27, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.hq, i64 %i.hx ; 2 uses
  %i.hy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !26
  store <2 x i64> %broadcast.splat, ptr %i.hy, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %middle.block, label %vector.body, !llvm.loop !260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hu, %n.vec
  br i1 %cmp.n, label %.loopexit91, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.020.i.i.ph = phi ptr [ %i.hq, %.lr.ph.preheader.i.i ], [ %i.hw, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %i.ia, %.lr.ph.i.i ], [ %.020.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i64 %.pre.i.i27, ptr %.020.i.i, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ia, %i.ho
  br i1 %.not13.i.i, label %.loopexit91, label %.lr.ph.i.i, !llvm.loop !261

bb.ak:                                            ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i
  %i.ib = zext i32 %i.ha to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ib
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !26 ; 3 uses
  %.not10.i = icmp eq i64 %i.id, 0
  br i1 %.not10.i, label %.loopexit91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ie = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 4 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 -4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !25 ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ie, i64 -8
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !25
  %i.ik = icmp eq i32 %i.ih, %i.ij
  br i1 %i.ik, label %bb.an, label %_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %.pre.i.i.i29 = load ptr, ptr %i.ah, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert.i.i.i30 = getelementptr inbounds i8, ptr %.pre.i.i.i29, i64 -4
  %.pre2.i.i.i31 = load i32, ptr %.phi.trans.insert.i.i.i30, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit

_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit: ; preds = %bb.am, %bb.an
  %i.il = phi i32 [ %.pre2.i.i.i31, %bb.an ], [ %i.ih, %bb.am ] ; 2 uses
  %i.im = phi ptr [ %.pre.i.i.i29, %bb.an ], [ %i.ie, %bb.am ] ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -4
  %i.io = zext i32 %i.il to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.io
  store i64 %i.id, ptr %i.ip, align 8, !tbaa !26
  %i.iq = add i32 %i.il, 1
  store i32 %i.iq, ptr %i.in, align 4, !tbaa !25
  %i.ir = and i64 %i.id, -2
  %i.is = inttoptr i64 %i.ir to ptr
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !16
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !16
  br label %.critedge

.loopexit91:                                      ; preds = %.lr.ph.i.i, %middle.block, %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit26.thread, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i.i, %bb.ai, %bb.aj, %bb.ak
  tail call void @_ZN11aig_manager3imp16max_sharing_proc15improve_sharingEP3aig(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.ap)
  br label %.critedge

.critedge:                                        ; preds = %_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig.exit, %.loopexit91
  %i.iw = load ptr, ptr %i.s, align 8, !tbaa !247 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -4 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !25
  %i.iz = add i32 %i.iy, -1                       ; 2 uses
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !25
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %_ZN11aig_manager3imp16max_sharing_proc5visitEP3aig.exit.thread, label %_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit.backedge

_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.sink.split: ; preds = %.loopexit, %bb.ag, %.loopexit90, %bb.u
  %.sink150.ph = phi ptr [ %i.av, %.loopexit90 ], [ %i.av, %bb.u ], [ %i.dy, %bb.ag ], [ %i.dy, %.loopexit ]
  tail call void @_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %.pre.i.i.i19 = load ptr, ptr %i.s, align 8, !tbaa !247 ; 2 uses
  %.phi.trans.insert.i.i.i20 = getelementptr inbounds i8, ptr %.pre.i.i.i19, i64 -4
  %.pre2.i.i.i21 = load i32, ptr %.phi.trans.insert.i.i.i20, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit

_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit: ; preds = %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.sink.split, %bb.ag, %bb.u
  %.sink154 = phi i32 [ %i.dp, %bb.u ], [ %i.gs, %bb.ag ], [ %.pre2.i.i.i21, %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.sink.split ] ; 2 uses
  %.sink152 = phi ptr [ %i.dm, %bb.u ], [ %i.gp, %bb.ag ], [ %.pre.i.i.i19, %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.sink.split ] ; 3 uses
  %.sink150 = phi ptr [ %i.av, %bb.u ], [ %i.dy, %bb.ag ], [ %.sink150.ph, %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit.sink.split ]
  %i.jb = zext i32 %.sink154 to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %.sink152, i64 %i.jb ; 2 uses
  store ptr %.sink150, ptr %i.jc, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i.i17 = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i17, align 8, !tbaa !250
  %i.jd = getelementptr inbounds i8, ptr %.sink152, i64 -4
  %i.je = add i32 %.sink154, 1
  store i32 %i.je, ptr %i.jd, align 4, !tbaa !25
  br label %_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit.backedge

_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit.backedge: ; preds = %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit, %.critedge
  %.be = phi ptr [ %.sink152, %_ZN11aig_manager3imp16max_sharing_proc5visitE7aig_lit.exit ], [ %i.iw, %.critedge ]
  br label %_ZN6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE4backEv.exit

_ZN11aig_manager3imp16max_sharing_proc5visitEP3aig.exit.thread: ; preds = %.critedge, %_ZNK6vectorIN11aig_manager3imp16max_sharing_proc5frameELb0EjE5emptyEv.exit.lr.ph, %bb.e, %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11aig_manager3imp16max_sharing_proc9is_cachedEP3aig(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !151    ; 3 uses
  %i.e = add i32 %i.d, -2147483647                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit:           ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25   ; 3 uses
  %.not = icmp ult i32 %i.e, %i.j
  br i1 %.not, label %bb.e, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i:         ; preds = %bb.b
  %i.k = add i32 %i.d, -2147483646                ; 2 uses
  %.not.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.not.i, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %thread-pre-split.i.preheader

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i:  ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit
  %i.l = add i32 %i.d, -2147483646                ; 3 uses
  %.not16.i = icmp ugt i32 %i.l, %i.j
  br i1 %.not16.i, label %thread-pre-split.i.preheader, label %bb.c

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i
  %.ph = phi i32 [ %i.l, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i ], [ %i.k, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i ] ; 4 uses
  %.ph20 = phi ptr [ %i.g, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i ]
  %.0.i17.i.ph = phi i32 [ %i.j, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

bb.c:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i
  store i32 %i.l, ptr %i.i, align 4, !tbaa !25
  br label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i
  %i.m = phi ptr [ %.pr.pre.i, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i ], [ %.ph20, %thread-pre-split.i.preheader ] ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i:     ; preds = %thread-pre-split.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25
  %i.q = icmp ugt i32 %.ph, %i.p
  br i1 %i.q, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i, label %bb.d

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i, %thread-pre-split.i
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pr.pre.i = load ptr, ptr %i.f, align 8, !tbaa !147
  br label %thread-pre-split.i, !llvm.loop !255

bb.d:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -4
  store i32 %.ph, ptr %i.r, align 4, !tbaa !25
  %i.s = zext i32 %.ph to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %.not1319.i = icmp eq i32 %.0.i17.i.ph, %.ph
  br i1 %.not1319.i, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.u = zext i32 %.0.i17.i.ph to i64             ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.u ; 3 uses
  %.pre.i = load i64, ptr @_ZN7aig_lit4nullE, align 8, !tbaa !26 ; 2 uses
  %i.w = shl nuw nsw i64 %i.s, 3
  %2 = shl nuw nsw i64 %i.u, 3
  %3 = add nsw i64 %i.w, -8
  %i.x = sub nsw i64 %3, %2                       ; 2 uses
  %i.y = lshr exact i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.aa
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !26
  store <2 x i64> %broadcast.splat, ptr %i.ad, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.020.i.ph = phi ptr [ %i.v, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.020.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.020.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %.pre.i, ptr %.020.i, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.af, %i.t
  br i1 %.not13.i, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %.lr.ph.i, !llvm.loop !263

bb.e:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit
  %i.ag = zext i32 %i.e to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !26 ; 3 uses
  %.not10 = icmp eq i64 %i.ai, 0
  br i1 %.not10, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !147 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.h, label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %.pre.i.i = load ptr, ptr %i.aj, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit

_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit: ; preds = %bb.h, %bb.g
  %i.ar = phi i32 [ %.pre2.i.i, %bb.h ], [ %i.an, %bb.g ] ; 2 uses
  %i.as = phi ptr [ %.pre.i.i, %bb.h ], [ %i.ak, %bb.g ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  store i64 %i.ai, ptr %i.av, align 8, !tbaa !26
  %i.aw = add i32 %i.ar, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !25
  %i.ax = and i64 %i.ai, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !16
  br label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit

_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit, %bb.e, %bb.d, %bb.c, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit ], [ false, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %middle.block ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11aig_manager3imp16max_sharing_proc15improve_sharingEP3aig(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25
  br label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit:           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.f = add i32 %.0.i, -2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = add i32 %.0.i, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26   ; 4 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %bb.c, label %bb.n

bb.c:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.d, label %.thread27

.thread27:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i24 = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i925 = load ptr, ptr %i.r, align 8, !tbaa !26
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11aig_manager3imp16max_sharing_proc11pop2_resultEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.s = ptrtoint ptr %1 to i64
  %i.t = and i64 %i.s, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noundef zeroext i1 @_ZN11aig_manager3imp16max_sharing_proc20improve_sharing_leftEP3aig7aig_lit(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %1)
  br i1 %i.ag, label %_ZN11aig_manager3imp16max_sharing_proc20improve_sharing_coreEP3aig7aig_lit.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.0.0.copyload.i.i6.i = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 3 uses
  %i.ai = ptrtoint ptr %.sroa.0.0.copyload.i.i6.i to i64
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i6.i, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i6.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !12
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call noundef zeroext i1 @_ZN11aig_manager3imp16max_sharing_proc21improve_sharing_rightEP3aig7aig_lit(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %1)
  br i1 %i.aq, label %_ZN11aig_manager3imp16max_sharing_proc20improve_sharing_coreEP3aig7aig_lit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.d
  tail call void @_ZN11aig_manager3imp16max_sharing_proc11save_resultEP3aig7aig_lit(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %1)
  br label %_ZN11aig_manager3imp16max_sharing_proc20improve_sharing_coreEP3aig7aig_lit.exit

bb.n:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i9 = load ptr, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %i.at = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.au = and i64 %i.at, 1
  %.sroa.014.0.v = xor i64 %i.au, %i.i
  %.sroa.014.0 = inttoptr i64 %.sroa.014.0.v to ptr ; 2 uses
  %i.av = icmp eq i64 %i.m, 0
  br i1 %i.av, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread27, %bb.n
  %.sroa.014.031 = phi ptr [ %.sroa.0.0.copyload.i24, %.thread27 ], [ %.sroa.014.0, %bb.n ] ; 2 uses
  %.sroa.0.0.copyload.i92630 = phi ptr [ %.sroa.0.0.copyload.i925, %.thread27 ], [ %.sroa.0.0.copyload.i9, %bb.n ]
end_hunk_0
begin_hunk_1_@_ZN11aig_manager3imp16max_sharing_proc21improve_sharing_rightEP3aig7aig_lit:bb.a

bb.k:                                             ; preds = %bb.j
  br i1 %i.cv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !25 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !25
  %i.da = icmp eq i32 %i.cx, %i.cz
  br i1 %i.da, label %bb.m, label %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i33

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_ZN6vectorIP3aigLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
  %.pre.i.i.i.i34 = load ptr, ptr %i.ct, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i.i.i.i35 = getelementptr inbounds i8, ptr %.pre.i.i.i.i34, i64 -4
  %.pre2.i.i.i.i36 = load i32, ptr %.phi.trans.insert.i.i.i.i35, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i33

_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i33: ; preds = %bb.m, %bb.l
  %i.db = phi i32 [ %.pre2.i.i.i.i36, %bb.m ], [ %i.cx, %bb.l ] ; 2 uses
  %i.dc = phi ptr [ %.pre.i.i.i.i34, %bb.m ], [ %i.cu, %bb.l ] ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.de = zext i32 %i.db to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.de
  store ptr %i.ce, ptr %i.df, align 8, !tbaa !26
  %i.dg = add i32 %i.db, 1
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !25
  br label %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31.preheader

_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i29: ; preds = %bb.j
  br i1 %i.cv, label %_ZN11aig_manager3imp7dec_refERK7aig_lit.exit, label %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31.preheader

_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31.preheader: ; preds = %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i29, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i33
  %.ph90 = phi ptr [ %i.cu, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i29 ], [ %i.dc, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i33 ]
  br label %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31

_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31:     ; preds = %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31.preheader, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i32
  %i.dh = phi ptr [ %i.dp, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i32 ], [ %.ph90, %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31.preheader ] ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !25 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %_ZN11aig_manager3imp7dec_refERK7aig_lit.exit, label %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i32

_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i32:       ; preds = %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31
  %i.dl = add i32 %i.dj, -1                       ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !26
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !25
  tail call void @_ZN11aig_manager3imp11delete_nodeEP3aig(ptr noundef nonnull align 8 dereferenceable(680) %i.cp, ptr noundef %i.do)
  %i.dp = load ptr, ptr %i.ct, align 8, !tbaa !21 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN11aig_manager3imp7dec_refERK7aig_lit.exit, label %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31, !llvm.loop !27

bb.n:                                             ; preds = %_ZN11aig_manager3imp7dec_refERK7aig_lit.exit28
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !16
  %i.dr = icmp eq i32 %i.cg, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cj, i64 640 ; 4 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !21 ; 5 uses
  %i.du = icmp eq ptr %i.dt, null                 ; 2 uses
  br i1 %i.dr, label %bb.o, label %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i38

bb.o:                                             ; preds = %bb.n
  br i1 %i.du, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !25 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !25
  %i.dz = icmp eq i32 %i.dw, %i.dy
  br i1 %i.dz, label %bb.q, label %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i42

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @_ZN6vectorIP3aigLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
  %.pre.i.i.i.i43 = load ptr, ptr %i.ds, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i.i.i.i44 = getelementptr inbounds i8, ptr %.pre.i.i.i.i43, i64 -4
  %.pre2.i.i.i.i45 = load i32, ptr %.phi.trans.insert.i.i.i.i44, align 4, !tbaa !25
  br label %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i42

_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i42: ; preds = %bb.q, %bb.p
  %i.ea = phi i32 [ %.pre2.i.i.i.i45, %bb.q ], [ %i.dw, %bb.p ] ; 2 uses
  %i.eb = phi ptr [ %.pre.i.i.i.i43, %bb.q ], [ %i.dt, %bb.p ] ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -4
  %i.ed = zext i32 %i.ea to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ed
  store ptr %i.ce, ptr %i.ee, align 8, !tbaa !26
  %i.ef = add i32 %i.ea, 1
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !25
  br label %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40.preheader

_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i38: ; preds = %bb.n
  br i1 %i.du, label %_ZN11aig_manager3imp7dec_refERK7aig_lit.exit, label %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40.preheader

_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40.preheader: ; preds = %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i38, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i42
  %.ph92 = phi ptr [ %i.dt, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i38 ], [ %i.eb, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.thread.i.i42 ]
  br label %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40

_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40:     ; preds = %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40.preheader, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i41
  %i.eg = phi ptr [ %i.eo, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i41 ], [ %.ph92, %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !25 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_ZN11aig_manager3imp7dec_refERK7aig_lit.exit, label %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i41

_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i41:       ; preds = %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40
  %i.ek = add i32 %i.ei, -1                       ; 2 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !26
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !25
  tail call void @_ZN11aig_manager3imp11delete_nodeEP3aig(ptr noundef nonnull align 8 dereferenceable(680) %i.cj, ptr noundef %i.en)
  %i.eo = load ptr, ptr %i.ds, align 8, !tbaa !21 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZN11aig_manager3imp7dec_refERK7aig_lit.exit, label %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40, !llvm.loop !27

_ZN11aig_manager3imp7dec_refERK7aig_lit.exit:     ; preds = %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i41, %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i32, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i, %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i29, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i38, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i
  %.1 = phi i1 [ true, %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i31 ], [ true, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i ], [ true, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i29 ], [ false, %_ZN11aig_manager3imp12dec_ref_coreEP3aig.exit.i.i38 ], [ true, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i ], [ true, %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i ], [ true, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i32 ], [ false, %_ZN6vectorIP3aigLb0EjE4backEv.exit.i.i.i41 ], [ false, %_ZNK6vectorIP3aigLb0EjE5emptyEv.exit.i.i.i40 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11aig_manager3imp16max_sharing_proc11save_resultEP3aig7aig_lit(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = ptrtoint ptr %2 to i64                  ; 2 uses
  %.pre22 = and i64 %.pre, -2
  %.pre24 = inttoptr i64 %.pre22 to ptr
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !151    ; 3 uses
  %i.e = add i32 %i.d, -2147483647                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147  ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit:           ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25   ; 3 uses
  %.not = icmp ult i32 %i.e, %i.j
  br i1 %.not, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i:         ; preds = %bb.b
  %i.k = add i32 %i.d, -2147483646                ; 2 uses
  %.not.not.i = icmp ne i32 %i.k, 0
  tail call void @llvm.assume(i1 %.not.not.i)
  br label %thread-pre-split.i.preheader

_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i:  ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit
  %i.l = add i32 %i.d, -2147483646                ; 3 uses
  %.not16.i = icmp ugt i32 %i.l, %i.j
  br i1 %.not16.i, label %thread-pre-split.i.preheader, label %bb.c

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.g, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i ]
  %.ph42 = phi i32 [ %i.l, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i ], [ %i.k, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i ] ; 4 uses
  %.0.i17.i.ph = phi i32 [ %i.j, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

bb.c:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit.thread.i
  store i32 %i.l, ptr %i.i, align 4, !tbaa !25
  br label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i
  %i.m = phi ptr [ %.pr.pre.i, %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i ], [ %.ph, %thread-pre-split.i.preheader ] ; 8 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i:     ; preds = %thread-pre-split.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25
  %i.q = icmp ugt i32 %.ph42, %i.p
  br i1 %i.q, label %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i, label %bb.d

_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i, %thread-pre-split.i
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pr.pre.i = load ptr, ptr %i.f, align 8, !tbaa !147
  br label %thread-pre-split.i, !llvm.loop !255

bb.d:                                             ; preds = %_ZNK6vectorI7aig_litLb0EjE8capacityEv.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -4
  store i32 %.ph42, ptr %i.r, align 4, !tbaa !25
  %i.s = zext i32 %.ph42 to i64                   ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %.not1319.i = icmp eq i32 %.0.i17.i.ph, %.ph42
  br i1 %.not1319.i, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.u = zext i32 %.0.i17.i.ph to i64             ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.u ; 3 uses
  %.pre.i = load i64, ptr @_ZN7aig_lit4nullE, align 8, !tbaa !26 ; 2 uses
  %i.w = shl nuw nsw i64 %i.s, 3
  %3 = shl nuw nsw i64 %i.u, 3
  %4 = add nsw i64 %i.w, -8
  %i.x = sub nsw i64 %4, %3                       ; 2 uses
  %i.y = lshr exact i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.aa
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !26
  store <2 x i64> %broadcast.splat, ptr %i.ad, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.020.i.ph = phi ptr [ %i.v, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.020.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.020.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %.pre.i, ptr %.020.i, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.af, %i.t
  br i1 %.not13.i, label %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit, label %.lr.ph.i, !llvm.loop !268

_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d, %bb.c, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit
  %i.ag = phi ptr [ %i.g, %_ZNK6vectorI7aig_litLb0EjE4sizeEv.exit ], [ %i.m, %bb.d ], [ %i.g, %bb.c ], [ %i.m, %middle.block ], [ %i.m, %.lr.ph.i ]
  %i.ah = zext i32 %i.e to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  store ptr %2, ptr %i.ai, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %_ZN6vectorI7aig_litLb0EjE6resizeIS0_EEvjRKT_.exit
  tail call void @_ZN6vectorIP3aigLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %.pre.i5 = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i5, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = phi i32 [ %.pre2.i, %bb.f ], [ %i.an, %bb.e ] ; 2 uses
  %i.as = phi ptr [ %.pre.i5, %bb.f ], [ %i.ak, %bb.e ] ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  store ptr %1, ptr %i.av, align 8, !tbaa !26
  %i.aw = add i32 %i.ar, 1                        ; 3 uses
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !25
  %i.ax = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ay = and i64 %i.ax, -2
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !25
  %i.bc = icmp eq i32 %i.aw, %i.bb
  br i1 %i.bc, label %bb.h, label %_ZN6vectorIP3aigLb0EjE9push_backEOS1_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6vectorIP3aigLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %.pre.i6 = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i7 = getelementptr inbounds i8, ptr %.pre.i6, i64 -4
  %.pre2.i8 = load i32, ptr %.phi.trans.insert.i7, align 4, !tbaa !25
  br label %_ZN6vectorIP3aigLb0EjE9push_backEOS1_.exit

_ZN6vectorIP3aigLb0EjE9push_backEOS1_.exit:       ; preds = %bb.g, %bb.h
  %i.bd = phi i32 [ %.pre2.i8, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
  %i.be = phi ptr [ %.pre.i6, %bb.h ], [ %i.as, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !26
  %i.bi = add i32 %i.bd, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !25
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !16
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !16
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZN6vectorIP3aigLb0EjE9push_backEOS1_.exit
  %.pre-phi25 = phi ptr [ %.pre24, %._crit_edge ], [ %i.az, %_ZN6vectorIP3aigLb0EjE9push_backEOS1_.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.ax, %_ZN6vectorIP3aigLb0EjE9push_backEOS1_.exit ]
  %.not4 = icmp eq ptr %1, %.pre-phi25
  br i1 %.not4, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !147 ; 4 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !25 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !25
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.l, label %_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
  %.pre.i.i = load ptr, ptr %i.bo, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !25
  br label %_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i

_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i: ; preds = %bb.l, %bb.k
  %i.bw = phi i32 [ %.pre2.i.i, %bb.l ], [ %i.bs, %bb.k ] ; 2 uses
  %i.bx = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bp, %bb.k ] ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.bz = zext i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  store i64 %.pre-phi, ptr %i.ca, align 8, !tbaa !26
  %i.cb = add i32 %i.bw, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !25
  %i.cc = icmp eq ptr %2, null
  br i1 %i.cc, label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit, label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.sink.split

bb.m:                                             ; preds = %bb.i
  %.sroa.0.0.copyload = load ptr, ptr @_ZN7aig_lit4nullE, align 8, !tbaa !26 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !147 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !25 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !25
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.o, label %_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i9

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN6vectorI7aig_litLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
  %.pre.i.i10 = load ptr, ptr %i.cd, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert.i.i11 = getelementptr inbounds i8, ptr %.pre.i.i10, i64 -4
  %.pre2.i.i12 = load i32, ptr %.phi.trans.insert.i.i11, align 4, !tbaa !25
  br label %_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i9

_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i9: ; preds = %bb.o, %bb.n
  %i.cl = phi i32 [ %.pre2.i.i12, %bb.o ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cm = phi ptr [ %.pre.i.i10, %bb.o ], [ %i.ce, %bb.n ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = ptrtoint ptr %.sroa.0.0.copyload to i64 ; 2 uses
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !26
  %i.cr = add i32 %i.cl, 1
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !25
  %i.cs = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.cs, label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i9
  %i.ct = and i64 %i.cq, -2
  %i.cu = inttoptr i64 %i.ct to ptr
  br label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.sink.split

_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.sink.split: ; preds = %_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i, %bb.p
  %.sink41 = phi ptr [ %i.cu, %bb.p ], [ %.pre-phi25, %_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink41, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !16
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !16
  br label %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit

_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit: ; preds = %_ZN11aig_manager3imp16max_sharing_proc11push_resultE7aig_lit.exit.sink.split, %_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i9, %_ZN6vectorI7aig_litLb0EjE9push_backERKS0_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11aig_manager3imp16max_sharing_proc11reset_savedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
end_hunk_1
