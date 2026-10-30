Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rs16?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN9RSCoder1617MakeDecoderMatrixEv:bb.a
.lr.ph23:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
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
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %.preheader17

.preheader17:                                     ; preds = %bb.b, %.preheader17
  %.115 = phi i32 [ %i.p, %.preheader17 ], [ %.01420, %bb.b ] ; 4 uses
  %i.l = zext i32 %.115 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27, !range !28, !noundef !29
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = add i32 %.115, 1                         ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader17, !llvm.loop !0

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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !20
  %i.aa = sub i32 65535, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20
  br label %_ZN9RSCoder165gfInvEj.exit

_ZN9RSCoder165gfInvEj.exit:                       ; preds = %.lr.ph, %bb.c
  %i.ae = phi i32 [ %i.ad, %bb.c ], [ 0, %.lr.ph ]
  %i.af = mul i32 %i.u, %.01321
  %i.ag = add i32 %i.af, %.018
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store i32 %i.ae, ptr %i.ai, align 4, !tbaa !20
  %i.aj = add nuw i32 %.018, 1                    ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !24  ; 3 uses
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !40

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.am = phi i32 [ %i.h, %bb.b ], [ %i.s, %._crit_edge ] ; 2 uses
  %.2 = phi i32 [ %.01420, %bb.b ], [ %i.p, %._crit_edge ]
  %.1 = phi i32 [ %.01321, %bb.b ], [ %i.t, %._crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge24, !llvm.loop !1
}

; Function Attrs: mustprogress uwtable
define void @_ZN9RSCoder1619InvertDecoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24
  %i.e = mul i32 %i.d, %i.b
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #9 ; 12 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !24   ; 6 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !26   ; 7 uses
  %i.k = mul i32 %i.j, %i.i
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.m, i1 false)
  %.not99 = icmp eq i32 %i.j, 0
  br i1 %.not99, label %.preheader79, label %.preheader80.lr.ph

.preheader80.lr.ph:                               ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 3 uses
  %xtraiter = and i32 %i.j, 1
  %i.p = icmp eq i32 %i.j, 1
  br i1 %i.p, label %.preheader80.epil.preheader, label %.preheader80.lr.ph.new

.preheader80.lr.ph.new:                           ; preds = %.preheader80.lr.ph
  %unroll_iter = and i32 %i.j, -2
  br label %.preheader80

.preheader80:                                     ; preds = %bb.e, %.preheader80.lr.ph.new
  %.07382 = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %i.ar, %bb.e ]
  %.07581 = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %i.aw, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %niter.next.1, %bb.e ]
  br label %bb.c

.preheader79.loopexit.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79, label %.preheader80.epil.preheader

.preheader80.epil.preheader:                      ; preds = %.preheader79.loopexit.unr-lcssa, %.preheader80.lr.ph
  %.07382.epil.init = phi i32 [ 0, %.preheader80.lr.ph ], [ %i.ar, %.preheader79.loopexit.unr-lcssa ]
  %.07581.epil.init = phi i32 [ 0, %.preheader80.lr.ph ], [ %i.aw, %.preheader79.loopexit.unr-lcssa ]
  %lcmp.mod171 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader80.epil.preheader
  %.174.epil = phi i32 [ %i.u, %bb.b ], [ %.07382.epil.init, %.preheader80.epil.preheader ] ; 3 uses
  %i.q = zext i32 %.174.epil to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27, !range !28, !noundef !29
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = add i32 %.174.epil, 1
  br i1 %i.t, label %bb.b, label %.preheader79.loopexit.epilog-lcssa, !llvm.loop !41

.preheader79.loopexit.epilog-lcssa:               ; preds = %bb.b
  %i.v = mul i32 %.07581.epil.init, %i.i
  %i.w = add i32 %.174.epil, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 1, ptr %i.y, align 4, !tbaa !20
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.loopexit.epilog-lcssa, %.preheader79.loopexit.unr-lcssa, %bb.a
  %.not100 = icmp eq i32 %i.i, 0
  br i1 %.not100, label %._crit_edge98, label %.preheader78.lr.ph

.preheader78.lr.ph:                               ; preds = %.preheader79
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %.preheader78

bb.c:                                             ; preds = %bb.c, %.preheader80
  %.174 = phi i32 [ %i.ah, %bb.c ], [ %.07382, %.preheader80 ] ; 3 uses
  %i.ad = zext i32 %.174 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27, !range !28, !noundef !29
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = add i32 %.174, 1                        ; 2 uses
  br i1 %i.ag, label %bb.c, label %.preheader80.1, !llvm.loop !41

.preheader80.1:                                   ; preds = %bb.c
  %i.ai = mul i32 %.07581, %i.i
  %i.aj = add i32 %.174, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ak
  store i32 1, ptr %i.al, align 4, !tbaa !20
  %i.am = or disjoint i32 %.07581, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader80.1
  %.174.1 = phi i32 [ %i.ar, %bb.d ], [ %i.ah, %.preheader80.1 ] ; 3 uses
  %i.an = zext i32 %.174.1 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !27, !range !28, !noundef !29
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = add i32 %.174.1, 1                      ; 3 uses
  br i1 %i.aq, label %bb.d, label %bb.e, !llvm.loop !41

bb.e:                                             ; preds = %bb.d
  %i.as = mul i32 %i.am, %i.i
  %i.at = add i32 %.174.1, %i.as
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.au
  store i32 1, ptr %i.av, align 4, !tbaa !20
  %i.aw = add nuw i32 %.07581, 2                  ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.loopexit.unr-lcssa, label %.preheader80, !llvm.loop !42

.preheader78:                                     ; preds = %.preheader78.lr.ph, %._crit_edge
  %i.ax = phi i32 [ %i.i, %.preheader78.lr.ph ], [ %i.ew, %._crit_edge ] ; 9 uses
  %i.ay = phi i32 [ %i.j, %.preheader78.lr.ph ], [ %i.ex, %._crit_edge ] ; 4 uses
  %.07193 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.ez, %._crit_edge ] ; 4 uses
  %.07292 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.ey, %._crit_edge ] ; 3 uses
  %i.az = zext i32 %.07193 to i64                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !27, !range !28, !noundef !29
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.preheader78
  %.not101 = icmp eq i32 %i.ay, 0
  br i1 %.not101, label %.preheader, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 4 uses
  %wide.trip.count = zext i32 %i.ay to i64        ; 6 uses
  %i.be = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.ay, 12
  %ident.check = icmp ne i32 %i.ax, 1
  %i.bf = trunc i64 %i.be to i32
  %i.bg = icmp ugt i64 %i.be, 4294967295
  %invariant.op = or i1 %i.bg, %ident.check
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter172 = and i64 %wide.trip.count, 1
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  %i.bh = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.184.us = phi i32 [ %.07193, %.preheader.lr.ph.split.us ], [ %4, %._crit_edge.us ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.bi = xor i32 %.184.us, -1
  %i.bj = icmp ult i32 %i.bi, %i.bf
  %.reass = or i1 %i.bj, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %1 = trunc nuw i64 %index to i32
  %2 = add i32 %.184.us, %1
  %3 = zext i32 %2 to i64                         ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %3 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <4 x i32>, ptr %i.bk, align 4, !tbaa !20
  %wide.load158 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !20
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %3 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load159 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !20
  %wide.load160 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !20
  %i.bo = xor <4 x i32> %wide.load159, %wide.load
  %i.bp = xor <4 x i32> %wide.load160, %wide.load158
  store <4 x i32> %i.bo, ptr %i.bm, align 4, !tbaa !20
  store <4 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod173.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.br = trunc nuw i64 %indvars.iv.ph to i32
  %i.bs = mul i32 %i.ax, %i.br
  %i.bt = add i32 %i.bs, %.184.us
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bu ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !20
  %i.bz = xor i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !20
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ca = icmp eq i64 %indvars.iv.ph, %i.bh
  br i1 %i.ca, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cb = trunc nuw i64 %indvars.iv to i32
  %i.cc = mul i32 %i.ax, %i.cb
  %i.cd = add i32 %i.cc, %.184.us
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !20
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ce ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !20
  %i.cj = xor i32 %i.ci, %i.cg
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !20
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = add i32 %i.ck, 1
  %i.cm = mul i32 %i.ax, %i.cl
  %i.cn = add i32 %i.cm, %.184.us
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !20
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.co ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !20
  %i.ct = xor i32 %i.cs, %i.cq
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond112.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !44

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %4 = add nuw i32 %.184.us, 1                    ; 4 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 %5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !27, !range !28, !noundef !29
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = icmp ult i32 %4, %i.ax
  %or.cond.us = and i1 %i.cx, %i.cw
  br i1 %or.cond.us, label %.preheader.us, label %.critedge, !llvm.loop !45

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.184 = phi i32 [ %6, %.preheader ], [ %.07193, %.preheader.lr.ph ]
  %6 = add nuw i32 %.184, 1                       ; 4 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aa, i64 %7
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !27, !range !28, !noundef !29
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = icmp ult i32 %6, %i.ax
  %or.cond = and i1 %i.db, %i.da
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !45

.critedge:                                        ; preds = %._crit_edge.us, %.preheader, %.preheader78
  %.1.lcssa = phi i32 [ %.07193, %.preheader78 ], [ %6, %.preheader ], [ %4, %._crit_edge.us ] ; 2 uses
  %.lcssa = phi i64 [ %i.az, %.preheader78 ], [ %7, %.preheader ], [ %5, %._crit_edge.us ] ; 2 uses
  %i.dc = icmp eq i32 %.1.lcssa, %i.ax
  br i1 %i.dc, label %.critedge._crit_edge, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.dd = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.de = mul i32 %i.ax, %.07292
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.lcssa
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !20 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = load ptr, ptr %0, align 8, !tbaa !18
  %i.dm = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.dn = zext i32 %i.dj to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !20
  %i.dq = sub i32 65535, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !20
  %i.du = zext i32 %i.dt to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %i.dv = phi i64 [ %i.du, %bb.g ], [ 0, %bb.f ]
  %i.dw = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.dx = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dv ; 2 uses
  %.pre = load i32, ptr %i.dy, align 4, !tbaa !20
  br label %bb.h

.preheader77:                                     ; preds = %bb.h
  %.pre122 = load i32, ptr %i.a, align 4, !tbaa !26 ; 2 uses
  %.not103 = icmp eq i32 %.pre122, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph91

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.dz = phi i32 [ %.pre, %.lr.ph ], [ %i.eo, %bb.h ]
  %indvars.iv113.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next114.a, %bb.h ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv113.a ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !20
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !20
  %i.ef = add i32 %i.dz, %i.ee
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !20
  store i32 %i.ei, ptr %i.ea, align 4, !tbaa !20
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv113.a ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !20
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !20
  %i.eo = load i32, ptr %i.dy, align 4, !tbaa !20 ; 2 uses
  %i.ep = add i32 %i.eo, %i.en
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !20
  store i32 %i.es, ptr %i.ej, align 4, !tbaa !20
  %indvars.iv.next114.a = add nuw nsw i64 %indvars.iv113.a, 1 ; 2 uses
  %i.et = load i32, ptr %i.c, align 4, !tbaa !24  ; 4 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv.next114.a, %i.eu
  br i1 %i.ev, label %bb.h, label %.preheader77, !llvm.loop !46

._crit_edge:                                      ; preds = %.loopexit, %.preheader77
  %i.ew = phi i32 [ %i.et, %.preheader77 ], [ %i.gr, %.loopexit ] ; 3 uses
  %i.ex = phi i32 [ 0, %.preheader77 ], [ %i.gs, %.loopexit ] ; 2 uses
  %i.ey = add i32 %.07292, 1
  %i.ez = add i32 %.1.lcssa, 1                    ; 2 uses
  %i.fa = icmp ult i32 %i.ez, %i.ew
  br i1 %i.fa, label %.preheader78, label %.critedge._crit_edge, !llvm.loop !47

.lr.ph91:                                         ; preds = %.preheader77, %.loopexit
  %i.fb = phi i32 [ %i.gr, %.loopexit ], [ %i.et, %.preheader77 ] ; 2 uses
  %i.fc = phi i32 [ %i.gs, %.loopexit ], [ %.pre122, %.preheader77 ] ; 2 uses
  %i.fd = phi i32 [ %i.gt, %.loopexit ], [ %i.et, %.preheader77 ] ; 3 uses
  %.06890 = phi i32 [ %i.gu, %.loopexit ], [ 0, %.preheader77 ] ; 3 uses
  %.not = icmp eq i32 %.06890, %.07292
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph91
  %i.fe = mul i32 %i.fd, %.06890
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ff
  %.not104 = icmp eq i32 %i.fd, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.i
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.lcssa
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !20
  %i.fk = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.fl = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 3 uses
  %i.fm = zext i32 %i.fj to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fm ; 2 uses
  %.pre123 = load i32, ptr %i.fn, align 4, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph89, %bb.j
  %i.fo = phi i32 [ %.pre123, %.lr.ph89 ], [ %i.gg, %bb.j ]
  %indvars.iv116.a = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next117.a, %bb.j ] ; 5 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv116.a
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !20
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !20
  %i.fu = add i32 %i.fo, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !20
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv116.a ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !20
  %i.ga = xor i32 %i.fz, %i.fx
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !20
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv116.a
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !20
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !20
  %i.gg = load i32, ptr %i.fn, align 4, !tbaa !20 ; 2 uses
  %i.gh = add i32 %i.gg, %i.gf
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !20
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv116.a ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !20
  %i.gn = xor i32 %i.gm, %i.gk
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !20
  %indvars.iv.next117.a = add nuw nsw i64 %indvars.iv116.a, 1 ; 2 uses
  %i.go = load i32, ptr %i.c, align 4, !tbaa !24  ; 3 uses
  %i.gp = zext i32 %i.go to i64
  %i.gq = icmp samesign ult i64 %indvars.iv.next117.a, %i.gp
  br i1 %i.gq, label %bb.j, label %.loopexit.loopexit, !llvm.loop !48

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre124 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.i, %.lr.ph91
  %i.gr = phi i32 [ %i.go, %.loopexit.loopexit ], [ %i.fb, %bb.i ], [ %i.fb, %.lr.ph91 ] ; 2 uses
  %i.gs = phi i32 [ %.pre124, %.loopexit.loopexit ], [ %i.fc, %bb.i ], [ %i.fc, %.lr.ph91 ] ; 3 uses
  %i.gt = phi i32 [ %i.go, %.loopexit.loopexit ], [ 0, %bb.i ], [ %i.fd, %.lr.ph91 ]
  %i.gu = add nuw i32 %.06890, 1                  ; 2 uses
  %i.gv = icmp ult i32 %i.gu, %i.gs
  br i1 %i.gv, label %.lr.ph91, label %._crit_edge, !llvm.loop !49

.critedge._crit_edge:                             ; preds = %._crit_edge, %.critedge
  %i.gw = phi i32 [ %i.ax, %.critedge ], [ %i.ew, %._crit_edge ]
  %i.gx = phi i32 [ %i.ay, %.critedge ], [ %i.ex, %._crit_edge ]
  %i.gy = mul i32 %i.gw, %i.gx
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %.critedge._crit_edge
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph97, %bb.k
  %indvars.iv119 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next120, %bb.k ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv119
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !20
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv119
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !20
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.hf = load i32, ptr %i.a, align 4, !tbaa !26
  %i.hg = load i32, ptr %i.c, align 4, !tbaa !24
  %i.hh = mul i32 %i.hg, %i.hf
  %i.hi = zext i32 %i.hh to i64
  %i.hj = icmp samesign ult i64 %indvars.iv.next120, %i.hi
  br i1 %i.hj, label %bb.k, label %._crit_edge98, !llvm.loop !50

._crit_edge98:                                    ; preds = %bb.k, %.preheader79, %.critedge._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN9RSCoder1617MakeEncoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge12, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %._crit_edge12, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.h = phi i32 [ %i.l, %._crit_edge ], [ %i.b, %.preheader.lr.ph ]
  %i.i = phi i32 [ %i.m, %._crit_edge ], [ %i.g, %.preheader.lr.ph ] ; 2 uses
  %.0811 = phi i32 [ %i.n, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = load ptr, ptr %0, align 8
  %i.k = load ptr, ptr %i.d, align 8
  br label %.lr.ph

._crit_edge12:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN9RSCoder165gfInvEj.exit
  %.pre = load i32, ptr %i.a, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.l = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.h, %.preheader ] ; 2 uses
  %i.m = phi i32 [ %i.ag, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.n = add nuw i32 %.0811, 1                    ; 2 uses
  %i.o = icmp ult i32 %i.n, %i.l
  br i1 %i.o, label %.preheader, label %._crit_edge12, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9RSCoder165gfInvEj.exit
  %i.p = phi i32 [ %i.ag, %_ZN9RSCoder165gfInvEj.exit ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.010 = phi i32 [ %i.af, %_ZN9RSCoder165gfInvEj.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.q = add i32 %i.p, %.0811                     ; 2 uses
  %i.r = icmp eq i32 %.010, %i.q
  br i1 %i.r, label %_ZN9RSCoder165gfInvEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = xor i32 %i.q, %.010
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20
  %i.w = sub i32 65535, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !20
  br label %_ZN9RSCoder165gfInvEj.exit

_ZN9RSCoder165gfInvEj.exit:                       ; preds = %.lr.ph, %bb.b
  %i.aa = phi i32 [ %i.z, %bb.b ], [ 0, %.lr.ph ]
  %i.ab = mul i32 %i.p, %.0811
  %i.ac = add i32 %i.ab, %.010
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad
  store i32 %i.aa, ptr %i.ae, align 4, !tbaa !20
  %i.af = add nuw i32 %.010, 1                    ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !24  ; 3 uses
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !51
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN9RSCoder169UpdateECCEjjPKhPhm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %5, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
end_hunk_0
