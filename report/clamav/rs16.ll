inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN9RSCoder1617MakeDecoderMatrixEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.b

._crit_edge24:                                    ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph23, %bb.d
  %i.h = phi i32 [ %i.b, %.lr.ph23 ], [ %i.am, %bb.d ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.01321 = phi i32 [ 0, %.lr.ph23 ], [ %.1, %bb.d ] ; 3 uses
  %.01420 = phi i32 [ %i.b, %.lr.ph23 ], [ %.2, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24, !range !25, !noundef !26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %.preheader17

.preheader17:                                     ; preds = %bb.b, %.preheader17
  %.115 = phi i32 [ %i.p, %.preheader17 ], [ %.01420, %bb.b ] ; 4 uses
  %i.l = zext i32 %.115 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24, !range !25, !noundef !26
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = add i32 %.115, 1                         ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader17, !llvm.loop !33

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
  %i.as = phi i32 [ %i.d, %.preheader78.lr.ph ], [ %i.eq, %._crit_edge ] ; 9 uses
  %i.at = phi i32 [ %i.b, %.preheader78.lr.ph ], [ %i.er, %._crit_edge ] ; 4 uses
  %.07193 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.et, %._crit_edge ] ; 5 uses
  %.07292 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.es, %._crit_edge ] ; 3 uses
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
  %1 = zext i32 %.07193 to i64                    ; 2 uses
  %2 = add nuw nsw i64 %1, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.at, 12
  %ident.check = icmp ne i32 %i.as, 1
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp ugt i64 %i.az, 4294967295
  %invariant.op = or i1 %i.bb, %ident.check
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter175 = and i64 %wide.trip.count, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  %i.bc = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar.a = phi i64 [ %indvar.next, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 3 uses
  %.184.us = phi i32 [ %9, %._crit_edge.us ], [ %.07193, %.preheader.lr.ph.split.us ] ; 6 uses
  %3 = add i64 %indvar.a, %1
  %i.bd = shl i64 %3, 2                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.bd
  %4 = add i64 %2, %indvar.a
  %5 = shl i64 %4, 2                              ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.h, i64 %5
  %scevgep159 = getelementptr i8, ptr %i.ay, i64 %i.bd
  %scevgep160 = getelementptr i8, ptr %i.ay, i64 %5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.be = xor i32 %.184.us, -1
  %i.bf = icmp ult i32 %i.be, %i.ba
  %.reass = or i1 %i.bf, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep160
  %bound1 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %6 = trunc nuw i64 %index to i32
  %7 = add i32 %.184.us, %6
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !17, !alias.scope !43
  %wide.load161 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !17, !alias.scope !43
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  %wide.load163 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  %i.bk = xor <4 x i32> %wide.load162, %wide.load
  %i.bl = xor <4 x i32> %wide.load163, %wide.load161
  store <4 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod176.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bn = trunc nuw i64 %indvars.iv.ph to i32
  %i.bo = mul i32 %i.as, %i.bn
  %i.bp = add i32 %i.bo, %.184.us
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !17
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bq ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !17
  %i.bv = xor i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !17
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bw = icmp eq i64 %indvars.iv.ph, %i.bc
  br i1 %i.bw, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %i.by = mul i32 %i.as, %i.bx
  %i.bz = add i32 %i.by, %.184.us
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ca ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !17
  %i.cf = xor i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !17
  %i.cg = trunc i64 %indvars.iv to i32
  %i.ch = add i32 %i.cg, 1
  %i.ci = mul i32 %i.as, %i.ch
  %i.cj = add i32 %i.ci, %.184.us
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !17
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ck ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !17
  %i.cp = xor i32 %i.co, %i.cm
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond112.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !49

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %9 = add nuw i32 %.184.us, 1                    ; 4 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.v, i64 %10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !24, !range !25, !noundef !26
  %i.cs = trunc nuw i8 %i.cr to i1
  %11 = icmp ult i32 %9, %i.as
  %or.cond.us = and i1 %11, %i.cs
  %indvar.next = add i64 %indvar.a, 1
  br i1 %or.cond.us, label %.preheader.us, label %.critedge, !llvm.loop !50

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.184 = phi i32 [ %12, %.preheader ], [ %.07193, %.preheader.lr.ph ]
  %12 = add nuw i32 %.184, 1                      ; 4 uses
  %13 = zext i32 %12 to i64                       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 %13
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !24, !range !25, !noundef !26
  %i.cv = trunc nuw i8 %i.cu to i1
  %14 = icmp ult i32 %12, %i.as
  %or.cond = and i1 %14, %i.cv
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %._crit_edge.us, %.preheader, %.preheader78
  %.1.lcssa = phi i32 [ %.07193, %.preheader78 ], [ %12, %.preheader ], [ %9, %._crit_edge.us ] ; 2 uses
  %.lcssa = phi i64 [ %i.au, %.preheader78 ], [ %13, %.preheader ], [ %10, %._crit_edge.us ] ; 2 uses
  %i.cw = icmp eq i32 %.1.lcssa, %i.as
  br i1 %i.cw, label %.critedge._crit_edge, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.cx = load ptr, ptr %i.w, align 8, !tbaa !19  ; 2 uses
  %i.cy = mul i32 %i.as, %.07292
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cz ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.lcssa
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !17 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.df = load ptr, ptr %0, align 8, !tbaa !15
  %i.dg = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.dh = zext i32 %i.dd to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !17
  %i.dk = sub i32 65535, %i.dj
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !17
  %i.do = zext i32 %i.dn to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %i.dp = phi i64 [ %i.do, %bb.g ], [ 0, %bb.f ]
  %i.dq = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.dr = load ptr, ptr %i.x, align 8, !tbaa !16  ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp ; 2 uses
  %.pre = load i32, ptr %i.ds, align 4, !tbaa !17
  br label %bb.h

.preheader77:                                     ; preds = %bb.h
  %.pre122 = load i32, ptr %i.a, align 4, !tbaa !23 ; 2 uses
  %.not103 = icmp eq i32 %.pre122, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph91

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.dt = phi i32 [ %.pre, %.lr.ph ], [ %i.ei, %bb.h ]
  %indvars.iv113 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next114.a, %bb.h ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv113 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !17
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !17
  %i.dz = add i32 %i.dt, %i.dy
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !17
  store i32 %i.ec, ptr %i.du, align 4, !tbaa !17
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv113 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !17
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !17
  %i.ei = load i32, ptr %i.ds, align 4, !tbaa !17 ; 2 uses
  %i.ej = add i32 %i.ei, %i.eh
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !17
  store i32 %i.em, ptr %i.ed, align 4, !tbaa !17
  %indvars.iv.next114.a = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.en = load i32, ptr %i.c, align 4, !tbaa !21  ; 4 uses
  %i.eo = zext i32 %i.en to i64
  %i.ep = icmp samesign ult i64 %indvars.iv.next114.a, %i.eo
  br i1 %i.ep, label %bb.h, label %.preheader77, !llvm.loop !51

._crit_edge:                                      ; preds = %.loopexit, %.preheader77
  %i.eq = phi i32 [ %i.en, %.preheader77 ], [ %i.gl, %.loopexit ] ; 3 uses
  %i.er = phi i32 [ 0, %.preheader77 ], [ %i.gm, %.loopexit ] ; 2 uses
  %i.es = add i32 %.07292, 1
  %i.et = add i32 %.1.lcssa, 1                    ; 2 uses
  %i.eu = icmp ult i32 %i.et, %i.eq
  br i1 %i.eu, label %.preheader78, label %.critedge._crit_edge, !llvm.loop !52

.lr.ph91:                                         ; preds = %.preheader77, %.loopexit
  %i.ev = phi i32 [ %i.gl, %.loopexit ], [ %i.en, %.preheader77 ] ; 2 uses
  %i.ew = phi i32 [ %i.gm, %.loopexit ], [ %.pre122, %.preheader77 ] ; 2 uses
  %i.ex = phi i32 [ %i.gn, %.loopexit ], [ %i.en, %.preheader77 ] ; 3 uses
  %.06890 = phi i32 [ %i.go, %.loopexit ], [ 0, %.preheader77 ] ; 3 uses
  %.not = icmp eq i32 %.06890, %.07292
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph91
  %i.ey = mul i32 %i.ex, %.06890
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ez
  %.not104 = icmp eq i32 %i.ex, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.i
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.lcssa
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !17
  %i.fe = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ff = load ptr, ptr %i.x, align 8, !tbaa !16  ; 3 uses
  %i.fg = zext i32 %i.fd to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fg ; 2 uses
  %.pre123 = load i32, ptr %i.fh, align 4, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph89, %bb.j
  %i.fi = phi i32 [ %.pre123, %.lr.ph89 ], [ %i.ga, %bb.j ]
  %indvars.iv116.a = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next117.a, %bb.j ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv116.a
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !17
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !17
  %i.fo = add i32 %i.fi, %i.fn
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !17
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv116.a ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !17
  %i.fu = xor i32 %i.ft, %i.fr
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !17
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv116.a
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !17
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !17
  %i.ga = load i32, ptr %i.fh, align 4, !tbaa !17 ; 2 uses
  %i.gb = add i32 %i.ga, %i.fz
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !17
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv116.a ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !17
  %i.gh = xor i32 %i.gg, %i.ge
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !17
  %indvars.iv.next117.a = add nuw nsw i64 %indvars.iv116.a, 1 ; 2 uses
  %i.gi = load i32, ptr %i.c, align 4, !tbaa !21  ; 3 uses
  %i.gj = zext i32 %i.gi to i64
  %i.gk = icmp samesign ult i64 %indvars.iv.next117.a, %i.gj
  br i1 %i.gk, label %bb.j, label %.loopexit.loopexit, !llvm.loop !53

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre124 = load i32, ptr %i.a, align 4, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.i, %.lr.ph91
  %i.gl = phi i32 [ %i.gi, %.loopexit.loopexit ], [ %i.ev, %bb.i ], [ %i.ev, %.lr.ph91 ] ; 2 uses
  %i.gm = phi i32 [ %.pre124, %.loopexit.loopexit ], [ %i.ew, %bb.i ], [ %i.ew, %.lr.ph91 ] ; 3 uses
  %i.gn = phi i32 [ %i.gi, %.loopexit.loopexit ], [ 0, %bb.i ], [ %i.ex, %.lr.ph91 ]
  %i.go = add nuw i32 %.06890, 1                  ; 2 uses
  %i.gp = icmp ult i32 %i.go, %i.gm
  br i1 %i.gp, label %.lr.ph91, label %._crit_edge, !llvm.loop !54

.critedge._crit_edge:                             ; preds = %._crit_edge, %.critedge
  %i.gq = phi i32 [ %i.as, %.critedge ], [ %i.eq, %._crit_edge ]
  %i.gr = phi i32 [ %i.at, %.critedge ], [ %i.er, %._crit_edge ]
  %i.gs = mul i32 %i.gq, %i.gr
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %.critedge._crit_edge
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph97, %bb.k
  %indvars.iv119 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next120, %bb.k ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv119
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !17
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv119
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !17
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.gz = load i32, ptr %i.a, align 4, !tbaa !23
  %i.ha = load i32, ptr %i.c, align 4, !tbaa !21
  %i.hb = mul i32 %i.ha, %i.gz
  %i.hc = zext i32 %i.hb to i64
  %i.hd = icmp samesign ult i64 %indvars.iv.next120, %i.hc
  br i1 %i.hd, label %bb.k, label %._crit_edge98, !llvm.loop !55

._crit_edge98:                                    ; preds = %bb.k, %.preheader79, %.critedge._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN9RSCoder1617MakeEncoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge12, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.c, align 4, !tbaa !21   ; 2 uses
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %._crit_edge12, label %.preheader

end_hunk_0
