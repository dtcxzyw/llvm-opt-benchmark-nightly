inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN9RSCoder1617MakeDecoderMatrixEv:bb.a

.preheader:                                       ; preds = %.preheader17
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.q = load ptr, ptr %0, align 8
  %i.r = load ptr, ptr %i.e, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN9RSCoder165gfInvEj.exit, %.preheader
  %i.s = phi i32 [ 0, %.preheader ], [ %i.ak, %_ZN9RSCoder165gfInvEj.exit ]
  %i.t = add i32 %.01321, 1
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9RSCoder165gfInvEj.exit
  %i.u = phi i32 [ %i.ak, %_ZN9RSCoder165gfInvEj.exit ], [ %i.h, %.lr.ph.preheader ]
  %.018 = phi i32 [ %i.aj, %_ZN9RSCoder165gfInvEj.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.v = icmp eq i32 %.018, %.115
  br i1 %i.v, label %_ZN9RSCoder165gfInvEj.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.w = xor i32 %.018, %.115
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %i.aa = sub i32 65535, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit

_ZN9RSCoder165gfInvEj.exit:                       ; preds = %.lr.ph, %bb.c
  %i.ae = phi i32 [ %i.ad, %bb.c ], [ 0, %.lr.ph ]
  %i.af = mul i32 %i.u, %.01321
  %i.ag = add i32 %i.af, %.018
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store i32 %i.ae, ptr %i.ai, align 4, !tbaa !17
  %i.aj = add nuw i32 %.018, 1                    ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !21  ; 3 uses
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !40

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.am = phi i32 [ %i.h, %bb.b ], [ %i.s, %._crit_edge ] ; 2 uses
  %.2 = phi i32 [ %.01420, %bb.b ], [ %i.p, %._crit_edge ]
  %.1 = phi i32 [ %.01321, %bb.b ], [ %i.t, %._crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge24, !llvm.loop !36
}

; Function Attrs: mustprogress uwtable
define void @_ZN9RSCoder1619InvertDecoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21   ; 6 uses
  %i.e = mul i32 %i.d, %i.b
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #9 ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.g, i1 false)
  %.not99 = icmp eq i32 %i.b, 0
  br i1 %.not99, label %.preheader79, label %.preheader80.lr.ph

.preheader80.lr.ph:                               ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  %xtraiter = and i32 %i.b, 1
  %i.k = icmp eq i32 %i.b, 1
  br i1 %i.k, label %.preheader80.epil.preheader, label %.preheader80.lr.ph.new

.preheader80.lr.ph.new:                           ; preds = %.preheader80.lr.ph
  %unroll_iter = and i32 %i.b, -2
  br label %.preheader80

.preheader80:                                     ; preds = %bb.e, %.preheader80.lr.ph.new
  %.07382 = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %i.am, %bb.e ]
  %.07581 = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %i.ar, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %niter.next.1, %bb.e ]
  br label %bb.c

.preheader79.loopexit.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79, label %.preheader80.epil.preheader

.preheader80.epil.preheader:                      ; preds = %.preheader79.loopexit.unr-lcssa, %.preheader80.lr.ph
  %.07382.epil.init = phi i32 [ 0, %.preheader80.lr.ph ], [ %i.am, %.preheader79.loopexit.unr-lcssa ]
  %.07581.epil.init = phi i32 [ 0, %.preheader80.lr.ph ], [ %i.ar, %.preheader79.loopexit.unr-lcssa ]
  %lcmp.mod174 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader80.epil.preheader
  %.174.epil = phi i32 [ %i.p, %bb.b ], [ %.07382.epil.init, %.preheader80.epil.preheader ] ; 3 uses
  %i.l = zext i32 %.174.epil to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24, !range !25, !noundef !26
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = add i32 %.174.epil, 1
  br i1 %i.o, label %bb.b, label %.preheader79.loopexit.epilog-lcssa, !llvm.loop !41

.preheader79.loopexit.epilog-lcssa:               ; preds = %bb.b
  %i.q = mul i32 %.07581.epil.init, %i.d
  %i.r = add i32 %.174.epil, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.s
  store i32 1, ptr %i.t, align 4, !tbaa !17
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.loopexit.epilog-lcssa, %.preheader79.loopexit.unr-lcssa, %bb.a
  %.not100 = icmp eq i32 %i.d, 0
  br i1 %.not100, label %._crit_edge98, label %.preheader78.lr.ph

.preheader78.lr.ph:                               ; preds = %.preheader79
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %.preheader78

bb.c:                                             ; preds = %bb.c, %.preheader80
  %.174 = phi i32 [ %i.ac, %bb.c ], [ %.07382, %.preheader80 ] ; 3 uses
  %i.y = zext i32 %.174 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24, !range !25, !noundef !26
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = add i32 %.174, 1                        ; 2 uses
  br i1 %i.ab, label %bb.c, label %.preheader80.1, !llvm.loop !41

.preheader80.1:                                   ; preds = %bb.c
  %i.ad = mul i32 %.07581, %i.d
  %i.ae = add i32 %.174, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  store i32 1, ptr %i.ag, align 4, !tbaa !17
  %i.ah = or disjoint i32 %.07581, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader80.1
  %.174.1 = phi i32 [ %i.am, %bb.d ], [ %i.ac, %.preheader80.1 ] ; 3 uses
  %i.ai = zext i32 %.174.1 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !24, !range !25, !noundef !26
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = add i32 %.174.1, 1                      ; 3 uses
  br i1 %i.al, label %bb.d, label %bb.e, !llvm.loop !41

bb.e:                                             ; preds = %bb.d
  %i.an = mul i32 %i.ah, %i.d
  %i.ao = add i32 %.174.1, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap
  store i32 1, ptr %i.aq, align 4, !tbaa !17
  %i.ar = add nuw i32 %.07581, 2                  ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.loopexit.unr-lcssa, label %.preheader80, !llvm.loop !42

.preheader78:                                     ; preds = %.preheader78.lr.ph, %._crit_edge
  %i.as = phi i32 [ %i.d, %.preheader78.lr.ph ], [ %i.fe, %._crit_edge ] ; 9 uses
  %i.at = phi i32 [ %i.b, %.preheader78.lr.ph ], [ %i.ff, %._crit_edge ] ; 4 uses
  %.07193 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.fh, %._crit_edge ] ; 5 uses
  %.07292 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.fg, %._crit_edge ] ; 3 uses
  %i.au = zext i32 %.07193 to i64                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !24, !range !25, !noundef !26
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.preheader78
  %.not101 = icmp eq i32 %i.at, 0
  br i1 %.not101, label %.preheader, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !19  ; 6 uses
  %wide.trip.count = zext i32 %i.at to i64        ; 7 uses
  %i.az = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ba = zext i32 %.07193 to i64                 ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.at, 12
  %ident.check = icmp ne i32 %i.as, 1
  %i.bc = trunc i64 %i.az to i32
  %i.bd = icmp ugt i64 %i.az, 4294967295
  %invariant.op = or i1 %i.bd, %ident.check
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter175 = and i64 %wide.trip.count, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  %i.be = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 3 uses
  %.184.us = phi i32 [ %i.cy, %._crit_edge.us ], [ %.07193, %.preheader.lr.ph.split.us ] ; 6 uses
  %i.bf = add i64 %indvar, %i.ba
  %i.bg = shl nuw i64 %i.bf, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.bg
  %i.bh = add i64 %i.bb, %indvar
  %i.bi = shl nuw i64 %i.bh, 2                    ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.h, i64 %i.bi
  %scevgep159 = getelementptr i8, ptr %i.ay, i64 %i.bg
  %scevgep160 = getelementptr i8, ptr %i.ay, i64 %i.bi
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.bj = xor i32 %.184.us, -1
  %i.bk = icmp ult i32 %i.bj, %i.bc
  %.reass = or i1 %i.bk, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep160
  %bound1 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bl = trunc nuw i64 %index to i32
  %i.bm = add i32 %.184.us, %i.bl
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <4 x i32>, ptr %i.bo, align 4, !tbaa !17, !alias.scope !43
  %wide.load161 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !17, !alias.scope !43
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  %wide.load163 = load <4 x i32>, ptr %i.br, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  %i.bs = xor <4 x i32> %wide.load162, %wide.load
  %i.bt = xor <4 x i32> %wide.load163, %wide.load161
  store <4 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  store <4 x i32> %i.bt, ptr %i.br, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod176.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bv = trunc nuw i64 %indvars.iv.ph to i32
  %i.bw = mul i32 %i.as, %i.bv
  %i.bx = add i32 %i.bw, %.184.us
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !17
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.by ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cd = xor i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !17
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ce = icmp eq i64 %indvars.iv.ph, %i.be
  br i1 %i.ce, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cf = trunc nuw i64 %indvars.iv to i32
  %i.cg = mul i32 %i.as, %i.cf
  %i.ch = add i32 %i.cg, %.184.us
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !17
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ci ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !17
  %i.cn = xor i32 %i.cm, %i.ck
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !17
  %i.co = trunc i64 %indvars.iv to i32
  %i.cp = add i32 %i.co, 1
  %i.cq = mul i32 %i.as, %i.cp
  %i.cr = add i32 %i.cq, %.184.us
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cs ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !17
  %i.cx = xor i32 %i.cw, %i.cu
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond112.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !49

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cy = add nuw i32 %.184.us, 1                 ; 4 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !24, !range !25, !noundef !26
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = icmp ult i32 %i.cy, %i.as
  %or.cond.us = and i1 %i.dd, %i.dc
  %indvar.next = add i64 %indvar, 1
  br i1 %or.cond.us, label %.preheader.us, label %.critedge, !llvm.loop !50

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.184 = phi i32 [ %i.de, %.preheader ], [ %.07193, %.preheader.lr.ph ]
  %i.de = add nuw i32 %.184, 1                    ; 4 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !24, !range !25, !noundef !26
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = icmp ult i32 %i.de, %i.as
  %or.cond = and i1 %i.dj, %i.di
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %._crit_edge.us, %.preheader, %.preheader78
  %.1.lcssa = phi i32 [ %.07193, %.preheader78 ], [ %i.de, %.preheader ], [ %i.cy, %._crit_edge.us ] ; 2 uses
  %.lcssa = phi i64 [ %i.au, %.preheader78 ], [ %i.df, %.preheader ], [ %i.cz, %._crit_edge.us ] ; 2 uses
  %i.dk = icmp eq i32 %.1.lcssa, %i.as
  br i1 %i.dk, label %.critedge._crit_edge, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.dl = load ptr, ptr %i.w, align 8, !tbaa !19  ; 2 uses
  %i.dm = mul i32 %i.as, %.07292
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.lcssa
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !17 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = load ptr, ptr %0, align 8, !tbaa !15
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.dv = zext i32 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !17
  %i.dy = sub i32 65535, %i.dx
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !17
  %i.ec = zext i32 %i.eb to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %i.ed = phi i64 [ %i.ec, %bb.g ], [ 0, %bb.f ]
  %i.ee = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ef = load ptr, ptr %i.x, align 8, !tbaa !16  ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ed ; 2 uses
  %.pre = load i32, ptr %i.eg, align 4, !tbaa !17
  br label %bb.h

.preheader77:                                     ; preds = %bb.h
  %.pre122 = load i32, ptr %i.a, align 4, !tbaa !23 ; 2 uses
  %.not103 = icmp eq i32 %.pre122, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph91

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.eh = phi i32 [ %.pre, %.lr.ph ], [ %i.ew, %bb.h ]
  %indvars.iv113 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next114, %bb.h ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv113 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !17
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !17
  %i.en = add i32 %i.eh, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !17
  store i32 %i.eq, ptr %i.ei, align 4, !tbaa !17
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv113 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !17
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !17
  %i.ew = load i32, ptr %i.eg, align 4, !tbaa !17 ; 2 uses
  %i.ex = add i32 %i.ew, %i.ev
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !17
  store i32 %i.fa, ptr %i.er, align 4, !tbaa !17
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.fb = load i32, ptr %i.c, align 4, !tbaa !21  ; 4 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = icmp samesign ult i64 %indvars.iv.next114, %i.fc
  br i1 %i.fd, label %bb.h, label %.preheader77, !llvm.loop !51

._crit_edge:                                      ; preds = %.loopexit, %.preheader77
  %i.fe = phi i32 [ %i.fb, %.preheader77 ], [ %i.gz, %.loopexit ] ; 3 uses
  %i.ff = phi i32 [ 0, %.preheader77 ], [ %i.ha, %.loopexit ] ; 2 uses
  %i.fg = add i32 %.07292, 1
  %i.fh = add i32 %.1.lcssa, 1                    ; 2 uses
  %i.fi = icmp ult i32 %i.fh, %i.fe
  br i1 %i.fi, label %.preheader78, label %.critedge._crit_edge, !llvm.loop !52

.lr.ph91:                                         ; preds = %.preheader77, %.loopexit
  %i.fj = phi i32 [ %i.gz, %.loopexit ], [ %i.fb, %.preheader77 ] ; 2 uses
  %i.fk = phi i32 [ %i.ha, %.loopexit ], [ %.pre122, %.preheader77 ] ; 2 uses
  %i.fl = phi i32 [ %i.hb, %.loopexit ], [ %i.fb, %.preheader77 ] ; 3 uses
  %.06890 = phi i32 [ %i.hc, %.loopexit ], [ 0, %.preheader77 ] ; 3 uses
  %.not = icmp eq i32 %.06890, %.07292
end_hunk_0
