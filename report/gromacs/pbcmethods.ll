Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pbcmethods?download=true
inline.NumInlined: 130
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z16calc_pbc_clusteriiP10t_topology7PbcTypePA3_fPKiS3_:bb.a
.lr.ph213.split:                                  ; preds = %.lr.ph213.split, %.lr.ph213.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph213.split.preheader.new ], [ %indvars.iv.next.7, %.lr.ph213.split ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph213.split.preheader.new ], [ %niter.next.7, %.lr.ph213.split ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !13
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.p, i64 %i.bq
  store i8 1, ptr %i.br, align 1, !tbaa !66
  store i8 1, ptr %i.h, align 1, !tbaa !66
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.p, i64 %i.bv
  store i8 1, ptr %i.bw, align 1, !tbaa !66
  store i8 1, ptr %i.h, align 1, !tbaa !66
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !13
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.p, i64 %i.ca
  store i8 1, ptr %i.cb, align 1, !tbaa !66
  store i8 1, ptr %i.h, align 1, !tbaa !66
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %i.p, i64 %i.cf
  store i8 1, ptr %i.cg, align 1, !tbaa !66
  store i8 1, ptr %i.h, align 1, !tbaa !66
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !13
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.p, i64 %i.ck
  store i8 1, ptr %i.cl, align 1, !tbaa !66
  store i8 1, ptr %i.h, align 1, !tbaa !66
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !13
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.p, i64 %i.cp
  store i8 1, ptr %i.cq, align 1, !tbaa !66
  store i8 1, ptr %i.h, align 1, !tbaa !66
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.p, i64 %i.cu
  store i8 1, ptr %i.cv, align 1, !tbaa !66
  store i8 1, ptr %i.h, align 1, !tbaa !66
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !13
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.p, i64 %i.cz
  store i8 1, ptr %i.da, align 1, !tbaa !66
  store i8 1, ptr %i.h, align 1, !tbaa !66
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge214.loopexit377.unr-lcssa, label %.lr.ph213.split, !llvm.loop !34

._crit_edge214.loopexit.unr-lcssa:                ; preds = %._crit_edge.us.1
  %lcmp.mod381.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod381.not, label %._crit_edge214, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %._crit_edge214.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next272.1, %._crit_edge214.loopexit.unr-lcssa ]
  %lcmp.mod382 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod382)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv271.epil.init
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !13 ; 4 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.p, i64 %i.dd
  store i8 1, ptr %i.de, align 1, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.us.epil.preheader
  %.0147210.us.epil = phi i32 [ %i.r, %.lr.ph.us.epil.preheader ], [ %..0147.us.epil, %bb.j ] ; 4 uses
  %.0149209.us.epil = phi i32 [ 0, %.lr.ph.us.epil.preheader ], [ %.0149..us.epil, %bb.j ] ; 4 uses
  %i.df = zext nneg i32 %.0149209.us.epil to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !13
  %i.dj = icmp slt i32 %i.dc, %i.di
  br i1 %i.dj, label %._crit_edge.us.epil, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dk = zext nneg i32 %.0147210.us.epil to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !13
  %.not.us.epil = icmp slt i32 %i.dc, %i.dm
  br i1 %.not.us.epil, label %bb.j, label %._crit_edge.us.epil

bb.j:                                             ; preds = %bb.i
  %i.dn = add nuw nsw i32 %.0147210.us.epil, %.0149209.us.epil
  %i.do = lshr i32 %i.dn, 1                       ; 3 uses
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !13
  %i.dt = icmp slt i32 %i.dc, %i.ds               ; 2 uses
  %.0149..us.epil = select i1 %i.dt, i32 %.0149209.us.epil, i32 %i.do ; 3 uses
  %..0147.us.epil = select i1 %i.dt, i32 %i.do, i32 %.0147210.us.epil ; 2 uses
  %i.du = icmp slt i32 %.0149..us.epil, %..0147.us.epil
  br i1 %i.du, label %bb.h, label %._crit_edge.us.epil, !llvm.loop !33

._crit_edge.us.epil:                              ; preds = %bb.j, %bb.i, %bb.h
  %.1150.us332.epil = phi i32 [ %.0149..us.epil, %bb.j ], [ %.0149209.us.epil, %bb.h ], [ %.0147210.us.epil, %bb.i ]
  %i.dv = zext nneg i32 %.1150.us332.epil to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dv
  store i8 1, ptr %i.dw, align 1, !tbaa !66
  br label %._crit_edge214

._crit_edge214.loopexit377.unr-lcssa:             ; preds = %.lr.ph213.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge214, label %.lr.ph213.split.epil.preheader

.lr.ph213.split.epil.preheader:                   ; preds = %._crit_edge214.loopexit377.unr-lcssa, %.lr.ph213.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph213.split.preheader ], [ %indvars.iv.next.7, %._crit_edge214.loopexit377.unr-lcssa ]
  %lcmp.mod378 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod378)
  br label %.lr.ph213.split.epil

.lr.ph213.split.epil:                             ; preds = %.lr.ph213.split.epil, %.lr.ph213.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph213.split.epil ], [ %indvars.iv.epil.init, %.lr.ph213.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph213.split.epil ], [ 0, %.lr.ph213.split.epil.preheader ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.epil
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !13
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.p, i64 %i.dz
  store i8 1, ptr %i.ea, align 1, !tbaa !66
  store i8 1, ptr %i.h, align 1, !tbaa !66
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge214, label %.lr.ph213.split.epil, !llvm.loop !35

._crit_edge214:                                   ; preds = %._crit_edge214.loopexit377.unr-lcssa, %.lr.ph213.split.epil, %._crit_edge.us.epil, %._crit_edge214.loopexit.unr-lcssa, %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ed = icmp sgt i32 %i.d, 0
  br i1 %i.ed, label %.lr.ph227, label %._crit_edge228.thread

._crit_edge228.thread:                            ; preds = %._crit_edge214
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 183, ptr noundef %i.p)
  br label %bb.z

.lr.ph227:                                        ; preds = %._crit_edge214
  %i.ee = load float, ptr %6, align 4, !tbaa !16
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !16
  %i.eg = fadd float %i.ee, %i.ef
  %i.eh = load float, ptr %i.ec, align 4, !tbaa !16
  %i.ei = fadd float %i.eg, %i.eh                 ; 2 uses
  %i.ej = fmul float %i.ei, %i.ei
  %i.ek = fmul float %i.ej, 1.000000e+01
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %wide.trip.count289 = zext nneg i32 %i.d to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph227, %bb.y
  %indvars.iv286 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next287, %bb.y ] ; 7 uses
  %.0135225 = phi i32 [ 0, %.lr.ph227 ], [ %.1, %bb.y ] ; 3 uses
  %.0136224 = phi i32 [ -1, %.lr.ph227 ], [ %.2, %bb.y ] ; 2 uses
  %.0138223 = phi float [ %i.ek, %.lr.ph227 ], [ %.2140, %bb.y ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv286 ; 3 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !13 ; 2 uses
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 5 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next287 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !13 ; 6 uses
  %i.er = icmp slt i32 %i.eo, %i.eq
  br i1 %i.er, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv286 ; 2 uses
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %indvars.iv286 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load i8, ptr %i.es, align 1, !tbaa !66, !range !67, !noundef !68
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = sext i32 %i.eo to i64                   ; 2 uses
  br i1 %i.ew, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ey = sext i32 %i.eq to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.l
  %indvars.iv276 = phi i64 [ %i.ex, %.lr.ph.split.us.preheader ], [ %indvars.iv.next277, %bb.l ] ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %i.p, i64 %indvars.iv276
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !66, !range !67, !noundef !68
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %.split.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.fc = icmp slt i64 %indvars.iv.next277, %i.ey
  br i1 %i.fc, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !36

.lr.ph.splitthread-pre-split:                     ; preds = %bb.w
  %.pr = load i8, ptr %i.es, align 1, !tbaa !66
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %10 = phi i8 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %i.fd = phi i32 [ %.pre318320, %.lr.ph.splitthread-pre-split ], [ %i.eq, %.lr.ph ] ; 2 uses
  %11 = phi i32 [ %i.gj, %.lr.ph.splitthread-pre-split ], [ %i.eq, %.lr.ph ]
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %.lr.ph.splitthread-pre-split ], [ %i.ex, %.lr.ph ] ; 6 uses
  %i.fe = trunc nuw i8 %10 to i1
  %i.ff = getelementptr inbounds i8, ptr %i.p, i64 %indvars.iv279
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !66, !range !67, !noundef !68
  %i.fh = trunc nuw i8 %i.fg to i1                ; 2 uses
  br i1 %i.fe, label %bb.m, label %bb.q

bb.m:                                             ; preds = %.lr.ph.split
  br i1 %i.fh, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fi = trunc nuw nsw i64 %indvars.iv.next287 to i32
  %i.fj = trunc nsw i64 %indvars.iv279 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(67) @.str.1, i8 noundef zeroext 2)
  %i.fk = add nsw i32 %i.fj, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 137, ptr noundef nonnull @.str.7, i32 noundef %i.fi, i32 noundef %i.fk) #14
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ai

bb.q:                                             ; preds = %.lr.ph.split
  br i1 %i.fh, label %.split.us, label %bb.w

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.q
  %.us-phi.in = phi i64 [ %indvars.iv279, %bb.q ], [ %indvars.iv276, %.lr.ph.split.us ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %i.fm = trunc i64 %indvars.iv.next287 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(67) @.str.1, i8 noundef zeroext 2)
  %i.fn = add nsw i32 %.us-phi, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 145, ptr noundef nonnull @.str.8, i32 noundef %i.fn, i32 noundef %i.fm) #14
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.split.us
  unreachable

bb.s:                                             ; preds = %.split.us
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ai

bb.t:                                             ; preds = %bb.m
  %i.fp = load i32, ptr %i.en, align 4, !tbaa !13
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp sgt i64 %indvars.iv279, %i.fq
  %i.fs = getelementptr inbounds [12 x i8], ptr %4, i64 %indvars.iv279 ; 7 uses
  br i1 %i.fr, label %bb.u, label %._crit_edge311

._crit_edge311:                                   ; preds = %bb.t
  %i.ft = load <2 x float>, ptr %i.fs, align 4, !tbaa !16
  %.phi.trans.insert316 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.pre317 = load float, ptr %.phi.trans.insert316, align 4, !tbaa !16
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fu = getelementptr i8, ptr %i.fs, i64 -12    ; 2 uses
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %7, ptr noundef %i.fs, ptr noundef %i.fu, ptr noundef nonnull %i.a)
  %i.fv = load <2 x float>, ptr %i.fu, align 4, !tbaa !16
  %i.fw = load <2 x float>, ptr %i.a, align 8, !tbaa !16
  %i.fx = fadd <2 x float> %i.fv, %i.fw           ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fs, i64 -4
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !16
  %i.ga = load float, ptr %i.em, align 8, !tbaa !16
  %i.gb = fadd float %i.fz, %i.ga                 ; 2 uses
  store <2 x float> %i.fx, ptr %i.fs, align 4, !tbaa !16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store float %i.gb, ptr %i.gc, align 4, !tbaa !16
  %.pre318.pre = load i32, ptr %i.ep, align 4, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge311, %bb.u
  %.pre318 = phi i32 [ %i.fd, %._crit_edge311 ], [ %.pre318.pre, %bb.u ] ; 2 uses
  %i.gd = phi float [ %.pre317, %._crit_edge311 ], [ %i.gb, %bb.u ]
  %i.ge = phi <2 x float> [ %i.ft, %._crit_edge311 ], [ %i.fx, %bb.u ]
  %i.gf = load float, ptr %i.eu, align 4, !tbaa !16
  %i.gg = fadd float %i.gf, %i.gd
  %i.gh = load <2 x float>, ptr %i.et, align 4, !tbaa !16
  %i.gi = fadd <2 x float> %i.gh, %i.ge
  store <2 x float> %i.gi, ptr %i.et, align 4, !tbaa !16
  store float %i.gg, ptr %i.eu, align 4, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.q, %bb.v
  %.pre318320 = phi i32 [ %i.fd, %bb.q ], [ %.pre318, %bb.v ]
  %i.gj = phi i32 [ %11, %bb.q ], [ %.pre318, %bb.v ] ; 3 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next280, %i.gk
  br i1 %i.gl, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.l, %bb.w, %bb.k
  %.lcssa = phi i32 [ %i.eq, %bb.k ], [ %i.gj, %bb.w ], [ %i.eq, %bb.l ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv286
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !66, !range !67, !noundef !68
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  %i.gp = load i32, ptr %i.en, align 4, !tbaa !13
  %i.gq = sub nsw i32 %.lcssa, %i.gp
  %i.gr = sitofp i32 %i.gq to double
  %i.gs = fdiv nnan double 1.000000e+00, %i.gr
  %i.gt = fptrunc nnan double %i.gs to float      ; 2 uses
  %i.gu = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %indvars.iv286 ; 4 uses
  %i.gv = load <2 x float>, ptr %i.gu, align 4, !tbaa !16
  %i.gw = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.gv, %i.gx
  store <2 x float> %i.gy, ptr %i.gu, align 4, !tbaa !16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !16
  %i.hb = fmul float %i.ha, %i.gt
  store float %i.hb, ptr %i.gz, align 4, !tbaa !16
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %7, ptr noundef nonnull %i.b, ptr noundef nonnull %i.gu, ptr noundef nonnull %i.a)
  %i.hc = load float, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %i.hd = load float, ptr %i.el, align 4, !tbaa !16 ; 2 uses
  %i.he = fmul float %i.hd, %i.hd
  %i.hf = call float @llvm.fmuladd.f32(float %i.hc, float %i.hc, float %i.he)
  %i.hg = load float, ptr %i.em, align 8, !tbaa !16 ; 2 uses
  %i.hh = call noundef float @llvm.fmuladd.f32(float %i.hg, float %i.hg, float %i.hf) ; 2 uses
  %i.hi = fcmp olt float %i.hh, %.0138223         ; 2 uses
  %spec.select = select i1 %i.hi, float %i.hh, float %.0138223
  %i.hj = trunc nuw nsw i64 %indvars.iv286 to i32 ; 2 uses
  %spec.select164 = select i1 %i.hi, i32 %i.hj, i32 %.0136224
  %i.hk = add nsw i32 %.0135225, 1
  %i.hl = sext i32 %.0135225 to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.hl
  store i32 %i.hj, ptr %i.hm, align 4, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.x
  %.2140 = phi float [ %spec.select, %bb.x ], [ %.0138223, %._crit_edge ]
  %.2 = phi i32 [ %spec.select164, %bb.x ], [ %.0136224, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.hk, %bb.x ], [ %.0135225, %._crit_edge ] ; 5 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %._crit_edge228, label %bb.k, !llvm.loop !38

._crit_edge228:                                   ; preds = %bb.y
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 183, ptr noundef %i.p)
  %i.hn = icmp slt i32 %.1, 1
  br i1 %i.hn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge228.thread, %._crit_edge228
  %i.ho = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite162 = call i64 @fwrite(ptr nonnull @.str.9, i64 37, i64 1, ptr %i.ho) #15 ; 0 uses
  br label %bb.ah

bb.aa:                                            ; preds = %._crit_edge228
  %i.hp = icmp eq i32 %.2, -1
  br i1 %i.hp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.10, i64 36, i64 1, ptr %i.hq) #15 ; 0 uses
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  store i32 %.2, ptr %i.l, align 4, !tbaa !13
  %i.hr = sext i32 %.2 to i64
  %i.hs = getelementptr inbounds i8, ptr %i.h, i64 %i.hr
  store i8 0, ptr %i.hs, align 1, !tbaa !66
  %.not = icmp eq i32 %.1, 1
  br i1 %.not, label %._crit_edge256, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.ac
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %wide.trip.count309 = zext nneg i32 %.1 to i64  ; 2 uses
  br label %.lr.ph235.us.preheader

.lr.ph235.us.preheader:                           ; preds = %._crit_edge252, %.lr.ph255
  %indvars.iv306 = phi i64 [ 1, %.lr.ph255 ], [ %indvars.iv.next307, %._crit_edge252 ] ; 3 uses
  %i.hv = load float, ptr %6, align 4, !tbaa !16
  %i.hw = load float, ptr %i.eb, align 4, !tbaa !16
  %i.hx = fadd float %i.hv, %i.hw
  %i.hy = load float, ptr %i.ec, align 4, !tbaa !16
  %i.hz = fadd float %i.hx, %i.hy                 ; 2 uses
  %i.ia = fmul float %i.hz, %i.hz
  %i.ib = fmul float %i.ia, 1.000000e+01
  br label %.lr.ph235.us

.lr.ph235.us:                                     ; preds = %.lr.ph235.us.preheader, %._crit_edge236.us
  %indvars.iv296 = phi i64 [ 0, %.lr.ph235.us.preheader ], [ %indvars.iv.next297, %._crit_edge236.us ] ; 2 uses
  %.3243.us = phi float [ %i.ib, %.lr.ph235.us.preheader ], [ %.5.us, %._crit_edge236.us ]
  %.0141242.us = phi i32 [ -1, %.lr.ph235.us.preheader ], [ %.2143.us, %._crit_edge236.us ]
  %.0144241.us = phi i32 [ -1, %.lr.ph235.us.preheader ], [ %.2146.us, %._crit_edge236.us ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv296
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !13 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.ie
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph235.us, %bb.ag
  %indvars.iv291 = phi i64 [ 0, %.lr.ph235.us ], [ %indvars.iv.next292, %bb.ag ] ; 2 uses
  %.4233.us = phi float [ %.3243.us, %.lr.ph235.us ], [ %.5.us, %bb.ag ] ; 3 uses
  %.1142232.us = phi i32 [ %.0141242.us, %.lr.ph235.us ], [ %.2143.us, %bb.ag ] ; 2 uses
  %.1145231.us = phi i32 [ %.0144241.us, %.lr.ph235.us ], [ %.2146.us, %bb.ag ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv291
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !13 ; 2 uses
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.h, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !66, !range !67, !noundef !68
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.im = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.ii
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %7, ptr noundef %i.im, ptr noundef %i.if, ptr noundef nonnull %i.a)
  %i.in = load float, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %i.io = load float, ptr %i.ht, align 4, !tbaa !16 ; 2 uses
  %i.ip = fmul float %i.io, %i.io
  %i.iq = call float @llvm.fmuladd.f32(float %i.in, float %i.in, float %i.ip)
  %i.ir = load float, ptr %i.hu, align 8, !tbaa !16 ; 2 uses
  %i.is = call noundef float @llvm.fmuladd.f32(float %i.ir, float %i.ir, float %i.iq) ; 2 uses
  %i.it = fcmp olt float %i.is, %.4233.us
  br i1 %i.it, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.2146.us = phi i32 [ %i.id, %bb.af ], [ %.1145231.us, %bb.ae ], [ %.1145231.us, %bb.ad ] ; 3 uses
  %.2143.us = phi i32 [ %i.ih, %bb.af ], [ %.1142232.us, %bb.ae ], [ %.1142232.us, %bb.ad ] ; 4 uses
  %.5.us = phi float [ %i.is, %bb.af ], [ %.4233.us, %bb.ae ], [ %.4233.us, %bb.ad ] ; 2 uses
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count309
  br i1 %exitcond295.not, label %._crit_edge236.us, label %bb.ad, !llvm.loop !39

._crit_edge236.us:                                ; preds = %bb.ag
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %indvars.iv306
  br i1 %exitcond300.not, label %.split246.us, label %.lr.ph235.us, !llvm.loop !40

.split246.us:                                     ; preds = %._crit_edge236.us
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv306
  store i32 %.2143.us, ptr %i.iu, align 4, !tbaa !13
  %i.iv = sext i32 %.2143.us to i64               ; 5 uses
  %i.iw = getelementptr inbounds i8, ptr %i.h, i64 %i.iv
  store i8 0, ptr %i.iw, align 1, !tbaa !66
  %i.ix = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.iv ; 5 uses
  %i.iy = sext i32 %.2146.us to i64
  %i.iz = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.iy ; 3 uses
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %7, ptr noundef %i.ix, ptr noundef %i.iz, ptr noundef nonnull %i.a)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !16
  %i.jc = load float, ptr %i.hu, align 8, !tbaa !16
  %i.jd = fadd float %i.jb, %i.jc
  %i.je = getelementptr inbounds [12 x i8], ptr %i.j, i64 %i.iv ; 10 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 3 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !16
  %i.jh = fsub float %i.jd, %i.jg                 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jj = load <2 x float>, ptr %i.iz, align 4, !tbaa !16
  %i.jk = load <2 x float>, ptr %i.a, align 8, !tbaa !16
  %i.jl = fadd <2 x float> %i.jj, %i.jk
  %i.jm = load <2 x float>, ptr %i.ix, align 4, !tbaa !16
  %i.jn = fsub <2 x float> %i.jl, %i.jm           ; 2 uses
  store <2 x float> %i.jn, ptr %i.je, align 4, !tbaa !16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 7 uses
  store float %i.jh, ptr %i.jo, align 4, !tbaa !16
  %i.jp = load float, ptr %i.jf, align 4, !tbaa !16
  %i.jq = fadd float %i.jh, %i.jp
  %i.jr = load <2 x float>, ptr %i.ix, align 4, !tbaa !16
  %i.js = fadd <2 x float> %i.jn, %i.jr
  store <2 x float> %i.js, ptr %i.ix, align 4, !tbaa !16
  store float %i.jq, ptr %i.jf, align 4, !tbaa !16
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.iv ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !13 ; 2 uses
  %i.jv = getelementptr i8, ptr %i.jt, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !13 ; 2 uses
  %i.jx = icmp slt i32 %i.ju, %i.jw
  br i1 %i.jx, label %.lr.ph251.preheader, label %._crit_edge252

.lr.ph251.preheader:                              ; preds = %.split246.us
  %i.jy = sext i32 %i.ju to i64                   ; 6 uses
  %wide.trip.count304 = sext i32 %i.jw to i64     ; 5 uses
  %i.jz = sub nsw i64 %wide.trip.count304, %i.jy  ; 3 uses
  %min.iters.check = icmp ult i64 %i.jz, 8
  br i1 %min.iters.check, label %.lr.ph251.preheader366, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph251.preheader
  %i.ka = mul nsw i64 %i.jy, 12
  %i.kb = getelementptr i8, ptr %4, i64 %i.ka
  %i.kc = mul nsw i64 %wide.trip.count304, 12
  %i.kd = getelementptr i8, ptr %4, i64 %i.kc
  %i.ke = mul nsw i64 %i.iv, 12
  %i.kf = getelementptr i8, ptr %i.j, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 12
end_hunk_0
