inline.NumInlined: 110
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn9Slice_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %i.au = phi i64 [ %i.ap, %.lr.ph ], [ %i.cw, %bb.k ] ; 2 uses
  %i.av = phi ptr [ %i.ak, %.lr.ph ], [ %i.cs, %bb.k ]
  %.0532894 = phi i32 [ 0, %.lr.ph ], [ %i.cp, %bb.k ] ; 5 uses
  %.0538893 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %bb.k ] ; 6 uses
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = icmp eq i64 %.0538893, %i.aw
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = sub nsw i32 %i.ah, %.0532894
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0538893
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  %i.bc = select i1 %i.bb, i32 %i.ah, i32 0
  %i.bd = sub i32 %i.ba, %.0532894
  %i.be = add i32 %i.bd, %i.bc
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0538893
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !28 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, -233
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = sub nsw i32 %i.ah, %.0532894
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub i64 %i.au, %.0538893
  %i.bl = udiv i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %.0539 = phi i32 [ %i.ay, %bb.f ], [ %i.be, %bb.g ], [ %i.bm, %bb.i ], [ %i.bg, %bb.h ] ; 3 uses
  %i.bn = load i8, ptr %i.aq, align 1, !tbaa !45, !range !47, !noundef !48
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = and i32 %.0539, 3
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = and i1 %i.bq, %i.bo                     ; 2 uses
  %.0544 = select i1 %i.br, i32 4, i32 1          ; 2 uses
  %i.bs = select i1 %i.br, i64 2, i64 0
  %i.bt = shl i64 %i.as, %i.bs
  %i.bu = getelementptr inbounds nuw [72 x i8], ptr %i.av, i64 %.0538893 ; 6 uses
  %i.bv = sdiv i32 %.0539, %.0544
  %i.bw = load ptr, ptr %i.at, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i32 noundef %i.bv, i64 noundef %i.bt, i32 noundef %.0544, ptr noundef %i.bw)
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !18 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.critedge623, label %_ZNK4ncnn3Mat5emptyEv.exit742

_ZNK4ncnn3Mat5emptyEv.exit742:                    ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !50
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.ca, %i.cd
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.critedge623, label %bb.k

bb.k:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit742
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ch = sext i32 %.0532894 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !43
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !25
  %i.co = mul i64 %i.cn, %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.ci, i64 %i.co, i1 false)
  %i.cp = add nsw i32 %.0539, %.0532894
  %i.cq = add nuw i64 %.0538893, 1                ; 2 uses
  %i.cr = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.cs = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 72                ; 2 uses
  %.not596 = icmp ult i64 %i.cq, %i.cw
  br i1 %.not596, label %bb.d, label %.critedge616, !llvm.loop !51

.critedge616:                                     ; preds = %bb.k, %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.cx = icmp eq i32 %i.m, 2                     ; 3 uses
  %i.cy = icmp eq i32 %i.z, 0                     ; 3 uses
  %or.cond = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.l, label %bb.ao

bb.l:                                             ; preds = %.critedge616
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !43 ; 13 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !53
  %i.dd = mul nsw i32 %i.q, %i.dc                 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.dg = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %.not598895.not = icmp eq ptr %i.df, %i.dg
  br i1 %.not598895.not, label %.critedge618.thread, label %.lr.ph898

.critedge618.thread:                              ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !27
  br label %._crit_edge

.lr.ph898:                                        ; preds = %bb.l
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 72
  %.not597 = icmp eq ptr %i.u, null
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.do = sext i32 %i.q to i64
  %i.dp = udiv i64 %i.o, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph898, %bb.t
  %i.dr = phi i64 [ %i.dm, %.lr.ph898 ], [ %i.fk, %bb.t ] ; 2 uses
  %i.ds = phi ptr [ %i.dg, %.lr.ph898 ], [ %i.fg, %bb.t ]
  %.0574897 = phi i64 [ 0, %.lr.ph898 ], [ %i.fe, %bb.t ] ; 6 uses
  %.0575896 = phi i32 [ 0, %.lr.ph898 ], [ %i.fd, %bb.t ] ; 4 uses
  br i1 %.not597, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = add nsw i64 %i.dr, -1
  %i.du = icmp eq i64 %.0574897, %i.dt
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dv = sub nsw i32 %i.dd, %.0575896
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0574897
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !28 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  %i.dz = select i1 %i.dy, i32 %i.dd, i32 0
  %i.ea = sub i32 %i.dx, %.0575896
  %i.eb = add i32 %i.ea, %i.dz
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0574897
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !28 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, -233
  br i1 %i.ee, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ef = sub nsw i32 %i.dd, %.0575896
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sub i64 %i.dr, %.0574897
  %i.ei = udiv i64 %i.eg, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o, %bb.p
  %.0573 = phi i32 [ %i.dv, %bb.o ], [ %i.eb, %bb.p ], [ %i.ej, %bb.r ], [ %i.ed, %bb.q ] ; 3 uses
  %i.ek = load i8, ptr %i.dn, align 1, !tbaa !45, !range !47, !noundef !48
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = and i32 %.0573, 3
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = and i1 %i.en, %i.el                     ; 2 uses
  %.0572 = select i1 %i.eo, i32 4, i32 1          ; 2 uses
  %i.ep = select i1 %i.eo, i64 2, i64 0
  %i.eq = shl i64 %i.dp, %i.ep
  %i.er = getelementptr inbounds nuw [72 x i8], ptr %i.ds, i64 %.0574897 ; 4 uses
  %i.es = sdiv i32 %.0573, %.0572
  %i.et = load ptr, ptr %i.dq, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.er, i32 noundef %i.da, i32 noundef %i.es, i64 noundef %i.eq, i32 noundef %.0572, ptr noundef %i.et)
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !18
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %.critedge623, label %_ZNK4ncnn3Mat5emptyEv.exit741

_ZNK4ncnn3Mat5emptyEv.exit741:                    ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !50
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.ex, %i.fa
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.critedge623, label %bb.t

bb.t:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit741
  %i.fd = add nsw i32 %.0573, %.0575896
  %i.fe = add nuw i64 %.0574897, 1                ; 2 uses
  %i.ff = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.fg = load ptr, ptr %2, align 8, !tbaa !21    ; 9 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = sdiv exact i64 %i.fj, 72                ; 5 uses
  %.not598 = icmp ult i64 %i.fe, %i.fk
  br i1 %.not598, label %bb.m, label %.critedge618, !llvm.loop !54

.critedge618:                                     ; preds = %bb.t
  %i.fl = icmp eq ptr %i.ff, %i.fg
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !27 ; 3 uses
  br i1 %i.fl, label %._crit_edge, label %.lr.ph902.preheader

.lr.ph902.preheader:                              ; preds = %.critedge618
  %xtraiter = and i64 %i.fk, 3                    ; 3 uses
  %i.fo = icmp ult i64 %i.fk, 4
  br i1 %i.fo, label %.lr.ph902.epil.preheader, label %.lr.ph902.preheader.new

.lr.ph902.preheader.new:                          ; preds = %.lr.ph902.preheader
  %unroll_iter = and i64 %i.fk, -4
  br label %.lr.ph902

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph902
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph902.epil.preheader

.lr.ph902.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph902.preheader
  %.0571901.epil.init = phi i64 [ 0, %.lr.ph902.preheader ], [ %i.hb, %._crit_edge.loopexit.unr-lcssa ]
  %.0870899.epil.init = phi i32 [ %i.fn, %.lr.ph902.preheader ], [ %.sroa.speculated860.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1242 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1242)
  br label %.lr.ph902.epil

.lr.ph902.epil:                                   ; preds = %.lr.ph902.epil, %.lr.ph902.epil.preheader
  %.0571901.epil = phi i64 [ %i.fs, %.lr.ph902.epil ], [ %.0571901.epil.init, %.lr.ph902.epil.preheader ] ; 2 uses
  %.0870899.epil = phi i32 [ %.sroa.speculated860.epil, %.lr.ph902.epil ], [ %.0870899.epil.init, %.lr.ph902.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph902.epil ], [ 0, %.lr.ph902.epil.preheader ]
  %i.fp = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0571901.epil
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !28
  %.sroa.speculated860.epil = tail call i32 @llvm.smin.i32(i32 %i.fr, i32 %.0870899.epil) ; 2 uses
  %i.fs = add nuw i64 %.0571901.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph902.epil, !llvm.loop !55

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph902.epil, %.critedge618.thread, %.critedge618
  %.0870.lcssa = phi i32 [ %i.fn, %.critedge618 ], [ %i.di, %.critedge618.thread ], [ %.sroa.speculated860.3, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated860.epil, %.lr.ph902.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !11 ; 2 uses
  %i.fw = load <2 x ptr>, ptr %i.k, align 8, !tbaa !57
  store <2 x ptr> %i.fw, ptr %4, align 16, !tbaa !57
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fy = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.fy, ptr %i.fx, align 16, !tbaa !25
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ga = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.ga, ptr %i.fz, align 8, !tbaa !27
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !17
  store ptr %i.gd, ptr %i.gb, align 16, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gf = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.gf, ptr %i.ge, align 8, !tbaa !28
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !50
  store i32 %i.gi, ptr %i.gg, align 8, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !20
  store i64 %i.gl, ptr %i.gj, align 16, !tbaa !20
  %.not.i754 = icmp eq ptr %i.fv, null
  br i1 %.not.i754, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.gm = atomicrmw add ptr %i.fv, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %._crit_edge, %bb.u
  %i.gn = phi i32 [ %i.q, %._crit_edge ], [ %.pre, %bb.u ]
  %i.go = icmp sgt i32 %i.gn, %.0870.lcssa
  br i1 %i.go, label %bb.v, label %bb.ae

.lr.ph902:                                        ; preds = %.lr.ph902, %.lr.ph902.preheader.new
  %.0571901 = phi i64 [ 0, %.lr.ph902.preheader.new ], [ %i.hb, %.lr.ph902 ] ; 5 uses
  %.0870899 = phi i32 [ %i.fn, %.lr.ph902.preheader.new ], [ %.sroa.speculated860.3, %.lr.ph902 ]
  %niter = phi i64 [ 0, %.lr.ph902.preheader.new ], [ %niter.next.3, %.lr.ph902 ]
  %i.gp = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0571901
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !28
  %.sroa.speculated860 = tail call i32 @llvm.smin.i32(i32 %i.gr, i32 %.0870899)
  %i.gs = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0571901
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 96
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !28
  %.sroa.speculated860.1 = tail call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated860)
  %i.gv = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0571901
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 168
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !28
  %.sroa.speculated860.2 = tail call i32 @llvm.smin.i32(i32 %i.gx, i32 %.sroa.speculated860.1)
  %i.gy = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0571901
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 240
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !28
  %.sroa.speculated860.3 = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %.sroa.speculated860.2) ; 3 uses
  %i.hb = add nuw i64 %.0571901, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph902, !llvm.loop !58

bb.v:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.0870.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hc = load ptr, ptr %4, align 16, !tbaa !18
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %.critedge623.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit740

_ZNK4ncnn3Mat5emptyEv.exit740:                    ; preds = %bb.w
  %i.he = load i64, ptr %i.gj, align 16, !tbaa !20
  %i.hf = load i32, ptr %i.gg, align 8, !tbaa !50
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul i64 %i.he, %i.hg
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.critedge623.critedge, label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %i.ft, align 8, !tbaa !11 ; 2 uses
  %.not.i667 = icmp eq ptr %i.hk, null
  br i1 %.not.i667, label %_ZN4ncnn3MatD2Ev.exit665, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hl = atomicrmw add ptr %i.hk, i32 -1 acq_rel, align 4
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.z, label %_ZN4ncnn3MatD2Ev.exit665

bb.z:                                             ; preds = %bb.y
  %i.hn = load ptr, ptr %i.gb, align 16, !tbaa !17 ; 3 uses
  %.not3.i668 = icmp eq ptr %i.hn, null
  %i.ho = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i668, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.ho)
          to label %_ZN4ncnn3MatD2Ev.exit665 unwind label %bb.ad, !inline_history !19

bb.ab:                                            ; preds = %bb.z
  %.not.i730 = icmp eq ptr %i.ho, null
  br i1 %.not.i730, label %_ZN4ncnn3MatD2Ev.exit665, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.ho) #9
  br label %_ZN4ncnn3MatD2Ev.exit665

bb.ad:                                            ; preds = %bb.aa
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit665:                         ; preds = %bb.y, %bb.x, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ds

bb.ae:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit740, %_ZN4ncnn3Mat6addrefEv.exit
  %i.hu = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.hv = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not980 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not980, label %._crit_edge920, label %.lr.ph919

.lr.ph919:                                        ; preds = %bb.ae
  %i.hw = load ptr, ptr %4, align 16, !tbaa !18
  %i.hx = icmp eq i32 %.0870.lcssa, 1
  %i.hy = sext i32 %i.da to i64                   ; 2 uses
  %i.hz = shl i32 %i.da, 1
  %i.ia = sext i32 %i.hz to i64                   ; 2 uses
  %i.ib = mul i32 %i.da, 3
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = icmp sgt i32 %i.da, 0
  %i.ie = shl i32 %i.da, 2                        ; 2 uses
  %i.if = sext i32 %i.ie to i64                   ; 3 uses
  %i.ig = add i32 %i.da, -1
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = shl nuw nsw i64 %i.ih, 4
  %i.ij = shl nsw i64 %i.ic, 2                    ; 2 uses
  %i.ik = shl nuw nsw i64 %i.ih, 2                ; 4 uses
  %i.il = shl nsw i64 %i.if, 2
  %i.im = shl nsw i64 %i.ia, 2                    ; 2 uses
  %i.in = shl nsw i64 %i.hy, 2                    ; 2 uses
  %i.io = zext nneg i32 %i.da to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.da, 64
  %stride.check1139 = icmp slt i32 %i.ie, 0
  %n.vec = and i64 %i.io, 2147483644              ; 5 uses
  %i.ip = trunc nuw nsw i64 %n.vec to i32
  %i.iq = shl nuw nsw i64 %n.vec, 4
  %i.ir = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.io
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph919, %bb.ah
  %i.is = phi ptr [ %i.hv, %.lr.ph919 ], [ %i.ng, %bb.ah ] ; 2 uses
  %i.it = phi ptr [ %i.hu, %.lr.ph919 ], [ %i.nh, %bb.ah ]
  %.0552917 = phi i64 [ 0, %.lr.ph919 ], [ %i.ni, %bb.ah ] ; 2 uses
  %.0553916 = phi ptr [ %i.hw, %.lr.ph919 ], [ %.3556, %bb.ah ] ; 12 uses
  %i.iu = getelementptr inbounds nuw [72 x i8], ptr %i.is, i64 %.0552917 ; 8 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8            ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 4
  %or.cond621 = select i1 %i.hx, i1 %i.ix, i1 false
  br i1 %or.cond621, label %.preheader, label %.loopexit886
end_hunk_0
begin_hunk_1_@_ZNK4ncnn9Slice_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.oo = phi ptr [ %i.oh, %.lr.ph925 ], [ %i.px, %bb.ax ]
  %.0541923 = phi i64 [ 0, %.lr.ph925 ], [ %i.pv, %bb.ax ] ; 6 uses
  %.0542922 = phi i32 [ 0, %.lr.ph925 ], [ %i.pu, %bb.ax ] ; 4 uses
  br i1 %.not599, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.op = add nsw i64 %i.on, -1
  %i.oq = icmp eq i64 %.0541923, %i.op
  br i1 %i.oq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.or = sub nsw i32 %i.oc, %.0542922
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0541923
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !28 ; 2 uses
  %i.ou = icmp slt i32 %i.ot, 0
  %i.ov = select i1 %i.ou, i32 %i.oc, i32 0
  %i.ow = sub i32 %i.ot, %.0542922
  %i.ox = add i32 %i.ow, %i.ov
  br label %bb.aw

bb.au:                                            ; preds = %bb.aq
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0541923
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !28 ; 2 uses
  %i.pa = icmp eq i32 %i.oz, -233
  br i1 %i.pa, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.pb = sub nsw i32 %i.oc, %.0542922
  %i.pc = sext i32 %i.pb to i64
  %i.pd = sub i64 %i.on, %.0541923
  %i.pe = udiv i64 %i.pc, %i.pd
  %i.pf = trunc i64 %i.pe to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.as, %bb.at
  %.0540 = phi i32 [ %i.or, %bb.as ], [ %i.ox, %bb.at ], [ %i.pf, %bb.av ], [ %i.oz, %bb.au ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [72 x i8], ptr %i.oo, i64 %.0541923 ; 4 uses
  %i.ph = load i32, ptr %i.c, align 4, !tbaa !28
  %i.pi = load i64, ptr %i.a, align 8, !tbaa !26
  %i.pj = load i32, ptr %i.b, align 4, !tbaa !28
  %i.pk = load ptr, ptr %i.om, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pg, i32 noundef %.0540, i32 noundef %i.ph, i64 noundef %i.pi, i32 noundef %i.pj, ptr noundef %i.pk)
  %i.pl = load ptr, ptr %i.pg, align 8, !tbaa !18
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %.critedge627, label %_ZNK4ncnn3Mat5emptyEv.exit739

_ZNK4ncnn3Mat5emptyEv.exit739:                    ; preds = %bb.aw
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 64
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !20
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pg, i64 56
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !50
  %i.pr = sext i32 %i.pq to i64
  %i.ps = mul i64 %i.po, %i.pr
  %i.pt = icmp eq i64 %i.ps, 0
  br i1 %i.pt, label %.critedge627, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit739
  %i.pu = add nsw i32 %.0540, %.0542922
  %i.pv = add nuw i64 %.0541923, 1                ; 2 uses
  %i.pw = load ptr, ptr %i.of, align 8, !tbaa !44
  %i.px = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = sub i64 %i.py, %i.pz
  %i.qb = sdiv exact i64 %i.qa, 72                ; 2 uses
  %.not600.not = icmp ult i64 %i.pv, %i.qb
  br i1 %.not600.not, label %bb.aq, label %.critedge650, !llvm.loop !79

.critedge650:                                     ; preds = %bb.ax, %bb.ap
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !80
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.qd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn9Slice_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge650, %bb.ao
  %i.qe = icmp eq i32 %i.m, 3                     ; 2 uses
  %i.qf = icmp eq i32 %i.m, 4                     ; 3 uses
  %i.qg = add i32 %i.m, -3
  %or.cond25 = icmp ult i32 %i.qg, 2
  %or.cond27 = select i1 %or.cond25, i1 %i.ny, i1 false
  br i1 %or.cond27, label %bb.az, label %bb.cc

bb.az:                                            ; preds = %bb.ay
  %i.qh = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !43
  %i.qj = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !53
  %i.ql = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !81
  %i.qn = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !50
  %i.qp = load i32, ptr %i.b, align 4, !tbaa !28
  %i.qq = mul nsw i32 %i.qp, %i.qo                ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !44 ; 2 uses
  %i.qt = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %.not602926.not = icmp eq ptr %i.qs, %i.qt
  br i1 %.not602926.not, label %.critedge629.thread, label %.lr.ph930

.critedge629.thread:                              ; preds = %bb.az
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !27
  br label %._crit_edge935

.lr.ph930:                                        ; preds = %bb.az
  %i.qw = ptrtoint ptr %i.qs to i64
  %i.qx = ptrtoint ptr %i.qt to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = sdiv exact i64 %i.qy, 72
  %.not601 = icmp eq ptr %i.u, null
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.rb = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph930, %bb.bh
  %i.rc = phi i64 [ %i.qz, %.lr.ph930 ], [ %i.ta, %bb.bh ] ; 2 uses
  %i.rd = phi ptr [ %i.qt, %.lr.ph930 ], [ %i.sw, %bb.bh ]
  %.0535928 = phi i64 [ 0, %.lr.ph930 ], [ %i.su, %bb.bh ] ; 6 uses
  %.0536927 = phi i32 [ 0, %.lr.ph930 ], [ %i.st, %bb.bh ] ; 4 uses
  br i1 %.not601, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.re = add nsw i64 %i.rc, -1
  %i.rf = icmp eq i64 %.0535928, %i.re
  br i1 %i.rf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.rg = sub nsw i32 %i.qq, %.0536927
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0535928
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !28 ; 2 uses
  %i.rj = icmp slt i32 %i.ri, 0
  %i.rk = select i1 %i.rj, i32 %i.qq, i32 0
  %i.rl = sub i32 %i.ri, %.0536927
  %i.rm = add i32 %i.rl, %i.rk
  br label %bb.bg

bb.be:                                            ; preds = %bb.ba
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0535928
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !28 ; 2 uses
  %i.rp = icmp eq i32 %i.ro, -233
  br i1 %i.rp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.rq = sub nsw i32 %i.qq, %.0536927
  %i.rr = sext i32 %i.rq to i64
  %i.rs = sub i64 %i.rc, %.0535928
  %i.rt = udiv i64 %i.rr, %i.rs
  %i.ru = trunc i64 %i.rt to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bc, %bb.bd
  %.0534 = phi i32 [ %i.rg, %bb.bc ], [ %i.rm, %bb.bd ], [ %i.ru, %bb.bf ], [ %i.ro, %bb.be ] ; 3 uses
  %i.rv = load i8, ptr %i.ra, align 1, !tbaa !45, !range !47, !noundef !48
  %i.rw = trunc nuw i8 %i.rv to i1
  %i.rx = and i32 %.0534, 3
  %i.ry = icmp eq i32 %i.rx, 0
  %i.rz = and i1 %i.ry, %i.rw                     ; 2 uses
  %.0531 = select i1 %i.rz, i32 4, i32 1          ; 2 uses
  %i.sa = load i64, ptr %i.a, align 8, !tbaa !26
  %i.sb = load i32, ptr %i.b, align 4, !tbaa !28
  %i.sc = sext i32 %i.sb to i64
  %i.sd = udiv i64 %i.sa, %i.sc
  %i.se = select i1 %i.rz, i64 2, i64 0
  %i.sf = shl i64 %i.sd, %i.se
  %i.sg = getelementptr inbounds nuw [72 x i8], ptr %i.rd, i64 %.0535928 ; 5 uses
  %i.sh = sdiv i32 %.0534, %.0531
  %i.si = load ptr, ptr %i.rb, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.sg, i32 noundef %i.qi, i32 noundef %i.qk, i32 noundef %i.qm, i32 noundef %i.sh, i64 noundef %i.sf, i32 noundef %.0531, ptr noundef %i.si)
  %i.sj = load ptr, ptr %i.sg, align 8, !tbaa !18
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %.critedge623, label %_ZNK4ncnn3Mat5emptyEv.exit738

_ZNK4ncnn3Mat5emptyEv.exit738:                    ; preds = %bb.bg
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sg, i64 64
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !20
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sg, i64 56
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !50
  %i.sp = sext i32 %i.so to i64
  %i.sq = mul i64 %i.sm, %i.sp
  %i.sr = icmp eq i64 %i.sq, 0
  br i1 %i.sr, label %.critedge623, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit738
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sg, i64 40
  store i32 %i.m, ptr %i.ss, align 8, !tbaa !24
  %i.st = add nsw i32 %.0534, %.0536927
  %i.su = add nuw i64 %.0535928, 1                ; 2 uses
  %i.sv = load ptr, ptr %i.qr, align 8, !tbaa !44 ; 2 uses
  %i.sw = load ptr, ptr %2, align 8, !tbaa !21    ; 9 uses
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = sub i64 %i.sx, %i.sy
  %i.ta = sdiv exact i64 %i.sz, 72                ; 5 uses
  %.not602 = icmp ult i64 %i.su, %i.ta
  br i1 %.not602, label %bb.ba, label %.critedge629, !llvm.loop !82

.critedge629:                                     ; preds = %bb.bh
  %i.tb = icmp eq ptr %i.sv, %i.sw
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !27 ; 3 uses
  br i1 %i.tb, label %._crit_edge935, label %.lr.ph934.preheader

.lr.ph934.preheader:                              ; preds = %.critedge629
  %xtraiter1246 = and i64 %i.ta, 3                ; 3 uses
  %i.te = icmp ult i64 %i.ta, 4
  br i1 %i.te, label %.lr.ph934.epil.preheader, label %.lr.ph934.preheader.new

.lr.ph934.preheader.new:                          ; preds = %.lr.ph934.preheader
  %unroll_iter1251 = and i64 %i.ta, -4
  br label %.lr.ph934

._crit_edge935.loopexit.unr-lcssa:                ; preds = %.lr.ph934
  %lcmp.mod1248.not = icmp eq i64 %xtraiter1246, 0
  br i1 %lcmp.mod1248.not, label %._crit_edge935, label %.lr.ph934.epil.preheader

.lr.ph934.epil.preheader:                         ; preds = %._crit_edge935.loopexit.unr-lcssa, %.lr.ph934.preheader
  %.0530933.epil.init = phi i64 [ 0, %.lr.ph934.preheader ], [ %i.uq, %._crit_edge935.loopexit.unr-lcssa ]
  %.0872931.epil.init = phi i32 [ %i.td, %.lr.ph934.preheader ], [ %.sroa.speculated.3, %._crit_edge935.loopexit.unr-lcssa ]
  %lcmp.mod1250 = icmp ne i64 %xtraiter1246, 0
  call void @llvm.assume(i1 %lcmp.mod1250)
  br label %.lr.ph934.epil

.lr.ph934.epil:                                   ; preds = %.lr.ph934.epil, %.lr.ph934.epil.preheader
  %.0530933.epil = phi i64 [ %i.ti, %.lr.ph934.epil ], [ %.0530933.epil.init, %.lr.ph934.epil.preheader ] ; 2 uses
  %.0872931.epil = phi i32 [ %.sroa.speculated.epil, %.lr.ph934.epil ], [ %.0872931.epil.init, %.lr.ph934.epil.preheader ]
  %epil.iter1247 = phi i64 [ %epil.iter1247.next, %.lr.ph934.epil ], [ 0, %.lr.ph934.epil.preheader ]
  %i.tf = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0530933.epil
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !28
  %.sroa.speculated.epil = call i32 @llvm.smin.i32(i32 %i.th, i32 %.0872931.epil) ; 2 uses
  %i.ti = add nuw i64 %.0530933.epil, 1
  %epil.iter1247.next = add i64 %epil.iter1247, 1 ; 2 uses
  %epil.iter1247.cmp.not = icmp eq i64 %epil.iter1247.next, %xtraiter1246
  br i1 %epil.iter1247.cmp.not, label %._crit_edge935, label %.lr.ph934.epil, !llvm.loop !83

._crit_edge935:                                   ; preds = %._crit_edge935.loopexit.unr-lcssa, %.lr.ph934.epil, %.critedge629.thread, %.critedge629
  %.0872.lcssa = phi i32 [ %i.td, %.critedge629 ], [ %i.qv, %.critedge629.thread ], [ %.sroa.speculated.3, %._crit_edge935.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph934.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.tj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !11 ; 2 uses
  %i.tm = load <2 x ptr>, ptr %i.k, align 8, !tbaa !57
  store <2 x ptr> %i.tm, ptr %5, align 16, !tbaa !57
  %i.tn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.to = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.to, ptr %i.tn, align 16, !tbaa !25
  %i.tp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.tq = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.tq, ptr %i.tp, align 8, !tbaa !27
  %i.tr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !17
  store ptr %i.tt, ptr %i.tr, align 16, !tbaa !17
  %i.tu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.tv = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.tv, ptr %i.tu, align 8, !tbaa !28
  %i.tw = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.tx = load i32, ptr %i.qn, align 8, !tbaa !50
  store i32 %i.tx, ptr %i.tw, align 8, !tbaa !50
  %i.ty = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !20
  store i64 %i.ua, ptr %i.ty, align 16, !tbaa !20
  %.not.i755 = icmp eq ptr %i.tl, null
  br i1 %.not.i755, label %_ZN4ncnn3Mat6addrefEv.exit756, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge935
  %i.ub = atomicrmw add ptr %i.tl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit756

_ZN4ncnn3Mat6addrefEv.exit756:                    ; preds = %._crit_edge935, %bb.bi
  %i.uc = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ud = icmp sgt i32 %i.uc, %.0872.lcssa
  br i1 %i.ud, label %bb.bj, label %bb.bm

.lr.ph934:                                        ; preds = %.lr.ph934, %.lr.ph934.preheader.new
  %.0530933 = phi i64 [ 0, %.lr.ph934.preheader.new ], [ %i.uq, %.lr.ph934 ] ; 5 uses
  %.0872931 = phi i32 [ %i.td, %.lr.ph934.preheader.new ], [ %.sroa.speculated.3, %.lr.ph934 ]
  %niter1252 = phi i64 [ 0, %.lr.ph934.preheader.new ], [ %niter1252.next.3, %.lr.ph934 ]
  %i.ue = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0530933
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ug, i32 %.0872931)
  %i.uh = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0530933
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 96
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !28
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.uj, i32 %.sroa.speculated)
  %i.uk = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0530933
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 168
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !28
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.um, i32 %.sroa.speculated.1)
  %i.un = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0530933
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 240
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !28
  %.sroa.speculated.3 = call i32 @llvm.smin.i32(i32 %i.up, i32 %.sroa.speculated.2) ; 3 uses
  %i.uq = add nuw i64 %.0530933, 4                ; 2 uses
  %niter1252.next.3 = add i64 %niter1252, 4       ; 2 uses
  %niter1252.ncmp.3 = icmp eq i64 %niter1252.next.3, %unroll_iter1251
  br i1 %niter1252.ncmp.3, label %._crit_edge935.loopexit.unr-lcssa, label %.lr.ph934, !llvm.loop !84

bb.bj:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit756
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.0872.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ur = load ptr, ptr %5, align 16, !tbaa !18
  %i.us = icmp eq ptr %i.ur, null
  br i1 %i.us, label %.critedge623.critedge652, label %_ZNK4ncnn3Mat5emptyEv.exit737

_ZNK4ncnn3Mat5emptyEv.exit737:                    ; preds = %bb.bk
  %i.ut = load i64, ptr %i.ty, align 16, !tbaa !20
  %i.uu = load i32, ptr %i.tw, align 8, !tbaa !50
  %i.uv = sext i32 %i.uu to i64
  %i.uw = mul i64 %i.ut, %i.uv
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %.critedge623.critedge652, label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.uy = landingpad { ptr, i32 }
          cleanup
  %i.uz = load ptr, ptr %i.tj, align 8, !tbaa !11 ; 2 uses
  %.not.i699 = icmp eq ptr %i.uz, null
  br i1 %.not.i699, label %_ZN4ncnn3MatD2Ev.exit657, label %bb.bw

bb.bm:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit737, %_ZN4ncnn3Mat6addrefEv.exit756
  %i.va = load ptr, ptr %i.qr, align 8, !tbaa !44 ; 2 uses
  %i.vb = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not982 = icmp eq ptr %i.va, %i.vb
  br i1 %.not982, label %._crit_edge963, label %.lr.ph962

.lr.ph962:                                        ; preds = %bb.bm
  %i.vc = icmp eq i32 %.0872.lcssa, 1
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph962, %bb.bp
  %i.vd = phi ptr [ %i.vb, %.lr.ph962 ], [ %i.abt, %bb.bp ] ; 2 uses
  %i.ve = phi ptr [ %i.va, %.lr.ph962 ], [ %i.abu, %bb.bp ]
  %.0525960 = phi i64 [ 0, %.lr.ph962 ], [ %i.abv, %bb.bp ] ; 2 uses
  %.0526959 = phi i32 [ 0, %.lr.ph962 ], [ %.3529, %bb.bp ] ; 4 uses
  %i.vf = getelementptr inbounds nuw [72 x i8], ptr %i.vd, i64 %.0525960 ; 12 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8            ; 2 uses
  %i.vi = icmp eq i32 %i.vh, 4
  %or.cond632 = select i1 %i.vc, i1 %i.vi, i1 false
  br i1 %or.cond632, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 44
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !43
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 48
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !53
  %i.vn = mul i32 %i.vm, %i.vk
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vf, i64 52
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !81
  %i.vq = mul i32 %i.vn, %i.vp                    ; 7 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vf, i64 56
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !50 ; 3 uses
  %i.vt = icmp sgt i32 %i.vs, 0
  br i1 %i.vt, label %.noexc752.lr.ph, label %.loopexit

.noexc752.lr.ph:                                  ; preds = %bb.bo
  %i.vu = load ptr, ptr %5, align 16, !tbaa !18, !noalias !85 ; 12 uses
  %i.vv = load i64, ptr %i.ty, align 16, !tbaa !20, !noalias !85 ; 6 uses
  %i.vw = load i64, ptr %i.tn, align 16, !tbaa !25, !noalias !85 ; 6 uses
  %factor.op.mul948 = mul i64 %i.vv, %i.vw        ; 4 uses
  %i.vx = load ptr, ptr %i.vf, align 8, !tbaa !18, !noalias !88 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vf, i64 64
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !20, !noalias !88 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !25, !noalias !88 ; 3 uses
  %factor.op.mul955 = mul i64 %i.vz, %i.wb
  %i.wc = icmp sgt i32 %i.vq, 0
  br i1 %i.wc, label %.noexc752.us.preheader, label %.noexc752.preheader

.noexc752.preheader:                              ; preds = %.noexc752.lr.ph
  %i.wd = shl i32 %i.vs, 2
  %i.we = add i32 %.0526959, %i.wd
  br label %.loopexit

.noexc752.us.preheader:                           ; preds = %.noexc752.lr.ph
  %i.wf = sext i32 %.0526959 to i64               ; 9 uses
  %wide.trip.count1003 = zext nneg i32 %i.vs to i64 ; 3 uses
  %scevgep1165 = getelementptr i8, ptr %i.vx, i64 16
  %i.wg = mul i64 %i.vz, %i.wb
  %i.wh = add nsw i64 %wide.trip.count1003, -1
  %i.wi = mul i64 %i.wg, %i.wh
  %i.wj = add nsw i32 %i.vq, -1
  %i.wk = zext i32 %i.wj to i64                   ; 2 uses
  %i.wl = shl nuw nsw i64 %i.wk, 4
  %i.wm = getelementptr i8, ptr %scevgep1165, i64 %i.wi
  %scevgep1166 = getelementptr i8, ptr %i.wm, i64 %i.wl
  %i.wn = mul i64 %i.vz, %i.wb
  %i.wo = mul i64 %i.vv, %i.vw                    ; 2 uses
  %i.wp = add nsw i64 %i.wf, 3
  %i.wq = mul i64 %i.wo, %i.wp
  %scevgep1167 = getelementptr i8, ptr %i.vu, i64 %i.wq
  %scevgep1168 = getelementptr i8, ptr %i.vu, i64 4
  %i.wr = shl nuw nsw i64 %wide.trip.count1003, 2 ; 4 uses
  %i.ws = add nsw i64 %i.wr, -1
  %i.wt = add nsw i64 %i.ws, %i.wf
  %i.wu = mul i64 %i.wo, %i.wt
  %i.wv = shl nuw nsw i64 %i.wk, 2                ; 4 uses
  %i.ww = getelementptr i8, ptr %scevgep1168, i64 %i.wu
  %scevgep1169 = getelementptr i8, ptr %i.ww, i64 %i.wv
  %i.wx = shl i64 %i.vv, 2
  %i.wy = mul i64 %i.wx, %i.vw
  %i.wz = mul i64 %i.vv, %i.vw                    ; 2 uses
  %i.xa = add nsw i64 %i.wf, 2
  %i.xb = mul i64 %i.wz, %i.xa
end_hunk_1
begin_hunk_2_@_ZNK4ncnn9Slice_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %i.aq = phi i64 [ %i.al, %.lr.ph ], [ %i.cs, %bb.j ] ; 2 uses
  %i.ar = phi ptr [ %i.ag, %.lr.ph ], [ %i.co, %bb.j ]
  %.0506889 = phi i32 [ 0, %.lr.ph ], [ %i.cl, %bb.j ] ; 5 uses
  %.0508888 = phi i64 [ 0, %.lr.ph ], [ %i.cm, %bb.j ] ; 6 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = add nsw i64 %i.aq, -1
  %i.at = icmp eq i64 %.0508888, %i.as
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = sub nsw i32 %i.ad, %.0506889
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0508888
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !28 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = select i1 %i.ax, i32 %i.ad, i32 0
  %i.az = sub i32 %i.aw, %.0506889
  %i.ba = add i32 %i.az, %i.ay
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0508888
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !28 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, -233
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = sub nsw i32 %i.ad, %.0506889
  %i.bf = sext i32 %i.be to i64
  %i.bg = sub i64 %i.aq, %.0508888
  %i.bh = udiv i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f
  %.0535 = phi i32 [ %i.au, %bb.e ], [ %i.ba, %bb.f ], [ %i.bi, %bb.h ], [ %i.bc, %bb.g ] ; 3 uses
  %i.bj = load i8, ptr %i.am, align 1, !tbaa !45, !range !47, !noundef !48
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = and i32 %.0535, 3
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = and i1 %i.bm, %i.bk                     ; 2 uses
  %.0540 = select i1 %i.bn, i32 4, i32 1          ; 2 uses
  %i.bo = select i1 %i.bn, i64 2, i64 0
  %i.bp = shl i64 %i.ao, %i.bo
  %i.bq = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %.0508888 ; 6 uses
  %i.br = sdiv i32 %.0535, %.0540
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i32 noundef %i.br, i64 noundef %i.bp, i32 noundef %.0540, ptr noundef %i.bs)
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.critedge619, label %_ZNK4ncnn3Mat5emptyEv.exit737

_ZNK4ncnn3Mat5emptyEv.exit737:                    ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !50
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul i64 %i.bw, %i.bz
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.critedge619, label %bb.j

bb.j:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit737
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.cd = sext i32 %.0506889 to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !43
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !25
  %i.ck = mul i64 %i.cj, %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bt, ptr align 2 %i.ce, i64 %i.ck, i1 false)
  %i.cl = add nsw i32 %.0535, %.0506889
  %i.cm = add nuw i64 %.0508888, 1                ; 2 uses
  %i.cn = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.co = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 72                ; 2 uses
  %.not592 = icmp ult i64 %i.cm, %i.cs
  br i1 %.not592, label %bb.c, label %.critedge612, !llvm.loop !116

.critedge612:                                     ; preds = %bb.j, %bb.a
  %i.ct = icmp eq i32 %i.m, 2                     ; 3 uses
  %i.cu = icmp eq i32 %i.z, 0                     ; 3 uses
  %or.cond = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond, label %bb.k, label %bb.an

bb.k:                                             ; preds = %.critedge612
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !43 ; 13 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !53
  %i.cz = mul nsw i32 %i.q, %i.cy                 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !44 ; 2 uses
  %i.dc = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %.not594890.not = icmp eq ptr %i.db, %i.dc
  br i1 %.not594890.not, label %.critedge614.thread, label %.lr.ph893

.critedge614.thread:                              ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !27
  br label %._crit_edge

.lr.ph893:                                        ; preds = %bb.k
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 72
  %.not593 = icmp eq ptr %i.u, null
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.dk = sext i32 %i.q to i64
  %i.dl = udiv i64 %i.o, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph893, %bb.s
  %i.dn = phi i64 [ %i.di, %.lr.ph893 ], [ %i.fg, %bb.s ] ; 2 uses
  %i.do = phi ptr [ %i.dc, %.lr.ph893 ], [ %i.fc, %bb.s ]
  %.0570892 = phi i64 [ 0, %.lr.ph893 ], [ %i.fa, %bb.s ] ; 6 uses
  %.0571891 = phi i32 [ 0, %.lr.ph893 ], [ %i.ez, %bb.s ] ; 4 uses
  br i1 %.not593, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = add nsw i64 %i.dn, -1
  %i.dq = icmp eq i64 %.0570892, %i.dp
  br i1 %i.dq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dr = sub nsw i32 %i.cz, %.0571891
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0570892
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !28 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  %i.dv = select i1 %i.du, i32 %i.cz, i32 0
  %i.dw = sub i32 %i.dt, %.0571891
  %i.dx = add i32 %i.dw, %i.dv
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0570892
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !28 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, -233
  br i1 %i.ea, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eb = sub nsw i32 %i.cz, %.0571891
  %i.ec = sext i32 %i.eb to i64
  %i.ed = sub i64 %i.dn, %.0570892
  %i.ee = udiv i64 %i.ec, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.o
  %.0569 = phi i32 [ %i.dr, %bb.n ], [ %i.dx, %bb.o ], [ %i.ef, %bb.q ], [ %i.dz, %bb.p ] ; 3 uses
  %i.eg = load i8, ptr %i.dj, align 1, !tbaa !45, !range !47, !noundef !48
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = and i32 %.0569, 3
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = and i1 %i.ej, %i.eh                     ; 2 uses
  %.0568 = select i1 %i.ek, i32 4, i32 1          ; 2 uses
  %i.el = select i1 %i.ek, i64 2, i64 0
  %i.em = shl i64 %i.dl, %i.el
  %i.en = getelementptr inbounds nuw [72 x i8], ptr %i.do, i64 %.0570892 ; 4 uses
  %i.eo = sdiv i32 %.0569, %.0568
  %i.ep = load ptr, ptr %i.dm, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.en, i32 noundef %i.cw, i32 noundef %i.eo, i64 noundef %i.em, i32 noundef %.0568, ptr noundef %i.ep)
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !18
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %.critedge619, label %_ZNK4ncnn3Mat5emptyEv.exit736

_ZNK4ncnn3Mat5emptyEv.exit736:                    ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.et = load i64, ptr %i.es, align 8, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !50
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul i64 %i.et, %i.ew
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %.critedge619, label %bb.s

bb.s:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit736
  %i.ez = add nsw i32 %.0569, %.0571891
  %i.fa = add nuw i64 %.0570892, 1                ; 2 uses
  %i.fb = load ptr, ptr %i.da, align 8, !tbaa !44 ; 2 uses
  %i.fc = load ptr, ptr %2, align 8, !tbaa !21    ; 9 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = sdiv exact i64 %i.ff, 72                ; 5 uses
  %.not594 = icmp ult i64 %i.fa, %i.fg
  br i1 %.not594, label %bb.l, label %.critedge614, !llvm.loop !117

.critedge614:                                     ; preds = %bb.s
  %i.fh = icmp eq ptr %i.fb, %i.fc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !27 ; 3 uses
  br i1 %i.fh, label %._crit_edge, label %.lr.ph897.preheader

.lr.ph897.preheader:                              ; preds = %.critedge614
  %xtraiter = and i64 %i.fg, 3                    ; 3 uses
  %i.fk = icmp ult i64 %i.fg, 4
  br i1 %i.fk, label %.lr.ph897.epil.preheader, label %.lr.ph897.preheader.new

.lr.ph897.preheader.new:                          ; preds = %.lr.ph897.preheader
  %unroll_iter = and i64 %i.fg, -4
  br label %.lr.ph897

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph897
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph897.epil.preheader

.lr.ph897.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph897.preheader
  %.0567896.epil.init = phi i64 [ 0, %.lr.ph897.preheader ], [ %i.gx, %._crit_edge.loopexit.unr-lcssa ]
  %.0865894.epil.init = phi i32 [ %i.fj, %.lr.ph897.preheader ], [ %.sroa.speculated855.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1236 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1236)
  br label %.lr.ph897.epil

.lr.ph897.epil:                                   ; preds = %.lr.ph897.epil, %.lr.ph897.epil.preheader
  %.0567896.epil = phi i64 [ %i.fo, %.lr.ph897.epil ], [ %.0567896.epil.init, %.lr.ph897.epil.preheader ] ; 2 uses
  %.0865894.epil = phi i32 [ %.sroa.speculated855.epil, %.lr.ph897.epil ], [ %.0865894.epil.init, %.lr.ph897.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph897.epil ], [ 0, %.lr.ph897.epil.preheader ]
  %i.fl = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0567896.epil
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !28
  %.sroa.speculated855.epil = tail call i32 @llvm.smin.i32(i32 %i.fn, i32 %.0865894.epil) ; 2 uses
  %i.fo = add nuw i64 %.0567896.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph897.epil, !llvm.loop !118

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph897.epil, %.critedge614.thread, %.critedge614
  %.0865.lcssa = phi i32 [ %i.fj, %.critedge614 ], [ %i.de, %.critedge614.thread ], [ %.sroa.speculated855.3, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated855.epil, %.lr.ph897.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !11 ; 2 uses
  %i.fs = load <2 x ptr>, ptr %i.k, align 8, !tbaa !57
  store <2 x ptr> %i.fs, ptr %4, align 16, !tbaa !57
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fu = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.fu, ptr %i.ft, align 16, !tbaa !25
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fw = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.fw, ptr %i.fv, align 8, !tbaa !27
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !17
  store ptr %i.fz, ptr %i.fx, align 16, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gb = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.gb, ptr %i.ga, align 8, !tbaa !28
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !50
  store i32 %i.ge, ptr %i.gc, align 8, !tbaa !50
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !20
  store i64 %i.gh, ptr %i.gf, align 16, !tbaa !20
  %.not.i749 = icmp eq ptr %i.fr, null
  br i1 %.not.i749, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.gi = atomicrmw add ptr %i.fr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %._crit_edge, %bb.t
  %i.gj = phi i32 [ %i.q, %._crit_edge ], [ %.pre, %bb.t ]
  %i.gk = icmp sgt i32 %i.gj, %.0865.lcssa
  br i1 %i.gk, label %bb.u, label %bb.ad

.lr.ph897:                                        ; preds = %.lr.ph897, %.lr.ph897.preheader.new
  %.0567896 = phi i64 [ 0, %.lr.ph897.preheader.new ], [ %i.gx, %.lr.ph897 ] ; 5 uses
  %.0865894 = phi i32 [ %i.fj, %.lr.ph897.preheader.new ], [ %.sroa.speculated855.3, %.lr.ph897 ]
  %niter = phi i64 [ 0, %.lr.ph897.preheader.new ], [ %niter.next.3, %.lr.ph897 ]
  %i.gl = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0567896
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !28
  %.sroa.speculated855 = tail call i32 @llvm.smin.i32(i32 %i.gn, i32 %.0865894)
  %i.go = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0567896
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 96
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !28
  %.sroa.speculated855.1 = tail call i32 @llvm.smin.i32(i32 %i.gq, i32 %.sroa.speculated855)
  %i.gr = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0567896
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 168
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !28
  %.sroa.speculated855.2 = tail call i32 @llvm.smin.i32(i32 %i.gt, i32 %.sroa.speculated855.1)
  %i.gu = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0567896
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 240
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !28
  %.sroa.speculated855.3 = tail call i32 @llvm.smin.i32(i32 %i.gw, i32 %.sroa.speculated855.2) ; 3 uses
  %i.gx = add nuw i64 %.0567896, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph897, !llvm.loop !119

bb.u:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.0865.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gy = load ptr, ptr %4, align 16, !tbaa !18
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %.critedge619.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit735

_ZNK4ncnn3Mat5emptyEv.exit735:                    ; preds = %bb.v
  %i.ha = load i64, ptr %i.gf, align 16, !tbaa !20
  %i.hb = load i32, ptr %i.gc, align 8, !tbaa !50
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul i64 %i.ha, %i.hc
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %.critedge619.critedge, label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.hf = landingpad { ptr, i32 }
          cleanup
  %i.hg = load ptr, ptr %i.fp, align 8, !tbaa !11 ; 2 uses
  %.not.i663 = icmp eq ptr %i.hg, null
  br i1 %.not.i663, label %_ZN4ncnn3MatD2Ev.exit661, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hh = atomicrmw add ptr %i.hg, i32 -1 acq_rel, align 4
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit661

bb.y:                                             ; preds = %bb.x
  %i.hj = load ptr, ptr %i.fx, align 16, !tbaa !17 ; 3 uses
  %.not3.i664 = icmp eq ptr %i.hj, null
  %i.hk = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i664, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  invoke void %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, ptr noundef %i.hk)
          to label %_ZN4ncnn3MatD2Ev.exit661 unwind label %bb.ac, !inline_history !19

bb.aa:                                            ; preds = %bb.y
  %.not.i726 = icmp eq ptr %i.hk, null
  br i1 %.not.i726, label %_ZN4ncnn3MatD2Ev.exit661, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.hk) #9
  br label %_ZN4ncnn3MatD2Ev.exit661

bb.ac:                                            ; preds = %bb.z
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit661:                         ; preds = %bb.x, %bb.w, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.dr

bb.ad:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit735, %_ZN4ncnn3Mat6addrefEv.exit
  %i.hq = load ptr, ptr %i.da, align 8, !tbaa !44 ; 2 uses
  %i.hr = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not975 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not975, label %._crit_edge915, label %.lr.ph914

.lr.ph914:                                        ; preds = %bb.ad
  %i.hs = load ptr, ptr %4, align 16, !tbaa !18
  %i.ht = icmp eq i32 %.0865.lcssa, 1
  %i.hu = sext i32 %i.cw to i64                   ; 2 uses
  %i.hv = shl i32 %i.cw, 1
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = mul i32 %i.cw, 3
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = icmp sgt i32 %i.cw, 0
  %i.ia = shl i32 %i.cw, 2                        ; 2 uses
  %i.ib = sext i32 %i.ia to i64                   ; 3 uses
  %i.ic = add i32 %i.cw, -1
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %i.ie = shl nuw nsw i64 %i.id, 3
  %i.if = shl nsw i64 %i.hy, 1                    ; 2 uses
  %i.ig = shl nuw nsw i64 %i.id, 1                ; 4 uses
  %i.ih = shl nsw i64 %i.ib, 1
  %i.ii = shl nsw i64 %i.hw, 1                    ; 2 uses
  %i.ij = shl nsw i64 %i.hu, 1                    ; 2 uses
  %i.ik = zext nneg i32 %i.cw to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cw, 128
  %stride.check1133 = icmp slt i32 %i.ia, 0
  %n.vec = and i64 %i.ik, 2147483640              ; 5 uses
  %i.il = trunc nuw nsw i64 %n.vec to i32
  %i.im = shl nuw nsw i64 %n.vec, 3
  %i.in = shl nuw nsw i64 %n.vec, 1               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ik
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph914, %bb.ag
  %i.io = phi ptr [ %i.hr, %.lr.ph914 ], [ %i.nc, %bb.ag ] ; 2 uses
  %i.ip = phi ptr [ %i.hq, %.lr.ph914 ], [ %i.nd, %bb.ag ]
  %.0548912 = phi i64 [ 0, %.lr.ph914 ], [ %i.ne, %bb.ag ] ; 2 uses
  %.0549911 = phi ptr [ %i.hs, %.lr.ph914 ], [ %.3552, %bb.ag ] ; 12 uses
  %i.iq = getelementptr inbounds nuw [72 x i8], ptr %i.io, i64 %.0548912 ; 8 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 8            ; 2 uses
  %i.it = icmp eq i32 %i.is, 4
  %or.cond617 = select i1 %i.ht, i1 %i.it, i1 false
  br i1 %or.cond617, label %.preheader, label %.loopexit881
end_hunk_2
begin_hunk_3_@_ZNK4ncnn9Slice_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.ok = phi ptr [ %i.od, %.lr.ph920 ], [ %i.pt, %bb.aw ]
  %.0537918 = phi i64 [ 0, %.lr.ph920 ], [ %i.pr, %bb.aw ] ; 6 uses
  %.0538917 = phi i32 [ 0, %.lr.ph920 ], [ %i.pq, %bb.aw ] ; 4 uses
  br i1 %.not595, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ol = add nsw i64 %i.oj, -1
  %i.om = icmp eq i64 %.0537918, %i.ol
  br i1 %i.om, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.on = sub nsw i32 %i.ny, %.0538917
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0537918
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !28 ; 2 uses
  %i.oq = icmp slt i32 %i.op, 0
  %i.or = select i1 %i.oq, i32 %i.ny, i32 0
  %i.os = sub i32 %i.op, %.0538917
  %i.ot = add i32 %i.os, %i.or
  br label %bb.av

bb.at:                                            ; preds = %bb.ap
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0537918
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !28 ; 2 uses
  %i.ow = icmp eq i32 %i.ov, -233
  br i1 %i.ow, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ox = sub nsw i32 %i.ny, %.0538917
  %i.oy = sext i32 %i.ox to i64
  %i.oz = sub i64 %i.oj, %.0537918
  %i.pa = udiv i64 %i.oy, %i.oz
  %i.pb = trunc i64 %i.pa to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.ar, %bb.as
  %.0536 = phi i32 [ %i.on, %bb.ar ], [ %i.ot, %bb.as ], [ %i.pb, %bb.au ], [ %i.ov, %bb.at ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [72 x i8], ptr %i.ok, i64 %.0537918 ; 4 uses
  %i.pd = load i32, ptr %i.c, align 4, !tbaa !28
  %i.pe = load i64, ptr %i.a, align 8, !tbaa !26
  %i.pf = load i32, ptr %i.b, align 4, !tbaa !28
  %i.pg = load ptr, ptr %i.oi, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, i32 noundef %.0536, i32 noundef %i.pd, i64 noundef %i.pe, i32 noundef %i.pf, ptr noundef %i.pg)
  %i.ph = load ptr, ptr %i.pc, align 8, !tbaa !18
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %.critedge623, label %_ZNK4ncnn3Mat5emptyEv.exit734

_ZNK4ncnn3Mat5emptyEv.exit734:                    ; preds = %bb.av
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !20
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pc, i64 56
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !50
  %i.pn = sext i32 %i.pm to i64
  %i.po = mul i64 %i.pk, %i.pn
  %i.pp = icmp eq i64 %i.po, 0
  br i1 %i.pp, label %.critedge623, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit734
  %i.pq = add nsw i32 %.0536, %.0538917
  %i.pr = add nuw i64 %.0537918, 1                ; 2 uses
  %i.ps = load ptr, ptr %i.ob, align 8, !tbaa !44
  %i.pt = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = sdiv exact i64 %i.pw, 72                ; 2 uses
  %.not596.not = icmp ult i64 %i.pr, %i.px
  br i1 %.not596.not, label %bb.ap, label %.critedge646, !llvm.loop !138

.critedge646:                                     ; preds = %bb.aw, %bb.ao
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !80
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.pz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn9Slice_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.ax

bb.ax:                                            ; preds = %.critedge646, %bb.an
  %i.qa = icmp eq i32 %i.m, 3                     ; 2 uses
  %i.qb = icmp eq i32 %i.m, 4                     ; 3 uses
  %i.qc = add i32 %i.m, -3
  %or.cond25 = icmp ult i32 %i.qc, 2
  %or.cond27 = select i1 %or.cond25, i1 %i.nu, i1 false
  br i1 %or.cond27, label %bb.ay, label %bb.cb

bb.ay:                                            ; preds = %bb.ax
  %i.qd = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !43
  %i.qf = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !53
  %i.qh = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !81
  %i.qj = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !50
  %i.ql = load i32, ptr %i.b, align 4, !tbaa !28
  %i.qm = mul nsw i32 %i.ql, %i.qk                ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !44 ; 2 uses
  %i.qp = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %.not598921.not = icmp eq ptr %i.qo, %i.qp
  br i1 %.not598921.not, label %.critedge625.thread, label %.lr.ph925

.critedge625.thread:                              ; preds = %bb.ay
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !27
  br label %._crit_edge930

.lr.ph925:                                        ; preds = %bb.ay
  %i.qs = ptrtoint ptr %i.qo to i64
  %i.qt = ptrtoint ptr %i.qp to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = sdiv exact i64 %i.qu, 72
  %.not597 = icmp eq ptr %i.u, null
  %i.qw = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.qx = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph925, %bb.bg
  %i.qy = phi i64 [ %i.qv, %.lr.ph925 ], [ %i.sw, %bb.bg ] ; 2 uses
  %i.qz = phi ptr [ %i.qp, %.lr.ph925 ], [ %i.ss, %bb.bg ]
  %.0510923 = phi i64 [ 0, %.lr.ph925 ], [ %i.sq, %bb.bg ] ; 6 uses
  %.0511922 = phi i32 [ 0, %.lr.ph925 ], [ %i.sp, %bb.bg ] ; 4 uses
  br i1 %.not597, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ra = add nsw i64 %i.qy, -1
  %i.rb = icmp eq i64 %.0510923, %i.ra
  br i1 %i.rb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.rc = sub nsw i32 %i.qm, %.0511922
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0510923
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !28 ; 2 uses
  %i.rf = icmp slt i32 %i.re, 0
  %i.rg = select i1 %i.rf, i32 %i.qm, i32 0
  %i.rh = sub i32 %i.re, %.0511922
  %i.ri = add i32 %i.rh, %i.rg
  br label %bb.bf

bb.bd:                                            ; preds = %bb.az
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0510923
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !28 ; 2 uses
  %i.rl = icmp eq i32 %i.rk, -233
  br i1 %i.rl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.rm = sub nsw i32 %i.qm, %.0511922
  %i.rn = sext i32 %i.rm to i64
  %i.ro = sub i64 %i.qy, %.0510923
  %i.rp = udiv i64 %i.rn, %i.ro
  %i.rq = trunc i64 %i.rp to i32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bb, %bb.bc
  %.0509 = phi i32 [ %i.rc, %bb.bb ], [ %i.ri, %bb.bc ], [ %i.rq, %bb.be ], [ %i.rk, %bb.bd ] ; 3 uses
  %i.rr = load i8, ptr %i.qw, align 1, !tbaa !45, !range !47, !noundef !48
  %i.rs = trunc nuw i8 %i.rr to i1
  %i.rt = and i32 %.0509, 3
  %i.ru = icmp eq i32 %i.rt, 0
  %i.rv = and i1 %i.ru, %i.rs                     ; 2 uses
  %.0505 = select i1 %i.rv, i32 4, i32 1          ; 2 uses
  %i.rw = load i64, ptr %i.a, align 8, !tbaa !26
  %i.rx = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ry = sext i32 %i.rx to i64
  %i.rz = udiv i64 %i.rw, %i.ry
  %i.sa = select i1 %i.rv, i64 2, i64 0
  %i.sb = shl i64 %i.rz, %i.sa
  %i.sc = getelementptr inbounds nuw [72 x i8], ptr %i.qz, i64 %.0510923 ; 5 uses
  %i.sd = sdiv i32 %.0509, %.0505
  %i.se = load ptr, ptr %i.qx, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.sc, i32 noundef %i.qe, i32 noundef %i.qg, i32 noundef %i.qi, i32 noundef %i.sd, i64 noundef %i.sb, i32 noundef %.0505, ptr noundef %i.se)
  %i.sf = load ptr, ptr %i.sc, align 8, !tbaa !18
  %i.sg = icmp eq ptr %i.sf, null
  br i1 %i.sg, label %.critedge619, label %_ZNK4ncnn3Mat5emptyEv.exit733

_ZNK4ncnn3Mat5emptyEv.exit733:                    ; preds = %bb.bf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 64
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !20
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 56
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !50
  %i.sl = sext i32 %i.sk to i64
  %i.sm = mul i64 %i.si, %i.sl
  %i.sn = icmp eq i64 %i.sm, 0
  br i1 %i.sn, label %.critedge619, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit733
  %i.so = getelementptr inbounds nuw i8, ptr %i.sc, i64 40
  store i32 %i.m, ptr %i.so, align 8, !tbaa !24
  %i.sp = add nsw i32 %.0509, %.0511922
  %i.sq = add nuw i64 %.0510923, 1                ; 2 uses
  %i.sr = load ptr, ptr %i.qn, align 8, !tbaa !44 ; 2 uses
  %i.ss = load ptr, ptr %2, align 8, !tbaa !21    ; 9 uses
  %i.st = ptrtoint ptr %i.sr to i64
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = sdiv exact i64 %i.sv, 72                ; 5 uses
  %.not598 = icmp ult i64 %i.sq, %i.sw
  br i1 %.not598, label %bb.az, label %.critedge625, !llvm.loop !139

.critedge625:                                     ; preds = %bb.bg
  %i.sx = icmp eq ptr %i.sr, %i.ss
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !27 ; 3 uses
  br i1 %i.sx, label %._crit_edge930, label %.lr.ph929.preheader

.lr.ph929.preheader:                              ; preds = %.critedge625
  %xtraiter1240 = and i64 %i.sw, 3                ; 3 uses
  %i.ta = icmp ult i64 %i.sw, 4
  br i1 %i.ta, label %.lr.ph929.epil.preheader, label %.lr.ph929.preheader.new

.lr.ph929.preheader.new:                          ; preds = %.lr.ph929.preheader
  %unroll_iter1245 = and i64 %i.sw, -4
  br label %.lr.ph929

._crit_edge930.loopexit.unr-lcssa:                ; preds = %.lr.ph929
  %lcmp.mod1242.not = icmp eq i64 %xtraiter1240, 0
  br i1 %lcmp.mod1242.not, label %._crit_edge930, label %.lr.ph929.epil.preheader

.lr.ph929.epil.preheader:                         ; preds = %._crit_edge930.loopexit.unr-lcssa, %.lr.ph929.preheader
  %.0504928.epil.init = phi i64 [ 0, %.lr.ph929.preheader ], [ %i.um, %._crit_edge930.loopexit.unr-lcssa ]
  %.0867926.epil.init = phi i32 [ %i.sz, %.lr.ph929.preheader ], [ %.sroa.speculated.3, %._crit_edge930.loopexit.unr-lcssa ]
  %lcmp.mod1244 = icmp ne i64 %xtraiter1240, 0
  call void @llvm.assume(i1 %lcmp.mod1244)
  br label %.lr.ph929.epil

.lr.ph929.epil:                                   ; preds = %.lr.ph929.epil, %.lr.ph929.epil.preheader
  %.0504928.epil = phi i64 [ %i.te, %.lr.ph929.epil ], [ %.0504928.epil.init, %.lr.ph929.epil.preheader ] ; 2 uses
  %.0867926.epil = phi i32 [ %.sroa.speculated.epil, %.lr.ph929.epil ], [ %.0867926.epil.init, %.lr.ph929.epil.preheader ]
  %epil.iter1241 = phi i64 [ %epil.iter1241.next, %.lr.ph929.epil ], [ 0, %.lr.ph929.epil.preheader ]
  %i.tb = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0504928.epil
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !28
  %.sroa.speculated.epil = call i32 @llvm.smin.i32(i32 %i.td, i32 %.0867926.epil) ; 2 uses
  %i.te = add nuw i64 %.0504928.epil, 1
  %epil.iter1241.next = add i64 %epil.iter1241, 1 ; 2 uses
  %epil.iter1241.cmp.not = icmp eq i64 %epil.iter1241.next, %xtraiter1240
  br i1 %epil.iter1241.cmp.not, label %._crit_edge930, label %.lr.ph929.epil, !llvm.loop !140

._crit_edge930:                                   ; preds = %._crit_edge930.loopexit.unr-lcssa, %.lr.ph929.epil, %.critedge625.thread, %.critedge625
  %.0867.lcssa = phi i32 [ %i.sz, %.critedge625 ], [ %i.qr, %.critedge625.thread ], [ %.sroa.speculated.3, %._crit_edge930.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph929.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.tf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !11 ; 2 uses
  %i.ti = load <2 x ptr>, ptr %i.k, align 8, !tbaa !57
  store <2 x ptr> %i.ti, ptr %5, align 16, !tbaa !57
  %i.tj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.tk = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.tk, ptr %i.tj, align 16, !tbaa !25
  %i.tl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.tm = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.tm, ptr %i.tl, align 8, !tbaa !27
  %i.tn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !17
  store ptr %i.tp, ptr %i.tn, align 16, !tbaa !17
  %i.tq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.tr = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.tr, ptr %i.tq, align 8, !tbaa !28
  %i.ts = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.tt = load i32, ptr %i.qj, align 8, !tbaa !50
  store i32 %i.tt, ptr %i.ts, align 8, !tbaa !50
  %i.tu = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !20
  store i64 %i.tw, ptr %i.tu, align 16, !tbaa !20
  %.not.i750 = icmp eq ptr %i.th, null
  br i1 %.not.i750, label %_ZN4ncnn3Mat6addrefEv.exit751, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge930
  %i.tx = atomicrmw add ptr %i.th, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit751

_ZN4ncnn3Mat6addrefEv.exit751:                    ; preds = %._crit_edge930, %bb.bh
  %i.ty = load i32, ptr %i.b, align 4, !tbaa !28
  %i.tz = icmp sgt i32 %i.ty, %.0867.lcssa
  br i1 %i.tz, label %bb.bi, label %bb.bl

.lr.ph929:                                        ; preds = %.lr.ph929, %.lr.ph929.preheader.new
  %.0504928 = phi i64 [ 0, %.lr.ph929.preheader.new ], [ %i.um, %.lr.ph929 ] ; 5 uses
  %.0867926 = phi i32 [ %i.sz, %.lr.ph929.preheader.new ], [ %.sroa.speculated.3, %.lr.ph929 ]
  %niter1246 = phi i64 [ 0, %.lr.ph929.preheader.new ], [ %niter1246.next.3, %.lr.ph929 ]
  %i.ua = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0504928
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.uc, i32 %.0867926)
  %i.ud = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0504928
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 96
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !28
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.uf, i32 %.sroa.speculated)
  %i.ug = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0504928
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 168
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !28
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.ui, i32 %.sroa.speculated.1)
  %i.uj = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0504928
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 240
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !28
  %.sroa.speculated.3 = call i32 @llvm.smin.i32(i32 %i.ul, i32 %.sroa.speculated.2) ; 3 uses
  %i.um = add nuw i64 %.0504928, 4                ; 2 uses
  %niter1246.next.3 = add i64 %niter1246, 4       ; 2 uses
  %niter1246.ncmp.3 = icmp eq i64 %niter1246.next.3, %unroll_iter1245
  br i1 %niter1246.ncmp.3, label %._crit_edge930.loopexit.unr-lcssa, label %.lr.ph929, !llvm.loop !141

bb.bi:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit751
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.0867.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.un = load ptr, ptr %5, align 16, !tbaa !18
  %i.uo = icmp eq ptr %i.un, null
  br i1 %i.uo, label %.critedge619.critedge648, label %_ZNK4ncnn3Mat5emptyEv.exit732

_ZNK4ncnn3Mat5emptyEv.exit732:                    ; preds = %bb.bj
  %i.up = load i64, ptr %i.tu, align 16, !tbaa !20
  %i.uq = load i32, ptr %i.ts, align 8, !tbaa !50
  %i.ur = sext i32 %i.uq to i64
  %i.us = mul i64 %i.up, %i.ur
  %i.ut = icmp eq i64 %i.us, 0
  br i1 %i.ut, label %.critedge619.critedge648, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.uu = landingpad { ptr, i32 }
          cleanup
  %i.uv = load ptr, ptr %i.tf, align 8, !tbaa !11 ; 2 uses
  %.not.i695 = icmp eq ptr %i.uv, null
  br i1 %.not.i695, label %_ZN4ncnn3MatD2Ev.exit653, label %bb.bv

bb.bl:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit732, %_ZN4ncnn3Mat6addrefEv.exit751
  %i.uw = load ptr, ptr %i.qn, align 8, !tbaa !44 ; 2 uses
  %i.ux = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not977 = icmp eq ptr %i.uw, %i.ux
  br i1 %.not977, label %._crit_edge958, label %.lr.ph957

.lr.ph957:                                        ; preds = %bb.bl
  %i.uy = icmp eq i32 %.0867.lcssa, 1
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph957, %bb.bo
  %i.uz = phi ptr [ %i.ux, %.lr.ph957 ], [ %i.abp, %bb.bo ] ; 2 uses
  %i.va = phi ptr [ %i.uw, %.lr.ph957 ], [ %i.abq, %bb.bo ]
  %.0499955 = phi i64 [ 0, %.lr.ph957 ], [ %i.abr, %bb.bo ] ; 2 uses
  %.0500954 = phi i32 [ 0, %.lr.ph957 ], [ %.3503, %bb.bo ] ; 4 uses
  %i.vb = getelementptr inbounds nuw [72 x i8], ptr %i.uz, i64 %.0499955 ; 12 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 24 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 8            ; 2 uses
  %i.ve = icmp eq i32 %i.vd, 4
  %or.cond628 = select i1 %i.uy, i1 %i.ve, i1 false
  br i1 %or.cond628, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 44
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !43
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vb, i64 48
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !53
  %i.vj = mul i32 %i.vi, %i.vg
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vb, i64 52
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !81
  %i.vm = mul i32 %i.vj, %i.vl                    ; 7 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vb, i64 56
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !50 ; 3 uses
  %i.vp = icmp sgt i32 %i.vo, 0
  br i1 %i.vp, label %.noexc747.lr.ph, label %.loopexit

.noexc747.lr.ph:                                  ; preds = %bb.bn
  %i.vq = load ptr, ptr %5, align 16, !tbaa !18, !noalias !142 ; 12 uses
  %i.vr = load i64, ptr %i.tu, align 16, !tbaa !20, !noalias !142 ; 6 uses
  %i.vs = load i64, ptr %i.tj, align 16, !tbaa !25, !noalias !142 ; 6 uses
  %factor.op.mul943 = mul i64 %i.vr, %i.vs        ; 4 uses
  %i.vt = load ptr, ptr %i.vb, align 8, !tbaa !18, !noalias !145 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vb, i64 64
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !20, !noalias !145 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !25, !noalias !145 ; 3 uses
  %factor.op.mul950 = mul i64 %i.vv, %i.vx
  %i.vy = icmp sgt i32 %i.vm, 0
  br i1 %i.vy, label %.noexc747.us.preheader, label %.noexc747.preheader

.noexc747.preheader:                              ; preds = %.noexc747.lr.ph
  %i.vz = shl i32 %i.vo, 2
  %i.wa = add i32 %.0500954, %i.vz
  br label %.loopexit

.noexc747.us.preheader:                           ; preds = %.noexc747.lr.ph
  %i.wb = sext i32 %.0500954 to i64               ; 9 uses
  %wide.trip.count998 = zext nneg i32 %i.vo to i64 ; 3 uses
  %scevgep1159 = getelementptr i8, ptr %i.vt, i64 8
  %i.wc = mul i64 %i.vv, %i.vx
  %i.wd = add nsw i64 %wide.trip.count998, -1
  %i.we = mul i64 %i.wc, %i.wd
  %i.wf = add nsw i32 %i.vm, -1
  %i.wg = zext i32 %i.wf to i64                   ; 2 uses
  %i.wh = shl nuw nsw i64 %i.wg, 3
  %i.wi = getelementptr i8, ptr %scevgep1159, i64 %i.we
  %scevgep1160 = getelementptr i8, ptr %i.wi, i64 %i.wh
  %i.wj = mul i64 %i.vv, %i.vx
  %i.wk = mul i64 %i.vr, %i.vs                    ; 2 uses
  %i.wl = add nsw i64 %i.wb, 3
  %i.wm = mul i64 %i.wk, %i.wl
  %scevgep1161 = getelementptr i8, ptr %i.vq, i64 %i.wm
  %scevgep1162 = getelementptr i8, ptr %i.vq, i64 2
  %i.wn = shl nuw nsw i64 %wide.trip.count998, 2  ; 4 uses
  %i.wo = add nsw i64 %i.wn, -1
  %i.wp = add nsw i64 %i.wo, %i.wb
  %i.wq = mul i64 %i.wk, %i.wp
  %i.wr = shl nuw nsw i64 %i.wg, 1                ; 4 uses
  %i.ws = getelementptr i8, ptr %scevgep1162, i64 %i.wq
  %scevgep1163 = getelementptr i8, ptr %i.ws, i64 %i.wr
  %i.wt = shl i64 %i.vr, 2
  %i.wu = mul i64 %i.wt, %i.vs
  %i.wv = mul i64 %i.vr, %i.vs                    ; 2 uses
  %i.ww = add nsw i64 %i.wb, 2
  %i.wx = mul i64 %i.wv, %i.ww
end_hunk_3
begin_hunk_4_@_ZNK4ncnn9Slice_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5:bb.a
  br i1 %i.as, label %.preheader92, label %._crit_edge101.loopexit, !llvm.loop !214

._crit_edge.loopexit:                             ; preds = %.noexc55
  %.pre116 = load i32, ptr %5, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.at = phi i32 [ %i.al, %.preheader ], [ %.pre116, %._crit_edge.loopexit ] ; 4 uses
  %i.au = phi ptr [ %i.am, %.preheader ], [ %i.cd, %._crit_edge.loopexit ]
  %i.av = phi ptr [ %i.am, %.preheader ], [ %i.cc, %._crit_edge.loopexit ]
  %.2.lcssa = phi ptr [ %.195, %.preheader ], [ %i.ca, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = sext i32 %i.at to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.preheader, label %._crit_edge97.loopexit, !llvm.loop !215

.noexc55:                                         ; preds = %.preheader, %.noexc55
  %i.ay = phi ptr [ %i.cd, %.noexc55 ], [ %i.am, %.preheader ]
  %.094 = phi i64 [ %i.cb, %.noexc55 ], [ 0, %.preheader ] ; 2 uses
  %.293 = phi ptr [ %i.ca, %.noexc55 ], [ %.195, %.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.ay, i64 %.094 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 44 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !43, !noalias !216
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !53, !noalias !216
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !18, !noalias !216
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20, !noalias !216
  %i.bh = mul i64 %i.bg, %indvars.iv112
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !25, !noalias !216 ; 2 uses
  %i.bk = mul i64 %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk
  %i.bm = sext i32 %i.bb to i64                   ; 2 uses
  %i.bn = sext i32 %i.bd to i64
  %i.bo = mul i64 %i.bj, %i.bm                    ; 2 uses
  %i.bp = mul i64 %i.bo, %indvars.iv109
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = mul i64 %i.bo, %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  %i.bu = load i64, ptr %7, align 8, !tbaa !26
  %i.bv = mul i64 %i.bu, %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bt, ptr align 2 %.293, i64 %i.bv, i1 false)
  %i.bw = load i32, ptr %i.ba, align 4, !tbaa !43
  %i.bx = load i32, ptr %8, align 4, !tbaa !28
  %i.by = mul nsw i32 %i.bx, %i.bw
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %.293, i64 %i.bz ; 2 uses
  %i.cb = add nuw i64 %.094, 1                    ; 2 uses
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !44  ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !21    ; 3 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 72
  %i.ci = icmp ult i64 %i.cb, %i.ch
  br i1 %i.ci, label %.noexc55, label %._crit_edge.loopexit, !llvm.loop !219

._crit_edge104:                                   ; preds = %._crit_edge101, %.noexc56.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge104, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9Slice_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not66 = icmp sgt i32 %i.k, %i.j
  br i1 %.not66, label %._crit_edge68, label %.noexc42.lr.ph

.noexc42.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = sext i32 %i.k to i64
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !44
  %.pre71 = load ptr, ptr %4, align 8, !tbaa !21
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.lr.ph, %._crit_edge
  %i.p = phi i32 [ %i.j, %.noexc42.lr.ph ], [ %i.y, %._crit_edge ]
  %i.q = phi ptr [ %.pre71, %.noexc42.lr.ph ], [ %i.z, %._crit_edge ] ; 4 uses
  %i.r = phi ptr [ %.pre, %.noexc42.lr.ph ], [ %i.aa, %._crit_edge ]
  %indvars.iv = phi i64 [ %i.o, %.noexc42.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.not69 = icmp eq ptr %i.r, %i.q
  br i1 %.not69, label %._crit_edge, label %.noexc41.preheader

.noexc41.preheader:                               ; preds = %.noexc42
  %i.s = load ptr, ptr %3, align 8, !tbaa !18, !noalias !220
  %i.t = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !220
  %i.u = mul i64 %i.t, %indvars.iv
  %i.v = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !220
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  br label %.noexc41

._crit_edge.loopexit:                             ; preds = %.noexc41
  %.pre72 = load i32, ptr %i.b, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc42
  %i.y = phi i32 [ %.pre72, %._crit_edge.loopexit ], [ %i.p, %.noexc42 ] ; 2 uses
  %i.z = phi ptr [ %i.bd, %._crit_edge.loopexit ], [ %i.q, %.noexc42 ]
  %i.aa = phi ptr [ %i.bc, %._crit_edge.loopexit ], [ %i.q, %.noexc42 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ab = sext i32 %i.y to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ab
  br i1 %.not.not, label %.noexc42, label %._crit_edge68

.noexc41:                                         ; preds = %.noexc41.preheader, %.noexc41
  %i.ac = phi ptr [ %i.bd, %.noexc41 ], [ %i.q, %.noexc41.preheader ]
  %.065 = phi i64 [ %i.bb, %.noexc41 ], [ 0, %.noexc41.preheader ] ; 2 uses
  %.03164 = phi ptr [ %i.ba, %.noexc41 ], [ %i.x, %.noexc41.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %.065 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !81
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !18, !noalias !223
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20, !noalias !223
  %i.an = mul i64 %i.am, %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25, !noalias !223
  %i.aq = mul i64 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq
  %i.as = mul nsw i32 %i.ah, %i.af
  %i.at = mul nsw i32 %i.as, %i.aj                ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = load i64, ptr %5, align 8, !tbaa !26
  %i.aw = mul i64 %i.av, %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ar, ptr align 2 %.03164, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %6, align 4, !tbaa !28
  %i.ay = mul nsw i32 %i.ax, %i.at
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %.03164, i64 %i.az
  %i.bb = add nuw i64 %.065, 1                    ; 2 uses
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !44  ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !21    ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 72
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %.noexc41, label %._crit_edge.loopexit, !llvm.loop !226

._crit_edge68:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge68, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!24 = !{!12, !6, i64 40}
!25 = !{!12, !15, i64 16}
!26 = !{!15, !15, i64 0}
!27 = !{!12, !6, i64 24}
!28 = !{!6, !6, i64 0}
!29 = !{!30, !6, i64 352}
!30 = !{!"_ZTSN4ncnn5SliceE", !31, i64 0, !12, i64 208, !12, i64 280, !6, i64 352}
!31 = !{!"_ZTSN4ncnn5LayerE", !32, i64 8, !32, i64 9, !32, i64 10, !32, i64 11, !32, i64 12, !32, i64 13, !32, i64 14, !32, i64 15, !32, i64 16, !32, i64 17, !32, i64 18, !32, i64 19, !32, i64 20, !32, i64 21, !32, i64 22, !32, i64 23, !32, i64 24, !32, i64 25, !32, i64 26, !32, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !33, i64 48, !33, i64 80, !36, i64 112, !36, i64 136, !40, i64 160, !40, i64 184}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !15, i64 8, !7, i64 16}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!35 = !{!"p1 omnipotent char", !13, i64 0}
!36 = !{!"_ZTSSt6vectorIiSaIiEE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!40 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !22, i64 0}
!43 = !{!12, !6, i64 44}
!44 = !{!22, !23, i64 8}
!45 = !{!46, !32, i64 39}
!46 = !{!"_ZTSN4ncnn6OptionE", !32, i64 0, !32, i64 1, !32, i64 2, !32, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !32, i64 28, !32, i64 29, !32, i64 30, !32, i64 31, !32, i64 32, !32, i64 33, !32, i64 34, !32, i64 35, !32, i64 36, !32, i64 37, !32, i64 38, !32, i64 39, !6, i64 40, !32, i64 44, !32, i64 45, !32, i64 46, !32, i64 47, !7, i64 48, !32, i64 49, !32, i64 50, !32, i64 51, !32, i64 52, !32, i64 53, !32, i64 54, !32, i64 55, !32, i64 56, !32, i64 57, !32, i64 58, !32, i64 59, !32, i64 60, !32, i64 61, !32, i64 62, !32, i64 63}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!46, !16, i64 8}
!50 = !{!12, !6, i64 56}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!12, !6, i64 48}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!13, !13, i64 0}
!58 = distinct !{!58, !52}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !7, i64 0}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = !{!67}
!67 = distinct !{!67, !63}
!68 = !{!69}
!69 = distinct !{!69, !63}
!70 = !{!71}
!71 = distinct !{!71, !63}
!72 = !{!69, !67, !65, !62}
!73 = distinct !{!73, !52, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = distinct !{!76, !52, !74}
!77 = distinct !{!77, !52}
!78 = distinct !{!78, !52}
!79 = distinct !{!79, !52}
!80 = !{!46, !6, i64 4}
!81 = !{!12, !6, i64 52}
!82 = distinct !{!82, !52}
!83 = distinct !{!83, !56}
!84 = distinct !{!84, !52}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!87 = distinct !{!87, !"_ZN4ncnn3Mat7channelEi"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!90 = distinct !{!90, !"_ZN4ncnn3Mat7channelEi"}
!91 = !{!92}
!92 = distinct !{!92, !93}
!93 = distinct !{!93, !"LVerDomain"}
!94 = !{!95}
!95 = distinct !{!95, !93}
!96 = !{!97}
!97 = distinct !{!97, !93}
!98 = !{!99}
!99 = distinct !{!99, !93}
!100 = !{!101}
!101 = distinct !{!101, !93}
!102 = !{!99, !97, !95, !92}
!103 = distinct !{!103, !52, !74, !75}
!104 = distinct !{!104, !52, !74}
!105 = distinct !{!105, !52}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!108 = distinct !{!108, !"_ZN4ncnn3Mat7channelEi"}
!109 = distinct !{!109, !52}
!110 = distinct !{!110, !52}
!111 = distinct !{!111, !52}
!112 = distinct !{!112, !52}
!113 = !{!31, !32, i64 11}
!114 = !{!31, !32, i64 13}
!115 = !{!31, !32, i64 12}
!116 = distinct !{!116, !52}
!117 = distinct !{!117, !52}
!118 = distinct !{!118, !56}
!119 = distinct !{!119, !52}
!120 = !{!121, !121, i64 0}
!121 = !{!"short", !7, i64 0}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128}
!128 = distinct !{!128, !124}
!129 = !{!130}
!130 = distinct !{!130, !124}
!131 = !{!132}
!132 = distinct !{!132, !124}
!133 = !{!130, !128, !126, !123}
!134 = distinct !{!134, !52, !74, !75}
!135 = distinct !{!135, !52, !74}
!136 = distinct !{!136, !52}
!137 = distinct !{!137, !52}
!138 = distinct !{!138, !52}
!139 = distinct !{!139, !52}
!140 = distinct !{!140, !56}
!141 = distinct !{!141, !52}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!144 = distinct !{!144, !"_ZN4ncnn3Mat7channelEi"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!147 = distinct !{!147, !"_ZN4ncnn3Mat7channelEi"}
!148 = !{!149}
!149 = distinct !{!149, !150}
!150 = distinct !{!150, !"LVerDomain"}
!151 = !{!152}
!152 = distinct !{!152, !150}
!153 = !{!154}
!154 = distinct !{!154, !150}
!155 = !{!156}
!156 = distinct !{!156, !150}
!157 = !{!158}
!158 = distinct !{!158, !150}
!159 = !{!156, !154, !152, !149}
!160 = distinct !{!160, !52, !74, !75}
!161 = distinct !{!161, !52, !74}
!162 = distinct !{!162, !52}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!165 = distinct !{!165, !"_ZN4ncnn3Mat7channelEi"}
!166 = distinct !{!166, !52}
!167 = distinct !{!167, !52}
!168 = distinct !{!168, !52}
!169 = distinct !{!169, !52}
!170 = distinct !{!170, !52}
!171 = !{!172}
!172 = !{i64 2, i64 -1, i64 -1, i1 true}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!175 = distinct !{!175, !"_ZNK4ncnn3Mat7channelEi"}
end_hunk_4
