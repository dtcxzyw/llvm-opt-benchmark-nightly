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
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #9 ; 14 uses
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
  %lcmp.mod174 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
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
  %i.ax = phi i32 [ %i.i, %.preheader78.lr.ph ], [ %i.ex, %._crit_edge ] ; 9 uses
  %i.ay = phi i32 [ %i.j, %.preheader78.lr.ph ], [ %i.ey, %._crit_edge ] ; 4 uses
  %.07193 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.fa, %._crit_edge ] ; 5 uses
  %.07292 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.ez, %._crit_edge ] ; 3 uses
  %i.az = zext i32 %.07193 to i64                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !27, !range !28, !noundef !29
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.preheader78
  %.not101 = icmp eq i32 %i.ay, 0
  br i1 %.not101, label %.preheader, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 6 uses
  %wide.trip.count = zext i32 %i.ay to i64        ; 7 uses
  %i.be = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %1 = zext i32 %.07193 to i64                    ; 2 uses
  %2 = add nuw nsw i64 %1, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.ay, 12
  %ident.check = icmp ne i32 %i.ax, 1
  %i.bf = trunc i64 %i.be to i32
  %i.bg = icmp ugt i64 %i.be, 4294967295
  %invariant.op = or i1 %i.bg, %ident.check
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter175 = and i64 %wide.trip.count, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  %i.bh = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar.a = phi i64 [ %indvar.next, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 3 uses
  %.184.us = phi i32 [ %9, %._crit_edge.us ], [ %.07193, %.preheader.lr.ph.split.us ] ; 6 uses
  %3 = add i64 %indvar.a, %1
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.bi
  %4 = add i64 %2, %indvar.a
  %5 = shl i64 %4, 2                              ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.h, i64 %5
  %scevgep159 = getelementptr i8, ptr %i.bd, i64 %i.bi
  %scevgep160 = getelementptr i8, ptr %i.bd, i64 %5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.bj = xor i32 %.184.us, -1
  %i.bk = icmp ult i32 %i.bj, %i.bf
  %.reass = or i1 %i.bk, %invariant.op
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
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <4 x i32>, ptr %i.bl, align 4, !tbaa !20, !alias.scope !54
  %wide.load161 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !20, !alias.scope !54
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !20, !alias.scope !55, !noalias !54
  %wide.load163 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !20, !alias.scope !55, !noalias !54
  %i.bp = xor <4 x i32> %wide.load162, %wide.load
  %i.bq = xor <4 x i32> %wide.load163, %wide.load161
  store <4 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !20, !alias.scope !55, !noalias !54
  store <4 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !20, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod176.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bs = trunc nuw i64 %indvars.iv.ph to i32
  %i.bt = mul i32 %i.ax, %i.bs
  %i.bu = add i32 %i.bt, %.184.us
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !20
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bv ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20
  %i.ca = xor i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !20
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cb = icmp eq i64 %indvars.iv.ph, %i.bh
  br i1 %i.cb, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cc = trunc nuw i64 %indvars.iv to i32
  %i.cd = mul i32 %i.ax, %i.cc
  %i.ce = add i32 %i.cd, %.184.us
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !20
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cf ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20
  %i.ck = xor i32 %i.cj, %i.ch
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !20
  %i.cl = trunc i64 %indvars.iv to i32
  %i.cm = add i32 %i.cl, 1
  %i.cn = mul i32 %i.ax, %i.cm
  %i.co = add i32 %i.cn, %.184.us
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !20
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cp ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !20
  %i.cu = xor i32 %i.ct, %i.cr
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond112.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !47

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %9 = add nuw i32 %.184.us, 1                    ; 4 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aa, i64 %10
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !27, !range !28, !noundef !29
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = icmp ult i32 %9, %i.ax
  %or.cond.us = and i1 %i.cy, %i.cx
  %indvar.next = add i64 %indvar.a, 1
  br i1 %or.cond.us, label %.preheader.us, label %.critedge, !llvm.loop !48

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.184 = phi i32 [ %11, %.preheader ], [ %.07193, %.preheader.lr.ph ]
  %11 = add nuw i32 %.184, 1                      ; 4 uses
  %12 = zext i32 %11 to i64                       ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aa, i64 %12
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !27, !range !28, !noundef !29
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = icmp ult i32 %11, %i.ax
  %or.cond = and i1 %i.dc, %i.db
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !48

.critedge:                                        ; preds = %._crit_edge.us, %.preheader, %.preheader78
  %.1.lcssa = phi i32 [ %.07193, %.preheader78 ], [ %11, %.preheader ], [ %9, %._crit_edge.us ] ; 2 uses
  %.lcssa = phi i64 [ %i.az, %.preheader78 ], [ %12, %.preheader ], [ %10, %._crit_edge.us ] ; 2 uses
  %i.dd = icmp eq i32 %.1.lcssa, %i.ax
  br i1 %i.dd, label %.critedge._crit_edge, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.de = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.df = mul i32 %i.ax, %.07292
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dg ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dg ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.lcssa
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !20 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dm = load ptr, ptr %0, align 8, !tbaa !18
  %i.dn = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.do = zext i32 %i.dk to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !20
  %i.dr = sub i32 65535, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !20
  %i.dv = zext i32 %i.du to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %i.dw = phi i64 [ %i.dv, %bb.g ], [ 0, %bb.f ]
  %i.dx = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.dy = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dw ; 2 uses
  %.pre = load i32, ptr %i.dz, align 4, !tbaa !20
  br label %bb.h

.preheader77:                                     ; preds = %bb.h
  %.pre122 = load i32, ptr %i.a, align 4, !tbaa !26 ; 2 uses
  %.not103 = icmp eq i32 %.pre122, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph91

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.ea = phi i32 [ %.pre, %.lr.ph ], [ %i.ep, %bb.h ]
  %indvars.iv113 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next114.a, %bb.h ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv113 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !20
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !20
  %i.eg = add i32 %i.ea, %i.ef
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !20
  store i32 %i.ej, ptr %i.eb, align 4, !tbaa !20
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv113 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !20
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !20
  %i.ep = load i32, ptr %i.dz, align 4, !tbaa !20 ; 2 uses
  %i.eq = add i32 %i.ep, %i.eo
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !20
  store i32 %i.et, ptr %i.ek, align 4, !tbaa !20
  %indvars.iv.next114.a = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.eu = load i32, ptr %i.c, align 4, !tbaa !24  ; 4 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp samesign ult i64 %indvars.iv.next114.a, %i.ev
  br i1 %i.ew, label %bb.h, label %.preheader77, !llvm.loop !49

._crit_edge:                                      ; preds = %.loopexit, %.preheader77
  %i.ex = phi i32 [ %i.eu, %.preheader77 ], [ %i.gs, %.loopexit ] ; 3 uses
  %i.ey = phi i32 [ 0, %.preheader77 ], [ %i.gt, %.loopexit ] ; 2 uses
  %i.ez = add i32 %.07292, 1
  %i.fa = add i32 %.1.lcssa, 1                    ; 2 uses
  %i.fb = icmp ult i32 %i.fa, %i.ex
  br i1 %i.fb, label %.preheader78, label %.critedge._crit_edge, !llvm.loop !50

.lr.ph91:                                         ; preds = %.preheader77, %.loopexit
  %i.fc = phi i32 [ %i.gs, %.loopexit ], [ %i.eu, %.preheader77 ] ; 2 uses
  %i.fd = phi i32 [ %i.gt, %.loopexit ], [ %.pre122, %.preheader77 ] ; 2 uses
  %i.fe = phi i32 [ %i.gu, %.loopexit ], [ %i.eu, %.preheader77 ] ; 3 uses
  %.06890 = phi i32 [ %i.gv, %.loopexit ], [ 0, %.preheader77 ] ; 3 uses
  %.not = icmp eq i32 %.06890, %.07292
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph91
  %i.ff = mul i32 %i.fe, %.06890
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fg
  %.not104 = icmp eq i32 %i.fe, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.lcssa
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !20
  %i.fl = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.fm = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 3 uses
  %i.fn = zext i32 %i.fk to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fn ; 2 uses
  %.pre123 = load i32, ptr %i.fo, align 4, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph89, %bb.j
  %i.fp = phi i32 [ %.pre123, %.lr.ph89 ], [ %i.gh, %bb.j ]
  %indvars.iv116.a = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next117.a, %bb.j ] ; 5 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv116.a
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !20
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !20
  %i.fv = add i32 %i.fp, %i.fu
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !20
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv116.a ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !20
  %i.gb = xor i32 %i.ga, %i.fy
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !20
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv116.a
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !20
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !20
  %i.gh = load i32, ptr %i.fo, align 4, !tbaa !20 ; 2 uses
  %i.gi = add i32 %i.gh, %i.gg
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !20
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv116.a ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !20
  %i.go = xor i32 %i.gn, %i.gl
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !20
  %indvars.iv.next117.a = add nuw nsw i64 %indvars.iv116.a, 1 ; 2 uses
  %i.gp = load i32, ptr %i.c, align 4, !tbaa !24  ; 3 uses
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp samesign ult i64 %indvars.iv.next117.a, %i.gq
  br i1 %i.gr, label %bb.j, label %.loopexit.loopexit, !llvm.loop !51

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre124 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.i, %.lr.ph91
  %i.gs = phi i32 [ %i.gp, %.loopexit.loopexit ], [ %i.fc, %bb.i ], [ %i.fc, %.lr.ph91 ] ; 2 uses
  %i.gt = phi i32 [ %.pre124, %.loopexit.loopexit ], [ %i.fd, %bb.i ], [ %i.fd, %.lr.ph91 ] ; 3 uses
  %i.gu = phi i32 [ %i.gp, %.loopexit.loopexit ], [ 0, %bb.i ], [ %i.fe, %.lr.ph91 ]
  %i.gv = add nuw i32 %.06890, 1                  ; 2 uses
  %i.gw = icmp ult i32 %i.gv, %i.gt
  br i1 %i.gw, label %.lr.ph91, label %._crit_edge, !llvm.loop !52

.critedge._crit_edge:                             ; preds = %._crit_edge, %.critedge
  %i.gx = phi i32 [ %i.ax, %.critedge ], [ %i.ex, %._crit_edge ]
  %i.gy = phi i32 [ %i.ay, %.critedge ], [ %i.ey, %._crit_edge ]
  %i.gz = mul i32 %i.gx, %i.gy
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %.critedge._crit_edge
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph97, %bb.k
  %indvars.iv119 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next120, %bb.k ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv119
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !20
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv119
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !20
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.hg = load i32, ptr %i.a, align 4, !tbaa !26
  %i.hh = load i32, ptr %i.c, align 4, !tbaa !24
  %i.hi = mul i32 %i.hh, %i.hg
  %i.hj = zext i32 %i.hi to i64
  %i.hk = icmp samesign ult i64 %indvars.iv.next120, %i.hj
  br i1 %i.hk, label %bb.k, label %._crit_edge98, !llvm.loop !53

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

end_hunk_0
