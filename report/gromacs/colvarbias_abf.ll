Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_abf?download=true
inline.NumInlined: 3756
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN17colvar_grid_count18local_sample_countEi:bb.a
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.ak, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ai, i64 %storemerge.idx.i.i.i.i.i.i
  %i.al = and i64 %.066179, 63
  %i.am = shl nuw i64 1, %i.al                    ; 2 uses
  %i.an = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !62
  %i.ao = and i64 %i.an, %i.am
  %.not.i = icmp eq i64 %i.ao, 0
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ag
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.ar = select i1 %.not.i, i64 680, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw [168 x i8], ptr %i.w, i64 %i.ag
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !81
  %i.ax = fsub double %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ag
  %i.az = load double, ptr %i.ay, align 8, !tbaa !82
  %i.ba = fdiv double %i.ax, %i.az
  %i.bb = tail call noundef double @llvm.floor.f64(double %i.ba)
  %i.bc = fptosi double %i.bb to i32              ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.sext.i
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bd, i64 %storemerge.idx.i.i.i.i.i.i
  %i.be = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.bf = and i64 %i.be, %i.am
  %.not11.i.i = icmp eq i64 %i.bf, 0
  %.phi.trans.insert12.i.i = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.ag
  %.pre13.i.i = load i32, ptr %.phi.trans.insert12.i.i, align 4, !tbaa !83 ; 2 uses
  br i1 %.not11.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = srem i32 %i.bc, %.pre13.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.bg, %bb.d ], [ %i.bc, %bb.c ]
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %.0.i.i, i32 0)
  %i.bh = add nsw i32 %.pre13.i.i, -1
  %spec.select.i.i = tail call noundef i32 @llvm.smin.i32(i32 %spec.store.select.i.i, i32 %i.bh)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.066179
  store i32 %spec.select.i.i, ptr %i.bi, align 4, !tbaa !83
  %i.bj = add nuw i64 %.066179, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %.pre241
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !932

bb.f:                                             ; preds = %._crit_edge
  br i1 %.not229, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bl = load ptr, ptr %2, align 8, !tbaa !60    ; 6 uses
  %i.bm = load ptr, ptr %i.bk, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.bn = add nuw i64 %.0911.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %.pre241
  br i1 %exitcond.not.i, label %.lr.ph.i.i, label %bb.h, !llvm.loop !0

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.0911.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0911.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !83 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %_ZNK11colvar_gridImE8index_okERKSt6vectorIiSaIiEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.0911.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !83
  %.not.i97 = icmp slt i32 %i.bp, %i.bs
  br i1 %.not.i97, label %bb.g, label %_ZNK11colvar_gridImE8index_okERKSt6vectorIiSaIiEE.exit

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !60 ; 5 uses
  %xtraiter = and i64 %.pre241, 3                 ; 3 uses
  %i.bv = icmp ult i64 %.pre241, 4
  br i1 %i.bv, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.pre241, -4
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.new
  %.01627.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.df, %bb.j ] ; 6 uses
  %.01726.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.de, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.j ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !83
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.01627.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !83
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.by
  %i.cd = add i64 %i.cc, %.01726.i.i
  %i.ce = or disjoint i64 %.01627.i.i, 1          ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !83
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ce
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !83
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, %i.ch
  %i.cm = add i64 %i.cl, %i.cd
  %i.cn = or disjoint i64 %.01627.i.i, 2          ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !83
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cn
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !83
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.ct, %i.cq
  %i.cv = add i64 %i.cu, %i.cm
  %i.cw = or disjoint i64 %.01627.i.i, 3          ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !83
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cw
  %i.db = load i32, ptr %i.da, align 4, !tbaa !83
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.dc, %i.cz
  %i.de = add i64 %i.dd, %i.cv                    ; 3 uses
  %i.df = add nuw i64 %.01627.i.i, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread.loopexit.unr-lcssa, label %bb.j, !llvm.loop !3

.thread.loopexit.unr-lcssa:                       ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01627.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.df, %.thread.loopexit.unr-lcssa ]
  %.01726.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.de, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod315 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod315)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.01627.i.i.epil = phi i64 [ %.01627.i.i.epil.init, %.epil.preheader ], [ %i.do, %bb.k ] ; 3 uses
  %.01726.i.i.epil = phi i64 [ %.01726.i.i.epil.init, %.epil.preheader ], [ %i.dn, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.epil
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !83
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.01627.i.i.epil
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !83
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.dl, %i.di
  %i.dn = add i64 %i.dm, %.01726.i.i.epil         ; 2 uses
  %i.do = add nuw i64 %.01627.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread, label %bb.k, !llvm.loop !933

.thread:                                          ; preds = %.thread.loopexit.unr-lcssa, %bb.k, %._crit_edge.thread, %bb.f
  %.017.lcssa.i.i = phi i64 [ 0, %bb.f ], [ 0, %._crit_edge.thread ], [ %i.de, %.thread.loopexit.unr-lcssa ], [ %i.dn, %bb.k ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !201
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %.017.lcssa.i.i
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !62
  %i.dt = trunc i64 %i.ds to i32
  br label %_ZNK11colvar_gridImE8index_okERKSt6vectorIiSaIiEE.exit

bb.l:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.du = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !158
  switch i64 %i.dv, label %.noexc.i148 [
    i64 1, label %.lr.ph.i98.lr.ph
    i64 2, label %.lr.ph218
    i64 3, label %.lr.ph202
  ]

bb.n:                                             ; preds = %bb.l
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.lr.ph.i98.lr.ph:                                 ; preds = %bb.m
  %i.dx = sub nsw i32 0, %1
  %i.dy = load ptr, ptr %2, align 8, !tbaa !60
  %i.dz = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !51
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.pre244.a = load i64, ptr %i.eb, align 8, !tbaa !62
  %i.ef = and i64 %.pre244.a, 1
  %.not16.i = icmp eq i64 %i.ef, 0
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.lr.ph.i98.lr.ph, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit
  %.051226 = phi i32 [ %i.dx, %.lr.ph.i98.lr.ph ], [ %i.ez, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit ] ; 3 uses
  %.053225 = phi i64 [ 0, %.lr.ph.i98.lr.ph ], [ %.154, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit ] ; 3 uses
  %.056224 = phi i64 [ 0, %.lr.ph.i98.lr.ph ], [ %.157, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit ] ; 3 uses
  %i.eg = load i32, ptr %i.dy, align 4, !tbaa !83
  %i.eh = add nsw i32 %i.eg, %.051226             ; 2 uses
  store i32 %i.eh, ptr %i.dz, align 4, !tbaa !83
  %i.ei = load ptr, ptr %3, align 8               ; 2 uses
  %i.ej = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !83 ; 3 uses
  br i1 %.not16.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i98
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !83 ; 2 uses
  %i.em = add nsw i32 %i.el, %i.ek
  %i.en = srem i32 %i.em, %i.el
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !83
  %.pre244 = load i32, ptr %i.dz, align 4, !tbaa !83
  br label %.thread164.loopexit

bb.p:                                             ; preds = %.lr.ph.i98
  %i.eo = icmp slt i32 %i.ek, 0
  br i1 %i.eo, label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = load i32, ptr %i.ej, align 4, !tbaa !83
  %.not.i102 = icmp slt i32 %i.ek, %i.ep
  br i1 %.not.i102, label %.thread164.loopexit, label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit

.thread164.loopexit:                              ; preds = %bb.q, %bb.o
  %5 = phi i32 [ %i.eh, %bb.q ], [ %.pre244, %bb.o ]
  %6 = load ptr, ptr %i.ed, align 8, !tbaa !60
  %i.eq = sext i32 %5 to i64
  %i.er = load i32, ptr %6, align 4, !tbaa !83
  %i.es = sext i32 %i.er to i64
  %i.et = mul nsw i64 %i.es, %i.eq
  %i.eu = load ptr, ptr %i.ee, align 8, !tbaa !201
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %i.et
  %i.ew = add i64 %.053225, 1
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !62
  %i.ey = add i64 %i.ex, %.056224
  br label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit

_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit: ; preds = %bb.p, %bb.q, %.thread164.loopexit
  %.157 = phi i64 [ %i.ey, %.thread164.loopexit ], [ %.056224, %bb.q ], [ %.056224, %bb.p ] ; 2 uses
  %.154 = phi i64 [ %i.ew, %.thread164.loopexit ], [ %.053225, %bb.q ], [ %.053225, %bb.p ] ; 2 uses
  %i.ez = add i32 %.051226, 1
  %exitcond240.not = icmp eq i32 %.051226, %1
  br i1 %exitcond240.not, label %.loopexit, label %.lr.ph.i98, !llvm.loop !934

.lr.ph218:                                        ; preds = %bb.m
  %i.fa = sub nsw i32 0, %1                       ; 2 uses
  %i.fb = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.fc = load ptr, ptr %3, align 8, !tbaa !60    ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !51
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !62 ; 2 uses
  %i.fl = and i64 %i.fk, 2
  %.not16.i116 = icmp eq i64 %i.fl, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  br label %.lr.ph.i111.lr.ph

.lr.ph.i111.lr.ph:                                ; preds = %.lr.ph218, %._crit_edge210
  %.152216 = phi i32 [ %i.fa, %.lr.ph218 ], [ %i.hg, %._crit_edge210 ] ; 3 uses
  %.255215 = phi i64 [ 0, %.lr.ph218 ], [ %.4, %._crit_edge210 ]
  %.258214 = phi i64 [ 0, %.lr.ph218 ], [ %.460, %._crit_edge210 ]
  %i.fn = load i32, ptr %i.fb, align 4, !tbaa !83
  %i.fo = add nsw i32 %i.fn, %.152216
  store i32 %i.fo, ptr %i.fc, align 4, !tbaa !83
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %.lr.ph.i111.lr.ph, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread
  %.050209 = phi i32 [ %i.fa, %.lr.ph.i111.lr.ph ], [ %i.hf, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread ] ; 3 uses
  %.3208 = phi i64 [ %.255215, %.lr.ph.i111.lr.ph ], [ %.4, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread ] ; 6 uses
  %.359207 = phi i64 [ %.258214, %.lr.ph.i111.lr.ph ], [ %.460, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread ] ; 6 uses
  %i.fp = load i32, ptr %i.fd, align 4, !tbaa !83
  %i.fq = add nsw i32 %i.fp, %.050209
  store i32 %i.fq, ptr %i.fe, align 4, !tbaa !83
  %i.fr = load ptr, ptr %3, align 8               ; 2 uses
  %i.fs = load ptr, ptr %i.fg, align 8            ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  br label %.outer

.outer:                                           ; preds = %.thread280, %.lr.ph.i111
  %exitcond.not.i118.ph = phi i1 [ true, %.thread280 ], [ false, %.lr.ph.i111 ] ; 4 uses
  %.018.i112.ph = phi i64 [ 1, %.thread280 ], [ 0, %.lr.ph.i111 ] ; 4 uses
  %i.fw = shl nuw nsw i64 1, %.018.i112.ph
  %i.fx = and i64 %i.fk, %i.fw
  %.not16.i116.peel = icmp eq i64 %i.fx, 0
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.018.i112.ph ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !83 ; 3 uses
  br i1 %.not16.i116.peel, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.outer
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.018.i112.ph
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !83 ; 2 uses
  %i.gc = add nsw i32 %i.gb, %i.fz
  %i.gd = srem i32 %i.gc, %i.gb
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !83
  br label %bb.u

bb.s:                                             ; preds = %.outer
  %i.ge = icmp slt i32 %i.fz, 0
  br i1 %i.ge, label %.thread280, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.018.i112.ph
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !83
  %.not.i120.peel = icmp slt i32 %i.fz, %i.gg
  br i1 %.not.i120.peel, label %bb.u, label %.thread280

bb.u:                                             ; preds = %bb.t, %bb.r
  br i1 %exitcond.not.i118.ph, label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread, label %.outer.peel.newph

.outer.peel.newph:                                ; preds = %bb.u
  %i.gh = load i32, ptr %i.ft, align 4, !tbaa !83 ; 3 uses
  br i1 %.not16.i116, label %bb.v, label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121

_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121: ; preds = %.outer.peel.newph
  %i.gi = load i32, ptr %i.fu, align 4, !tbaa !83 ; 2 uses
  %i.gj = add nsw i32 %i.gi, %i.gh
  %i.gk = srem i32 %i.gj, %i.gi
  store i32 %i.gk, ptr %i.ft, align 4, !tbaa !83
  br i1 %exitcond.not.i118.ph, label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread, label %.thread166.loopexit

bb.v:                                             ; preds = %.outer.peel.newph
  %i.gl = icmp slt i32 %i.gh, 0
  br i1 %i.gl, label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gm = load i32, ptr %i.fv, align 4, !tbaa !83
  %.not.i120 = icmp slt i32 %i.gh, %i.gm
  %.not.i120.not = xor i1 %.not.i120, true
  %brmerge = or i1 %.not.i120.not, %exitcond.not.i118.ph
  br i1 %brmerge, label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread, label %.thread166.loopexit

.thread280:                                       ; preds = %bb.t, %bb.s
  br i1 %exitcond.not.i118.ph, label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread, label %.outer, !llvm.loop !935

.thread166.loopexit:                              ; preds = %bb.w, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121
  %i.gn = load ptr, ptr %i.fh, align 8, !tbaa !60 ; 2 uses
  %i.go = load i32, ptr %i.fc, align 4, !tbaa !83
  %i.gp = sext i32 %i.go to i64
  %i.gq = load i32, ptr %i.gn, align 4, !tbaa !83
  %i.gr = sext i32 %i.gq to i64
  %i.gs = mul nsw i64 %i.gr, %i.gp
  %i.gt = load i32, ptr %i.fm, align 4, !tbaa !83
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !83
  %i.gx = sext i32 %i.gw to i64
  %i.gy = mul nsw i64 %i.gx, %i.gu
  %i.gz = load ptr, ptr %i.fi, align 8, !tbaa !201
  %i.ha = getelementptr [8 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = getelementptr [8 x i8], ptr %i.ha, i64 %i.gs
  %i.hc = add i64 %.3208, 1
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !62
  %i.he = add i64 %i.hd, %.359207
  br label %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread

_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread: ; preds = %bb.w, %bb.u, %.thread280, %bb.v, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121, %.thread166.loopexit
  %.460 = phi i64 [ %.359207, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121 ], [ %i.he, %.thread166.loopexit ], [ %.359207, %.thread280 ], [ %.359207, %bb.w ], [ %.359207, %bb.v ], [ %.359207, %bb.u ] ; 3 uses
  %.4 = phi i64 [ %.3208, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121 ], [ %i.hc, %.thread166.loopexit ], [ %.3208, %.thread280 ], [ %.3208, %bb.w ], [ %.3208, %bb.v ], [ %.3208, %bb.u ] ; 3 uses
  %i.hf = add i32 %.050209, 1
  %exitcond238.not.a = icmp eq i32 %.050209, %1
  br i1 %exitcond238.not.a, label %._crit_edge210, label %.lr.ph.i111, !llvm.loop !936

._crit_edge210:                                   ; preds = %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit121.thread
  %i.hg = add i32 %.152216, 1
  %exitcond239.not = icmp eq i32 %.152216, %1
  br i1 %exitcond239.not, label %.loopexit, label %.lr.ph.i111.lr.ph, !llvm.loop !937

.lr.ph202:                                        ; preds = %bb.m
  %i.hh = sub nsw i32 0, %1                       ; 3 uses
  %i.hi = load ptr, ptr %2, align 8, !tbaa !60    ; 3 uses
  %i.hj = load ptr, ptr %3, align 8, !tbaa !60    ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.hs = load ptr, ptr %i.ho, align 8, !tbaa !51
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !62
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph202, %._crit_edge193.split
  %.2200 = phi i32 [ %i.hh, %.lr.ph202 ], [ %i.js, %._crit_edge193.split ] ; 3 uses
  %.5199 = phi i64 [ 0, %.lr.ph202 ], [ %.8, %._crit_edge193.split ]
  %.561198 = phi i64 [ 0, %.lr.ph202 ], [ %.864, %._crit_edge193.split ]
  %i.hw = load i32, ptr %i.hi, align 4, !tbaa !83
  %i.hx = add nsw i32 %i.hw, %.2200
  store i32 %i.hx, ptr %i.hj, align 4, !tbaa !83
  br label %.lr.ph.i130.lr.ph

.lr.ph.i130.lr.ph:                                ; preds = %.lr.ph192, %._crit_edge184
  %.1190 = phi i32 [ %i.hh, %.lr.ph192 ], [ %i.jr, %._crit_edge184 ] ; 3 uses
  %.6189 = phi i64 [ %.5199, %.lr.ph192 ], [ %.8, %._crit_edge184 ]
  %.662188 = phi i64 [ %.561198, %.lr.ph192 ], [ %.864, %._crit_edge184 ]
  %i.hy = load i32, ptr %i.hk, align 4, !tbaa !83
  %i.hz = add nsw i32 %i.hy, %.1190
  store i32 %i.hz, ptr %i.hl, align 4, !tbaa !83
  br label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.lr.ph, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit140.thread
  %.0183 = phi i32 [ %i.hh, %.lr.ph.i130.lr.ph ], [ %i.jq, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit140.thread ] ; 3 uses
  %.7182 = phi i64 [ %.6189, %.lr.ph.i130.lr.ph ], [ %.8, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit140.thread ] ; 3 uses
  %.763181 = phi i64 [ %.662188, %.lr.ph.i130.lr.ph ], [ %.864, %_ZNK11colvar_gridImE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit140.thread ] ; 3 uses
  %i.ia = load i32, ptr %i.hm, align 4, !tbaa !83
  %i.ib = add nsw i32 %i.ia, %.0183
  store i32 %i.ib, ptr %i.hn, align 4, !tbaa !83
  %i.ic = load ptr, ptr %3, align 8
  %i.id = load ptr, ptr %i.hp, align 8            ; 2 uses
  br label %.outer290

.outer290:                                        ; preds = %.thread284, %.lr.ph.i130
  %.018.i131.ph = phi i64 [ %i.iq, %.thread284 ], [ 0, %.lr.ph.i130 ]
  %.01517.i132.ph = phi i1 [ true, %.thread284 ], [ false, %.lr.ph.i130 ]
  br label %bb.x

bb.x:                                             ; preds = %.outer290, %bb.ab
  %.018.i131 = phi i64 [ %i.ip, %bb.ab ], [ %.018.i131.ph, %.outer290 ] ; 6 uses
  %i.ie = shl nuw nsw i64 1, %.018.i131
  %i.if = and i64 %i.ht, %i.ie
  %.not16.i135 = icmp eq i64 %i.if, 0
end_hunk_0
