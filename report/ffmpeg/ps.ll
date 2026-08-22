Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ps?download=true
inline.NumInlined: 81
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ff_vvc_decode_frame_ps:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 38
  store i8 %i.cw, ptr %i.cx, align 2, !tbaa !139
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 38749
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !140
  %i.da = sub i8 6, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.as, i64 39
  store i8 %i.da, ptr %i.db, align 1, !tbaa !141
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 38736
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !142
  %.not.i17.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i17.i.i.i.i, label %sps_inter.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  store i8 2, ptr %i.de, align 8, !tbaa !143
  %i.df = icmp ugt i8 %i.cw, 2
  br i1 %i.df, label %bb.r, label %sps_inter.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 38737
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !144
  %i.di = sub i8 %i.cw, %i.dh
  store i8 %i.di, ptr %i.de, align 8, !tbaa !143
  br label %sps_inter.exit.i.i.i.i

sps_inter.exit.i.i.i.i:                           ; preds = %bb.r, %bb.q, %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 38738
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !145
  %i.dl = add i8 %i.dk, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store i8 %i.dl, ptr %i.dm, align 8, !tbaa !146
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !147
  %i.dp = add i8 %i.do, 5                         ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.as, i64 30
  store i8 %i.dp, ptr %i.dq, align 2, !tbaa !148
  %i.dr = zext nneg i8 %i.dp to i32
  %i.ds = shl nuw i32 1, %i.dr
  %i.dt = trunc i32 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i16 %i.dt, ptr %i.du, align 8, !tbaa !149
  %i.dv = getelementptr inbounds nuw i8, ptr %i.co, i64 15478
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !150
  %i.dx = add i8 %i.dw, 2                         ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 34
  store i8 %i.dx, ptr %i.dy, align 2, !tbaa !151
  %i.dz = zext nneg i8 %i.dx to i32
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.as, i64 35
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !152
  %i.ed = getelementptr inbounds nuw i8, ptr %i.co, i64 15493
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !153
  %.not.i18.i.i.i.i = icmp eq i8 %i.ee, 0
  %i.ef = select i1 %.not.i18.i.i.i.i, i8 32, i8 64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.as, i64 36
  store i8 %i.ef, ptr %i.eg, align 4, !tbaa !154
  %i.eh = getelementptr inbounds nuw i8, ptr %i.co, i64 15495
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !155
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl nuw i32 4, %i.ej
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.as, i64 37
  store i8 %i.el, ptr %i.em, align 1, !tbaa !156
  %i.en = getelementptr inbounds nuw i8, ptr %i.co, i64 38750
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !157
  %.not.i19.i.i.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not.i19.i.i.i.i, label %sps_ladf.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %sps_inter.exit.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.co, i64 38751
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !158 ; 2 uses
  %i.er = add i8 %i.eq, 2                         ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.as, i64 41
  store i8 %i.er, ptr %i.es, align 1, !tbaa !159
  %i.et = getelementptr inbounds nuw i8, ptr %i.as, i64 44 ; 6 uses
  store i32 0, ptr %i.et, align 4, !tbaa !160
  %i.eu = icmp ult i8 %i.eq, -2
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i, label %sps_ladf.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s
  %i.ev = zext i8 %i.er to i64
  %i.ew = add nuw nsw i64 %i.ev, 4294967295       ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.co, i64 38758 ; 5 uses
  %wide.trip.count.i.i.i.i.i = and i64 %i.ew, 4294967295
  %i.ey = add nsw i64 %wide.trip.count.i.i.i.i.i, -1
  %xtraiter = and i64 %i.ew, 3                    ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 3
  br i1 %i.ez, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.ew, 4294967292
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i.i.new
  %i.fa = phi i32 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.fx, %bb.t ]
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.i.3, %bb.t ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.3, %bb.t ]
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %indvars.iv.i.i.i.i.i
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !161
  %i.fd = zext i16 %i.fc to i32
  %i.fe = add i32 %i.fa, 1
  %i.ff = add i32 %i.fe, %i.fd                    ; 2 uses
  %indvars.iv.next.i.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i.i.i.i.i
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !160
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i.i.i.i
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !161
  %i.fj = zext i16 %i.fi to i32
  %i.fk = add i32 %i.ff, 1
  %i.fl = add i32 %i.fk, %i.fj                    ; 2 uses
  %indvars.iv.next.i.i.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i.i.i.i.i.1
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !160
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !161
  %i.fp = zext i16 %i.fo to i32
  %i.fq = add i32 %i.fl, 1
  %i.fr = add i32 %i.fq, %i.fp                    ; 2 uses
  %indvars.iv.next.i.i.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i.i.i.i.i.2
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !160
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !161
  %i.fv = zext i16 %i.fu to i32
  %i.fw = add i32 %i.fr, 1
  %i.fx = add i32 %i.fw, %i.fv                    ; 3 uses
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i.i.i.i.i.3
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !160
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sps_ladf.exit.i.i.i.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !162

sps_ladf.exit.i.i.i.i.loopexit.unr-lcssa:         ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sps_ladf.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %sps_ladf.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.fx, %sps_ladf.exit.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.3, %sps_ladf.exit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod385 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod385)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %i.fz = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.ge, %bb.u ]
  %indvars.iv.i.i.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.i.i.epil, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %indvars.iv.i.i.i.i.i.epil
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !161
  %i.gc = zext i16 %i.gb to i32
  %i.gd = add i32 %i.fz, 1
  %i.ge = add i32 %i.gd, %i.gc                    ; 2 uses
  %indvars.iv.next.i.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.epil, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i.i.i.i.i.epil
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !160
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sps_ladf.exit.i.i.i.i, label %bb.u, !llvm.loop !164

sps_ladf.exit.i.i.i.i:                            ; preds = %sps_ladf.exit.i.i.i.i.loopexit.unr-lcssa, %bb.u, %bb.s, %sps_inter.exit.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.at, i64 7
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !129
  %.not.i.i.i.i = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i.i.i, label %sps_chroma_qp_table.exit.thread.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %sps_ladf.exit.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.co, i64 15502 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 2, !tbaa !166
  %.not.i20.i.i.i.i = icmp eq i8 %i.gj, 0
  br i1 %.not.i20.i.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gk = getelementptr inbounds nuw i8, ptr %i.co, i64 15501
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !167
  %.not107.i.i.i.i.i = icmp eq i8 %i.gl, 0
  %i.gm = select i1 %.not107.i.i.i.i.i, i64 2, i64 3
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %wide.trip.count152.i.i.i.i.i = phi i64 [ %i.gm, %bb.w ], [ 1, %bb.v ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.co, i64 15506
  %i.go = getelementptr inbounds nuw i8, ptr %i.co, i64 15503
  %i.gp = getelementptr inbounds nuw i8, ptr %i.co, i64 15509
  %i.gq = getelementptr inbounds nuw i8, ptr %i.co, i64 15842
  %i.gr = getelementptr inbounds nuw i8, ptr %i.as, i64 66 ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.x
  %indvars.iv149.i.i.i.i.i = phi i64 [ 0, %bb.x ], [ %indvars.iv.next150.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 8 uses
  %i.gs = mul nuw nsw i64 %indvars.iv149.i.i.i.i.i, 111
  %i.gt = getelementptr i8, ptr %i.as, i64 %i.gs
  %scevgep332 = getelementptr i8, ptr %i.gt, i64 65
  %i.gu = mul nuw nsw i64 %indvars.iv149.i.i.i.i.i, 111
  %i.gv = getelementptr i8, ptr %i.as, i64 %i.gu
  %scevgep = getelementptr i8, ptr %i.gv, i64 67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %i.gw = load i8, ptr %i.ba, align 1, !tbaa !126
  %i.gx = zext i8 %i.gw to i32                    ; 7 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv149.i.i.i.i.i
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !131
  %i.ha = zext i8 %i.gz to i64                    ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv149.i.i.i.i.i
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !131
  %i.hd = add i8 %i.hc, 26                        ; 5 uses
  store i8 %i.hd, ptr %i.h, align 16, !tbaa !131
  %i.he = getelementptr inbounds nuw [111 x i8], ptr %i.gp, i64 %indvars.iv149.i.i.i.i.i
  %i.hf = getelementptr inbounds nuw [111 x i8], ptr %i.gq, i64 %indvars.iv149.i.i.i.i.i
  %i.hg = sext i8 %i.hd to i32                    ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.critedge.i.i.i.i.i, %bb.y
  %i.hh = phi i8 [ %i.hd, %bb.y ], [ %i.hz, %.critedge.i.i.i.i.i ] ; 2 uses
  %i.hi = phi i32 [ %i.hg, %bb.y ], [ %i.hq, %.critedge.i.i.i.i.i ]
  %indvars.iv.i21.i.i.i.i = phi i64 [ 0, %bb.y ], [ %indvars.iv.next.i22.i.i.i.i, %.critedge.i.i.i.i.i ] ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv.i21.i.i.i.i
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !131 ; 2 uses
  %i.hl = zext i8 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv.i21.i.i.i.i
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !131
  %i.ho = add nuw nsw i32 %i.hl, 1                ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i21.i.i.i.i
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !160
  %i.hq = add nsw i32 %i.ho, %i.hi                ; 3 uses
  %i.hr = icmp ugt i32 %i.hq, 63
  br i1 %i.hr, label %sps_chroma_qp_table.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hs = xor i8 %i.hn, %i.hk                     ; 2 uses
  %i.ht = sext i8 %i.hh to i32
  %i.hu = zext i8 %i.hs to i32
  %i.hv = add nsw i32 %i.hu, %i.ht
  %i.hw = icmp sgt i32 %i.hv, 63
  br i1 %i.hw, label %sps_chroma_qp_table.exit.i.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.aa
  %i.hx = trunc nuw nsw i32 %i.hq to i8
  %indvars.iv.next.i22.i.i.i.i = add nuw nsw i64 %indvars.iv.i21.i.i.i.i, 1 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next.i22.i.i.i.i
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !131
  %i.hz = add i8 %i.hs, %i.hh                     ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i22.i.i.i.i
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !131
  %exitcond.not.i23.i.i.i.i = icmp eq i64 %indvars.iv.i21.i.i.i.i, %i.ha
  br i1 %exitcond.not.i23.i.i.i.i, label %.critedge115.i.i.i.i.i, label %bb.z, !llvm.loop !168

.critedge115.i.i.i.i.i:                           ; preds = %.critedge.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw [111 x i8], ptr %i.gr, i64 %indvars.iv149.i.i.i.i.i ; 11 uses
  %i.ic = add nsw i32 %i.hg, %i.gx                ; 4 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %i.ib, i64 %i.id
  store i8 %i.hd, ptr %i.ie, align 1, !tbaa !131
  %i.if = icmp sgt i32 %i.ic, 0
  br i1 %i.if, label %.lr.ph.i25.i.i.i.i, label %.preheader.i.i.i.i.i

.lr.ph.i25.i.i.i.i:                               ; preds = %.critedge115.i.i.i.i.i
  %i.ig = add nsw i32 %i.ic, -1                   ; 2 uses
  %i.ih = sub nsw i32 0, %i.gx                    ; 6 uses
  %i.ii = zext i32 %i.ig to i64                   ; 4 uses
  %scevgep331.a = getelementptr i8, ptr %scevgep, i64 %i.ii
  %load_initial = load i8, ptr %scevgep331.a, align 1 ; 2 uses
  %i.ij = and i32 %i.ic, 1
  %lcmp.mod387.not = icmp eq i32 %i.ij, 0
  br i1 %lcmp.mod387.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i25.i.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ii
  %i.il = sext i8 %load_initial to i32            ; 2 uses
  %.not122.i.i.i.i.i.prol = icmp sgt i32 %i.il, %i.ih
  %i.im = tail call i32 @llvm.smin.i32(i32 %i.il, i32 64)
  %..i120.i.i.i.i.i.prol = add nsw i32 %i.im, 255
  %.0.i121.i.i.i.i.i.prol = select i1 %.not122.i.i.i.i.i.prol, i32 %..i120.i.i.i.i.i.prol, i32 %i.ih
  %i.in = trunc i32 %.0.i121.i.i.i.i.i.prol to i8 ; 2 uses
  store i8 %i.in, ptr %i.ik, align 1, !tbaa !131
  %indvars.iv.next136.i.i.i.i.i.prol = add nsw i64 %i.ii, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i25.i.i.i.i
  %store_forwarded.unr = phi i8 [ %load_initial, %.lr.ph.i25.i.i.i.i ], [ %i.in, %.prol.loopexit.unr-lcssa ]
  %indvars.iv135.i.i.i.i.i.unr = phi i64 [ %i.ii, %.lr.ph.i25.i.i.i.i ], [ %indvars.iv.next136.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.io = icmp eq i32 %i.ig, 0
  br i1 %i.io, label %.preheader.i.i.i.i.i, label %.lr.ph.i25.i.i.i.i.new

.preheader.i.i.i.i.i:                             ; preds = %.prol.loopexit, %.lr.ph.i25.i.i.i.i.new, %.critedge115.i.i.i.i.i
  %i.ip = add nuw nsw i32 %i.gx, 1                ; 2 uses
  br label %bb.ac

.lr.ph.i25.i.i.i.i.new:                           ; preds = %.prol.loopexit, %.lr.ph.i25.i.i.i.i.new
  %store_forwarded = phi i8 [ %i.ix, %.lr.ph.i25.i.i.i.i.new ], [ %store_forwarded.unr, %.prol.loopexit ]
  %indvars.iv135.i.i.i.i.i = phi i64 [ %indvars.iv.next136.i.i.i.i.i.1, %.lr.ph.i25.i.i.i.i.new ], [ %indvars.iv135.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv135.i.i.i.i.i
  %i.ir = sext i8 %store_forwarded to i32         ; 2 uses
  %.not122.i.i.i.i.i = icmp sgt i32 %i.ir, %i.ih
  %i.is = tail call i32 @llvm.smin.i32(i32 %i.ir, i32 64)
  %..i120.i.i.i.i.i = add nsw i32 %i.is, 255
  %.0.i121.i.i.i.i.i = select i1 %.not122.i.i.i.i.i, i32 %..i120.i.i.i.i.i, i32 %i.ih ; 2 uses
  %i.it = trunc i32 %.0.i121.i.i.i.i.i to i8
  store i8 %i.it, ptr %i.iq, align 1, !tbaa !131
  %indvars.iv.next136.i.i.i.i.i = add nsw i64 %indvars.iv135.i.i.i.i.i, -1 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.next136.i.i.i.i.i
  %sext = shl i32 %.0.i121.i.i.i.i.i, 24
  %i.iv = ashr exact i32 %sext, 24                ; 2 uses
  %.not122.i.i.i.i.i.1 = icmp sgt i32 %i.iv, %i.ih
  %i.iw = tail call i32 @llvm.smin.i32(i32 %i.iv, i32 64)
  %..i120.i.i.i.i.i.1 = add nsw i32 %i.iw, 255
  %.0.i121.i.i.i.i.i.1 = select i1 %.not122.i.i.i.i.i.1, i32 %..i120.i.i.i.i.i.1, i32 %i.ih
  %i.ix = trunc i32 %.0.i121.i.i.i.i.i.1 to i8    ; 2 uses
  store i8 %i.ix, ptr %i.iu, align 1, !tbaa !131
  %indvars.iv.next136.i.i.i.i.i.1 = add nsw i64 %indvars.iv135.i.i.i.i.i, -2
  %.not157.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next136.i.i.i.i.i, 0
  br i1 %.not157.i.i.i.i.i.1, label %.preheader.i.i.i.i.i, label %.lr.ph.i25.i.i.i.i.new, !llvm.loop !169

.loopexit.i.i.i.i.i.loopexit.unr-lcssa:           ; preds = %bb.ad
  %lcmp.mod389.not = icmp eq i32 %xtraiter387, 0
  br i1 %lcmp.mod389.not, label %.loopexit.i.i.i.i.i, label %.epil.preheader386

.epil.preheader386:                               ; preds = %.loopexit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph128.i.i.i.i.i
  %indvars.iv138.i.in.i.i.i.i.epil.init = phi i64 [ %i.jz, %.lr.ph128.i.i.i.i.i ], [ %indvars.iv138.i.i.i.i.i, %.loopexit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.094127.i.i.i.i.i.epil.init = phi i32 [ 1, %.lr.ph128.i.i.i.i.i ], [ %24, %.loopexit.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod390 = trunc i32 %i.kh to i1
  tail call void @llvm.assume(i1 %lcmp.mod390)
  %2 = load i8, ptr %i.ka, align 1, !tbaa !131
  %3 = mul nsw i32 %.094127.i.i.i.i.i.epil.init, %12
  %4 = add nsw i32 %3, %i.jr
  %5 = udiv i32 %4, %i.jq
  %6 = trunc i32 %5 to i8
  %7 = add i8 %2, %6
  %8 = getelementptr i8, ptr %i.ib, i64 %indvars.iv138.i.in.i.i.i.i.epil.init
  %9 = getelementptr i8, ptr %8, i64 1
  store i8 %7, ptr %9, align 1, !tbaa !131
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.epil.preheader386, %.loopexit.i.i.i.i.i.loopexit.unr-lcssa, %bb.ac
  %exitcond145.not.i.i.i.i.i = icmp eq i64 %indvars.iv141.i.i.i.i.i, %i.ha
  br i1 %exitcond145.not.i.i.i.i.i, label %bb.ab, label %bb.ac, !llvm.loop !170

bb.ab:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ha
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !131 ; 3 uses
  %i.jb = sext i8 %i.ja to i32
  %i.jc = add nsw i32 %i.ip, %i.jb                ; 2 uses
  %i.jd = add nuw nsw i32 %i.gx, 63
  %.not110130.i.i.i.i.i = icmp sgt i32 %i.jc, %i.jd
  br i1 %.not110130.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph132.preheader.i.i.i.i.i

.lr.ph132.preheader.i.i.i.i.i:                    ; preds = %bb.ab
  %i.je = sext i32 %i.jc to i64                   ; 4 uses
  %10 = add nuw nsw i32 %i.gx, 64
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.je
  %load_initial334 = load i8, ptr %scevgep333, align 1 ; 2 uses
  %11 = and i8 %i.ja, 1
  %lcmp.mod389.not.a = icmp eq i8 %11, 0
  br i1 %lcmp.mod389.not.a, label %.lr.ph132.i.i.i.i.i.prol, label %.lr.ph132.i.i.i.i.i.prol.loopexit

.lr.ph132.i.i.i.i.i.prol:                         ; preds = %.lr.ph132.preheader.i.i.i.i.i
  %i.jf = getelementptr i8, ptr %i.ib, i64 %i.je
  %i.jg = sext i8 %load_initial334 to i32
  %i.jh = add nsw i32 %i.jg, 1                    ; 2 uses
  %i.ji = load i8, ptr %i.ba, align 1, !tbaa !126
  %i.jj = zext i8 %i.ji to i32
  %i.jk = sub nsw i32 0, %i.jj                    ; 2 uses
  %i.jl = icmp slt i32 %i.jh, %i.jk
  %..i.i.i.i.i.i.prol = tail call i32 @llvm.smin.i32(i32 %i.jh, i32 63)
  %.0.i.i24.i.i.i.i.prol = select i1 %i.jl, i32 %i.jk, i32 %..i.i.i.i.i.i.prol
  %i.jm = trunc i32 %.0.i.i24.i.i.i.i.prol to i8  ; 2 uses
  store i8 %i.jm, ptr %i.jf, align 1, !tbaa !131
  %indvars.iv.next147.i.i.i.i.i.prol = add nsw i64 %i.je, 1
  br label %.lr.ph132.i.i.i.i.i.prol.loopexit

.lr.ph132.i.i.i.i.i.prol.loopexit:                ; preds = %.lr.ph132.i.i.i.i.i.prol, %.lr.ph132.preheader.i.i.i.i.i
  %store_forwarded335.unr = phi i8 [ %load_initial334, %.lr.ph132.preheader.i.i.i.i.i ], [ %i.jm, %.lr.ph132.i.i.i.i.i.prol ]
  %indvars.iv146.i.i.i.i.i.unr = phi i64 [ %i.je, %.lr.ph132.preheader.i.i.i.i.i ], [ %indvars.iv.next147.i.i.i.i.i.prol, %.lr.ph132.i.i.i.i.i.prol ]
  %i.jn = icmp eq i8 %i.ja, 62
  br i1 %i.jn, label %._crit_edge.i.i.i.i.i, label %.lr.ph132.i.i.i.i.i

bb.ac:                                            ; preds = %.loopexit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.jo = phi i8 [ %i.hd, %.preheader.i.i.i.i.i ], [ %i.jv, %.loopexit.i.i.i.i.i ]
  %indvars.iv141.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %indvars.iv.next142.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 4 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv141.i.i.i.i.i
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !160 ; 4 uses
  %i.jr = lshr i32 %i.jq, 1                       ; 3 uses
  %i.js = sext i8 %i.jo to i32                    ; 4 uses
  %i.jt = add nsw i32 %i.ip, %i.js
  %indvars.iv.next142.i.i.i.i.i = add nuw nsw i64 %indvars.iv141.i.i.i.i.i, 1 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next142.i.i.i.i.i
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !131 ; 2 uses
  %i.jw = sext i8 %i.jv to i32                    ; 3 uses
  %i.jx = add nsw i32 %i.jw, %i.gx
  %.not113125.i.i.i.i.i = icmp sgt i32 %i.jt, %i.jx
  br i1 %.not113125.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph128.i.i.i.i.i

.lr.ph128.i.i.i.i.i:                              ; preds = %bb.ac
  %i.jy = add nsw i32 %i.js, %i.gx
  %i.jz = sext i32 %i.jy to i64                   ; 3 uses
  %i.ka = getelementptr inbounds i8, ptr %i.ib, i64 %i.jz ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next142.i.i.i.i.i
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !131
  %i.kd = sext i8 %i.kc to i32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv141.i.i.i.i.i
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !131
  %i.kg = sext i8 %i.kf to i32
  %12 = sub nsw i32 %i.kd, %i.kg                  ; 3 uses
  %i.kh = sub nsw i32 %i.jw, %i.js                ; 3 uses
  %xtraiter387 = and i32 %i.kh, 1
  %13 = add nsw i32 %i.jw, -1
  %14 = icmp eq i32 %13, %i.js
  br i1 %14, label %.epil.preheader386, label %.lr.ph128.i.i.i.i.i.new

.lr.ph128.i.i.i.i.i.new:                          ; preds = %.lr.ph128.i.i.i.i.i
  %unroll_iter391 = and i32 %i.kh, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph128.i.i.i.i.i.new
  %indvars.iv138.in.i.i.i.i.i = phi i64 [ %i.jz, %.lr.ph128.i.i.i.i.i.new ], [ %indvars.iv138.i.i.i.i.i, %bb.ad ] ; 2 uses
  %.094127.i.i.i.i.i = phi i32 [ 1, %.lr.ph128.i.i.i.i.i.new ], [ %24, %bb.ad ] ; 3 uses
  %.094127.i.i.i.i.i.a = phi i32 [ 0, %.lr.ph128.i.i.i.i.i.new ], [ %i.kp, %bb.ad ]
  %15 = load i8, ptr %i.ka, align 1, !tbaa !131
  %16 = mul nsw i32 %.094127.i.i.i.i.i, %12
  %17 = add nsw i32 %16, %i.jr
  %18 = udiv i32 %17, %i.jq
  %19 = trunc i32 %18 to i8
  %20 = add i8 %15, %19
  %21 = getelementptr i8, ptr %i.ib, i64 %indvars.iv138.in.i.i.i.i.i
  %22 = getelementptr i8, ptr %21, i64 1
  store i8 %20, ptr %22, align 1, !tbaa !131
  %23 = add nuw i32 %.094127.i.i.i.i.i, 1
  %indvars.iv138.i.i.i.i.i = add nsw i64 %indvars.iv138.in.i.i.i.i.i, 2 ; 3 uses
  %i.ki = load i8, ptr %i.ka, align 1, !tbaa !131
  %i.kj = mul nsw i32 %23, %12
  %i.kk = add nsw i32 %i.kj, %i.jr
  %i.kl = udiv i32 %i.kk, %i.jq
  %i.km = trunc i32 %i.kl to i8
  %i.kn = add i8 %i.ki, %i.km
  %i.ko = getelementptr inbounds i8, ptr %i.ib, i64 %indvars.iv138.i.i.i.i.i
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !131
  %24 = add nuw i32 %.094127.i.i.i.i.i, 2         ; 2 uses
  %i.kp = add i32 %.094127.i.i.i.i.i.a, 2         ; 2 uses
  %niter392.ncmp.1 = icmp eq i32 %i.kp, %unroll_iter391
  br i1 %niter392.ncmp.1, label %.loopexit.i.i.i.i.i.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !171

.lr.ph132.i.i.i.i.i:                              ; preds = %.lr.ph132.i.i.i.i.i.prol.loopexit, %.lr.ph132.i.i.i.i.i
  %store_forwarded335 = phi i8 [ %i.lf, %.lr.ph132.i.i.i.i.i ], [ %store_forwarded335.unr, %.lr.ph132.i.i.i.i.i.prol.loopexit ]
  %indvars.iv146.i.i.i.i.i = phi i64 [ %indvars.iv.next147.i.i.i.i.i.1, %.lr.ph132.i.i.i.i.i ], [ %indvars.iv146.i.i.i.i.i.unr, %.lr.ph132.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.kq = getelementptr i8, ptr %i.ib, i64 %indvars.iv146.i.i.i.i.i
  %i.kr = sext i8 %store_forwarded335 to i32
  %i.ks = add nsw i32 %i.kr, 1                    ; 2 uses
  %i.kt = load i8, ptr %i.ba, align 1, !tbaa !126
  %i.ku = zext i8 %i.kt to i32
  %i.kv = sub nsw i32 0, %i.ku                    ; 2 uses
  %i.kw = icmp slt i32 %i.ks, %i.kv
  %..i.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ks, i32 63)
  %.0.i.i24.i.i.i.i = select i1 %i.kw, i32 %i.kv, i32 %..i.i.i.i.i.i ; 2 uses
  %i.kx = trunc i32 %.0.i.i24.i.i.i.i to i8
  store i8 %i.kx, ptr %i.kq, align 1, !tbaa !131
  %25 = getelementptr i8, ptr %i.ib, i64 %indvars.iv146.i.i.i.i.i
  %i.ky = getelementptr i8, ptr %25, i64 1
  %sext390 = shl i32 %.0.i.i24.i.i.i.i, 24
  %i.kz = ashr exact i32 %sext390, 24
  %i.la = add nsw i32 %i.kz, 1                    ; 2 uses
  %i.lb = load i8, ptr %i.ba, align 1, !tbaa !126
  %i.lc = zext i8 %i.lb to i32
  %i.ld = sub nsw i32 0, %i.lc                    ; 2 uses
  %i.le = icmp slt i32 %i.la, %i.ld
  %..i.i.i.i.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.la, i32 63)
  %.0.i.i24.i.i.i.i.1 = select i1 %i.le, i32 %i.ld, i32 %..i.i.i.i.i.i.1
  %i.lf = trunc i32 %.0.i.i24.i.i.i.i.1 to i8     ; 2 uses
  store i8 %i.lf, ptr %i.ky, align 1, !tbaa !131
  %indvars.iv.next147.i.i.i.i.i.1 = add nsw i64 %indvars.iv146.i.i.i.i.i, 2 ; 2 uses
  %lftr.wideiv150.i.i.i.i.i.1 = trunc i64 %indvars.iv.next147.i.i.i.i.i.1 to i32
  %exitcond.not.i.i.i.i.1 = icmp eq i32 %10, %lftr.wideiv150.i.i.i.i.i.1
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge.i.i.i.i.i, label %.lr.ph132.i.i.i.i.i, !llvm.loop !172

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph132.i.i.i.i.i.prol.loopexit, %.lr.ph132.i.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  %indvars.iv.next150.i.i.i.i.i = add nuw nsw i64 %indvars.iv149.i.i.i.i.i, 1 ; 2 uses
  %exitcond153.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next150.i.i.i.i.i, %wide.trip.count152.i.i.i.i.i
  br i1 %exitcond153.not.i.i.i.i.i, label %.critedge119.i.i.i.i.i, label %bb.y, !llvm.loop !173

.critedge119.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i
  %i.lg = load i8, ptr %i.gi, align 2, !tbaa !166
  %.not112.i.i.i.i.i = icmp eq i8 %i.lg, 0
  br i1 %.not112.i.i.i.i.i, label %sps_chroma_qp_table.exit.thread.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.critedge119.i.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.as, i64 177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %i.lh, ptr noundef nonnull align 2 dereferenceable(111) %i.gr, i64 111, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %i.as, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(111) %i.li, ptr noundef nonnull align 2 dereferenceable(111) %i.gr, i64 111, i1 false)
  br label %sps_chroma_qp_table.exit.thread.i.i.i.i

sps_chroma_qp_table.exit.i.i.i.i:                 ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %sps_derive.exit.i.i.i

sps_chroma_qp_table.exit.thread.i.i.i.i:          ; preds = %bb.ae, %.critedge119.i.i.i.i.i, %sps_ladf.exit.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !122 ; 11 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 15464
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 6
  %i.ll = load i8, ptr %i.lk, align 2, !tbaa !174
  %i.lm = zext i8 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !131
  %i.lp = icmp ne i8 %i.lo, 0
  %i.lq = zext i1 %i.lp to i32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.u, i64 172
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !175
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 46465
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !176
  %.not.i26.i.i.i.i = icmp eq i8 %i.lt, 0
  br i1 %.not.i26.i.i.i.i, label %bb.at, label %bb.af

bb.af:                                            ; preds = %sps_chroma_qp_table.exit.thread.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 46476
  %i.lv = load i8, ptr %i.lu, align 4, !tbaa !177
  %.not.i.i27.i.i.i.i = icmp eq i8 %i.lv, 0
  br i1 %.not.i.i27.i.i.i.i, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 46478
  %i.lx = load i8, ptr %i.lw, align 2, !tbaa !178 ; 4 uses
  %i.ly = icmp ult i8 %i.lx, 17
  br i1 %i.ly, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lz = zext nneg i8 %i.lx to i64
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr @ff_h2645_pixel_aspect, i64 %i.lz ; 2 uses
  %.sroa.01.0.copyload2.i.i.i.i.i.i = load i32, ptr %i.ma, align 8, !tbaa !160
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %.sroa.6.0.copyload3.i.i.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !160
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.mb = icmp eq i8 %i.lx, -1
  br i1 %i.mb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 46480
  %i.md = load i16, ptr %i.mc, align 8, !tbaa !179
  %i.me = zext i16 %i.md to i32
  %i.mf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 46482
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !180
  %i.mh = zext i16 %i.mg to i32
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.mi = zext i8 %i.lx to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.u, i32 noundef 24, ptr noundef nonnull @.str.2, i32 noundef %i.mi) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.af
  %.sroa.01.0.i.i.i.i.i.i = phi i32 [ %.sroa.01.0.copyload2.i.i.i.i.i.i, %bb.ah ], [ %i.me, %bb.aj ], [ 0, %bb.ak ], [ 0, %bb.af ]
  %.sroa.6.0.i.i.i.i.i.i = phi i32 [ %.sroa.6.0.copyload3.i.i.i.i.i.i, %bb.ah ], [ %i.mh, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.af ]
  %.sroa.6.0.insert.ext.i.i.i.i.i.i = zext i32 %.sroa.6.0.i.i.i.i.i.i to i64
  %.sroa.6.0.insert.shift.i.i.i.i.i.i = shl nuw i64 %.sroa.6.0.insert.ext.i.i.i.i.i.i, 32
  %.sroa.01.0.insert.ext.i.i.i.i.i.i = zext i32 %.sroa.01.0.i.i.i.i.i.i to i64
  %.sroa.01.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.6.0.insert.shift.i.i.i.i.i.i, %.sroa.01.0.insert.ext.i.i.i.i.i.i
  %i.mj = tail call i32 @ff_set_sar(ptr noundef nonnull %i.u, i64 %.sroa.01.0.insert.insert.i.i.i.i.i.i) #8 ; 0 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 46486
  %i.ml = load i8, ptr %i.mk, align 2, !tbaa !181
  %.not32.i.i.i.i.i.i = icmp eq i8 %i.ml, 0
  br i1 %.not32.i.i.i.i.i.i, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 46487
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !182
  %i.mo = zext i8 %i.mn to i32                    ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.u, i64 144 ; 2 uses
  store i32 %i.mo, ptr %i.mp, align 8, !tbaa !183
  %i.mq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 46488
  %i.mr = getelementptr inbounds nuw i8, ptr %i.u, i64 148 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.u, i64 152 ; 2 uses
  %i.mt = load <2 x i8>, ptr %i.mq, align 8, !tbaa !131
  %i.mu = zext <2 x i8> %i.mt to <2 x i32>
  store <2 x i32> %i.mu, ptr %i.mr, align 4, !tbaa !160
  %i.mv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 46490
  %i.mw = load i8, ptr %i.mv, align 2, !tbaa !184
  %.not33.i.i.i.i.i.i = icmp eq i8 %i.mw, 0
  %i.mx = select i1 %.not33.i.i.i.i.i.i, i32 1, i32 2
  %i.my = getelementptr inbounds nuw i8, ptr %i.u, i64 156
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !185
  %i.mz = tail call ptr @av_color_primaries_name(i32 noundef %i.mo) #8
  %.not34.i.i.i.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not34.i.i.i.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 2, ptr %i.mp, align 8, !tbaa !183
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.na = load i32, ptr %i.mr, align 4, !tbaa !186
  %i.nb = tail call ptr @av_color_transfer_name(i32 noundef %i.na) #8
  %.not35.i.i.i.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not35.i.i.i.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 2, ptr %i.mr, align 4, !tbaa !186
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.nc = load i32, ptr %i.ms, align 8, !tbaa !187
  %i.nd = tail call ptr @av_color_space_name(i32 noundef %i.nc) #8
  %.not36.i.i.i.i.i.i = icmp eq ptr %i.nd, null
  br i1 %.not36.i.i.i.i.i.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  store i32 2, ptr %i.ms, align 8, !tbaa !187
  br label %bb.at

bb.as:                                            ; preds = %bb.al
  %i.ne = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  store <4 x i32> <i32 2, i32 2, i32 2, i32 1>, ptr %i.ne, align 8, !tbaa !160
  br label %bb.at

sps_derive.exit.i.i.i:                            ; preds = %sps_chroma_qp_table.exit.i.i.i.i, %.thread44.i.i.i.i.i.i, %bb.o
  call void @av_refstruct_unref(ptr noundef nonnull %i.j) #8
  br label %sps_alloc.exit.i.i

sps_alloc.exit.i.i:                               ; preds = %sps_derive.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  br label %decode_recovery_poc.exit

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %sps_chroma_qp_table.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.ac) #8
  store ptr %i.as, ptr %i.ac, align 8, !tbaa !106
  br label %decode_sps.exit.i

decode_sps.exit.i:                                ; preds = %bb.at, %bb.h, %bb.g
  %i.nf = shl nuw i32 1, %i.aa
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %i.nh = load i16, ptr %i.ng, align 8, !tbaa !120
  %i.ni = trunc i32 %i.nf to i16
  %i.nj = or i16 %i.nh, %i.ni
  store i16 %i.nj, ptr %i.ng, align 8, !tbaa !120
  %i.nk = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.nl = load i8, ptr %i.nk, align 8, !tbaa !147
  %i.nm = icmp ugt i8 %i.nl, 2
  br i1 %i.nm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %decode_sps.exit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.u, i32 noundef 16, ptr noundef nonnull @.str) #8
  br label %decode_recovery_poc.exit

bb.av:                                            ; preds = %decode_sps.exit.i
  %i.nn = getelementptr inbounds nuw i8, ptr %.val.val26, i64 4
  %i.no = load i8, ptr %i.nn, align 4, !tbaa !188
  %i.np = getelementptr inbounds nuw i8, ptr %.val.val26, i64 5
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !190
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ns = zext i8 %i.no to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.ns ; 3 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !191 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.nu, null
  br i1 %.not.i22.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !192
  %i.nw = icmp eq ptr %i.nv, %.val.val26
  br i1 %i.nw, label %decode_ps.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.nx = zext i8 %i.nq to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.nx
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !106 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.oa = tail call ptr @av_refstruct_alloc_ext_c(i64 noundef 12112, i32 noundef 0, ptr null, ptr noundef nonnull @pps_free) #8 ; 52 uses
end_hunk_0
