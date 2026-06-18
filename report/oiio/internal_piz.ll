inline.NumInlined: 43
inline.NumDeleted: 22
begin_hunk_0_@internal_exr_apply_piz:bb.a
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !23, !alias.scope !27, !noalias !30
  store i16 %i.eq, ptr %i.em, align 2, !tbaa !23, !alias.scope !30, !noalias !27
  %i.er = add nuw nsw i64 %.024.i, 4              ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %applyLut.exit.loopexit.unr-lcssa, label %.lr.ph25.i, !llvm.loop !33

applyLut.exit.loopexit.unr-lcssa:                 ; preds = %.lr.ph25.i
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %applyLut.exit, label %.lr.ph25.i.epil.preheader

.lr.ph25.i.epil.preheader:                        ; preds = %applyLut.exit.loopexit.unr-lcssa, %.lr.ph25.preheader.i
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %i.er, %applyLut.exit.loopexit.unr-lcssa ]
  %lcmp.mod268 = icmp ne i64 %xtraiter266, 0
  tail call void @llvm.assume(i1 %lcmp.mod268)
  br label %.lr.ph25.i.epil

.lr.ph25.i.epil:                                  ; preds = %.lr.ph25.i.epil, %.lr.ph25.i.epil.preheader
  %.024.i.epil = phi i64 [ %i.ex, %.lr.ph25.i.epil ], [ %.024.i.epil.init, %.lr.ph25.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph25.i.epil ], [ 0, %.lr.ph25.i.epil.preheader ]
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i.epil ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !23, !alias.scope !30, !noalias !27
  %i.eu = zext i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !23, !alias.scope !27, !noalias !30
  store i16 %i.ew, ptr %i.es, align 2, !tbaa !23, !alias.scope !30, !noalias !27
  %i.ex = add nuw nsw i64 %.024.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter266
  br i1 %epil.iter.cmp.not, label %applyLut.exit, label %.lr.ph25.i.epil, !llvm.loop !34

applyLut.exit:                                    ; preds = %applyLut.exit.loopexit.unr-lcssa, %.lr.ph25.i.epil, %.preheader.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !36
  %i.fa = icmp ult i64 %i.ez, 4
  br i1 %i.fa, label %bb.ad, label %bb.m

bb.g:                                             ; preds = %.lr.ph196, %._crit_edge
  %i.fb = phi i32 [ %i.v, %.lr.ph196 ], [ %i.fi, %._crit_edge ]
  %i.fc = phi i16 [ %.pre, %.lr.ph196 ], [ %i.fj, %._crit_edge ] ; 2 uses
  %i.fd = phi i16 [ %.pre, %.lr.ph196 ], [ %i.fk, %._crit_edge ] ; 2 uses
  %.0139194 = phi i32 [ 0, %.lr.ph196 ], [ %i.fl, %._crit_edge ] ; 4 uses
  %.0144193 = phi ptr [ %i.x, %.lr.ph196 ], [ %.1145.lcssa, %._crit_edge ] ; 2 uses
  %.lcssa185191192 = phi i64 [ undef, %.lr.ph196 ], [ %.lcssa185, %._crit_edge ]
  %i.fe = load i32, ptr %i.y, align 8, !tbaa !37
  %i.ff = add nsw i32 %i.fe, %.0139194
  %i.fg = icmp sgt i16 %i.fd, 0
  br i1 %i.fg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre221.a = load i32, ptr %i.u, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.fi = phi i32 [ %i.fb, %bb.g ], [ %.pre221.a, %._crit_edge.loopexit ] ; 2 uses
  %i.fj = phi i16 [ %i.fc, %bb.g ], [ %i.gj, %._crit_edge.loopexit ]
  %i.fk = phi i16 [ %i.fd, %bb.g ], [ %i.gj, %._crit_edge.loopexit ]
  %.lcssa185 = phi i64 [ %.lcssa185191192, %bb.g ], [ %i.ga, %._crit_edge.loopexit ] ; 2 uses
  %.1145.lcssa = phi ptr [ %.0144193, %bb.g ], [ %.2, %._crit_edge.loopexit ]
  store i64 %.lcssa185, ptr %i.a, align 8
  %i.fl = add nuw nsw i32 %.0139194, 1            ; 2 uses
  %i.fm = icmp slt i32 %i.fl, %i.fi
  br i1 %i.fm, label %bb.g, label %._crit_edge197, !llvm.loop !38

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.fn = phi i16 [ %i.fc, %.lr.ph.preheader ], [ %i.gj, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.0141187 = phi ptr [ %i.fh, %.lr.ph.preheader ], [ %.1142, %bb.l ] ; 3 uses
  %.1145186 = phi ptr [ %.0144193, %.lr.ph.preheader ], [ %.2, %bb.l ] ; 4 uses
  %i.fo = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.fo, i64 %indvars.iv ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !40
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !43
  %i.fu = sext i32 %i.fr to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 25
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !44
  %i.fx = sext i8 %i.fw to i64
  %i.fy = mul nsw i64 %i.fx, %i.fu                ; 4 uses
  %i.fz = sext i32 %i.ft to i64
  %i.ga = mul i64 %i.fy, %i.fz                    ; 3 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.gc = getelementptr inbounds nuw i8, ptr %.0141187, i64 %i.ga ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !45 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.gg = srem i32 %i.ff, %i.ge
  %.not163 = icmp eq i32 %i.gg, 0
  br i1 %.not163, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.gh = udiv i32 %.0139194, %i.ge
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.pn164.in = phi i32 [ %i.gh, %bb.j ], [ %.0139194, %bb.h ]
  %.pn164 = zext i32 %.pn164.in to i64
  %.pn = mul i64 %i.fy, %.pn164
  %.0143 = getelementptr inbounds nuw i8, ptr %.0141187, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0143, ptr align 1 %.1145186, i64 %i.fy, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.1145186, i64 %i.fy
  %.pre220 = load i16, ptr %i.z, align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %.lr.ph, %bb.k
  %i.gj = phi i16 [ %.pre220, %bb.k ], [ %i.fn, %.lr.ph ], [ %i.fn, %bb.i ] ; 4 uses
  %.2 = phi ptr [ %i.gi, %bb.k ], [ %.1145186, %.lr.ph ], [ %.1145186, %bb.i ] ; 2 uses
  %.1142 = phi ptr [ %i.gc, %bb.k ], [ %.0141187, %.lr.ph ], [ %i.gc, %bb.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gk = sext i16 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next, %i.gk
  br i1 %i.gl, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !46

bb.m:                                             ; preds = %applyLut.exit
  store i16 %.2.i.1, ptr %i.c, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.1.i.1, ptr %i.gm, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %.not161 = icmp ugt i16 %.2.i.1, %.1.i.1
  br i1 %.not161, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %narrow = sub nuw i16 %.1.i.1, %.2.i.1
  %i.go = zext i16 %narrow to i64                 ; 3 uses
  %i.gp = add nuw nsw i64 %i.go, 5
  %i.gq = load i64, ptr %i.ey, align 8, !tbaa !36
  %i.gr = icmp ugt i64 %i.gp, %i.gq
  br i1 %i.gr, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gs = add nuw nsw i64 %i.go, 1                ; 2 uses
  %i.gt = zext nneg i16 %.2.i.1 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.gt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gn, ptr noundef nonnull align 1 dereferenceable(1) %i.gu, i64 %i.gs, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gs
  %i.gw = add nuw nsw i64 %i.go, 9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.0138 = phi i64 [ %i.gw, %bb.o ], [ 8, %bb.m ] ; 4 uses
  %.0136 = phi ptr [ %i.gv, %bb.o ], [ %i.gn, %bb.m ] ; 2 uses
  %i.gx = load ptr, ptr %i.h, align 8, !tbaa !21  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 8, !tbaa !20 ; 2 uses
  %i.ha = icmp sgt i16 %i.gz, 0
  br i1 %i.ha, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.p
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !39
  %i.hd = icmp ult i16 %i.co, 16384               ; 3 uses
  br label %bb.q

._crit_edge206:                                   ; preds = %._crit_edge201.split, %bb.p
  store i64 0, ptr %i.a, align 8, !tbaa !47
  %i.he = load i64, ptr %i.ey, align 8, !tbaa !36 ; 2 uses
  %i.hf = icmp ugt i64 %.0138, %i.he
  br i1 %i.hf, label %bb.ad, label %bb.x

bb.q:                                             ; preds = %.lr.ph205, %._crit_edge201.split
  %i.hg = phi i16 [ %i.gz, %.lr.ph205 ], [ %i.ht, %._crit_edge201.split ] ; 2 uses
  %indvars.iv217 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next218, %._crit_edge201.split ] ; 2 uses
  %.0140202 = phi ptr [ %i.gx, %.lr.ph205 ], [ %i.hw, %._crit_edge201.split ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [48 x i8], ptr %i.hc, i64 %indvars.iv217 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !40 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !43 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 25
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !44  ; 2 uses
  %i.ho = sdiv i8 %i.hn, 2
  %i.hp = sext i8 %i.ho to i32                    ; 6 uses
  %i.hq = icmp sgt i8 %i.hn, 1
  %i.hr = mul i32 %i.hj, %i.hp                    ; 4 uses
  br i1 %i.hq, label %.lr.ph200, label %._crit_edge201.split

.lr.ph200:                                        ; preds = %bb.q
  %i.hs = tail call i32 @llvm.smin.i32(i32 %i.hj, i32 %i.hl) ; 2 uses
  %.not128.i = icmp slt i32 %i.hs, 2
  br i1 %.not128.i, label %._crit_edge201.split, label %.lr.ph132.i.preheader.preheader

.lr.ph132.i.preheader.preheader:                  ; preds = %.lr.ph200
  %wide.trip.count = zext nneg i32 %i.hp to i64
  br label %.lr.ph132.i.preheader

._crit_edge201.split.loopexit:                    ; preds = %wav_2D_encode.exit.loopexit
  %.pre222 = load i16, ptr %i.gy, align 8, !tbaa !20
  br label %._crit_edge201.split

._crit_edge201.split:                             ; preds = %bb.q, %.lr.ph200, %._crit_edge201.split.loopexit
  %i.ht = phi i16 [ %i.hg, %.lr.ph200 ], [ %.pre222, %._crit_edge201.split.loopexit ], [ %i.hg, %bb.q ] ; 2 uses
  %i.hu = mul i32 %i.hr, %i.hl
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [2 x i8], ptr %.0140202, i64 %i.hv
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.hx = sext i16 %i.ht to i64
  %i.hy = icmp slt i64 %indvars.iv.next218, %i.hx
  br i1 %i.hy, label %bb.q, label %._crit_edge206, !llvm.loop !48

.lr.ph132.i.preheader:                            ; preds = %.lr.ph132.i.preheader.preheader, %wav_2D_encode.exit.loopexit
  %indvars.iv214 = phi i64 [ 0, %.lr.ph132.i.preheader.preheader ], [ %indvars.iv.next215, %wav_2D_encode.exit.loopexit ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.0140202, i64 %indvars.iv214 ; 3 uses
  br label %.lr.ph132.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %.loopexit.i
  %.0130.i = phi i32 [ %.092129.i, %.loopexit.i ], [ 1, %.lr.ph132.i.preheader ] ; 4 uses
  %.092129.i = phi i32 [ %i.nt, %.loopexit.i ], [ 2, %.lr.ph132.i.preheader ] ; 7 uses
  %i.ia = sub nsw i32 %i.hl, %.092129.i
  %i.ib = mul nsw i32 %i.ia, %i.hr                ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %.idx.i = shl nsw i64 %i.ic, 1
  %i.id = getelementptr inbounds i8, ptr %i.hz, i64 %.idx.i
  %i.ie = mul nsw i32 %.0130.i, %i.hp             ; 2 uses
  %i.if = mul nsw i32 %.092129.i, %i.hp           ; 2 uses
  %.not96117.i = icmp slt i32 %i.ib, 0
  br i1 %.not96117.i, label %._crit_edge122.i, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %.lr.ph132.i
  %i.ig = mul nsw i32 %.092129.i, %i.hr
  %i.ih = mul nsw i32 %.0130.i, %i.hr
  %i.ii = sub nsw i32 %i.hj, %.092129.i
  %i.ij = mul nsw i32 %i.ii, %i.hp                ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  %i.il = sext i32 %i.ie to i64                   ; 4 uses
  %i.im = sext i32 %i.ih to i64                   ; 5 uses
  %i.in = sext i32 %i.if to i64                   ; 2 uses
  %i.io = and i32 %.0130.i, %i.hj
  %.not100.i = icmp eq i32 %i.io, 0               ; 3 uses
  %i.ip = sext i32 %i.ig to i64
  %.idx134.i = shl nsw i64 %i.ik, 1
  %.not99115.i = icmp slt i32 %i.ij, 0
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.lr.ph121.i
  %.094118.i = phi ptr [ %i.hz, %.lr.ph121.i ], [ %i.mn, %bb.v ] ; 7 uses
  %i.iq = getelementptr inbounds i8, ptr %.094118.i, i64 %.idx134.i ; 2 uses
  br i1 %.not99115.i, label %._crit_edge.i176, label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %bb.r
  br i1 %i.hd, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i174, %.lr.ph.split.us.i
  %.095116.us.i = phi ptr [ %i.jw, %.lr.ph.split.us.i ], [ %.094118.i, %.lr.ph.i174 ] ; 5 uses
  %i.ir = getelementptr inbounds [2 x i8], ptr %.095116.us.i, i64 %i.il ; 2 uses
  %i.is = getelementptr inbounds [2 x i8], ptr %.095116.us.i, i64 %i.im ; 3 uses
  %i.it = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.il ; 2 uses
  %i.iu = load i16, ptr %.095116.us.i, align 2, !tbaa !23 ; 2 uses
  %i.iv = load i16, ptr %i.ir, align 2, !tbaa !23 ; 2 uses
  %i.iw = sext i16 %i.iu to i32
  %i.ix = sext i16 %i.iv to i32
  %i.iy = add nsw i32 %i.ix, %i.iw
  %i.iz = lshr i32 %i.iy, 1                       ; 2 uses
  %i.ja = trunc i32 %i.iz to i16
  %i.jb = sub i16 %i.iu, %i.iv                    ; 2 uses
  %i.jc = load i16, ptr %i.is, align 2, !tbaa !23 ; 2 uses
  %i.jd = load i16, ptr %i.it, align 2, !tbaa !23 ; 2 uses
  %i.je = sext i16 %i.jc to i32
  %i.jf = sext i16 %i.jd to i32
  %i.jg = add nsw i32 %i.jf, %i.je
  %i.jh = lshr i32 %i.jg, 1                       ; 2 uses
  %i.ji = trunc i32 %i.jh to i16
  %i.jj = sub i16 %i.jc, %i.jd                    ; 2 uses
  %sext.us.i = shl i32 %i.iz, 16
  %i.jk = ashr exact i32 %sext.us.i, 16
  %sext113.us.i = shl i32 %i.jh, 16
  %i.jl = ashr exact i32 %sext113.us.i, 16
  %i.jm = add nsw i32 %i.jl, %i.jk
  %i.jn = lshr i32 %i.jm, 1
  %i.jo = trunc i32 %i.jn to i16
  %i.jp = sub i16 %i.ja, %i.ji
  store i16 %i.jo, ptr %.095116.us.i, align 2, !tbaa !23
  store i16 %i.jp, ptr %i.is, align 2, !tbaa !23
  %i.jq = sext i16 %i.jb to i32
  %i.jr = sext i16 %i.jj to i32
  %i.js = add nsw i32 %i.jr, %i.jq
  %i.jt = lshr i32 %i.js, 1
  %i.ju = trunc i32 %i.jt to i16
  %i.jv = sub i16 %i.jb, %i.jj
  store i16 %i.ju, ptr %i.ir, align 2, !tbaa !23
  store i16 %i.jv, ptr %i.it, align 2, !tbaa !23
  %i.jw = getelementptr inbounds [2 x i8], ptr %.095116.us.i, i64 %i.in ; 4 uses
  %.not99.us.i = icmp ugt ptr %i.jw, %i.iq
  br i1 %.not99.us.i, label %._crit_edge.thread148.i, label %.lr.ph.split.us.i, !llvm.loop !49

.lr.ph.split.i:                                   ; preds = %.lr.ph.i174, %.lr.ph.split.i
  %.095116.i = phi ptr [ %i.ln, %.lr.ph.split.i ], [ %.094118.i, %.lr.ph.i174 ] ; 5 uses
  %i.jx = getelementptr inbounds [2 x i8], ptr %.095116.i, i64 %i.il ; 2 uses
  %i.jy = getelementptr inbounds [2 x i8], ptr %.095116.i, i64 %i.im ; 3 uses
  %i.jz = getelementptr inbounds [2 x i8], ptr %i.jy, i64 %i.il ; 2 uses
  %i.ka = load i16, ptr %.095116.i, align 2, !tbaa !23
  %i.kb = load i16, ptr %i.jx, align 2, !tbaa !23
  %i.kc = xor i16 %i.ka, -32768
  %i.kd = zext i16 %i.kc to i32                   ; 2 uses
  %i.ke = zext i16 %i.kb to i32                   ; 2 uses
  %i.kf = add nuw nsw i32 %i.kd, %i.ke
  %i.kg = lshr i32 %i.kf, 1
  %i.kh = sub nsw i32 %i.kd, %i.ke                ; 2 uses
  %i.ki = lshr i32 %i.kh, 16
  %i.kj = and i32 %i.ki, 32768
  %i.kk = load i16, ptr %i.jy, align 2, !tbaa !23
  %i.kl = load i16, ptr %i.jz, align 2, !tbaa !23
  %i.km = xor i16 %i.kk, -32768
  %i.kn = zext i16 %i.km to i32                   ; 2 uses
  %i.ko = zext i16 %i.kl to i32                   ; 2 uses
  %i.kp = add nuw nsw i32 %i.kn, %i.ko
  %i.kq = lshr i32 %i.kp, 1
  %i.kr = sub nsw i32 %i.kn, %i.ko                ; 2 uses
  %i.ks = lshr i32 %i.kr, 16
  %i.kt = and i32 %i.ks, 32768
  %spec.select.i101.i = xor i32 %i.kt, %i.kq      ; 2 uses
  %i.ku = xor i32 %i.kg, %i.kj
  %i.kv = xor i32 %i.ku, 32768                    ; 2 uses
  %i.kw = add nuw nsw i32 %spec.select.i101.i, %i.kv
  %i.kx = lshr i32 %i.kw, 1
  %i.ky = sub nsw i32 %i.kv, %spec.select.i101.i  ; 2 uses
  %i.kz = lshr i32 %i.ky, 16
  %i.la = and i32 %i.kz, 32768
  %spec.select.i102.i = xor i32 %i.la, %i.kx
  %i.lb = trunc nuw i32 %spec.select.i102.i to i16
  store i16 %i.lb, ptr %.095116.i, align 2, !tbaa !23
  %i.lc = trunc i32 %i.ky to i16
  store i16 %i.lc, ptr %i.jy, align 2, !tbaa !23
  %i.ld = and i32 %i.kh, 65535
  %i.le = xor i32 %i.ld, 32768                    ; 2 uses
  %i.lf = and i32 %i.kr, 65535                    ; 2 uses
  %i.lg = add nuw nsw i32 %i.lf, %i.le
  %i.lh = lshr i32 %i.lg, 1
  %i.li = sub nsw i32 %i.le, %i.lf                ; 2 uses
  %i.lj = lshr i32 %i.li, 16
  %i.lk = and i32 %i.lj, 32768
  %spec.select.i103.i = xor i32 %i.lk, %i.lh
  %i.ll = trunc nuw i32 %spec.select.i103.i to i16
  store i16 %i.ll, ptr %i.jx, align 2, !tbaa !23
  %i.lm = trunc i32 %i.li to i16
  store i16 %i.lm, ptr %i.jz, align 2, !tbaa !23
  %i.ln = getelementptr inbounds [2 x i8], ptr %.095116.i, i64 %i.in ; 4 uses
  %.not99.i = icmp ugt ptr %i.ln, %i.iq
  br i1 %.not99.i, label %._crit_edge.thread.i, label %.lr.ph.split.i, !llvm.loop !49

._crit_edge.i176:                                 ; preds = %bb.r
  br i1 %.not100.i, label %bb.v, label %bb.s

._crit_edge.thread148.i:                          ; preds = %.lr.ph.split.us.i
  br i1 %.not100.i, label %bb.v, label %.thread150.i

.thread150.i:                                     ; preds = %._crit_edge.thread148.i
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.jw, i64 %i.im
  br label %bb.t

._crit_edge.thread.i:                             ; preds = %.lr.ph.split.i
  br i1 %.not100.i, label %bb.v, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.thread.i
  %i.lp = getelementptr inbounds [2 x i8], ptr %i.ln, i64 %i.im
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge.i176
  %i.lq = getelementptr inbounds [2 x i8], ptr %.094118.i, i64 %i.im ; 2 uses
  br i1 %i.hd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %.thread150.i
  %i.lr = phi ptr [ %i.lo, %.thread150.i ], [ %i.lq, %bb.s ] ; 2 uses
  %.095.lcssa145152.i = phi ptr [ %i.jw, %.thread150.i ], [ %.094118.i, %bb.s ] ; 2 uses
  %i.ls = load i16, ptr %.095.lcssa145152.i, align 2, !tbaa !23 ; 2 uses
  %i.lt = load i16, ptr %i.lr, align 2, !tbaa !23 ; 2 uses
  %i.lu = sext i16 %i.ls to i32
  %i.lv = sext i16 %i.lt to i32
  %i.lw = add nsw i32 %i.lv, %i.lu
  %i.lx = lshr i32 %i.lw, 1
  %i.ly = trunc i32 %i.lx to i16
  %i.lz = sub i16 %i.ls, %i.lt
  store i16 %i.ly, ptr %.095.lcssa145152.i, align 2, !tbaa !23
  store i16 %i.lz, ptr %i.lr, align 2, !tbaa !23
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.thread.i
  %i.ma = phi ptr [ %i.lp, %.thread.i ], [ %i.lq, %bb.s ] ; 2 uses
  %.095.lcssa145147.i = phi ptr [ %i.ln, %.thread.i ], [ %.094118.i, %bb.s ] ; 2 uses
  %i.mb = load i16, ptr %.095.lcssa145147.i, align 2, !tbaa !23
  %i.mc = load i16, ptr %i.ma, align 2, !tbaa !23
  %i.md = xor i16 %i.mb, -32768
  %i.me = zext i16 %i.md to i32                   ; 2 uses
  %i.mf = zext i16 %i.mc to i32                   ; 2 uses
  %i.mg = add nuw nsw i32 %i.me, %i.mf
  %i.mh = lshr i32 %i.mg, 1
  %i.mi = sub nsw i32 %i.me, %i.mf                ; 2 uses
  %i.mj = lshr i32 %i.mi, 16
  %i.mk = and i32 %i.mj, 32768
  %spec.select.i104.i = xor i32 %i.mk, %i.mh
  %i.ml = trunc nuw i32 %spec.select.i104.i to i16
end_hunk_0
