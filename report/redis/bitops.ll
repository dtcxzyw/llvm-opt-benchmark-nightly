inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@getbitCommand:bb.a

bb.n:                                             ; preds = %bb.m, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare ptr @lookupKeyReadOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @checkType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define dso_local i64 @bitopCommandAVX(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 7 uses
  %i.b = icmp ult i64 %4, 32
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, -7
  %or.cond3 = icmp ult i64 %i.c, -3
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.a, i64 %4, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i64 %2, label %.loopexit216 [
    i64 0, label %.lr.ph266
    i64 4, label %.lr.ph255
    i64 5, label %.lr.ph255
    i64 6, label %.lr.ph255
    i64 1, label %.lr.ph255
    i64 2, label %.lr.ph243
    i64 3, label %.lr.ph
    i64 7, label %.lr.ph231
  ]

.lr.ph231:                                        ; preds = %bb.d
  %i.d = icmp ugt i64 %3, 1
  br i1 %i.d, label %.lr.ph.us.preheader, label %.lr.ph231.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph231
  %i.e = add i64 %3, -1                           ; 2 uses
  %i.f = add i64 %3, -2
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.f, 3
  %unroll_iter = and i64 %i.e, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod392 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.4230.us = phi ptr [ %i.be, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 3 uses
  %.4130229.us = phi i64 [ %i.bg, %._crit_edge.us ], [ %4, %.lr.ph.us.preheader ]
  %.4142228.us = phi i64 [ %i.bf, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 6 uses
  %i.h = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.4230.us)
  %i.i = bitcast <32 x i8> %i.h to <4 x i64>      ; 2 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.3134226.us = phi i64 [ %i.as, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 5 uses
  %.0148225.us = phi <4 x i64> [ %i.aq, %.lr.ph.us.new ], [ zeroinitializer, %.lr.ph.us ]
  %.0149224.us = phi <4 x i64> [ %i.ar, %.lr.ph.us.new ], [ %i.i, %.lr.ph.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.3134226.us
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.4142228.us
  %i.m = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.l)
  %i.n = bitcast <32 x i8> %i.m to <4 x i64>      ; 2 uses
  %i.o = and <4 x i64> %.0149224.us, %i.n
  %i.p = or <4 x i64> %i.o, %.0148225.us
  %i.q = xor <4 x i64> %.0149224.us, %i.n         ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.3134226.us
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.4142228.us
  %i.v = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.u)
  %i.w = bitcast <32 x i8> %i.v to <4 x i64>      ; 2 uses
  %i.x = and <4 x i64> %i.q, %i.w
  %i.y = or <4 x i64> %i.x, %i.p
  %i.z = xor <4 x i64> %i.q, %i.w                 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.3134226.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !113
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.4142228.us
  %i.ae = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.ad)
  %i.af = bitcast <32 x i8> %i.ae to <4 x i64>    ; 2 uses
  %i.ag = and <4 x i64> %i.z, %i.af
  %i.ah = or <4 x i64> %i.ag, %i.y
  %i.ai = xor <4 x i64> %i.z, %i.af               ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.3134226.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !113
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.4142228.us
  %i.an = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.am)
  %i.ao = bitcast <32 x i8> %i.an to <4 x i64>    ; 2 uses
  %i.ap = and <4 x i64> %i.ai, %i.ao
  %i.aq = or <4 x i64> %i.ap, %i.ah               ; 3 uses
  %i.ar = xor <4 x i64> %i.ai, %i.ao              ; 3 uses
  %i.as = add nuw i64 %.3134226.us, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !114

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.3134226.us.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %i.as, %._crit_edge.us.unr-lcssa ]
  %.0148225.us.epil.init = phi <4 x i64> [ zeroinitializer, %.lr.ph.us ], [ %i.aq, %._crit_edge.us.unr-lcssa ]
  %.0149224.us.epil.init = phi <4 x i64> [ %i.i, %.lr.ph.us ], [ %i.ar, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod392)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.3134226.us.epil = phi i64 [ %.3134226.us.epil.init, %.epil.preheader ], [ %i.bb, %bb.e ] ; 2 uses
  %.0148225.us.epil = phi <4 x i64> [ %.0148225.us.epil.init, %.epil.preheader ], [ %i.az, %bb.e ]
  %.0149224.us.epil = phi <4 x i64> [ %.0149224.us.epil.init, %.epil.preheader ], [ %i.ba, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.3134226.us.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.4142228.us
  %i.aw = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.av)
  %i.ax = bitcast <32 x i8> %i.aw to <4 x i64>    ; 2 uses
  %i.ay = and <4 x i64> %.0149224.us.epil, %i.ax
  %i.az = or <4 x i64> %i.ay, %.0148225.us.epil   ; 2 uses
  %i.ba = xor <4 x i64> %.0149224.us.epil, %i.ax  ; 2 uses
  %i.bb = add nuw i64 %.3134226.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.e, !llvm.loop !115

._crit_edge.us:                                   ; preds = %bb.e, %._crit_edge.us.unr-lcssa
  %.lcssa386 = phi <4 x i64> [ %i.aq, %._crit_edge.us.unr-lcssa ], [ %i.az, %bb.e ]
  %.lcssa385 = phi <4 x i64> [ %i.ar, %._crit_edge.us.unr-lcssa ], [ %i.ba, %bb.e ]
  %i.bc = xor <4 x i64> %.lcssa386, splat (i64 -1)
  %i.bd = and <4 x i64> %.lcssa385, %i.bc
  store <4 x i64> %i.bd, ptr %.4230.us, align 1, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.4230.us, i64 32
  %i.bf = add i64 %.4142228.us, 32                ; 2 uses
  %i.bg = add i64 %.4130229.us, -32               ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 31
  br i1 %i.bh, label %.lr.ph.us, label %.loopexit216, !llvm.loop !116

.lr.ph243:                                        ; preds = %bb.d
  %i.bi = icmp ugt i64 %3, 1
  br i1 %i.bi, label %.lr.ph238.us.preheader, label %.lr.ph243.split

.lr.ph238.us.preheader:                           ; preds = %.lr.ph243
  %i.bj = add i64 %3, -1                          ; 2 uses
  %i.bk = add i64 %3, -2
  %xtraiter394 = and i64 %i.bj, 3                 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 3
  %unroll_iter399 = and i64 %i.bj, -4
  %lcmp.mod396.not = icmp eq i64 %xtraiter394, 0
  %lcmp.mod398 = icmp ne i64 %xtraiter394, 0
  br label %.lr.ph238.us

.lr.ph238.us:                                     ; preds = %.lr.ph238.us.preheader, %._crit_edge.us245
  %.2242.us = phi ptr [ %i.cx, %._crit_edge.us245 ], [ %1, %.lr.ph238.us.preheader ] ; 3 uses
  %.2128241.us = phi i64 [ %i.cz, %._crit_edge.us245 ], [ %4, %.lr.ph238.us.preheader ]
  %.2140240.us = phi i64 [ %i.cy, %._crit_edge.us245 ], [ 0, %.lr.ph238.us.preheader ] ; 6 uses
  %i.bm = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.2242.us)
  %i.bn = bitcast <32 x i8> %i.bm to <4 x i64>    ; 2 uses
  br i1 %i.bl, label %.epil.preheader393, label %.lr.ph238.us.new

.lr.ph238.us.new:                                 ; preds = %.lr.ph238.us, %.lr.ph238.us.new
  %.2133237.us = phi i64 [ %i.cp, %.lr.ph238.us.new ], [ 1, %.lr.ph238.us ] ; 5 uses
  %.0151236.us = phi <4 x i64> [ %i.co, %.lr.ph238.us.new ], [ %i.bn, %.lr.ph238.us ]
  %niter400 = phi i64 [ %niter400.next.3, %.lr.ph238.us.new ], [ 0, %.lr.ph238.us ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2133237.us
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !113
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.2140240.us
  %i.br = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.bq)
  %i.bs = bitcast <32 x i8> %i.br to <4 x i64>
  %i.bt = xor <4 x i64> %.0151236.us, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2133237.us
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !113
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.2140240.us
  %i.by = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.bx)
  %i.bz = bitcast <32 x i8> %i.by to <4 x i64>
  %i.ca = xor <4 x i64> %i.bt, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2133237.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !113
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.2140240.us
  %i.cf = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.ce)
  %i.cg = bitcast <32 x i8> %i.cf to <4 x i64>
  %i.ch = xor <4 x i64> %i.ca, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2133237.us
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !113
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.2140240.us
  %i.cm = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.cl)
  %i.cn = bitcast <32 x i8> %i.cm to <4 x i64>
  %i.co = xor <4 x i64> %i.ch, %i.cn              ; 3 uses
  %i.cp = add nuw i64 %.2133237.us, 4             ; 2 uses
  %niter400.next.3 = add nuw i64 %niter400, 4     ; 2 uses
  %niter400.ncmp.3 = icmp eq i64 %niter400.next.3, %unroll_iter399
  br i1 %niter400.ncmp.3, label %._crit_edge.us245.unr-lcssa, label %.lr.ph238.us.new, !llvm.loop !117

._crit_edge.us245.unr-lcssa:                      ; preds = %.lr.ph238.us.new
  br i1 %lcmp.mod396.not, label %._crit_edge.us245, label %.epil.preheader393

.epil.preheader393:                               ; preds = %._crit_edge.us245.unr-lcssa, %.lr.ph238.us
  %.2133237.us.epil.init = phi i64 [ 1, %.lr.ph238.us ], [ %i.cp, %._crit_edge.us245.unr-lcssa ]
  %.0151236.us.epil.init = phi <4 x i64> [ %i.bn, %.lr.ph238.us ], [ %i.co, %._crit_edge.us245.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod398)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader393
  %.2133237.us.epil = phi i64 [ %.2133237.us.epil.init, %.epil.preheader393 ], [ %i.cw, %bb.f ] ; 2 uses
  %.0151236.us.epil = phi <4 x i64> [ %.0151236.us.epil.init, %.epil.preheader393 ], [ %i.cv, %bb.f ]
  %epil.iter395 = phi i64 [ 0, %.epil.preheader393 ], [ %epil.iter395.next, %bb.f ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2133237.us.epil
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.2140240.us
  %i.ct = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.cs)
  %i.cu = bitcast <32 x i8> %i.ct to <4 x i64>
  %i.cv = xor <4 x i64> %.0151236.us.epil, %i.cu  ; 2 uses
  %i.cw = add nuw i64 %.2133237.us.epil, 1
  %epil.iter395.next = add i64 %epil.iter395, 1   ; 2 uses
  %epil.iter395.cmp.not = icmp eq i64 %epil.iter395.next, %xtraiter394
  br i1 %epil.iter395.cmp.not, label %._crit_edge.us245, label %bb.f, !llvm.loop !118

._crit_edge.us245:                                ; preds = %bb.f, %._crit_edge.us245.unr-lcssa
  %.lcssa378 = phi <4 x i64> [ %i.co, %._crit_edge.us245.unr-lcssa ], [ %i.cv, %bb.f ]
  store <4 x i64> %.lcssa378, ptr %.2242.us, align 1, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.2242.us, i64 32
  %i.cy = add i64 %.2140240.us, 32                ; 2 uses
  %i.cz = add i64 %.2128241.us, -32               ; 2 uses
  %i.da = icmp ugt i64 %i.cz, 31
  br i1 %i.da, label %.lr.ph238.us, label %.loopexit216, !llvm.loop !119

.lr.ph266:                                        ; preds = %bb.d
  %i.db = icmp ugt i64 %3, 1
  br i1 %i.db, label %.lr.ph261.us.preheader, label %.lr.ph266.split

.lr.ph261.us.preheader:                           ; preds = %.lr.ph266
  %i.dc = add i64 %3, -1                          ; 2 uses
  %i.dd = add i64 %3, -2
  %xtraiter410 = and i64 %i.dc, 3                 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 3
  %unroll_iter415 = and i64 %i.dc, -4
  %lcmp.mod412.not = icmp eq i64 %xtraiter410, 0
  %lcmp.mod414 = icmp ne i64 %xtraiter410, 0
  br label %.lr.ph261.us

.lr.ph261.us:                                     ; preds = %.lr.ph261.us.preheader, %._crit_edge.us268
  %.0125265.us = phi ptr [ %i.eq, %._crit_edge.us268 ], [ %1, %.lr.ph261.us.preheader ] ; 3 uses
  %.0126264.us = phi i64 [ %i.es, %._crit_edge.us268 ], [ %4, %.lr.ph261.us.preheader ]
  %.0138263.us = phi i64 [ %i.er, %._crit_edge.us268 ], [ 0, %.lr.ph261.us.preheader ] ; 6 uses
  %i.df = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.0125265.us)
  %i.dg = bitcast <32 x i8> %i.df to <4 x i64>    ; 2 uses
  br i1 %i.de, label %.epil.preheader409, label %.lr.ph261.us.new

.lr.ph261.us.new:                                 ; preds = %.lr.ph261.us, %.lr.ph261.us.new
  %.0131260.us = phi i64 [ %i.ei, %.lr.ph261.us.new ], [ 1, %.lr.ph261.us ] ; 5 uses
  %.0147259.us = phi <4 x i64> [ %i.eh, %.lr.ph261.us.new ], [ %i.dg, %.lr.ph261.us ]
  %niter416 = phi i64 [ %niter416.next.3, %.lr.ph261.us.new ], [ 0, %.lr.ph261.us ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0131260.us
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !113
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.0138263.us
  %i.dk = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.dj)
  %i.dl = bitcast <32 x i8> %i.dk to <4 x i64>
  %i.dm = and <4 x i64> %.0147259.us, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0131260.us
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !113
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.0138263.us
  %i.dr = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.dq)
  %i.ds = bitcast <32 x i8> %i.dr to <4 x i64>
  %i.dt = and <4 x i64> %i.dm, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0131260.us
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !113
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.0138263.us
  %i.dy = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.dx)
  %i.dz = bitcast <32 x i8> %i.dy to <4 x i64>
  %i.ea = and <4 x i64> %i.dt, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0131260.us
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !113
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.0138263.us
  %i.ef = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.ee)
  %i.eg = bitcast <32 x i8> %i.ef to <4 x i64>
  %i.eh = and <4 x i64> %i.ea, %i.eg              ; 3 uses
  %i.ei = add nuw i64 %.0131260.us, 4             ; 2 uses
  %niter416.next.3 = add nuw i64 %niter416, 4     ; 2 uses
  %niter416.ncmp.3 = icmp eq i64 %niter416.next.3, %unroll_iter415
  br i1 %niter416.ncmp.3, label %._crit_edge.us268.unr-lcssa, label %.lr.ph261.us.new, !llvm.loop !120

._crit_edge.us268.unr-lcssa:                      ; preds = %.lr.ph261.us.new
  br i1 %lcmp.mod412.not, label %._crit_edge.us268, label %.epil.preheader409

.epil.preheader409:                               ; preds = %._crit_edge.us268.unr-lcssa, %.lr.ph261.us
  %.0131260.us.epil.init = phi i64 [ 1, %.lr.ph261.us ], [ %i.ei, %._crit_edge.us268.unr-lcssa ]
  %.0147259.us.epil.init = phi <4 x i64> [ %i.dg, %.lr.ph261.us ], [ %i.eh, %._crit_edge.us268.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod414)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader409
  %.0131260.us.epil = phi i64 [ %.0131260.us.epil.init, %.epil.preheader409 ], [ %i.ep, %bb.g ] ; 2 uses
  %.0147259.us.epil = phi <4 x i64> [ %.0147259.us.epil.init, %.epil.preheader409 ], [ %i.eo, %bb.g ]
  %epil.iter411 = phi i64 [ 0, %.epil.preheader409 ], [ %epil.iter411.next, %bb.g ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0131260.us.epil
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !113
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.0138263.us
  %i.em = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.el)
  %i.en = bitcast <32 x i8> %i.em to <4 x i64>
  %i.eo = and <4 x i64> %.0147259.us.epil, %i.en  ; 2 uses
  %i.ep = add nuw i64 %.0131260.us.epil, 1
  %epil.iter411.next = add i64 %epil.iter411, 1   ; 2 uses
  %epil.iter411.cmp.not = icmp eq i64 %epil.iter411.next, %xtraiter410
  br i1 %epil.iter411.cmp.not, label %._crit_edge.us268, label %bb.g, !llvm.loop !121

._crit_edge.us268:                                ; preds = %bb.g, %._crit_edge.us268.unr-lcssa
  %.lcssa = phi <4 x i64> [ %i.eh, %._crit_edge.us268.unr-lcssa ], [ %i.eo, %bb.g ]
  store <4 x i64> %.lcssa, ptr %.0125265.us, align 1, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %.0125265.us, i64 32
  %i.er = add i64 %.0138263.us, 32                ; 2 uses
  %i.es = add i64 %.0126264.us, -32               ; 2 uses
  %i.et = icmp ugt i64 %i.es, 31
  br i1 %i.et, label %.lr.ph261.us, label %.loopexit216, !llvm.loop !122

.lr.ph266.split:                                  ; preds = %.lr.ph266, %.lr.ph266.split
  %.0125265 = phi ptr [ %i.ev, %.lr.ph266.split ], [ %1, %.lr.ph266 ] ; 3 uses
  %.0126264 = phi i64 [ %i.ex, %.lr.ph266.split ], [ %4, %.lr.ph266 ]
  %.0138263 = phi i64 [ %i.ew, %.lr.ph266.split ], [ 0, %.lr.ph266 ]
  %i.eu = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.0125265)
  store <32 x i8> %i.eu, ptr %.0125265, align 1, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %.0125265, i64 32
  %i.ew = add i64 %.0138263, 32                   ; 2 uses
  %i.ex = add i64 %.0126264, -32                  ; 2 uses
  %i.ey = icmp ugt i64 %i.ex, 31
  br i1 %i.ey, label %.lr.ph266.split, label %.loopexit, !llvm.loop !122

.lr.ph255:                                        ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ez = icmp ugt i64 %3, 1
  br i1 %i.ez, label %.lr.ph249.us.preheader, label %.lr.ph255.split

.lr.ph249.us.preheader:                           ; preds = %.lr.ph255
  %i.fa = add i64 %3, -1                          ; 2 uses
  %i.fb = add i64 %3, -2
  %xtraiter402 = and i64 %i.fa, 3                 ; 3 uses
  %i.fc = icmp ult i64 %i.fb, 3
  %unroll_iter407 = and i64 %i.fa, -4
  %lcmp.mod404.not = icmp eq i64 %xtraiter402, 0
  %lcmp.mod406 = icmp ne i64 %xtraiter402, 0
  br label %.lr.ph249.us

.lr.ph249.us:                                     ; preds = %.lr.ph249.us.preheader, %._crit_edge.us257
  %.1253.us = phi ptr [ %i.go, %._crit_edge.us257 ], [ %1, %.lr.ph249.us.preheader ] ; 3 uses
  %.1127252.us = phi i64 [ %i.gq, %._crit_edge.us257 ], [ %4, %.lr.ph249.us.preheader ]
  %.1139251.us = phi i64 [ %i.gp, %._crit_edge.us257 ], [ 0, %.lr.ph249.us.preheader ] ; 6 uses
  %i.fd = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.1253.us)
  %i.fe = bitcast <32 x i8> %i.fd to <4 x i64>    ; 2 uses
  br i1 %i.fc, label %.epil.preheader401, label %.lr.ph249.us.new

.lr.ph249.us.new:                                 ; preds = %.lr.ph249.us, %.lr.ph249.us.new
  %.1132248.us = phi i64 [ %i.gg, %.lr.ph249.us.new ], [ 1, %.lr.ph249.us ] ; 5 uses
  %.0150247.us = phi <4 x i64> [ %i.gf, %.lr.ph249.us.new ], [ %i.fe, %.lr.ph249.us ]
  %niter408 = phi i64 [ %niter408.next.3, %.lr.ph249.us.new ], [ 0, %.lr.ph249.us ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1132248.us
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !113
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.1139251.us
  %i.fi = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.fh)
  %i.fj = bitcast <32 x i8> %i.fi to <4 x i64>
  %i.fk = or <4 x i64> %.0150247.us, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1132248.us
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !113
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.1139251.us
  %i.fp = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.fo)
  %i.fq = bitcast <32 x i8> %i.fp to <4 x i64>
  %i.fr = or <4 x i64> %i.fk, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1132248.us
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !113
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.1139251.us
  %i.fw = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.fv)
  %i.fx = bitcast <32 x i8> %i.fw to <4 x i64>
  %i.fy = or <4 x i64> %i.fr, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1132248.us
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !113
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.1139251.us
  %i.gd = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.gc)
  %i.ge = bitcast <32 x i8> %i.gd to <4 x i64>
  %i.gf = or <4 x i64> %i.fy, %i.ge               ; 3 uses
  %i.gg = add nuw i64 %.1132248.us, 4             ; 2 uses
  %niter408.next.3 = add nuw i64 %niter408, 4     ; 2 uses
  %niter408.ncmp.3 = icmp eq i64 %niter408.next.3, %unroll_iter407
  br i1 %niter408.ncmp.3, label %._crit_edge.us257.unr-lcssa, label %.lr.ph249.us.new, !llvm.loop !123

._crit_edge.us257.unr-lcssa:                      ; preds = %.lr.ph249.us.new
  br i1 %lcmp.mod404.not, label %._crit_edge.us257, label %.epil.preheader401

.epil.preheader401:                               ; preds = %._crit_edge.us257.unr-lcssa, %.lr.ph249.us
  %.1132248.us.epil.init = phi i64 [ 1, %.lr.ph249.us ], [ %i.gg, %._crit_edge.us257.unr-lcssa ]
  %.0150247.us.epil.init = phi <4 x i64> [ %i.fe, %.lr.ph249.us ], [ %i.gf, %._crit_edge.us257.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod406)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader401
  %.1132248.us.epil = phi i64 [ %.1132248.us.epil.init, %.epil.preheader401 ], [ %i.gn, %bb.h ] ; 2 uses
  %.0150247.us.epil = phi <4 x i64> [ %.0150247.us.epil.init, %.epil.preheader401 ], [ %i.gm, %bb.h ]
  %epil.iter403 = phi i64 [ 0, %.epil.preheader401 ], [ %epil.iter403.next, %bb.h ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1132248.us.epil
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !113
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.1139251.us
  %i.gk = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %i.gj)
  %i.gl = bitcast <32 x i8> %i.gk to <4 x i64>
  %i.gm = or <4 x i64> %.0150247.us.epil, %i.gl   ; 2 uses
  %i.gn = add nuw i64 %.1132248.us.epil, 1
  %epil.iter403.next = add i64 %epil.iter403, 1   ; 2 uses
  %epil.iter403.cmp.not = icmp eq i64 %epil.iter403.next, %xtraiter402
  br i1 %epil.iter403.cmp.not, label %._crit_edge.us257, label %bb.h, !llvm.loop !124

._crit_edge.us257:                                ; preds = %bb.h, %._crit_edge.us257.unr-lcssa
  %.lcssa373 = phi <4 x i64> [ %i.gf, %._crit_edge.us257.unr-lcssa ], [ %i.gm, %bb.h ]
  store <4 x i64> %.lcssa373, ptr %.1253.us, align 1, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %.1253.us, i64 32
  %i.gp = add i64 %.1139251.us, 32                ; 2 uses
  %i.gq = add i64 %.1127252.us, -32               ; 2 uses
  %i.gr = icmp ugt i64 %i.gq, 31
  br i1 %i.gr, label %.lr.ph249.us, label %.loopexit216, !llvm.loop !125

.lr.ph255.split:                                  ; preds = %.lr.ph255, %.lr.ph255.split
  %.1253 = phi ptr [ %i.gt, %.lr.ph255.split ], [ %1, %.lr.ph255 ] ; 3 uses
  %.1127252 = phi i64 [ %i.gv, %.lr.ph255.split ], [ %4, %.lr.ph255 ]
  %.1139251 = phi i64 [ %i.gu, %.lr.ph255.split ], [ 0, %.lr.ph255 ]
  %i.gs = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.1253)
  store <32 x i8> %i.gs, ptr %.1253, align 1, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %.1253, i64 32
  %i.gu = add i64 %.1139251, 32                   ; 2 uses
  %i.gv = add i64 %.1127252, -32                  ; 2 uses
  %i.gw = icmp ugt i64 %i.gv, 31
  br i1 %i.gw, label %.lr.ph255.split, label %.loopexit216, !llvm.loop !125

.lr.ph243.split:                                  ; preds = %.lr.ph243, %.lr.ph243.split
  %.2242 = phi ptr [ %i.gy, %.lr.ph243.split ], [ %1, %.lr.ph243 ] ; 3 uses
  %.2128241 = phi i64 [ %i.ha, %.lr.ph243.split ], [ %4, %.lr.ph243 ]
  %.2140240 = phi i64 [ %i.gz, %.lr.ph243.split ], [ 0, %.lr.ph243 ]
  %i.gx = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.2242)
  store <32 x i8> %i.gx, ptr %.2242, align 1, !tbaa !13
  %i.gy = getelementptr inbounds nuw i8, ptr %.2242, i64 32
  %i.gz = add i64 %.2140240, 32                   ; 2 uses
  %i.ha = add i64 %.2128241, -32                  ; 2 uses
  %i.hb = icmp ugt i64 %i.ha, 31
  br i1 %i.hb, label %.lr.ph243.split, label %.loopexit, !llvm.loop !119

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.3235 = phi ptr [ %i.hf, %.lr.ph ], [ %1, %bb.d ] ; 3 uses
  %.3129234 = phi i64 [ %i.hh, %.lr.ph ], [ %4, %bb.d ]
  %.3141233 = phi i64 [ %i.hg, %.lr.ph ], [ 0, %bb.d ]
  %i.hc = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.3235)
  %i.hd = bitcast <32 x i8> %i.hc to <4 x i64>
  %i.he = xor <4 x i64> %i.hd, splat (i64 -1)
  store <4 x i64> %i.he, ptr %.3235, align 1, !tbaa !13
  %i.hf = getelementptr inbounds nuw i8, ptr %.3235, i64 32
  %i.hg = add i64 %.3141233, 32                   ; 2 uses
  %i.hh = add i64 %.3129234, -32                  ; 2 uses
  %i.hi = icmp ugt i64 %i.hh, 31
  br i1 %i.hi, label %.lr.ph, label %.loopexit, !llvm.loop !126

.lr.ph231.split:                                  ; preds = %.lr.ph231, %.lr.ph231.split
  %.4230 = phi ptr [ %i.hk, %.lr.ph231.split ], [ %1, %.lr.ph231 ] ; 3 uses
  %.4130229 = phi i64 [ %i.hm, %.lr.ph231.split ], [ %4, %.lr.ph231 ]
  %.4142228 = phi i64 [ %i.hl, %.lr.ph231.split ], [ 0, %.lr.ph231 ]
  %i.hj = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.4230)
  store <32 x i8> %i.hj, ptr %.4230, align 1, !tbaa !13
  %i.hk = getelementptr inbounds nuw i8, ptr %.4230, i64 32
  %i.hl = add i64 %.4142228, 32                   ; 2 uses
  %i.hm = add i64 %.4130229, -32                  ; 2 uses
  %i.hn = icmp ugt i64 %i.hm, 31
  br i1 %i.hn, label %.lr.ph231.split, label %.loopexit, !llvm.loop !116

.loopexit216:                                     ; preds = %._crit_edge.us, %._crit_edge.us245, %.lr.ph255.split, %._crit_edge.us257, %._crit_edge.us268, %bb.d
  %.5143 = phi i64 [ 0, %bb.d ], [ %i.er, %._crit_edge.us268 ], [ %i.gp, %._crit_edge.us257 ], [ %i.gu, %.lr.ph255.split ], [ %i.cy, %._crit_edge.us245 ], [ %i.bf, %._crit_edge.us ] ; 16 uses
  switch i64 %2, label %.loopexit [
    i64 4, label %.preheader
    i64 5, label %.preheader211
    i64 6, label %.preheader213
  ]

.preheader213:                                    ; preds = %.loopexit216
  %.not = icmp eq i64 %.5143, 0
  br i1 %.not, label %.loopexit, label %.lr.ph273.preheader

.lr.ph273.preheader:                              ; preds = %.preheader213
  %i.ho = add i64 %.5143, -1
  %i.hp = lshr i64 %i.ho, 5
  %i.hq = add nuw nsw i64 %i.hp, 1                ; 2 uses
  %xtraiter417 = and i64 %i.hq, 3                 ; 3 uses
  %i.hr = icmp ult i64 %.5143, 97
  br i1 %i.hr, label %.lr.ph273.epil.preheader, label %.lr.ph273.preheader.new

.lr.ph273.preheader.new:                          ; preds = %.lr.ph273.preheader
  %unroll_iter421 = and i64 %i.hq, 1152921504606846972
  br label %.lr.ph273

.preheader211:                                    ; preds = %.loopexit216
  %.not282 = icmp eq i64 %.5143, 0
  br i1 %.not282, label %.loopexit, label %.lr.ph277.preheader

.lr.ph277.preheader:                              ; preds = %.preheader211
  %i.hs = add i64 %.5143, -1
  %i.ht = lshr i64 %i.hs, 5
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %xtraiter423 = and i64 %i.hu, 3                 ; 3 uses
  %i.hv = icmp ult i64 %.5143, 97
  br i1 %i.hv, label %.lr.ph277.epil.preheader, label %.lr.ph277.preheader.new

.lr.ph277.preheader.new:                          ; preds = %.lr.ph277.preheader
  %unroll_iter427 = and i64 %i.hu, 1152921504606846972
  br label %.lr.ph277

.preheader:                                       ; preds = %.loopexit216
  %.not283 = icmp eq i64 %.5143, 0
  br i1 %.not283, label %.loopexit, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %.preheader
  %i.hw = add i64 %.5143, -1
  %i.hx = lshr i64 %i.hw, 5
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %xtraiter429 = and i64 %i.hy, 3                 ; 3 uses
  %i.hz = icmp ult i64 %.5143, 97
  br i1 %i.hz, label %.lr.ph281.epil.preheader, label %.lr.ph281.preheader.new

.lr.ph281.preheader.new:                          ; preds = %.lr.ph281.preheader
  %unroll_iter433 = and i64 %i.hy, 1152921504606846972
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %.lr.ph281, %.lr.ph281.preheader.new
  %.5280 = phi ptr [ %1, %.lr.ph281.preheader.new ], [ %i.io, %.lr.ph281 ] ; 6 uses
  %.0144278 = phi ptr [ %i.a, %.lr.ph281.preheader.new ], [ %i.ip, %.lr.ph281 ] ; 5 uses
  %niter434 = phi i64 [ 0, %.lr.ph281.preheader.new ], [ %niter434.next.3, %.lr.ph281 ]
  %i.ia = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.5280)
  %i.ib = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.0144278)
  %.inner363 = xor <32 x i8> %i.ia, splat (i8 -1)
  %.inner364 = and <32 x i8> %i.ib, %.inner363
  store <32 x i8> %.inner364, ptr %.5280, align 1, !tbaa !13
  %i.ic = getelementptr inbounds nuw i8, ptr %.5280, i64 32 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0144278, i64 32
  %i.ie = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ic)
  %i.if = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.id)
  %.inner363.1 = xor <32 x i8> %i.ie, splat (i8 -1)
  %.inner364.1 = and <32 x i8> %i.if, %.inner363.1
  store <32 x i8> %.inner364.1, ptr %i.ic, align 1, !tbaa !13
  %i.ig = getelementptr inbounds nuw i8, ptr %.5280, i64 64 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0144278, i64 64
  %i.ii = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ig)
  %i.ij = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ih)
  %.inner363.2 = xor <32 x i8> %i.ii, splat (i8 -1)
  %.inner364.2 = and <32 x i8> %i.ij, %.inner363.2
  store <32 x i8> %.inner364.2, ptr %i.ig, align 1, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %.5280, i64 96 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0144278, i64 96
  %i.im = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ik)
  %i.in = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.il)
  %.inner363.3 = xor <32 x i8> %i.im, splat (i8 -1)
  %.inner364.3 = and <32 x i8> %i.in, %.inner363.3
  store <32 x i8> %.inner364.3, ptr %i.ik, align 1, !tbaa !13
  %i.io = getelementptr inbounds nuw i8, ptr %.5280, i64 128 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.0144278, i64 128 ; 2 uses
  %niter434.next.3 = add i64 %niter434, 4         ; 2 uses
  %niter434.ncmp.3.not = icmp eq i64 %niter434.next.3, %unroll_iter433
  br i1 %niter434.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph281, !llvm.loop !127

.lr.ph277:                                        ; preds = %.lr.ph277, %.lr.ph277.preheader.new
  %.6276 = phi ptr [ %1, %.lr.ph277.preheader.new ], [ %i.je, %.lr.ph277 ] ; 6 uses
  %.1145274 = phi ptr [ %i.a, %.lr.ph277.preheader.new ], [ %i.jf, %.lr.ph277 ] ; 5 uses
  %niter428 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %niter428.next.3, %.lr.ph277 ]
  %i.iq = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.6276)
  %i.ir = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.1145274)
  %.inner365 = xor <32 x i8> %i.ir, splat (i8 -1)
  %.inner366 = and <32 x i8> %i.iq, %.inner365
  store <32 x i8> %.inner366, ptr %.6276, align 1, !tbaa !13
  %i.is = getelementptr inbounds nuw i8, ptr %.6276, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.1145274, i64 32
  %i.iu = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.is)
  %i.iv = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.it)
  %.inner365.1 = xor <32 x i8> %i.iv, splat (i8 -1)
  %.inner366.1 = and <32 x i8> %i.iu, %.inner365.1
  store <32 x i8> %.inner366.1, ptr %i.is, align 1, !tbaa !13
  %i.iw = getelementptr inbounds nuw i8, ptr %.6276, i64 64 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.1145274, i64 64
  %i.iy = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.iw)
  %i.iz = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ix)
  %.inner365.2 = xor <32 x i8> %i.iz, splat (i8 -1)
  %.inner366.2 = and <32 x i8> %i.iy, %.inner365.2
end_hunk_0
