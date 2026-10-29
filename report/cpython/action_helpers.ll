Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/action_helpers?download=true
inline.NumInlined: 84
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_PyPegen_make_arguments:bb.a
  %i.q = getelementptr [8 x i8], ptr %i.l, i64 %.01417.i.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !158
  %i.r = or disjoint i64 %.01417.i.i, 1           ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.k, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.v = getelementptr [8 x i8], ptr %i.l, i64 %i.r
  store ptr %i.u, ptr %i.v, align 8, !tbaa !158
  %i.w = or disjoint i64 %.01417.i.i, 2           ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.k, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60
  %i.aa = getelementptr [8 x i8], ptr %i.l, i64 %i.w
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !158
  %i.ab = or disjoint i64 %.01417.i.i, 3          ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.af = getelementptr [8 x i8], ptr %i.l, i64 %i.ab
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !158
  %i.ag = add nuw nsw i64 %.01417.i.i, 4          ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_get_names.exit.thread.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !147

_get_names.exit.i:                                ; preds = %bb.e
  br i1 %.not.i.i, label %_get_names.exit.thread.i, label %_make_posonlyargs.exit.thread

_get_names.exit.thread.i.loopexit.unr-lcssa:      ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_get_names.exit.thread.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_get_names.exit.thread.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01417.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ag, %_get_names.exit.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod226 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod226)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.01417.i.i.epil = phi i64 [ %.01417.i.i.epil.init, %.epil.preheader ], [ %i.al, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ah = getelementptr [8 x i8], ptr %i.k, i64 %.01417.i.i.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60
  %i.ak = getelementptr [8 x i8], ptr %i.l, i64 %.01417.i.i.epil
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !158
  %i.al = add nuw nsw i64 %.01417.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_get_names.exit.thread.i, label %bb.g, !llvm.loop !148

_get_names.exit.thread.i:                         ; preds = %_get_names.exit.thread.i.loopexit.unr-lcssa, %bb.g, %_get_names.exit.i
  %i.am = load ptr, ptr %2, align 8, !tbaa !64    ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_get_names.exit.thread.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_get_names.exit.thread.i
  %i.ap = phi i64 [ %i.ao, %bb.h ], [ 0, %_get_names.exit.thread.i ] ; 7 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !31  ; 6 uses
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.at = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.ar, ptr noundef %i.as) #14 ; 6 uses
  %.not.i21.i = icmp eq ptr %i.at, null
  br i1 %.not.i21.i, label %_make_posonlyargs.exit.thread, label %.preheader29.i.i

.preheader29.i.i:                                 ; preds = %bb.i
  %i.au = icmp sgt i64 %i.ap, 0
  br i1 %i.au, label %.lr.ph.i22.i, label %.preheader.i.i

.lr.ph.i22.i:                                     ; preds = %.preheader29.i.i
  %i.av = getelementptr i8, ptr %i.am, i64 8      ; 3 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 8      ; 3 uses
  %xtraiter228 = and i64 %i.ap, 1
  %i.ax = icmp eq i64 %i.ap, 1
  br i1 %i.ax, label %.epil.preheader227, label %.lr.ph.i22.i.new

.lr.ph.i22.i.new:                                 ; preds = %.lr.ph.i22.i
  %unroll_iter232 = and i64 %i.ap, 9223372036854775806
  br label %bb.j

.preheader.loopexit.i.i.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod230.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod230.not, label %.preheader.loopexit.i.i, label %.epil.preheader227

.epil.preheader227:                               ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.lr.ph.i22.i
  %.02331.i.i.epil.init = phi i64 [ 0, %.lr.ph.i22.i ], [ %i.bv, %.preheader.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod231 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.02331.i.i.epil.init
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.bc = shl i64 %.02331.i.i.epil.init, 32
  %i.bd = ashr exact i64 %i.bc, 29
  %i.be = getelementptr i8, ptr %i.bb, i64 %i.bd
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !30
  br label %.preheader.loopexit.i.i

.preheader.loopexit.i.i:                          ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.epil.preheader227
  %indvars.i.i = trunc i64 %i.ap to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader29.i.i
  %.024.lcssa.i.i = phi i32 [ 0, %.preheader29.i.i ], [ %indvars.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.bf = icmp sgt i64 %i.aq, 0
  br i1 %i.bf, label %.lr.ph34.i.i, label %_make_posonlyargs.exit.thread89

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i
  %i.bg = getelementptr i8, ptr %i.h, i64 8       ; 3 uses
  %i.bh = getelementptr i8, ptr %i.at, i64 8      ; 3 uses
  %xtraiter235 = and i64 %i.aq, 1
  %i.bi = icmp eq i64 %i.aq, 1
  br i1 %i.bi, label %.epil.preheader234, label %.lr.ph34.i.i.new

.lr.ph34.i.i.new:                                 ; preds = %.lr.ph34.i.i
  %unroll_iter239 = and i64 %i.aq, 9223372036854775806
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i22.i.new
  %.02331.i.i = phi i64 [ 0, %.lr.ph.i22.i.new ], [ %i.bv, %bb.j ] ; 4 uses
  %niter233 = phi i64 [ 0, %.lr.ph.i22.i.new ], [ %niter233.next.1, %bb.j ]
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %.02331.i.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.bn = or disjoint i64 %.02331.i.i, 1          ; 2 uses
  %i.bo = shl i64 %.02331.i.i, 32
  %i.bp = ashr exact i64 %i.bo, 29
  %i.bq = getelementptr i8, ptr %i.bm, i64 %i.bp
  store ptr %i.bl, ptr %i.bq, align 8, !tbaa !30
  %i.br = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bn
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30
  %i.bu = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.bv = add nuw nsw i64 %.02331.i.i, 2          ; 2 uses
  %i.bw = shl i64 %i.bn, 32
  %i.bx = ashr exact i64 %i.bw, 29
  %i.by = getelementptr i8, ptr %i.bu, i64 %i.bx
  store ptr %i.bt, ptr %i.by, align 8, !tbaa !30
  %niter233.next.1 = add nuw nsw i64 %niter233, 2 ; 2 uses
  %niter233.ncmp.1 = icmp eq i64 %niter233.next.1, %unroll_iter232
  br i1 %niter233.ncmp.1, label %.preheader.loopexit.i.i.unr-lcssa, label %bb.j, !llvm.loop !0

bb.k:                                             ; preds = %bb.k, %.lr.ph34.i.i.new
  %.033.i.i = phi i64 [ 0, %.lr.ph34.i.i.new ], [ %i.co, %bb.k ] ; 3 uses
  %.132.i.i = phi i32 [ %.024.lcssa.i.i, %.lr.ph34.i.i.new ], [ %i.cl, %bb.k ] ; 3 uses
  %niter240 = phi i64 [ 0, %.lr.ph34.i.i.new ], [ %niter240.next.1, %bb.k ]
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %.033.i.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !29
  %i.cd = add i32 %.132.i.i, 1
  %i.ce = sext i32 %.132.i.i to i64
  %i.cf = getelementptr [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr %i.cb, ptr %i.cf, align 8, !tbaa !30
  %i.cg = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %.033.i.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !30
  %i.ck = load ptr, ptr %i.bh, align 8, !tbaa !29
  %i.cl = add i32 %.132.i.i, 2                    ; 2 uses
  %i.cm = sext i32 %i.cd to i64
  %i.cn = getelementptr [8 x i8], ptr %i.ck, i64 %i.cm
  store ptr %i.cj, ptr %i.cn, align 8, !tbaa !30
  %i.co = add nuw nsw i64 %.033.i.i, 2            ; 2 uses
  %niter240.next.1 = add nuw nsw i64 %niter240, 2 ; 2 uses
  %niter240.ncmp.1 = icmp eq i64 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1, label %_make_posonlyargs.exit.thread89.loopexit.unr-lcssa, label %bb.k, !llvm.loop !1

_make_posonlyargs.exit:                           ; preds = %bb.b
  %i.cp = getelementptr i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !27
  %i.cr = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.cq) #14 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_make_posonlyargs.exit.thread, label %_make_posonlyargs.exit.thread89

_make_posonlyargs.exit.thread89.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod237.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod237.not, label %_make_posonlyargs.exit.thread89, label %.epil.preheader234

.epil.preheader234:                               ; preds = %_make_posonlyargs.exit.thread89.loopexit.unr-lcssa, %.lr.ph34.i.i
  %.033.i.i.epil.init = phi i64 [ 0, %.lr.ph34.i.i ], [ %i.co, %_make_posonlyargs.exit.thread89.loopexit.unr-lcssa ]
  %.132.i.i.epil.init = phi i32 [ %.024.lcssa.i.i, %.lr.ph34.i.i ], [ %i.cl, %_make_posonlyargs.exit.thread89.loopexit.unr-lcssa ]
  %lcmp.mod238 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod238)
  %i.ct = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %.033.i.i.epil.init
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !30
  %i.cw = load ptr, ptr %i.bh, align 8, !tbaa !29
  %i.cx = sext i32 %.132.i.i.epil.init to i64
  %i.cy = getelementptr [8 x i8], ptr %i.cw, i64 %i.cx
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !30
  br label %_make_posonlyargs.exit.thread89

_make_posonlyargs.exit.thread89:                  ; preds = %.epil.preheader234, %_make_posonlyargs.exit.thread89.loopexit.unr-lcssa, %.preheader.i.i, %bb.a, %_make_posonlyargs.exit
  %.sink.i91 = phi ptr [ %i.cr, %_make_posonlyargs.exit ], [ %i.at, %.preheader.i.i ], [ %1, %bb.a ], [ %i.at, %_make_posonlyargs.exit.thread89.loopexit.unr-lcssa ], [ %i.at, %.epil.preheader234 ]
  %.not.i30 = icmp ne ptr %4, null                ; 4 uses
  %.not24.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not.i30, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_make_posonlyargs.exit.thread89
  %i.cz = load i64, ptr %4, align 8, !tbaa !31    ; 8 uses
  %i.da = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !27
  %i.dc = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef %i.cz, ptr noundef %i.db) #14 ; 8 uses
  %.not.i30.i = icmp ne ptr %i.dc, null           ; 2 uses
  %i.dd = icmp sgt i64 %i.cz, 0
  %or.cond.i31.i = and i1 %i.dd, %.not.i30.i      ; 2 uses
  br i1 %.not24.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i31.i, label %.lr.ph.i.i46, label %_get_names.exit.i31

.lr.ph.i.i46:                                     ; preds = %bb.m
  %i.de = getelementptr i8, ptr %4, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29 ; 5 uses
  %i.dg = getelementptr i8, ptr %i.dc, i64 16     ; 5 uses
  %xtraiter242 = and i64 %i.cz, 3                 ; 3 uses
  %i.dh = icmp ult i64 %i.cz, 4
  br i1 %i.dh, label %.epil.preheader241, label %.lr.ph.i.i46.new

.lr.ph.i.i46.new:                                 ; preds = %.lr.ph.i.i46
  %unroll_iter246 = and i64 %i.cz, 9223372036854775804
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i46.new
  %.01417.i.i47 = phi i64 [ 0, %.lr.ph.i.i46.new ], [ %i.eb, %bb.n ] ; 6 uses
  %niter247 = phi i64 [ 0, %.lr.ph.i.i46.new ], [ %niter247.next.3, %bb.n ]
  %i.di = getelementptr [8 x i8], ptr %i.df, i64 %.01417.i.i47
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !30
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !60
  %i.dl = getelementptr [8 x i8], ptr %i.dg, i64 %.01417.i.i47
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !158
  %i.dm = or disjoint i64 %.01417.i.i47, 1        ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %i.df, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !30
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !60
  %i.dq = getelementptr [8 x i8], ptr %i.dg, i64 %i.dm
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !158
  %i.dr = or disjoint i64 %.01417.i.i47, 2        ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.df, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !30
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !60
  %i.dv = getelementptr [8 x i8], ptr %i.dg, i64 %i.dr
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !158
  %i.dw = or disjoint i64 %.01417.i.i47, 3        ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.df, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !30
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !60
  %i.ea = getelementptr [8 x i8], ptr %i.dg, i64 %i.dw
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !158
  %i.eb = add nuw nsw i64 %.01417.i.i47, 4        ; 2 uses
  %niter247.next.3 = add nuw nsw i64 %niter247, 4 ; 2 uses
  %niter247.ncmp.3 = icmp eq i64 %niter247.next.3, %unroll_iter246
  br i1 %niter247.ncmp.3, label %_get_names.exit.thread.i33.loopexit.unr-lcssa, label %bb.n, !llvm.loop !147

_get_names.exit.i31:                              ; preds = %bb.m
  br i1 %.not.i30.i, label %_get_names.exit.thread.i33, label %_make_posonlyargs.exit.thread

_get_names.exit.thread.i33.loopexit.unr-lcssa:    ; preds = %bb.n
  %lcmp.mod244.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod244.not, label %_get_names.exit.thread.i33, label %.epil.preheader241

.epil.preheader241:                               ; preds = %_get_names.exit.thread.i33.loopexit.unr-lcssa, %.lr.ph.i.i46
  %.01417.i.i47.epil.init = phi i64 [ 0, %.lr.ph.i.i46 ], [ %i.eb, %_get_names.exit.thread.i33.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter242, 0
  tail call void @llvm.assume(i1 %lcmp.mod245)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader241
  %.01417.i.i47.epil = phi i64 [ %.01417.i.i47.epil.init, %.epil.preheader241 ], [ %i.eg, %bb.o ] ; 3 uses
  %epil.iter243 = phi i64 [ 0, %.epil.preheader241 ], [ %epil.iter243.next, %bb.o ]
  %i.ec = getelementptr [8 x i8], ptr %i.df, i64 %.01417.i.i47.epil
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !60
  %i.ef = getelementptr [8 x i8], ptr %i.dg, i64 %.01417.i.i47.epil
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !158
  %i.eg = add nuw nsw i64 %.01417.i.i47.epil, 1
  %epil.iter243.next = add i64 %epil.iter243, 1   ; 2 uses
  %epil.iter243.cmp.not = icmp eq i64 %epil.iter243.next, %xtraiter242
  br i1 %epil.iter243.cmp.not, label %_get_names.exit.thread.i33, label %bb.o, !llvm.loop !149

_get_names.exit.thread.i33:                       ; preds = %_get_names.exit.thread.i33.loopexit.unr-lcssa, %bb.o, %_get_names.exit.i31
  %i.eh = load i64, ptr %3, align 8, !tbaa !31    ; 7 uses
  %i.ei = load i64, ptr %i.dc, align 8, !tbaa !31 ; 6 uses
  %i.ej = add i64 %i.ei, %i.eh
  %i.ek = load ptr, ptr %i.da, align 8, !tbaa !27
  %i.el = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.ej, ptr noundef %i.ek) #14 ; 6 uses
  %.not.i27.i = icmp eq ptr %i.el, null
  br i1 %.not.i27.i, label %_make_posonlyargs.exit.thread, label %.preheader29.i.i34

.preheader29.i.i34:                               ; preds = %_get_names.exit.thread.i33
  %i.em = icmp sgt i64 %i.eh, 0
  br i1 %i.em, label %.lr.ph.i28.i, label %.preheader.i.i35

.lr.ph.i28.i:                                     ; preds = %.preheader29.i.i34
  %i.en = getelementptr i8, ptr %3, i64 8         ; 3 uses
  %i.eo = getelementptr i8, ptr %i.el, i64 8      ; 3 uses
  %xtraiter249 = and i64 %i.eh, 1
  %i.ep = icmp eq i64 %i.eh, 1
  br i1 %i.ep, label %.epil.preheader248, label %.lr.ph.i28.i.new

.lr.ph.i28.i.new:                                 ; preds = %.lr.ph.i28.i
  %unroll_iter253 = and i64 %i.eh, 9223372036854775806
  br label %bb.p

.preheader.loopexit.i.i44.unr-lcssa:              ; preds = %bb.p
  %lcmp.mod251.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod251.not, label %.preheader.loopexit.i.i44, label %.epil.preheader248

.epil.preheader248:                               ; preds = %.preheader.loopexit.i.i44.unr-lcssa, %.lr.ph.i28.i
  %.02331.i.i43.epil.init = phi i64 [ 0, %.lr.ph.i28.i ], [ %i.fn, %.preheader.loopexit.i.i44.unr-lcssa ] ; 2 uses
  %lcmp.mod252 = trunc i64 %i.eh to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !29
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %.02331.i.i43.epil.init
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !30
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !29
  %i.eu = shl i64 %.02331.i.i43.epil.init, 32
  %i.ev = ashr exact i64 %i.eu, 29
  %i.ew = getelementptr i8, ptr %i.et, i64 %i.ev
  store ptr %i.es, ptr %i.ew, align 8, !tbaa !30
  br label %.preheader.loopexit.i.i44

.preheader.loopexit.i.i44:                        ; preds = %.preheader.loopexit.i.i44.unr-lcssa, %.epil.preheader248
  %indvars.i.i45 = trunc i64 %i.eh to i32
  br label %.preheader.i.i35

.preheader.i.i35:                                 ; preds = %.preheader.loopexit.i.i44, %.preheader29.i.i34
  %.024.lcssa.i.i36 = phi i32 [ 0, %.preheader29.i.i34 ], [ %indvars.i.i45, %.preheader.loopexit.i.i44 ] ; 2 uses
  %i.ex = icmp sgt i64 %i.ei, 0
  br i1 %i.ex, label %.lr.ph34.i.i39, label %_make_posargs.exit.thread96

.lr.ph34.i.i39:                                   ; preds = %.preheader.i.i35
  %i.ey = getelementptr i8, ptr %i.dc, i64 8      ; 3 uses
  %i.ez = getelementptr i8, ptr %i.el, i64 8      ; 3 uses
  %xtraiter256 = and i64 %i.ei, 1
  %i.fa = icmp eq i64 %i.ei, 1
  br i1 %i.fa, label %.epil.preheader255, label %.lr.ph34.i.i39.new

.lr.ph34.i.i39.new:                               ; preds = %.lr.ph34.i.i39
  %unroll_iter260 = and i64 %i.ei, 9223372036854775806
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph.i28.i.new
  %.02331.i.i43 = phi i64 [ 0, %.lr.ph.i28.i.new ], [ %i.fn, %bb.p ] ; 4 uses
  %niter254 = phi i64 [ 0, %.lr.ph.i28.i.new ], [ %niter254.next.1, %bb.p ]
  %i.fb = load ptr, ptr %i.en, align 8, !tbaa !29
  %i.fc = getelementptr [8 x i8], ptr %i.fb, i64 %.02331.i.i43
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !30
  %i.fe = load ptr, ptr %i.eo, align 8, !tbaa !29
  %i.ff = or disjoint i64 %.02331.i.i43, 1        ; 2 uses
  %i.fg = shl i64 %.02331.i.i43, 32
  %i.fh = ashr exact i64 %i.fg, 29
  %i.fi = getelementptr i8, ptr %i.fe, i64 %i.fh
  store ptr %i.fd, ptr %i.fi, align 8, !tbaa !30
  %i.fj = load ptr, ptr %i.en, align 8, !tbaa !29
  %i.fk = getelementptr [8 x i8], ptr %i.fj, i64 %i.ff
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !30
  %i.fm = load ptr, ptr %i.eo, align 8, !tbaa !29
  %i.fn = add nuw nsw i64 %.02331.i.i43, 2        ; 2 uses
  %i.fo = shl i64 %i.ff, 32
  %i.fp = ashr exact i64 %i.fo, 29
  %i.fq = getelementptr i8, ptr %i.fm, i64 %i.fp
  store ptr %i.fl, ptr %i.fq, align 8, !tbaa !30
  %niter254.next.1 = add nuw nsw i64 %niter254, 2 ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %.preheader.loopexit.i.i44.unr-lcssa, label %bb.p, !llvm.loop !0

bb.q:                                             ; preds = %bb.q, %.lr.ph34.i.i39.new
  %.033.i.i40 = phi i64 [ 0, %.lr.ph34.i.i39.new ], [ %i.gg, %bb.q ] ; 3 uses
  %.132.i.i41 = phi i32 [ %.024.lcssa.i.i36, %.lr.ph34.i.i39.new ], [ %i.gd, %bb.q ] ; 3 uses
  %niter261 = phi i64 [ 0, %.lr.ph34.i.i39.new ], [ %niter261.next.1, %bb.q ]
  %i.fr = load ptr, ptr %i.ey, align 8, !tbaa !29
  %i.fs = getelementptr [8 x i8], ptr %i.fr, i64 %.033.i.i40
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !30
  %i.fu = load ptr, ptr %i.ez, align 8, !tbaa !29
  %i.fv = add i32 %.132.i.i41, 1
  %i.fw = sext i32 %.132.i.i41 to i64
  %i.fx = getelementptr [8 x i8], ptr %i.fu, i64 %i.fw
  store ptr %i.ft, ptr %i.fx, align 8, !tbaa !30
  %i.fy = load ptr, ptr %i.ey, align 8, !tbaa !29
  %i.fz = getelementptr [8 x i8], ptr %i.fy, i64 %.033.i.i40
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !30
  %i.gc = load ptr, ptr %i.ez, align 8, !tbaa !29
  %i.gd = add i32 %.132.i.i41, 2                  ; 2 uses
  %i.ge = sext i32 %i.fv to i64
  %i.gf = getelementptr [8 x i8], ptr %i.gc, i64 %i.ge
  store ptr %i.gb, ptr %i.gf, align 8, !tbaa !30
  %i.gg = add nuw nsw i64 %.033.i.i40, 2          ; 2 uses
  %niter261.next.1 = add nuw nsw i64 %niter261, 2 ; 2 uses
  %niter261.ncmp.1 = icmp eq i64 %niter261.next.1, %unroll_iter260
  br i1 %niter261.ncmp.1, label %_make_posargs.exit.thread96.loopexit225.unr-lcssa, label %bb.q, !llvm.loop !1

bb.r:                                             ; preds = %bb.l
  br i1 %or.cond.i31.i, label %.lr.ph.i32.i, label %_make_posargs.exit

.lr.ph.i32.i:                                     ; preds = %bb.r
  %i.gh = getelementptr i8, ptr %4, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !29 ; 5 uses
  %i.gj = getelementptr i8, ptr %i.dc, i64 16     ; 5 uses
  %xtraiter263 = and i64 %i.cz, 3                 ; 3 uses
  %i.gk = icmp ult i64 %i.cz, 4
  br i1 %i.gk, label %.epil.preheader262, label %.lr.ph.i32.i.new

.lr.ph.i32.i.new:                                 ; preds = %.lr.ph.i32.i
  %unroll_iter267 = and i64 %i.cz, 9223372036854775804
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i32.i.new
  %.01417.i33.i = phi i64 [ 0, %.lr.ph.i32.i.new ], [ %i.he, %bb.s ] ; 6 uses
  %niter268 = phi i64 [ 0, %.lr.ph.i32.i.new ], [ %niter268.next.3, %bb.s ]
  %i.gl = getelementptr [8 x i8], ptr %i.gi, i64 %.01417.i33.i
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !30
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !60
  %i.go = getelementptr [8 x i8], ptr %i.gj, i64 %.01417.i33.i
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !158
  %i.gp = or disjoint i64 %.01417.i33.i, 1        ; 2 uses
  %i.gq = getelementptr [8 x i8], ptr %i.gi, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !30
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !60
  %i.gt = getelementptr [8 x i8], ptr %i.gj, i64 %i.gp
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !158
  %i.gu = or disjoint i64 %.01417.i33.i, 2        ; 2 uses
  %i.gv = getelementptr [8 x i8], ptr %i.gi, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !30
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !60
  %i.gy = getelementptr [8 x i8], ptr %i.gj, i64 %i.gu
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !158
  %i.gz = or disjoint i64 %.01417.i33.i, 3        ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gi, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !30
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !60
  %i.hd = getelementptr [8 x i8], ptr %i.gj, i64 %i.gz
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !158
  %i.he = add nuw nsw i64 %.01417.i33.i, 4        ; 2 uses
  %niter268.next.3 = add nuw nsw i64 %niter268, 4 ; 2 uses
  %niter268.ncmp.3 = icmp eq i64 %niter268.next.3, %unroll_iter267
  br i1 %niter268.ncmp.3, label %_make_posargs.exit.thread96.loopexit.unr-lcssa, label %bb.s, !llvm.loop !147

bb.t:                                             ; preds = %_make_posonlyargs.exit.thread89
  br i1 %.not24.i, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.t
  %i.hf = icmp ne ptr %2, null
  br label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.hg = getelementptr i8, ptr %0, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !27
  %i.hi = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.hh) #14
  br label %_make_posargs.exit

_make_posargs.exit:                               ; preds = %bb.r, %bb.u
  %.sink.i38 = phi ptr [ %i.hi, %bb.u ], [ %i.dc, %bb.r ] ; 2 uses
  %i.hj = icmp eq ptr %.sink.i38, null
  br i1 %i.hj, label %_make_posonlyargs.exit.thread, label %_make_posargs.exit.thread96

_make_posargs.exit.thread96.loopexit.unr-lcssa:   ; preds = %bb.s
  %lcmp.mod265.not = icmp eq i64 %xtraiter263, 0
  br i1 %lcmp.mod265.not, label %_make_posargs.exit.thread96, label %.epil.preheader262

.epil.preheader262:                               ; preds = %_make_posargs.exit.thread96.loopexit.unr-lcssa, %.lr.ph.i32.i
  %.01417.i33.i.epil.init = phi i64 [ 0, %.lr.ph.i32.i ], [ %i.he, %_make_posargs.exit.thread96.loopexit.unr-lcssa ]
  %lcmp.mod266 = icmp ne i64 %xtraiter263, 0
  tail call void @llvm.assume(i1 %lcmp.mod266)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader262
  %.01417.i33.i.epil = phi i64 [ %.01417.i33.i.epil.init, %.epil.preheader262 ], [ %i.ho, %bb.v ] ; 3 uses
  %epil.iter264 = phi i64 [ 0, %.epil.preheader262 ], [ %epil.iter264.next, %bb.v ]
  %i.hk = getelementptr [8 x i8], ptr %i.gi, i64 %.01417.i33.i.epil
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !30
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !60
  %i.hn = getelementptr [8 x i8], ptr %i.gj, i64 %.01417.i33.i.epil
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !158
  %i.ho = add nuw nsw i64 %.01417.i33.i.epil, 1
  %epil.iter264.next = add i64 %epil.iter264, 1   ; 2 uses
  %epil.iter264.cmp.not = icmp eq i64 %epil.iter264.next, %xtraiter263
  br i1 %epil.iter264.cmp.not, label %_make_posargs.exit.thread96, label %bb.v, !llvm.loop !150

_make_posargs.exit.thread96.loopexit225.unr-lcssa: ; preds = %bb.q
  %lcmp.mod258.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod258.not, label %_make_posargs.exit.thread96, label %.epil.preheader255

.epil.preheader255:                               ; preds = %_make_posargs.exit.thread96.loopexit225.unr-lcssa, %.lr.ph34.i.i39
  %.033.i.i40.epil.init = phi i64 [ 0, %.lr.ph34.i.i39 ], [ %i.gg, %_make_posargs.exit.thread96.loopexit225.unr-lcssa ]
  %.132.i.i41.epil.init = phi i32 [ %.024.lcssa.i.i36, %.lr.ph34.i.i39 ], [ %i.gd, %_make_posargs.exit.thread96.loopexit225.unr-lcssa ]
  %lcmp.mod259 = trunc i64 %i.ei to i1
  tail call void @llvm.assume(i1 %lcmp.mod259)
  %i.hp = load ptr, ptr %i.ey, align 8, !tbaa !29
  %i.hq = getelementptr [8 x i8], ptr %i.hp, i64 %.033.i.i40.epil.init
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !30
  %i.hs = load ptr, ptr %i.ez, align 8, !tbaa !29
  %i.ht = sext i32 %.132.i.i41.epil.init to i64
  %i.hu = getelementptr [8 x i8], ptr %i.hs, i64 %i.ht
  store ptr %i.hr, ptr %i.hu, align 8, !tbaa !30
  br label %_make_posargs.exit.thread96

_make_posargs.exit.thread96:                      ; preds = %.epil.preheader255, %_make_posargs.exit.thread96.loopexit225.unr-lcssa, %_make_posargs.exit.thread96.loopexit.unr-lcssa, %bb.v, %.preheader.i.i35, %_make_posargs.exit
  %.sink.i3898 = phi ptr [ %.sink.i38, %_make_posargs.exit ], [ %i.dc, %_make_posargs.exit.thread96.loopexit.unr-lcssa ], [ %i.el, %.preheader.i.i35 ], [ %i.dc, %bb.v ], [ %i.el, %_make_posargs.exit.thread96.loopexit225.unr-lcssa ], [ %i.el, %.epil.preheader255 ] ; 7 uses
  %i.hv = icmp ne ptr %2, null                    ; 3 uses
  %or.cond.i = and i1 %i.hv, %.not.i30
  br i1 %or.cond.i, label %bb.w, label %bb.af

bb.w:                                             ; preds = %_make_posargs.exit.thread96
  %i.hw = getelementptr i8, ptr %2, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !65 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ia = phi i64 [ %i.hz, %bb.x ], [ 0, %bb.w ]  ; 5 uses
  %i.ib = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !27
  %i.id = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.ia, ptr noundef %i.ic) #14 ; 4 uses
  %.not.i.i51 = icmp ne ptr %i.id, null           ; 2 uses
  %i.ie = icmp sgt i64 %i.ia, 0
  %or.cond.i.i52 = and i1 %i.ie, %.not.i.i51
  br i1 %or.cond.i.i52, label %.lr.ph.i.i63, label %_get_defaults.exit.i

.lr.ph.i.i63:                                     ; preds = %bb.y
  %i.if = getelementptr i8, ptr %i.hx, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !29 ; 5 uses
  %i.ih = getelementptr i8, ptr %i.id, i64 16     ; 5 uses
  %xtraiter284 = and i64 %i.ia, 3                 ; 3 uses
  %i.ii = icmp ult i64 %i.ia, 4
  br i1 %i.ii, label %.epil.preheader283, label %.lr.ph.i.i63.new

.lr.ph.i.i63.new:                                 ; preds = %.lr.ph.i.i63
  %unroll_iter288 = and i64 %i.ia, 9223372036854775804
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i63.new
  %.01417.i.i64 = phi i64 [ 0, %.lr.ph.i.i63.new ], [ %i.jg, %bb.z ] ; 6 uses
  %niter289 = phi i64 [ 0, %.lr.ph.i.i63.new ], [ %niter289.next.3, %bb.z ]
  %i.ij = getelementptr [8 x i8], ptr %i.ig, i64 %.01417.i.i64
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !30
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !61
  %i.in = getelementptr [8 x i8], ptr %i.ih, i64 %.01417.i.i64
  store ptr %i.im, ptr %i.in, align 8, !tbaa !46
  %i.io = or disjoint i64 %.01417.i.i64, 1        ; 2 uses
  %i.ip = getelementptr [8 x i8], ptr %i.ig, i64 %i.io
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !30
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !61
  %i.it = getelementptr [8 x i8], ptr %i.ih, i64 %i.io
  store ptr %i.is, ptr %i.it, align 8, !tbaa !46
  %i.iu = or disjoint i64 %.01417.i.i64, 2        ; 2 uses
  %i.iv = getelementptr [8 x i8], ptr %i.ig, i64 %i.iu
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !30
  %i.ix = getelementptr i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !61
  %i.iz = getelementptr [8 x i8], ptr %i.ih, i64 %i.iu
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !46
  %i.ja = or disjoint i64 %.01417.i.i64, 3        ; 2 uses
  %i.jb = getelementptr [8 x i8], ptr %i.ig, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !30
  %i.jd = getelementptr i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !61
  %i.jf = getelementptr [8 x i8], ptr %i.ih, i64 %i.ja
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !46
  %i.jg = add nuw nsw i64 %.01417.i.i64, 4        ; 2 uses
  %niter289.next.3 = add nuw nsw i64 %niter289, 4 ; 2 uses
  %niter289.ncmp.3 = icmp eq i64 %niter289.next.3, %unroll_iter288
  br i1 %niter289.ncmp.3, label %_get_defaults.exit.thread.i.loopexit.unr-lcssa, label %bb.z, !llvm.loop !151

_get_defaults.exit.i:                             ; preds = %bb.y
  br i1 %.not.i.i51, label %_get_defaults.exit.thread.i, label %_make_posonlyargs.exit.thread

_get_defaults.exit.thread.i.loopexit.unr-lcssa:   ; preds = %bb.z
  %lcmp.mod286.not = icmp eq i64 %xtraiter284, 0
  br i1 %lcmp.mod286.not, label %_get_defaults.exit.thread.i, label %.epil.preheader283

.epil.preheader283:                               ; preds = %_get_defaults.exit.thread.i.loopexit.unr-lcssa, %.lr.ph.i.i63
  %.01417.i.i64.epil.init = phi i64 [ 0, %.lr.ph.i.i63 ], [ %i.jg, %_get_defaults.exit.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter284, 0
  tail call void @llvm.assume(i1 %lcmp.mod287)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader283
  %.01417.i.i64.epil = phi i64 [ %.01417.i.i64.epil.init, %.epil.preheader283 ], [ %i.jm, %bb.aa ] ; 3 uses
  %epil.iter285 = phi i64 [ 0, %.epil.preheader283 ], [ %epil.iter285.next, %bb.aa ]
  %i.jh = getelementptr [8 x i8], ptr %i.ig, i64 %.01417.i.i64.epil
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !30
  %i.jj = getelementptr i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !61
  %i.jl = getelementptr [8 x i8], ptr %i.ih, i64 %.01417.i.i64.epil
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !46
  %i.jm = add nuw nsw i64 %.01417.i.i64.epil, 1
  %epil.iter285.next = add i64 %epil.iter285, 1   ; 2 uses
  %epil.iter285.cmp.not = icmp eq i64 %epil.iter285.next, %xtraiter284
  br i1 %epil.iter285.cmp.not, label %_get_defaults.exit.thread.i, label %bb.aa, !llvm.loop !152

_get_defaults.exit.thread.i:                      ; preds = %_get_defaults.exit.thread.i.loopexit.unr-lcssa, %bb.aa, %_get_defaults.exit.i
  %i.jn = load i64, ptr %4, align 8, !tbaa !31    ; 5 uses
  %i.jo = load ptr, ptr %i.ib, align 8, !tbaa !27
  %i.jp = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.jn, ptr noundef %i.jo) #14 ; 4 uses
  %.not.i40.i = icmp ne ptr %i.jp, null           ; 2 uses
  %i.jq = icmp sgt i64 %i.jn, 0
  %or.cond.i41.i = and i1 %i.jq, %.not.i40.i
  br i1 %or.cond.i41.i, label %.lr.ph.i42.i, label %_get_defaults.exit45.i

.lr.ph.i42.i:                                     ; preds = %_get_defaults.exit.thread.i
  %i.jr = getelementptr i8, ptr %4, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !29 ; 5 uses
  %i.jt = getelementptr i8, ptr %i.jp, i64 16     ; 5 uses
  %xtraiter291 = and i64 %i.jn, 3                 ; 3 uses
  %i.ju = icmp ult i64 %i.jn, 4
  br i1 %i.ju, label %.epil.preheader290, label %.lr.ph.i42.i.new

.lr.ph.i42.i.new:                                 ; preds = %.lr.ph.i42.i
  %unroll_iter295 = and i64 %i.jn, 9223372036854775804
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i42.i.new
  %.01417.i43.i = phi i64 [ 0, %.lr.ph.i42.i.new ], [ %i.ks, %bb.ab ] ; 6 uses
  %niter296 = phi i64 [ 0, %.lr.ph.i42.i.new ], [ %niter296.next.3, %bb.ab ]
  %i.jv = getelementptr [8 x i8], ptr %i.js, i64 %.01417.i43.i
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !30
  %i.jx = getelementptr i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !61
  %i.jz = getelementptr [8 x i8], ptr %i.jt, i64 %.01417.i43.i
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !46
  %i.ka = or disjoint i64 %.01417.i43.i, 1        ; 2 uses
  %i.kb = getelementptr [8 x i8], ptr %i.js, i64 %i.ka
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !30
  %i.kd = getelementptr i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !61
  %i.kf = getelementptr [8 x i8], ptr %i.jt, i64 %i.ka
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !46
  %i.kg = or disjoint i64 %.01417.i43.i, 2        ; 2 uses
  %i.kh = getelementptr [8 x i8], ptr %i.js, i64 %i.kg
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !30
  %i.kj = getelementptr i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !61
  %i.kl = getelementptr [8 x i8], ptr %i.jt, i64 %i.kg
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !46
  %i.km = or disjoint i64 %.01417.i43.i, 3        ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr %i.js, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !30
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !61
  %i.kr = getelementptr [8 x i8], ptr %i.jt, i64 %i.km
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !46
  %i.ks = add nuw nsw i64 %.01417.i43.i, 4        ; 2 uses
  %niter296.next.3 = add nuw nsw i64 %niter296, 4 ; 2 uses
  %niter296.ncmp.3 = icmp eq i64 %niter296.next.3, %unroll_iter295
  br i1 %niter296.ncmp.3, label %_get_defaults.exit45.thread.i.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !151

_get_defaults.exit45.i:                           ; preds = %_get_defaults.exit.thread.i
  br i1 %.not.i40.i, label %_get_defaults.exit45.thread.i, label %_make_posonlyargs.exit.thread

_get_defaults.exit45.thread.i.loopexit.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod293.not = icmp eq i64 %xtraiter291, 0
  br i1 %lcmp.mod293.not, label %_get_defaults.exit45.thread.i, label %.epil.preheader290

.epil.preheader290:                               ; preds = %_get_defaults.exit45.thread.i.loopexit.unr-lcssa, %.lr.ph.i42.i
  %.01417.i43.i.epil.init = phi i64 [ 0, %.lr.ph.i42.i ], [ %i.ks, %_get_defaults.exit45.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod294 = icmp ne i64 %xtraiter291, 0
  tail call void @llvm.assume(i1 %lcmp.mod294)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader290
  %.01417.i43.i.epil = phi i64 [ %.01417.i43.i.epil.init, %.epil.preheader290 ], [ %i.ky, %bb.ac ] ; 3 uses
  %epil.iter292 = phi i64 [ 0, %.epil.preheader290 ], [ %epil.iter292.next, %bb.ac ]
  %i.kt = getelementptr [8 x i8], ptr %i.js, i64 %.01417.i43.i.epil
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !30
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !61
  %i.kx = getelementptr [8 x i8], ptr %i.jt, i64 %.01417.i43.i.epil
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !46
  %i.ky = add nuw nsw i64 %.01417.i43.i.epil, 1
  %epil.iter292.next = add i64 %epil.iter292, 1   ; 2 uses
  %epil.iter292.cmp.not = icmp eq i64 %epil.iter292.next, %xtraiter291
  br i1 %epil.iter292.cmp.not, label %_get_defaults.exit45.thread.i, label %bb.ac, !llvm.loop !153

_get_defaults.exit45.thread.i:                    ; preds = %_get_defaults.exit45.thread.i.loopexit.unr-lcssa, %bb.ac, %_get_defaults.exit45.i
  %i.kz = load i64, ptr %i.id, align 8, !tbaa !31 ; 7 uses
  %i.la = load i64, ptr %i.jp, align 8, !tbaa !31 ; 6 uses
  %i.lb = add i64 %i.la, %i.kz
  %i.lc = load ptr, ptr %i.ib, align 8, !tbaa !27
  %i.ld = tail call ptr @_Py_asdl_generic_seq_new(i64 noundef %i.lb, ptr noundef %i.lc) #14 ; 6 uses
  %.not.i46.i = icmp eq ptr %i.ld, null
  br i1 %.not.i46.i, label %_make_posonlyargs.exit.thread, label %.preheader29.i.i53

.preheader29.i.i53:                               ; preds = %_get_defaults.exit45.thread.i
  %i.le = icmp sgt i64 %i.kz, 0
  br i1 %i.le, label %.lr.ph.i47.i, label %.preheader.i.i54

.lr.ph.i47.i:                                     ; preds = %.preheader29.i.i53
  %i.lf = getelementptr i8, ptr %i.id, i64 8      ; 3 uses
  %i.lg = getelementptr i8, ptr %i.ld, i64 8      ; 3 uses
  %xtraiter298 = and i64 %i.kz, 1
  %i.lh = icmp eq i64 %i.kz, 1
  br i1 %i.lh, label %.epil.preheader297, label %.lr.ph.i47.i.new

.lr.ph.i47.i.new:                                 ; preds = %.lr.ph.i47.i
  %unroll_iter302 = and i64 %i.kz, 9223372036854775806
  br label %bb.ad

.preheader.loopexit.i.i61.unr-lcssa:              ; preds = %bb.ad
  %lcmp.mod300.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod300.not, label %.preheader.loopexit.i.i61, label %.epil.preheader297

.epil.preheader297:                               ; preds = %.preheader.loopexit.i.i61.unr-lcssa, %.lr.ph.i47.i
  %.02331.i.i60.epil.init = phi i64 [ 0, %.lr.ph.i47.i ], [ %i.mf, %.preheader.loopexit.i.i61.unr-lcssa ] ; 2 uses
  %lcmp.mod301 = trunc i64 %i.kz to i1
  tail call void @llvm.assume(i1 %lcmp.mod301)
  %i.li = load ptr, ptr %i.lf, align 8, !tbaa !29
  %i.lj = getelementptr [8 x i8], ptr %i.li, i64 %.02331.i.i60.epil.init
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !30
  %i.ll = load ptr, ptr %i.lg, align 8, !tbaa !29
  %i.lm = shl i64 %.02331.i.i60.epil.init, 32
  %i.ln = ashr exact i64 %i.lm, 29
  %i.lo = getelementptr i8, ptr %i.ll, i64 %i.ln
  store ptr %i.lk, ptr %i.lo, align 8, !tbaa !30
  br label %.preheader.loopexit.i.i61

.preheader.loopexit.i.i61:                        ; preds = %.preheader.loopexit.i.i61.unr-lcssa, %.epil.preheader297
  %indvars.i.i62 = trunc i64 %i.kz to i32
  br label %.preheader.i.i54

.preheader.i.i54:                                 ; preds = %.preheader.loopexit.i.i61, %.preheader29.i.i53
  %.024.lcssa.i.i55 = phi i32 [ 0, %.preheader29.i.i53 ], [ %indvars.i.i62, %.preheader.loopexit.i.i61 ] ; 2 uses
  %i.lp = icmp sgt i64 %i.la, 0
  br i1 %i.lp, label %.lr.ph34.i.i56, label %_make_posdefaults.exit.thread104

.lr.ph34.i.i56:                                   ; preds = %.preheader.i.i54
  %i.lq = getelementptr i8, ptr %i.jp, i64 8      ; 3 uses
  %i.lr = getelementptr i8, ptr %i.ld, i64 8      ; 3 uses
  %xtraiter305 = and i64 %i.la, 1
  %i.ls = icmp eq i64 %i.la, 1
  br i1 %i.ls, label %.epil.preheader304, label %.lr.ph34.i.i56.new

.lr.ph34.i.i56.new:                               ; preds = %.lr.ph34.i.i56
  %unroll_iter309 = and i64 %i.la, 9223372036854775806
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i47.i.new
  %.02331.i.i60 = phi i64 [ 0, %.lr.ph.i47.i.new ], [ %i.mf, %bb.ad ] ; 4 uses
  %niter303 = phi i64 [ 0, %.lr.ph.i47.i.new ], [ %niter303.next.1, %bb.ad ]
  %i.lt = load ptr, ptr %i.lf, align 8, !tbaa !29
  %i.lu = getelementptr [8 x i8], ptr %i.lt, i64 %.02331.i.i60
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !30
  %i.lw = load ptr, ptr %i.lg, align 8, !tbaa !29
  %i.lx = or disjoint i64 %.02331.i.i60, 1        ; 2 uses
  %i.ly = shl i64 %.02331.i.i60, 32
  %i.lz = ashr exact i64 %i.ly, 29
  %i.ma = getelementptr i8, ptr %i.lw, i64 %i.lz
  store ptr %i.lv, ptr %i.ma, align 8, !tbaa !30
  %i.mb = load ptr, ptr %i.lf, align 8, !tbaa !29
  %i.mc = getelementptr [8 x i8], ptr %i.mb, i64 %i.lx
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !30
  %i.me = load ptr, ptr %i.lg, align 8, !tbaa !29
  %i.mf = add nuw nsw i64 %.02331.i.i60, 2        ; 2 uses
  %i.mg = shl i64 %i.lx, 32
  %i.mh = ashr exact i64 %i.mg, 29
  %i.mi = getelementptr i8, ptr %i.me, i64 %i.mh
  store ptr %i.md, ptr %i.mi, align 8, !tbaa !30
  %niter303.next.1 = add nuw nsw i64 %niter303, 2 ; 2 uses
  %niter303.ncmp.1 = icmp eq i64 %niter303.next.1, %unroll_iter302
  br i1 %niter303.ncmp.1, label %.preheader.loopexit.i.i61.unr-lcssa, label %bb.ad, !llvm.loop !0

bb.ae:                                            ; preds = %bb.ae, %.lr.ph34.i.i56.new
  %.033.i.i57 = phi i64 [ 0, %.lr.ph34.i.i56.new ], [ %i.my, %bb.ae ] ; 3 uses
  %.132.i.i58 = phi i32 [ %.024.lcssa.i.i55, %.lr.ph34.i.i56.new ], [ %i.mv, %bb.ae ] ; 3 uses
  %niter310 = phi i64 [ 0, %.lr.ph34.i.i56.new ], [ %niter310.next.1, %bb.ae ]
  %i.mj = load ptr, ptr %i.lq, align 8, !tbaa !29
  %i.mk = getelementptr [8 x i8], ptr %i.mj, i64 %.033.i.i57
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !30
  %i.mm = load ptr, ptr %i.lr, align 8, !tbaa !29
  %i.mn = add i32 %.132.i.i58, 1
  %i.mo = sext i32 %.132.i.i58 to i64
  %i.mp = getelementptr [8 x i8], ptr %i.mm, i64 %i.mo
  store ptr %i.ml, ptr %i.mp, align 8, !tbaa !30
  %i.mq = load ptr, ptr %i.lq, align 8, !tbaa !29
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %.033.i.i57
  %i.ms = getelementptr i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !30
  %i.mu = load ptr, ptr %i.lr, align 8, !tbaa !29
  %i.mv = add i32 %.132.i.i58, 2                  ; 2 uses
  %i.mw = sext i32 %i.mn to i64
  %i.mx = getelementptr [8 x i8], ptr %i.mu, i64 %i.mw
  store ptr %i.mt, ptr %i.mx, align 8, !tbaa !30
  %i.my = add nuw nsw i64 %.033.i.i57, 2          ; 2 uses
  %niter310.next.1 = add nuw nsw i64 %niter310, 2 ; 2 uses
  %niter310.ncmp.1 = icmp eq i64 %niter310.next.1, %unroll_iter309
  br i1 %niter310.ncmp.1, label %_make_posdefaults.exit.thread104.loopexit.unr-lcssa, label %bb.ae, !llvm.loop !1

bb.af:                                            ; preds = %_make_posargs.exit.thread96
  %.not64.i = xor i1 %i.hv, true
  %or.cond3.i = and i1 %.not.i30, %.not64.i
  br i1 %or.cond3.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.mz = load i64, ptr %4, align 8, !tbaa !31    ; 5 uses
  %i.na = getelementptr i8, ptr %0, i64 32
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !27
  %i.nc = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.mz, ptr noundef %i.nb) #14 ; 5 uses
  %.not.i49.i = icmp ne ptr %i.nc, null
  %i.nd = icmp sgt i64 %i.mz, 0
  %or.cond.i50.i = and i1 %i.nd, %.not.i49.i
  br i1 %or.cond.i50.i, label %.lr.ph.i51.i, label %_make_posdefaults.exit

.lr.ph.i51.i:                                     ; preds = %bb.ag
  %i.ne = getelementptr i8, ptr %4, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !29 ; 5 uses
  %i.ng = getelementptr i8, ptr %i.nc, i64 16     ; 5 uses
  %xtraiter277 = and i64 %i.mz, 3                 ; 3 uses
  %i.nh = icmp ult i64 %i.mz, 4
  br i1 %i.nh, label %.epil.preheader276, label %.lr.ph.i51.i.new

.lr.ph.i51.i.new:                                 ; preds = %.lr.ph.i51.i
  %unroll_iter281 = and i64 %i.mz, 9223372036854775804
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i51.i.new
  %.01417.i52.i = phi i64 [ 0, %.lr.ph.i51.i.new ], [ %i.of, %bb.ah ] ; 6 uses
  %niter282 = phi i64 [ 0, %.lr.ph.i51.i.new ], [ %niter282.next.3, %bb.ah ]
  %i.ni = getelementptr [8 x i8], ptr %i.nf, i64 %.01417.i52.i
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !30
  %i.nk = getelementptr i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !61
  %i.nm = getelementptr [8 x i8], ptr %i.ng, i64 %.01417.i52.i
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !46
  %i.nn = or disjoint i64 %.01417.i52.i, 1        ; 2 uses
  %i.no = getelementptr [8 x i8], ptr %i.nf, i64 %i.nn
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !30
  %i.nq = getelementptr i8, ptr %i.np, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !61
  %i.ns = getelementptr [8 x i8], ptr %i.ng, i64 %i.nn
  store ptr %i.nr, ptr %i.ns, align 8, !tbaa !46
  %i.nt = or disjoint i64 %.01417.i52.i, 2        ; 2 uses
  %i.nu = getelementptr [8 x i8], ptr %i.nf, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !30
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !61
  %i.ny = getelementptr [8 x i8], ptr %i.ng, i64 %i.nt
  store ptr %i.nx, ptr %i.ny, align 8, !tbaa !46
  %i.nz = or disjoint i64 %.01417.i52.i, 3        ; 2 uses
  %i.oa = getelementptr [8 x i8], ptr %i.nf, i64 %i.nz
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !30
  %i.oc = getelementptr i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !61
  %i.oe = getelementptr [8 x i8], ptr %i.ng, i64 %i.nz
  store ptr %i.od, ptr %i.oe, align 8, !tbaa !46
  %i.of = add nuw nsw i64 %.01417.i52.i, 4        ; 2 uses
  %niter282.next.3 = add nuw nsw i64 %niter282, 4 ; 2 uses
  %niter282.ncmp.3 = icmp eq i64 %niter282.next.3, %unroll_iter281
  br i1 %niter282.ncmp.3, label %_make_posdefaults.exit.thread104.loopexit223.unr-lcssa, label %bb.ah, !llvm.loop !151

bb.ai:                                            ; preds = %.thread, %bb.af
  %.sink.i3898154209.a = phi ptr [ %3, %.thread ], [ %.sink.i3898, %bb.af ] ; 4 uses
  %i.og = phi i1 [ %i.hf, %.thread ], [ %i.hv, %bb.af ]
  %.not65.i = xor i1 %.not.i30, true
  %or.cond5.i = and i1 %i.og, %.not65.i
  br i1 %or.cond5.i, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.oh = getelementptr i8, ptr %2, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !65 ; 3 uses
  %i.oj = icmp eq ptr %i.oi, null
  br i1 %i.oj, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ok = load i64, ptr %i.oi, align 8, !tbaa !31
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ol = phi i64 [ %i.ok, %bb.ak ], [ 0, %bb.aj ] ; 5 uses
  %i.om = getelementptr i8, ptr %0, i64 32
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !27
  %i.oo = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.ol, ptr noundef %i.on) #14 ; 5 uses
  %.not.i55.i = icmp ne ptr %i.oo, null
  %i.op = icmp sgt i64 %i.ol, 0
  %or.cond.i56.i = and i1 %i.op, %.not.i55.i
  br i1 %or.cond.i56.i, label %.lr.ph.i57.i, label %_make_posdefaults.exit

.lr.ph.i57.i:                                     ; preds = %bb.al
  %i.oq = getelementptr i8, ptr %i.oi, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !29 ; 5 uses
  %i.os = getelementptr i8, ptr %i.oo, i64 16     ; 5 uses
  %xtraiter270 = and i64 %i.ol, 3                 ; 3 uses
  %i.ot = icmp ult i64 %i.ol, 4
  br i1 %i.ot, label %.epil.preheader269, label %.lr.ph.i57.i.new

.lr.ph.i57.i.new:                                 ; preds = %.lr.ph.i57.i
  %unroll_iter274 = and i64 %i.ol, 9223372036854775804
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i57.i.new
  %.01417.i58.i = phi i64 [ 0, %.lr.ph.i57.i.new ], [ %i.pr, %bb.am ] ; 6 uses
  %niter275 = phi i64 [ 0, %.lr.ph.i57.i.new ], [ %niter275.next.3, %bb.am ]
  %i.ou = getelementptr [8 x i8], ptr %i.or, i64 %.01417.i58.i
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !30
  %i.ow = getelementptr i8, ptr %i.ov, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !61
  %i.oy = getelementptr [8 x i8], ptr %i.os, i64 %.01417.i58.i
  store ptr %i.ox, ptr %i.oy, align 8, !tbaa !46
  %i.oz = or disjoint i64 %.01417.i58.i, 1        ; 2 uses
  %i.pa = getelementptr [8 x i8], ptr %i.or, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !30
  %i.pc = getelementptr i8, ptr %i.pb, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !61
  %i.pe = getelementptr [8 x i8], ptr %i.os, i64 %i.oz
  store ptr %i.pd, ptr %i.pe, align 8, !tbaa !46
  %i.pf = or disjoint i64 %.01417.i58.i, 2        ; 2 uses
  %i.pg = getelementptr [8 x i8], ptr %i.or, i64 %i.pf
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !30
  %i.pi = getelementptr i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !61
  %i.pk = getelementptr [8 x i8], ptr %i.os, i64 %i.pf
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !46
  %i.pl = or disjoint i64 %.01417.i58.i, 3        ; 2 uses
  %i.pm = getelementptr [8 x i8], ptr %i.or, i64 %i.pl
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !30
  %i.po = getelementptr i8, ptr %i.pn, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !61
  %i.pq = getelementptr [8 x i8], ptr %i.os, i64 %i.pl
  store ptr %i.pp, ptr %i.pq, align 8, !tbaa !46
  %i.pr = add nuw nsw i64 %.01417.i58.i, 4        ; 2 uses
  %niter275.next.3 = add nuw nsw i64 %niter275, 4 ; 2 uses
  %niter275.ncmp.3 = icmp eq i64 %niter275.next.3, %unroll_iter274
  br i1 %niter275.ncmp.3, label %_make_posdefaults.exit.thread104.loopexit224.unr-lcssa, label %bb.am, !llvm.loop !151

bb.an:                                            ; preds = %bb.ai
  %i.ps = getelementptr i8, ptr %0, i64 32
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !27
  %i.pu = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 0, ptr noundef %i.pt) #14
  br label %_make_posdefaults.exit

_make_posdefaults.exit:                           ; preds = %bb.ag, %bb.al, %bb.an
  %.sink.i3898154208 = phi ptr [ %.sink.i3898, %bb.ag ], [ %.sink.i3898154209.a, %bb.al ], [ %.sink.i3898154209.a, %bb.an ]
  %.sink.i50 = phi ptr [ %i.nc, %bb.ag ], [ %i.oo, %bb.al ], [ %i.pu, %bb.an ] ; 2 uses
  %i.pv = icmp eq ptr %.sink.i50, null
  br i1 %i.pv, label %_make_posonlyargs.exit.thread, label %_make_posdefaults.exit.thread104

_make_posdefaults.exit.thread104.loopexit.unr-lcssa: ; preds = %bb.ae
  %lcmp.mod307.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod307.not, label %_make_posdefaults.exit.thread104, label %.epil.preheader304

.epil.preheader304:                               ; preds = %_make_posdefaults.exit.thread104.loopexit.unr-lcssa, %.lr.ph34.i.i56
  %.033.i.i57.epil.init = phi i64 [ 0, %.lr.ph34.i.i56 ], [ %i.my, %_make_posdefaults.exit.thread104.loopexit.unr-lcssa ]
  %.132.i.i58.epil.init = phi i32 [ %.024.lcssa.i.i55, %.lr.ph34.i.i56 ], [ %i.mv, %_make_posdefaults.exit.thread104.loopexit.unr-lcssa ]
  %lcmp.mod308 = trunc i64 %i.la to i1
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.pw = load ptr, ptr %i.lq, align 8, !tbaa !29
  %i.px = getelementptr [8 x i8], ptr %i.pw, i64 %.033.i.i57.epil.init
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !30
  %i.pz = load ptr, ptr %i.lr, align 8, !tbaa !29
  %i.qa = sext i32 %.132.i.i58.epil.init to i64
  %i.qb = getelementptr [8 x i8], ptr %i.pz, i64 %i.qa
  store ptr %i.py, ptr %i.qb, align 8, !tbaa !30
  br label %_make_posdefaults.exit.thread104

_make_posdefaults.exit.thread104.loopexit223.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod279.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod279.not, label %_make_posdefaults.exit.thread104, label %.epil.preheader276

.epil.preheader276:                               ; preds = %_make_posdefaults.exit.thread104.loopexit223.unr-lcssa, %.lr.ph.i51.i
  %.01417.i52.i.epil.init.a = phi i64 [ 0, %.lr.ph.i51.i ], [ %i.of, %_make_posdefaults.exit.thread104.loopexit223.unr-lcssa ]
  %lcmp.mod280 = icmp ne i64 %xtraiter277, 0
  tail call void @llvm.assume(i1 %lcmp.mod280)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader276
  %.01417.i52.i.epil.a = phi i64 [ %.01417.i52.i.epil.init.a, %.epil.preheader276 ], [ %i.qh, %bb.ao ] ; 3 uses
  %epil.iter278 = phi i64 [ 0, %.epil.preheader276 ], [ %epil.iter278.next, %bb.ao ]
  %i.qc = getelementptr [8 x i8], ptr %i.nf, i64 %.01417.i52.i.epil.a
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !30
  %i.qe = getelementptr i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !61
  %i.qg = getelementptr [8 x i8], ptr %i.ng, i64 %.01417.i52.i.epil.a
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !46
  %i.qh = add nuw nsw i64 %.01417.i52.i.epil.a, 1
  %epil.iter278.next = add i64 %epil.iter278, 1   ; 2 uses
  %epil.iter278.cmp.not = icmp eq i64 %epil.iter278.next, %xtraiter277
  br i1 %epil.iter278.cmp.not, label %_make_posdefaults.exit.thread104, label %bb.ao, !llvm.loop !154

_make_posdefaults.exit.thread104.loopexit224.unr-lcssa: ; preds = %bb.am
  %lcmp.mod272.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod272.not, label %_make_posdefaults.exit.thread104, label %.epil.preheader269

.epil.preheader269:                               ; preds = %_make_posdefaults.exit.thread104.loopexit224.unr-lcssa, %.lr.ph.i57.i
  %.01417.i58.i.epil.init = phi i64 [ 0, %.lr.ph.i57.i ], [ %i.pr, %_make_posdefaults.exit.thread104.loopexit224.unr-lcssa ]
  %lcmp.mod273 = icmp ne i64 %xtraiter270, 0
  tail call void @llvm.assume(i1 %lcmp.mod273)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader269
  %.01417.i58.i.epil = phi i64 [ %.01417.i58.i.epil.init, %.epil.preheader269 ], [ %i.qn, %bb.ap ] ; 3 uses
  %epil.iter271 = phi i64 [ 0, %.epil.preheader269 ], [ %epil.iter271.next, %bb.ap ]
  %i.qi = getelementptr [8 x i8], ptr %i.or, i64 %.01417.i58.i.epil
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !30
  %i.qk = getelementptr i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !61
  %i.qm = getelementptr [8 x i8], ptr %i.os, i64 %.01417.i58.i.epil
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !46
  %i.qn = add nuw nsw i64 %.01417.i58.i.epil, 1
  %epil.iter271.next = add i64 %epil.iter271, 1   ; 2 uses
  %epil.iter271.cmp.not = icmp eq i64 %epil.iter271.next, %xtraiter270
  br i1 %epil.iter271.cmp.not, label %_make_posdefaults.exit.thread104, label %bb.ap, !llvm.loop !155

_make_posdefaults.exit.thread104:                 ; preds = %_make_posdefaults.exit.thread104.loopexit224.unr-lcssa, %bb.ap, %_make_posdefaults.exit.thread104.loopexit223.unr-lcssa, %bb.ao, %.epil.preheader304, %_make_posdefaults.exit.thread104.loopexit.unr-lcssa, %.preheader.i.i54, %_make_posdefaults.exit
  %.sink.i3898152 = phi ptr [ %.sink.i3898154208, %_make_posdefaults.exit ], [ %.sink.i3898, %.epil.preheader304 ], [ %.sink.i3898, %_make_posdefaults.exit.thread104.loopexit223.unr-lcssa ], [ %.sink.i3898, %.preheader.i.i54 ], [ %.sink.i3898, %_make_posdefaults.exit.thread104.loopexit.unr-lcssa ], [ %.sink.i3898, %bb.ao ], [ %.sink.i3898154209.a, %bb.ap ], [ %.sink.i3898154209.a, %_make_posdefaults.exit.thread104.loopexit224.unr-lcssa ]
  %.sink.i50106 = phi ptr [ %.sink.i50, %_make_posdefaults.exit ], [ %i.ld, %.epil.preheader304 ], [ %i.nc, %_make_posdefaults.exit.thread104.loopexit223.unr-lcssa ], [ %i.ld, %.preheader.i.i54 ], [ %i.ld, %_make_posdefaults.exit.thread104.loopexit.unr-lcssa ], [ %i.nc, %bb.ao ], [ %i.oo, %bb.ap ], [ %i.oo, %_make_posdefaults.exit.thread104.loopexit224.unr-lcssa ]
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %_get_names.exit.i74, label %bb.aq

bb.aq:                                            ; preds = %_make_posdefaults.exit.thread104
  %i.qo = load ptr, ptr %5, align 8, !tbaa !67
  %i.qp = getelementptr i8, ptr %5, i64 8         ; 2 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !68 ; 3 uses
  %.not19.i67 = icmp eq ptr %i.qq, null
  br i1 %.not19.i67, label %_get_names.exit.i74.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !31 ; 5 uses
  %i.qs = getelementptr i8, ptr %0, i64 32
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !27
  %i.qu = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef %i.qr, ptr noundef %i.qt) #14 ; 5 uses
  %.not.i.i68 = icmp ne ptr %i.qu, null           ; 2 uses
  %i.qv = icmp sgt i64 %i.qr, 0
  %or.cond.i.i69 = and i1 %i.qv, %.not.i.i68
  br i1 %or.cond.i.i69, label %.lr.ph.i.i71, label %_get_names.exit.thread28.i

.lr.ph.i.i71:                                     ; preds = %bb.ar
  %i.qw = getelementptr i8, ptr %i.qq, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !29 ; 5 uses
  %i.qy = getelementptr i8, ptr %i.qu, i64 16     ; 5 uses
  %xtraiter312 = and i64 %i.qr, 3                 ; 3 uses
  %i.qz = icmp ult i64 %i.qr, 4
  br i1 %i.qz, label %.epil.preheader311, label %.lr.ph.i.i71.new

.lr.ph.i.i71.new:                                 ; preds = %.lr.ph.i.i71
  %unroll_iter316 = and i64 %i.qr, 9223372036854775804
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph.i.i71.new
  %.01417.i.i72 = phi i64 [ 0, %.lr.ph.i.i71.new ], [ %i.rt, %bb.as ] ; 6 uses
  %niter317 = phi i64 [ 0, %.lr.ph.i.i71.new ], [ %niter317.next.3, %bb.as ]
  %i.ra = getelementptr [8 x i8], ptr %i.qx, i64 %.01417.i.i72
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !30
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !60
  %i.rd = getelementptr [8 x i8], ptr %i.qy, i64 %.01417.i.i72
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !158
  %i.re = or disjoint i64 %.01417.i.i72, 1        ; 2 uses
  %i.rf = getelementptr [8 x i8], ptr %i.qx, i64 %i.re
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !30
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !60
  %i.ri = getelementptr [8 x i8], ptr %i.qy, i64 %i.re
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !158
  %i.rj = or disjoint i64 %.01417.i.i72, 2        ; 2 uses
  %i.rk = getelementptr [8 x i8], ptr %i.qx, i64 %i.rj
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !30
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !60
  %i.rn = getelementptr [8 x i8], ptr %i.qy, i64 %i.rj
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !158
  %i.ro = or disjoint i64 %.01417.i.i72, 3        ; 2 uses
  %i.rp = getelementptr [8 x i8], ptr %i.qx, i64 %i.ro
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !30
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !60
  %i.rs = getelementptr [8 x i8], ptr %i.qy, i64 %i.ro
  store ptr %i.rr, ptr %i.rs, align 8, !tbaa !158
  %i.rt = add nuw nsw i64 %.01417.i.i72, 4        ; 2 uses
  %niter317.next.3 = add nuw nsw i64 %niter317, 4 ; 2 uses
  %niter317.ncmp.3 = icmp eq i64 %niter317.next.3, %unroll_iter316
  br i1 %niter317.ncmp.3, label %.thread30.i.loopexit.unr-lcssa, label %bb.as, !llvm.loop !147

_get_names.exit.i74:                              ; preds = %_make_posdefaults.exit.thread104
  %i.ru = getelementptr i8, ptr %0, i64 32
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !27
  %i.rw = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.rv) #14 ; 2 uses
  %i.rx = icmp eq ptr %i.rw, null
  br i1 %i.rx, label %_make_posonlyargs.exit.thread, label %_make_kwargs.exit

_get_names.exit.i74.thread:                       ; preds = %bb.aq
  %i.ry = getelementptr i8, ptr %0, i64 32
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !27
  %i.sa = tail call ptr @_Py_asdl_arg_seq_new(i64 noundef 0, ptr noundef %i.rz) #14 ; 2 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %_make_posonlyargs.exit.thread, label %.thread30.i

_get_names.exit.thread28.i:                       ; preds = %bb.ar
  br i1 %.not.i.i68, label %.thread30.i, label %_make_posonlyargs.exit.thread

.thread30.i.loopexit.unr-lcssa:                   ; preds = %bb.as
  %lcmp.mod314.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod314.not, label %.thread30.i, label %.epil.preheader311

.epil.preheader311:                               ; preds = %.thread30.i.loopexit.unr-lcssa, %.lr.ph.i.i71
  %.01417.i.i72.epil.init = phi i64 [ 0, %.lr.ph.i.i71 ], [ %i.rt, %.thread30.i.loopexit.unr-lcssa ]
  %lcmp.mod315 = icmp ne i64 %xtraiter312, 0
  tail call void @llvm.assume(i1 %lcmp.mod315)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader311
  %.01417.i.i72.epil = phi i64 [ %.01417.i.i72.epil.init, %.epil.preheader311 ], [ %i.sg, %bb.at ] ; 3 uses
  %epil.iter313 = phi i64 [ 0, %.epil.preheader311 ], [ %epil.iter313.next, %bb.at ]
  %i.sc = getelementptr [8 x i8], ptr %i.qx, i64 %.01417.i.i72.epil
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !30
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !60
  %i.sf = getelementptr [8 x i8], ptr %i.qy, i64 %.01417.i.i72.epil
  store ptr %i.se, ptr %i.sf, align 8, !tbaa !158
  %i.sg = add nuw nsw i64 %.01417.i.i72.epil, 1
  %epil.iter313.next = add i64 %epil.iter313, 1   ; 2 uses
  %epil.iter313.cmp.not = icmp eq i64 %epil.iter313.next, %xtraiter312
  br i1 %epil.iter313.cmp.not, label %.thread30.i, label %bb.at, !llvm.loop !156

.thread30.i:                                      ; preds = %.thread30.i.loopexit.unr-lcssa, %bb.at, %_get_names.exit.i74.thread, %_get_names.exit.thread28.i
  %.080 = phi ptr [ %i.sa, %_get_names.exit.i74.thread ], [ %i.qu, %_get_names.exit.thread28.i ], [ %i.qu, %bb.at ], [ %i.qu, %.thread30.i.loopexit.unr-lcssa ]
  %i.sh = load ptr, ptr %i.qp, align 8, !tbaa !68 ; 3 uses
  %.not20.i = icmp eq ptr %i.sh, null
  br i1 %.not20.i, label %_make_kwargs.exit.thread, label %bb.au

bb.au:                                            ; preds = %.thread30.i
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !31 ; 5 uses
  %i.sj = getelementptr i8, ptr %0, i64 32
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !27
  %i.sl = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %i.si, ptr noundef %i.sk) #14 ; 5 uses
  %.not.i22.i = icmp ne ptr %i.sl, null           ; 2 uses
  %i.sm = icmp sgt i64 %i.si, 0
  %or.cond.i23.i = and i1 %i.sm, %.not.i22.i
  br i1 %or.cond.i23.i, label %.lr.ph.i24.i, label %_make_kwargs.exit.thread141

.lr.ph.i24.i:                                     ; preds = %bb.au
  %i.sn = getelementptr i8, ptr %i.sh, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !29 ; 5 uses
  %i.sp = getelementptr i8, ptr %i.sl, i64 16     ; 5 uses
  %xtraiter319 = and i64 %i.si, 3                 ; 3 uses
  %i.sq = icmp ult i64 %i.si, 4
  br i1 %i.sq, label %.epil.preheader318, label %.lr.ph.i24.i.new

.lr.ph.i24.i.new:                                 ; preds = %.lr.ph.i24.i
  %unroll_iter323 = and i64 %i.si, 9223372036854775804
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i24.i.new
  %.01417.i25.i = phi i64 [ 0, %.lr.ph.i24.i.new ], [ %i.to, %bb.av ] ; 6 uses
  %niter324 = phi i64 [ 0, %.lr.ph.i24.i.new ], [ %niter324.next.3, %bb.av ]
  %i.sr = getelementptr [8 x i8], ptr %i.so, i64 %.01417.i25.i
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !30
  %i.st = getelementptr i8, ptr %i.ss, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !61
  %i.sv = getelementptr [8 x i8], ptr %i.sp, i64 %.01417.i25.i
  store ptr %i.su, ptr %i.sv, align 8, !tbaa !46
  %i.sw = or disjoint i64 %.01417.i25.i, 1        ; 2 uses
  %i.sx = getelementptr [8 x i8], ptr %i.so, i64 %i.sw
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !30
  %i.sz = getelementptr i8, ptr %i.sy, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !61
  %i.tb = getelementptr [8 x i8], ptr %i.sp, i64 %i.sw
  store ptr %i.ta, ptr %i.tb, align 8, !tbaa !46
  %i.tc = or disjoint i64 %.01417.i25.i, 2        ; 2 uses
  %i.td = getelementptr [8 x i8], ptr %i.so, i64 %i.tc
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !30
  %i.tf = getelementptr i8, ptr %i.te, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !61
  %i.th = getelementptr [8 x i8], ptr %i.sp, i64 %i.tc
  store ptr %i.tg, ptr %i.th, align 8, !tbaa !46
  %i.ti = or disjoint i64 %.01417.i25.i, 3        ; 2 uses
  %i.tj = getelementptr [8 x i8], ptr %i.so, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !30
  %i.tl = getelementptr i8, ptr %i.tk, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !61
  %i.tn = getelementptr [8 x i8], ptr %i.sp, i64 %i.ti
  store ptr %i.tm, ptr %i.tn, align 8, !tbaa !46
  %i.to = add nuw nsw i64 %.01417.i25.i, 4        ; 2 uses
  %niter324.next.3 = add nuw nsw i64 %niter324, 4 ; 2 uses
  %niter324.ncmp.3 = icmp eq i64 %niter324.next.3, %unroll_iter323
  br i1 %niter324.ncmp.3, label %.thread131.loopexit.unr-lcssa, label %bb.av, !llvm.loop !151

_make_kwargs.exit:                                ; preds = %_get_names.exit.i74
  %i.tp = getelementptr i8, ptr %0, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !27
  %i.tr = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 0, ptr noundef %i.tq) #14 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, null
  br i1 %i.ts, label %_make_posonlyargs.exit.thread, label %bb.ax

_make_kwargs.exit.thread:                         ; preds = %.thread30.i
  %i.tt = getelementptr i8, ptr %0, i64 32
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !27
  %i.tv = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 0, ptr noundef %i.tu) #14 ; 2 uses
  %i.tw = icmp eq ptr %i.tv, null
  br i1 %i.tw, label %_make_posonlyargs.exit.thread, label %.thread131

_make_kwargs.exit.thread141:                      ; preds = %bb.au
  br i1 %.not.i22.i, label %.thread131, label %_make_posonlyargs.exit.thread

.thread131.loopexit.unr-lcssa:                    ; preds = %bb.av
  %lcmp.mod321.not = icmp eq i64 %xtraiter319, 0
  br i1 %lcmp.mod321.not, label %.thread131, label %.epil.preheader318

.epil.preheader318:                               ; preds = %.thread131.loopexit.unr-lcssa, %.lr.ph.i24.i
  %.01417.i25.i.epil.init = phi i64 [ 0, %.lr.ph.i24.i ], [ %i.to, %.thread131.loopexit.unr-lcssa ]
  %lcmp.mod322 = icmp ne i64 %xtraiter319, 0
  tail call void @llvm.assume(i1 %lcmp.mod322)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.epil.preheader318
  %.01417.i25.i.epil = phi i64 [ %.01417.i25.i.epil.init, %.epil.preheader318 ], [ %i.uc, %bb.aw ] ; 3 uses
  %epil.iter320 = phi i64 [ 0, %.epil.preheader318 ], [ %epil.iter320.next, %bb.aw ]
  %i.tx = getelementptr [8 x i8], ptr %i.so, i64 %.01417.i25.i.epil
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !30
  %i.tz = getelementptr i8, ptr %i.ty, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !61
end_hunk_0
